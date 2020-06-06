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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.438561, 14.881712, 15.390137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.307979, 15.149723, 15.123457>,  <4.229629, 15.310530, 14.963449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.307979, 15.149723, 15.123457>,  <4.438561, 14.881712, 15.390137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.307979, 15.149723, 15.123457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373533, 0.556479, 0.742162,
		0.868274, 0.491318, 0.068612,
		-0.326456, 0.670028, -0.666700,
		4.210042, 15.350732, 14.923447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.807767, 15.561065, 15.470050>,  <4.438561, 14.881712, 15.390137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.807767, 15.561065, 15.470050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.428803, 15.549158, 15.342596>,  <4.201425, 15.542014, 15.266124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.428803, 15.549158, 15.342596>,  <4.807767, 15.561065, 15.470050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.428803, 15.549158, 15.342596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296254, 0.458120, 0.838069,
		0.121026, 0.888392, -0.442846,
		-0.947410, -0.029767, -0.318634,
		4.144580, 15.540228, 15.247005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.359976, 16.154837, 15.583612>,  <4.807767, 15.561065, 15.470050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.359976, 16.154837, 15.583612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.096237, 15.855042, 15.559842>,  <3.937993, 15.675166, 15.545580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.096237, 15.855042, 15.559842>,  <4.359976, 16.154837, 15.583612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.096237, 15.855042, 15.559842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464863, 0.344280, 0.815705,
		-0.590899, 0.565459, -0.575408,
		-0.659349, -0.749485, -0.059426,
		3.898432, 15.630197, 15.542014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.105547, 16.378082, 15.371706>,  <4.359976, 16.154837, 15.583612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.105547, 16.378082, 15.371706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.497322, 16.338367, 15.301454>,  <5.732387, 16.314539, 15.259302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.497322, 16.338367, 15.301454>,  <5.105547, 16.378082, 15.371706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.497322, 16.338367, 15.301454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092946, 0.550585, -0.829588,
		0.179067, 0.828853, 0.530035,
		0.979437, -0.099287, -0.175630,
		5.791152, 16.308580, 15.248765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.430948, 17.010090, 15.356629>,  <5.105547, 16.378082, 15.371706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.430948, 17.010090, 15.356629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.608986, 16.756613, 15.103544>,  <5.715809, 16.604527, 14.951694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.608986, 16.756613, 15.103544>,  <5.430948, 17.010090, 15.356629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.608986, 16.756613, 15.103544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121481, 0.657299, -0.743774,
		0.887204, 0.407914, 0.215580,
		0.445096, -0.633691, -0.632713,
		5.742516, 16.566505, 14.913731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.852135, 17.461473, 14.927958>,  <5.430948, 17.010090, 15.356629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.852135, 17.461473, 14.927958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.783985, 17.121033, 14.729325>,  <5.743095, 16.916767, 14.610146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.783985, 17.121033, 14.729325>,  <5.852135, 17.461473, 14.927958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.783985, 17.121033, 14.729325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229016, 0.524353, -0.820125,
		0.958397, -0.026002, -0.284253,
		-0.170374, -0.851104, -0.496584,
		5.732873, 16.865702, 14.580350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.028732, 17.715763, 14.264334>,  <5.852135, 17.461473, 14.927958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.028732, 17.715763, 14.264334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.890822, 17.349052, 14.183685>,  <5.808076, 17.129026, 14.135296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.890822, 17.349052, 14.183685>,  <6.028732, 17.715763, 14.264334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.890822, 17.349052, 14.183685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278774, 0.305103, -0.910603,
		0.896335, -0.257745, -0.360764,
		-0.344774, -0.916777, -0.201622,
		5.787390, 17.074018, 14.123199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.402480, 17.387424, 13.616673>,  <6.028732, 17.715763, 14.264334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.402480, 17.387424, 13.616673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.034097, 17.236755, 13.656578>,  <5.813066, 17.146355, 13.680521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.034097, 17.236755, 13.656578>,  <6.402480, 17.387424, 13.616673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.034097, 17.236755, 13.656578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232238, 0.325017, -0.916749,
		0.312865, -0.867467, -0.386802,
		-0.920967, -0.376649, 0.099772,
		5.757809, 17.123753, 13.686506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.255599, 17.033728, 13.085729>,  <6.402480, 17.387424, 13.616673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.255599, 17.033728, 13.085729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.898426, 17.146097, 13.226442>,  <5.684122, 17.213520, 13.310871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.898426, 17.146097, 13.226442>,  <6.255599, 17.033728, 13.085729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.898426, 17.146097, 13.226442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181747, 0.489955, -0.852591,
		-0.411874, -0.825242, -0.386439,
		-0.892932, 0.280926, 0.351785,
		5.630546, 17.230375, 13.331978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.861723, 16.856489, 12.553804>,  <6.255599, 17.033728, 13.085729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.861723, 16.856489, 12.553804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.656250, 17.125090, 12.767426>,  <5.532966, 17.286251, 12.895599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.656250, 17.125090, 12.767426>,  <5.861723, 16.856489, 12.553804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.656250, 17.125090, 12.767426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177682, 0.525703, -0.831905,
		-0.839380, -0.522227, -0.150731,
		-0.513683, 0.671502, 0.534054,
		5.502145, 17.326540, 12.927643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.165566, 16.813066, 12.311050>,  <5.861723, 16.856489, 12.553804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.165566, 16.813066, 12.311050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.190598, 17.182245, 12.462975>,  <5.205617, 17.403751, 12.554129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.190598, 17.182245, 12.462975>,  <5.165566, 16.813066, 12.311050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.190598, 17.182245, 12.462975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165387, 0.384885, -0.908026,
		-0.984241, -0.005991, 0.176730,
		0.062580, 0.922945, 0.379811,
		5.209372, 17.459129, 12.576918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.769653, 17.122068, 11.880625>,  <5.165566, 16.813066, 12.311050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.769653, 17.122068, 11.880625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.936038, 17.435099, 12.065903>,  <5.035870, 17.622917, 12.177070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.936038, 17.435099, 12.065903>,  <4.769653, 17.122068, 11.880625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.936038, 17.435099, 12.065903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079671, 0.538755, -0.838687,
		-0.905884, 0.311961, 0.286451,
		0.415964, 0.782575, 0.463195,
		5.060828, 17.669870, 12.204862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.374814, 17.715141, 11.695813>,  <4.769653, 17.122068, 11.880625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.374814, 17.715141, 11.695813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.719368, 17.865440, 11.832533>,  <4.926101, 17.955620, 11.914565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.719368, 17.865440, 11.832533>,  <4.374814, 17.715141, 11.695813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.719368, 17.865440, 11.832533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003315, 0.677044, -0.735935,
		-0.507939, 0.632791, 0.584443,
		0.861387, 0.375748, 0.341799,
		4.977784, 17.978165, 11.935073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.333157, 18.439074, 11.693040>,  <4.374814, 17.715141, 11.695813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.333157, 18.439074, 11.693040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.729338, 18.383934, 11.693277>,  <4.967047, 18.350849, 11.693420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.729338, 18.383934, 11.693277>,  <4.333157, 18.439074, 11.693040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.729338, 18.383934, 11.693277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086937, 0.621281, -0.778750,
		0.106982, 0.771367, 0.627334,
		0.990453, -0.137851, 0.000594,
		5.026474, 18.342579, 11.693456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.691519, 19.096283, 11.687131>,  <4.333157, 18.439074, 11.693040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.691519, 19.096283, 11.687131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.978690, 18.863955, 11.533650>,  <5.150992, 18.724558, 11.441562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.978690, 18.863955, 11.533650>,  <4.691519, 19.096283, 11.687131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.978690, 18.863955, 11.533650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279333, 0.745247, -0.605459,
		0.637616, 0.327494, 0.697275,
		0.717926, -0.580822, -0.383701,
		5.194067, 18.689709, 11.418540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.144580, 19.528337, 11.478381>,  <4.691519, 19.096283, 11.687131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.144580, 19.528337, 11.478381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.248361, 19.214659, 11.252915>,  <5.310630, 19.026451, 11.117636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.248361, 19.214659, 11.252915>,  <5.144580, 19.528337, 11.478381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.248361, 19.214659, 11.252915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301196, 0.620246, -0.724276,
		0.917586, 0.018143, 0.397122,
		0.259454, -0.784198, -0.563664,
		5.326197, 18.979399, 11.083816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.637382, 19.793337, 11.145335>,  <5.144580, 19.528337, 11.478381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.637382, 19.793337, 11.145335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.551333, 19.469826, 10.926393>,  <5.499703, 19.275719, 10.795027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.551333, 19.469826, 10.926393>,  <5.637382, 19.793337, 11.145335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.551333, 19.469826, 10.926393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276462, 0.487118, -0.828423,
		0.936638, -0.329536, 0.118806,
		-0.215123, -0.808778, -0.547357,
		5.486796, 19.227192, 10.762185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.232813, 19.696135, 10.733939>,  <5.637382, 19.793337, 11.145335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.232813, 19.696135, 10.733939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.938314, 19.504807, 10.542459>,  <5.761616, 19.390011, 10.427570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.938314, 19.504807, 10.542459>,  <6.232813, 19.696135, 10.733939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.938314, 19.504807, 10.542459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261485, 0.451364, -0.853168,
		0.624156, -0.753313, -0.207241,
		-0.736244, -0.478319, -0.478702,
		5.717441, 19.361311, 10.398849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.524726, 19.578770, 10.093841>,  <6.232813, 19.696135, 10.733939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.524726, 19.578770, 10.093841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.129916, 19.530571, 10.051386>,  <5.893031, 19.501652, 10.025913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.129916, 19.530571, 10.051386>,  <6.524726, 19.578770, 10.093841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.129916, 19.530571, 10.051386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057957, 0.349097, -0.935292,
		0.149749, -0.929307, -0.337584,
		-0.987024, -0.120494, -0.106137,
		5.833809, 19.494423, 10.019545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.366066, 19.247818, 9.425066>,  <6.524726, 19.578770, 10.093841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.366066, 19.247818, 9.425066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.060603, 19.493601, 9.504332>,  <5.877325, 19.641069, 9.551890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.060603, 19.493601, 9.504332>,  <6.366066, 19.247818, 9.425066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.060603, 19.493601, 9.504332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045020, 0.255507, -0.965758,
		-0.644048, -0.746432, -0.167458,
		-0.763659, 0.614456, 0.198163,
		5.831505, 19.677938, 9.563781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.029684, 19.176739, 8.834900>,  <6.366066, 19.247818, 9.425066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.029684, 19.176739, 8.834900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.884494, 19.517483, 8.985940>,  <5.797380, 19.721930, 9.076564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.884494, 19.517483, 8.985940>,  <6.029684, 19.176739, 8.834900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.884494, 19.517483, 8.985940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060273, 0.382924, -0.921812,
		-0.929848, -0.357353, -0.087647,
		-0.362974, 0.851862, 0.377600,
		5.775602, 19.773041, 9.099220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.425102, 19.264748, 8.459439>,  <6.029684, 19.176739, 8.834900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.425102, 19.264748, 8.459439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.521627, 19.627172, 8.598475>,  <5.579543, 19.844627, 8.681895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.521627, 19.627172, 8.598475>,  <5.425102, 19.264748, 8.459439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.521627, 19.627172, 8.598475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005578, 0.356872, -0.934137,
		-0.970431, 0.227358, 0.081064,
		0.241313, 0.906063, 0.347588,
		5.594021, 19.898991, 8.702751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.010399, 19.681700, 8.035275>,  <5.425102, 19.264748, 8.459439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.010399, 19.681700, 8.035275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.279760, 19.928690, 8.197879>,  <5.441376, 20.076885, 8.295442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.279760, 19.928690, 8.197879>,  <5.010399, 19.681700, 8.035275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.279760, 19.928690, 8.197879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099168, 0.469458, -0.877368,
		-0.732595, 0.631134, 0.254900,
		0.673402, 0.617478, 0.406511,
		5.481781, 20.113934, 8.319832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.758333, 20.369419, 7.864703>,  <5.010399, 19.681700, 8.035275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.758333, 20.369419, 7.864703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.148197, 20.402344, 7.947902>,  <5.382115, 20.422098, 7.997822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.148197, 20.402344, 7.947902>,  <4.758333, 20.369419, 7.864703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.148197, 20.402344, 7.947902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129147, 0.552152, -0.823680,
		-0.182647, 0.829670, 0.527530,
		0.974659, 0.082314, 0.207998,
		5.440595, 20.427038, 8.010302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.962928, 21.003719, 7.724248>,  <4.758333, 20.369419, 7.864703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.962928, 21.003719, 7.724248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.310409, 20.805687, 7.717926>,  <5.518897, 20.686867, 7.714132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.310409, 20.805687, 7.717926>,  <4.962928, 21.003719, 7.724248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.310409, 20.805687, 7.717926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213851, 0.403639, -0.889575,
		0.446793, 0.769395, 0.456516,
		0.868703, -0.495082, -0.015807,
		5.571019, 20.657162, 7.713183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.515460, 21.470367, 7.615594>,  <4.962928, 21.003719, 7.724248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.515460, 21.470367, 7.615594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.651840, 21.117725, 7.485041>,  <5.733667, 20.906139, 7.406708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.651840, 21.117725, 7.485041>,  <5.515460, 21.470367, 7.615594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.651840, 21.117725, 7.485041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002091, 0.346476, -0.938057,
		0.940080, 0.320512, 0.116287,
		0.340949, -0.881605, -0.326385,
		5.754124, 20.853245, 7.387125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.220105, 21.569223, 7.345413>,  <5.515460, 21.470367, 7.615594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.220105, 21.569223, 7.345413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.015155, 21.272369, 7.172573>,  <5.892186, 21.094257, 7.068870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.015155, 21.272369, 7.172573>,  <6.220105, 21.569223, 7.345413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.015155, 21.272369, 7.172573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212728, 0.377797, -0.901119,
		0.831997, -0.553630, -0.035700,
		-0.512374, -0.742135, -0.432099,
		5.861443, 21.049728, 7.042943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.637101, 21.289341, 6.801412>,  <6.220105, 21.569223, 7.345413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.637101, 21.289341, 6.801412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.256056, 21.272760, 6.680872>,  <6.027430, 21.262812, 6.608548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.256056, 21.272760, 6.680872>,  <6.637101, 21.289341, 6.801412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.256056, 21.272760, 6.680872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247166, 0.471983, -0.846251,
		0.177310, -0.880633, -0.439371,
		-0.952612, -0.041452, -0.301350,
		5.970273, 21.260324, 6.590467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.898907, 21.859661, 6.424924>,  <6.637101, 21.289341, 6.801412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.898907, 21.859661, 6.424924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.255558, 22.040768, 6.424982>,  <7.469549, 22.149431, 6.425017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.255558, 22.040768, 6.424982>,  <6.898907, 21.859661, 6.424924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.255558, 22.040768, 6.424982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412730, -0.812652, -0.411400,
		-0.186151, 0.366876, -0.911455,
		0.891629, 0.452767, 0.000144,
		7.523046, 22.176598, 6.425025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.354893, 21.630260, 5.976691>,  <6.898907, 21.859661, 6.424924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.354893, 21.630260, 5.976691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.660939, 21.747028, 6.206257>,  <7.844567, 21.817089, 6.343997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.660939, 21.747028, 6.206257>,  <7.354893, 21.630260, 5.976691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.660939, 21.747028, 6.206257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463726, -0.868198, -0.176610,
		0.446717, 0.401267, -0.799643,
		0.765116, 0.291921, 0.573916,
		7.890474, 21.834604, 6.378432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.101077, 21.631941, 5.530195>,  <7.354893, 21.630260, 5.976691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.101077, 21.631941, 5.530195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.111444, 21.567537, 5.924840>,  <8.117663, 21.528894, 6.161627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.111444, 21.567537, 5.924840>,  <8.101077, 21.631941, 5.530195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.111444, 21.567537, 5.924840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360486, -0.919035, -0.159450,
		0.932405, 0.359792, 0.034223,
		0.025917, -0.161009, 0.986613,
		8.119219, 21.519234, 6.220824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.826071, 21.333551, 5.750614>,  <8.101077, 21.631941, 5.530195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.826071, 21.333551, 5.750614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.500130, 21.222801, 5.954321>,  <8.304564, 21.156351, 6.076546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.500130, 21.222801, 5.954321>,  <8.826071, 21.333551, 5.750614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.500130, 21.222801, 5.954321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310134, -0.950471, -0.020512,
		0.489725, 0.141227, 0.860363,
		-0.814853, -0.276874, 0.509269,
		8.255673, 21.139740, 6.107102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.024128, 20.623993, 5.942082>,  <8.826071, 21.333551, 5.750614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.024128, 20.623993, 5.942082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.666140, 20.611708, 6.120108>,  <8.451346, 20.604336, 6.226923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.666140, 20.611708, 6.120108>,  <9.024128, 20.623993, 5.942082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.666140, 20.611708, 6.120108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075304, -0.993713, 0.082850,
		0.439721, 0.107663, 0.891658,
		-0.894972, -0.030715, 0.445064,
		8.397648, 20.602493, 6.253627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.136031, 20.204168, 6.557498>,  <9.024128, 20.623993, 5.942082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.136031, 20.204168, 6.557498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.780717, 20.122925, 6.392722>,  <8.567528, 20.074179, 6.293856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.780717, 20.122925, 6.392722>,  <9.136031, 20.204168, 6.557498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.780717, 20.122925, 6.392722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129769, -0.971350, 0.199096,
		-0.440577, 0.123397, 0.889194,
		-0.888286, -0.203107, -0.411941,
		8.514231, 20.061993, 6.269139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.786267, 20.273149, 7.048316>,  <9.136031, 20.204168, 6.557498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.786267, 20.273149, 7.048316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.531139, 20.099640, 7.302883>,  <9.378062, 19.995535, 7.455623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.531139, 20.099640, 7.302883>,  <9.786267, 20.273149, 7.048316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.531139, 20.099640, 7.302883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007815, -0.822629, -0.568525,
		0.770146, -0.367590, 0.521299,
		-0.637820, -0.433773, 0.636417,
		9.339793, 19.969507, 7.493808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.089118, 20.021761, 7.556290>,  <9.786267, 20.273149, 7.048316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.089118, 20.021761, 7.556290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.789368, 20.266865, 7.656658>,  <9.609517, 20.413927, 7.716878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.789368, 20.266865, 7.656658>,  <10.089118, 20.021761, 7.556290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.789368, 20.266865, 7.656658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138837, -0.515934, 0.845303,
		0.647425, 0.598613, 0.471702,
		-0.749376, 0.612760, 0.250919,
		9.564555, 20.450693, 7.731934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.247178, 20.328588, 8.168990>,  <10.089118, 20.021761, 7.556290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.247178, 20.328588, 8.168990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.849832, 20.304695, 8.129685>,  <9.611423, 20.290359, 8.106102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.849832, 20.304695, 8.129685>,  <10.247178, 20.328588, 8.168990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.849832, 20.304695, 8.129685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045776, -0.578482, 0.814410,
		-0.105490, 0.813505, 0.571910,
		-0.993366, -0.059732, -0.098263,
		9.551822, 20.286776, 8.100206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.081377, 20.273567, 8.863456>,  <10.247178, 20.328588, 8.168990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.081377, 20.273567, 8.863456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.743206, 20.166115, 8.678810>,  <9.540303, 20.101643, 8.568023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.743206, 20.166115, 8.678810>,  <10.081377, 20.273567, 8.863456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.743206, 20.166115, 8.678810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329577, -0.417718, 0.846694,
		-0.420274, 0.867957, 0.264616,
		-0.845428, -0.268632, -0.461614,
		9.489577, 20.085526, 8.540326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.466284, 20.457876, 9.276419>,  <10.081377, 20.273567, 8.863456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.466284, 20.457876, 9.276419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.339411, 20.155107, 9.047871>,  <9.263287, 19.973446, 8.910742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.339411, 20.155107, 9.047871>,  <9.466284, 20.457876, 9.276419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.339411, 20.155107, 9.047871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415727, -0.430534, 0.801131,
		-0.852388, 0.491639, -0.178115,
		-0.317182, -0.756922, -0.571370,
		9.244256, 19.928030, 8.876460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.713269, 20.448343, 9.275514>,  <9.466284, 20.457876, 9.276419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.713269, 20.448343, 9.275514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.838142, 20.084475, 9.165938>,  <8.913066, 19.866154, 9.100193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.838142, 20.084475, 9.165938>,  <8.713269, 20.448343, 9.275514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.838142, 20.084475, 9.165938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639907, -0.414471, 0.647096,
		-0.702184, -0.026716, -0.711494,
		0.312182, -0.909671, -0.273939,
		8.931797, 19.811573, 9.083756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.121048, 20.078829, 9.184038>,  <8.713269, 20.448343, 9.275514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.121048, 20.078829, 9.184038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.393661, 19.793003, 9.247166>,  <8.557230, 19.621508, 9.285042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.393661, 19.793003, 9.247166>,  <8.121048, 20.078829, 9.184038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.393661, 19.793003, 9.247166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623034, -0.453474, 0.637330,
		-0.383843, -0.532693, -0.754256,
		0.681537, -0.714563, 0.157823,
		8.598122, 19.578634, 9.294511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.709908, 19.513657, 9.283734>,  <8.121048, 20.078829, 9.184038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.709908, 19.513657, 9.283734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.062629, 19.352890, 9.382439>,  <8.274261, 19.256430, 9.441661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.062629, 19.352890, 9.382439>,  <7.709908, 19.513657, 9.283734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.062629, 19.352890, 9.382439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429656, -0.468844, 0.771738,
		-0.194481, -0.786542, -0.586113,
		0.881801, -0.401916, 0.246762,
		8.327169, 19.232315, 9.456467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.629180, 18.781055, 9.257623>,  <7.709908, 19.513657, 9.283734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.629180, 18.781055, 9.257623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.935720, 18.883732, 9.493187>,  <8.119645, 18.945337, 9.634525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.935720, 18.883732, 9.493187>,  <7.629180, 18.781055, 9.257623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.935720, 18.883732, 9.493187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394142, -0.536032, 0.746540,
		0.507304, -0.804226, -0.309616,
		0.766351, 0.256690, 0.588911,
		8.165626, 18.960739, 9.669860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.923807, 18.043726, 9.337281>,  <7.629180, 18.781055, 9.257623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.923807, 18.043726, 9.337281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.078149, 18.265886, 9.631940>,  <8.170753, 18.399183, 9.808735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.078149, 18.265886, 9.631940>,  <7.923807, 18.043726, 9.337281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.078149, 18.265886, 9.631940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283878, -0.688261, 0.667616,
		0.877798, -0.466720, -0.107902,
		0.385854, 0.555401, 0.736646,
		8.193905, 18.432507, 9.852934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.308948, 17.647615, 9.745897>,  <7.923807, 18.043726, 9.337281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.308948, 17.647615, 9.745897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.228423, 17.964632, 9.976150>,  <8.180108, 18.154842, 10.114301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.228423, 17.964632, 9.976150>,  <8.308948, 17.647615, 9.745897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.228423, 17.964632, 9.976150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140799, -0.604972, 0.783699,
		0.969355, 0.076719, 0.233376,
		-0.201311, 0.792542, 0.575631,
		8.168030, 18.202394, 10.148839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.713048, 17.563927, 10.212258>,  <8.308948, 17.647615, 9.745897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.713048, 17.563927, 10.212258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.445498, 17.806347, 10.384449>,  <8.284967, 17.951799, 10.487763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.445498, 17.806347, 10.384449>,  <8.713048, 17.563927, 10.212258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.445498, 17.806347, 10.384449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207050, -0.708054, 0.675122,
		0.713957, 0.362442, 0.599083,
		-0.668876, 0.606048, 0.430476,
		8.244835, 17.988161, 10.513592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.818641, 17.448399, 10.908520>,  <8.713048, 17.563927, 10.212258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.818641, 17.448399, 10.908520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.469789, 17.644098, 10.906572>,  <8.260477, 17.761518, 10.905404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.469789, 17.644098, 10.906572>,  <8.818641, 17.448399, 10.908520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.469789, 17.644098, 10.906572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309108, -0.543242, 0.780603,
		0.379266, 0.682292, 0.625008,
		-0.872129, 0.489251, -0.004869,
		8.208150, 17.790874, 10.905111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.719404, 17.853205, 11.601151>,  <8.818641, 17.448399, 10.908520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.719404, 17.853205, 11.601151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.374847, 17.739521, 11.432757>,  <8.168114, 17.671310, 11.331720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.374847, 17.739521, 11.432757>,  <8.719404, 17.853205, 11.601151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.374847, 17.739521, 11.432757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309251, -0.364050, 0.878539,
		-0.402951, 0.886956, 0.225697,
		-0.861391, -0.284211, -0.420986,
		8.116430, 17.654257, 11.306461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.133855, 17.921274, 12.132374>,  <8.719404, 17.853205, 11.601151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.133855, 17.921274, 12.132374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.940328, 17.705872, 11.856422>,  <7.824212, 17.576630, 11.690851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.940328, 17.705872, 11.856422>,  <8.133855, 17.921274, 12.132374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.940328, 17.705872, 11.856422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554764, -0.420962, 0.717654,
		-0.676874, 0.729933, -0.095075,
		-0.483816, -0.538506, -0.689879,
		7.795183, 17.544319, 11.649459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.433966, 18.069326, 12.278694>,  <8.133855, 17.921274, 12.132374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.433966, 18.069326, 12.278694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.491152, 17.726727, 12.080314>,  <7.525464, 17.521166, 11.961286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.491152, 17.726727, 12.080314>,  <7.433966, 18.069326, 12.278694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.491152, 17.726727, 12.080314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445197, -0.503193, 0.740673,
		-0.883946, 0.114905, -0.453251,
		0.142965, -0.856501, -0.495951,
		7.534042, 17.469776, 11.931528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.925009, 17.677237, 12.494383>,  <7.433966, 18.069326, 12.278694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.925009, 17.677237, 12.494383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.160665, 17.393351, 12.339868>,  <7.302058, 17.223019, 12.247159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.160665, 17.393351, 12.339868>,  <6.925009, 17.677237, 12.494383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.160665, 17.393351, 12.339868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195443, -0.589025, 0.784125,
		-0.784040, -0.386460, -0.485726,
		0.589138, -0.709717, -0.386288,
		7.337406, 17.180435, 12.223981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.512194, 17.104767, 12.324453>,  <6.925009, 17.677237, 12.494383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.512194, 17.104767, 12.324453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.892846, 16.991638, 12.372479>,  <7.121236, 16.923761, 12.401295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.892846, 16.991638, 12.372479>,  <6.512194, 17.104767, 12.324453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.892846, 16.991638, 12.372479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291091, -0.704825, 0.646906,
		-0.098335, -0.650564, -0.753058,
		0.951629, -0.282822, 0.120064,
		7.178334, 16.906792, 12.408499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.394225, 16.370064, 12.345162>,  <6.512194, 17.104767, 12.324453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.394225, 16.370064, 12.345162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.763298, 16.440279, 12.482475>,  <6.984742, 16.482409, 12.564863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.763298, 16.440279, 12.482475>,  <6.394225, 16.370064, 12.345162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.763298, 16.440279, 12.482475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184700, -0.580303, 0.793179,
		0.338439, -0.795258, -0.503015,
		0.922684, 0.175536, 0.343282,
		7.040103, 16.492939, 12.585460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.707306, 15.757287, 12.406784>,  <6.394225, 16.370064, 12.345162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.707306, 15.757287, 12.406784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.905997, 16.005266, 12.649741>,  <7.025212, 16.154053, 12.795515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.905997, 16.005266, 12.649741>,  <6.707306, 15.757287, 12.406784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.905997, 16.005266, 12.649741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115441, -0.646425, 0.754194,
		0.860195, -0.444747, -0.249530,
		0.496728, 0.619948, 0.607393,
		7.055016, 16.191250, 12.831959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.128109, 15.267195, 12.836760>,  <6.707306, 15.757287, 12.406784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.128109, 15.267195, 12.836760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.134461, 15.614281, 13.035483>,  <7.138272, 15.822532, 13.154717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.134461, 15.614281, 13.035483>,  <7.128109, 15.267195, 12.836760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.134461, 15.614281, 13.035483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060686, -0.495120, 0.866703,
		0.998031, -0.043913, 0.044795,
		0.015880, 0.867714, 0.496810,
		7.139225, 15.874595, 13.184526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.512873, 15.155046, 13.436414>,  <7.128109, 15.267195, 12.836760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.512873, 15.155046, 13.436414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.318870, 15.484800, 13.553138>,  <7.202468, 15.682653, 13.623172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.318870, 15.484800, 13.553138>,  <7.512873, 15.155046, 13.436414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.318870, 15.484800, 13.553138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067871, -0.368161, 0.927282,
		0.871873, 0.429932, 0.234512,
		-0.485007, 0.824388, 0.291809,
		7.173368, 15.732117, 13.640680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.208458, 15.350928, 14.163693>,  <7.512873, 15.155046, 13.436414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.208458, 15.350928, 14.163693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.229562, 15.158342, 14.513643>,  <7.242225, 15.042790, 14.723614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.229562, 15.158342, 14.513643>,  <7.208458, 15.350928, 14.163693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.229562, 15.158342, 14.513643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993146, -0.066206, -0.096327,
		0.104300, 0.873961, 0.474672,
		0.052760, -0.481465, 0.874876,
		7.245390, 15.013903, 14.776106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.836130, 15.558975, 14.475227>,  <7.208458, 15.350928, 14.163693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.836130, 15.558975, 14.475227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.741416, 15.218828, 14.663189>,  <7.684588, 15.014740, 14.775966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.741416, 15.218828, 14.663189>,  <7.836130, 15.558975, 14.475227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.741416, 15.218828, 14.663189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970344, -0.231196, 0.070568,
		0.048631, 0.472677, 0.879893,
		-0.236784, -0.850367, 0.469903,
		7.670381, 14.963718, 14.804160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.826397, 15.489827, 15.289047>,  <7.836130, 15.558975, 14.475227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.826397, 15.489827, 15.289047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.942311, 15.193987, 15.046062>,  <8.011860, 15.016482, 14.900270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.942311, 15.193987, 15.046062>,  <7.826397, 15.489827, 15.289047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.942311, 15.193987, 15.046062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952668, 0.161945, 0.257290,
		-0.091916, -0.653271, 0.751524,
		0.289786, -0.739602, -0.607465,
		8.029247, 14.972106, 14.863822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.269712, 15.110998, 15.651311>,  <7.826397, 15.489827, 15.289047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.269712, 15.110998, 15.651311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.355323, 15.054689, 15.264658>,  <8.406690, 15.020905, 15.032666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.355323, 15.054689, 15.264658>,  <8.269712, 15.110998, 15.651311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.355323, 15.054689, 15.264658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972951, -0.057354, 0.223778,
		-0.086942, -0.988380, 0.124688,
		0.214027, -0.140771, -0.966631,
		8.419531, 15.012458, 14.974669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.639997, 14.414328, 15.483946>,  <8.269712, 15.110998, 15.651311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.639997, 14.414328, 15.483946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.741503, 14.673347, 15.196535>,  <8.802406, 14.828759, 15.024089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.741503, 14.673347, 15.196535>,  <8.639997, 14.414328, 15.483946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.741503, 14.673347, 15.196535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964577, -0.114067, 0.237864,
		0.072069, -0.753437, -0.653559,
		0.253765, 0.647550, -0.718527,
		8.817633, 14.867613, 14.980977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.092861, 14.165611, 14.940706>,  <8.639997, 14.414328, 15.483946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.092861, 14.165611, 14.940706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.135166, 14.551861, 15.035686>,  <9.160549, 14.783610, 15.092675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.135166, 14.551861, 15.035686>,  <9.092861, 14.165611, 14.940706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.135166, 14.551861, 15.035686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988674, -0.127682, 0.078870,
		0.106477, 0.226421, -0.968192,
		0.105763, 0.965625, 0.237452,
		9.166895, 14.841548, 15.106922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.492647, 14.533971, 14.389450>,  <9.092861, 14.165611, 14.940706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.492647, 14.533971, 14.389450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.537131, 14.648286, 14.770177>,  <9.563822, 14.716875, 14.998613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.537131, 14.648286, 14.770177>,  <9.492647, 14.533971, 14.389450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.537131, 14.648286, 14.770177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991988, -0.089687, -0.088974,
		0.059938, 0.954086, -0.293473,
		0.111209, 0.285789, 0.951818,
		9.570494, 14.734022, 15.055722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.024754, 15.021709, 14.419950>,  <9.492647, 14.533971, 14.389450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.024754, 15.021709, 14.419950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.993240, 14.859201, 14.784091>,  <9.974333, 14.761697, 15.002575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.993240, 14.859201, 14.784091>,  <10.024754, 15.021709, 14.419950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.993240, 14.859201, 14.784091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996282, -0.000139, 0.086157,
		-0.034877, 0.913754, 0.404769,
		-0.078782, -0.406269, 0.910351,
		9.969605, 14.737321, 15.057197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.513934, 14.529572, 14.756726>,  <10.024754, 15.021709, 14.419950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.513934, 14.529572, 14.756726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.844931, 14.353662, 14.896357>,  <11.043529, 14.248115, 14.980135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.844931, 14.353662, 14.896357>,  <10.513934, 14.529572, 14.756726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.844931, 14.353662, 14.896357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002677, 0.618612, 0.785692,
		-0.561473, -0.651087, 0.510718,
		0.827491, -0.439778, 0.349077,
		11.093178, 14.221728, 15.001080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.472938, 14.471758, 15.502811>,  <10.513934, 14.529572, 14.756726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.472938, 14.471758, 15.502811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.868258, 14.476580, 15.441993>,  <11.105450, 14.479473, 15.405501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.868258, 14.476580, 15.441993>,  <10.472938, 14.471758, 15.502811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.868258, 14.476580, 15.441993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130752, 0.446313, 0.885273,
		0.078532, -0.894795, 0.439515,
		0.988300, 0.012055, -0.152047,
		11.164747, 14.480196, 15.396379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.770213, 14.304426, 16.150404>,  <10.472938, 14.471758, 15.502811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.770213, 14.304426, 16.150404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.065886, 14.495584, 15.960572>,  <11.243291, 14.610278, 15.846673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.065886, 14.495584, 15.960572>,  <10.770213, 14.304426, 16.150404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.065886, 14.495584, 15.960572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054611, 0.659792, 0.749461,
		0.671283, -0.579909, 0.461611,
		0.739187, 0.477891, -0.474576,
		11.287642, 14.638952, 15.818199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.381815, 14.297493, 16.539118>,  <10.770213, 14.304426, 16.150404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.381815, 14.297493, 16.539118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.405057, 14.620581, 16.304440>,  <11.419003, 14.814433, 16.163631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.405057, 14.620581, 16.304440>,  <11.381815, 14.297493, 16.539118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.405057, 14.620581, 16.304440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157657, 0.572892, 0.804325,
		0.985783, -0.139232, -0.094055,
		0.058105, 0.807719, -0.586698,
		11.422488, 14.862896, 16.128429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.964753, 14.616387, 16.726587>,  <11.381815, 14.297493, 16.539118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.964753, 14.616387, 16.726587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.762373, 14.912142, 16.548903>,  <11.640945, 15.089595, 16.442291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.762373, 14.912142, 16.548903>,  <11.964753, 14.616387, 16.726587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.762373, 14.912142, 16.548903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131924, 0.575261, 0.807261,
		0.852415, 0.349831, -0.388596,
		-0.505949, 0.739386, -0.444210,
		11.610588, 15.133958, 16.415640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.235539, 15.164493, 16.914722>,  <11.964753, 14.616387, 16.726587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.235539, 15.164493, 16.914722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.900965, 15.337614, 16.780228>,  <11.700220, 15.441487, 16.699532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.900965, 15.337614, 16.780228>,  <12.235539, 15.164493, 16.914722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.900965, 15.337614, 16.780228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170722, 0.788730, 0.590558,
		0.520796, 0.436561, -0.733612,
		-0.836436, 0.432804, -0.336237,
		11.650034, 15.467455, 16.679356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.384926, 15.732875, 16.972849>,  <12.235539, 15.164493, 16.914722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.384926, 15.732875, 16.972849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.989939, 15.786784, 16.940001>,  <11.752947, 15.819130, 16.920292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.989939, 15.786784, 16.940001>,  <12.384926, 15.732875, 16.972849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.989939, 15.786784, 16.940001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035124, 0.694956, 0.718194,
		0.153863, 0.706309, -0.690980,
		-0.987468, 0.134774, -0.082119,
		11.693699, 15.827216, 16.915365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.277249, 16.394417, 16.986401>,  <12.384926, 15.732875, 16.972849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.277249, 16.394417, 16.986401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922970, 16.238773, 17.087698>,  <11.710402, 16.145388, 17.148476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922970, 16.238773, 17.087698>,  <12.277249, 16.394417, 16.986401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.922970, 16.238773, 17.087698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107574, 0.702635, 0.703372,
		-0.451627, 0.595733, -0.664180,
		-0.885698, -0.389111, 0.253244,
		11.657261, 16.122040, 17.163671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.885220, 16.987949, 17.188980>,  <12.277249, 16.394417, 16.986401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.885220, 16.987949, 17.188980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.655076, 16.685652, 17.314079>,  <11.516990, 16.504272, 17.389139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.655076, 16.685652, 17.314079>,  <11.885220, 16.987949, 17.188980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.655076, 16.685652, 17.314079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289478, 0.545789, 0.786331,
		-0.764960, 0.361890, -0.532797,
		-0.575360, -0.755744, 0.312748,
		11.482468, 16.458929, 17.407904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.199815, 17.266499, 17.245975>,  <11.885220, 16.987949, 17.188980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.199815, 17.266499, 17.245975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.213228, 16.938831, 17.475002>,  <11.221276, 16.742231, 17.612419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.213228, 16.938831, 17.475002>,  <11.199815, 17.266499, 17.245975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.213228, 16.938831, 17.475002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245470, 0.548593, 0.799244,
		-0.968824, -0.167351, -0.182686,
		0.033534, -0.819170, 0.572569,
		11.223289, 16.693081, 17.646772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.658258, 17.254381, 17.665150>,  <11.199815, 17.266499, 17.245975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.658258, 17.254381, 17.665150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.926073, 17.018349, 17.845606>,  <11.086761, 16.876730, 17.953880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.926073, 17.018349, 17.845606>,  <10.658258, 17.254381, 17.665150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.926073, 17.018349, 17.845606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271742, 0.370672, 0.888121,
		-0.691287, -0.717223, 0.087829,
		0.669536, -0.590080, 0.451140,
		11.126934, 16.841324, 17.980947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.273104, 17.003983, 18.240381>,  <10.658258, 17.254381, 17.665150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.273104, 17.003983, 18.240381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.651881, 16.921110, 18.338665>,  <10.879148, 16.871386, 18.397635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.651881, 16.921110, 18.338665>,  <10.273104, 17.003983, 18.240381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.651881, 16.921110, 18.338665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175138, 0.308383, 0.935001,
		-0.269489, -0.928426, 0.255735,
		0.946944, -0.207183, 0.245709,
		10.935965, 16.858955, 18.412378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.208362, 16.755936, 18.898829>,  <10.273104, 17.003983, 18.240381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.208362, 16.755936, 18.898829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.597470, 16.847746, 18.885981>,  <10.830935, 16.902832, 18.878271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.597470, 16.847746, 18.885981>,  <10.208362, 16.755936, 18.898829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.597470, 16.847746, 18.885981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005709, 0.162278, 0.986729,
		0.231695, -0.959678, 0.159170,
		0.972772, 0.229528, -0.032120,
		10.889302, 16.916603, 18.876345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.655536, 16.239445, 19.334806>,  <10.208362, 16.755936, 18.898829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.655536, 16.239445, 19.334806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.840883, 16.591854, 19.296671>,  <10.952092, 16.803299, 19.273790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.840883, 16.591854, 19.296671>,  <10.655536, 16.239445, 19.334806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.840883, 16.591854, 19.296671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035286, 0.089157, 0.995392,
		0.885462, -0.464599, 0.010224,
		0.463369, 0.881022, -0.095339,
		10.979894, 16.856161, 19.268070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.165071, 16.257263, 19.922504>,  <10.655536, 16.239445, 19.334806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.165071, 16.257263, 19.922504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.113438, 16.633352, 19.796448>,  <11.082458, 16.859007, 19.720814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.113438, 16.633352, 19.796448>,  <11.165071, 16.257263, 19.922504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.113438, 16.633352, 19.796448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031534, 0.321532, 0.946374,
		0.991132, 0.112225, -0.071154,
		-0.129085, 0.940225, -0.315141,
		11.074712, 16.915421, 19.701906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.586334, 16.625784, 20.302622>,  <11.165071, 16.257263, 19.922504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.586334, 16.625784, 20.302622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302061, 16.873760, 20.169592>,  <11.131497, 17.022545, 20.089773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302061, 16.873760, 20.169592>,  <11.586334, 16.625784, 20.302622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.302061, 16.873760, 20.169592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122755, 0.356209, 0.926308,
		0.692721, 0.699136, -0.177050,
		-0.710682, 0.619939, -0.332576,
		11.088857, 17.059742, 20.069818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.674509, 17.059908, 20.786102>,  <11.586334, 16.625784, 20.302622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.674509, 17.059908, 20.786102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340536, 17.191029, 20.609270>,  <11.140152, 17.269701, 20.503172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340536, 17.191029, 20.609270>,  <11.674509, 17.059908, 20.786102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.340536, 17.191029, 20.609270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167896, 0.613259, 0.771832,
		0.524117, 0.718651, -0.456993,
		-0.834932, 0.327803, -0.442078,
		11.090056, 17.289370, 20.476646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.593562, 17.830353, 20.898842>,  <11.674509, 17.059908, 20.786102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.593562, 17.830353, 20.898842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.231873, 17.668434, 20.844406>,  <11.014859, 17.571283, 20.811745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.231873, 17.668434, 20.844406>,  <11.593562, 17.830353, 20.898842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.231873, 17.668434, 20.844406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366958, 0.573450, 0.732459,
		-0.218455, 0.712246, -0.667070,
		-0.904223, -0.404796, -0.136091,
		10.960606, 17.546995, 20.803579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.169214, 18.370024, 20.736593>,  <11.593562, 17.830353, 20.898842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.169214, 18.370024, 20.736593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.937569, 18.074493, 20.874439>,  <10.798581, 17.897175, 20.957148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.937569, 18.074493, 20.874439>,  <11.169214, 18.370024, 20.736593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.937569, 18.074493, 20.874439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269863, 0.572613, 0.774137,
		-0.769285, 0.355315, -0.530991,
		-0.579115, -0.738827, 0.344616,
		10.763834, 17.852846, 20.977823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.652494, 18.727459, 21.019545>,  <11.169214, 18.370024, 20.736593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.652494, 18.727459, 21.019545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.615693, 18.360811, 21.175156>,  <10.593613, 18.140823, 21.268522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.615693, 18.360811, 21.175156>,  <10.652494, 18.727459, 21.019545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.615693, 18.360811, 21.175156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315555, 0.397388, 0.861689,
		-0.944436, -0.043481, -0.325805,
		-0.092004, -0.916620, 0.389029,
		10.588092, 18.085825, 21.291864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.936470, 18.714012, 21.364773>,  <10.652494, 18.727459, 21.019545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.936470, 18.714012, 21.364773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.179526, 18.437191, 21.520638>,  <10.325360, 18.271099, 21.614157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.179526, 18.437191, 21.520638>,  <9.936470, 18.714012, 21.364773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.179526, 18.437191, 21.520638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245689, 0.302767, 0.920852,
		-0.755254, -0.655283, 0.013944,
		0.607641, -0.692052, 0.389663,
		10.361818, 18.229576, 21.637537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.648627, 18.546652, 21.936241>,  <9.936470, 18.714012, 21.364773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.648627, 18.546652, 21.936241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.022271, 18.413307, 21.987328>,  <10.246457, 18.333302, 22.017981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.022271, 18.413307, 21.987328>,  <9.648627, 18.546652, 21.936241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.022271, 18.413307, 21.987328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029390, 0.284739, 0.958154,
		-0.355777, -0.898774, 0.256180,
		0.934109, -0.333360, 0.127718,
		10.302504, 18.313299, 22.025642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.671851, 18.411339, 22.638039>,  <9.648627, 18.546652, 21.936241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.671851, 18.411339, 22.638039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.061184, 18.405563, 22.546459>,  <10.294784, 18.402098, 22.491512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.061184, 18.405563, 22.546459>,  <9.671851, 18.411339, 22.638039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.061184, 18.405563, 22.546459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216070, 0.392994, 0.893795,
		0.077071, -0.919428, 0.385633,
		0.973332, -0.014438, -0.228949,
		10.353184, 18.401232, 22.477774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.972603, 18.083254, 23.145462>,  <9.671851, 18.411339, 22.638039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.972603, 18.083254, 23.145462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.282160, 18.260557, 22.964525>,  <10.467894, 18.366940, 22.855963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.282160, 18.260557, 22.964525>,  <9.972603, 18.083254, 23.145462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.282160, 18.260557, 22.964525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399614, 0.212337, 0.891752,
		0.491325, -0.870882, -0.012807,
		0.773891, 0.443258, -0.452343,
		10.514327, 18.393534, 22.828823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.588426, 17.775732, 23.441471>,  <9.972603, 18.083254, 23.145462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.588426, 17.775732, 23.441471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.670789, 18.131729, 23.278736>,  <10.720206, 18.345327, 23.181095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.670789, 18.131729, 23.278736>,  <10.588426, 17.775732, 23.441471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.670789, 18.131729, 23.278736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415905, 0.296736, 0.859634,
		0.885791, -0.346210, -0.309052,
		0.205907, 0.889992, -0.406836,
		10.732561, 18.398727, 23.156685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.323491, 17.828289, 23.488136>,  <10.588426, 17.775732, 23.441471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.323491, 17.828289, 23.488136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.179364, 18.199793, 23.453318>,  <11.092888, 18.422695, 23.432426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.179364, 18.199793, 23.453318>,  <11.323491, 17.828289, 23.488136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.179364, 18.199793, 23.453318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379937, 0.231341, 0.895617,
		0.851951, 0.289632, -0.436226,
		-0.360316, 0.928760, -0.087049,
		11.071269, 18.478420, 23.427202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.878435, 18.343790, 23.700289>,  <11.323491, 17.828289, 23.488136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.878435, 18.343790, 23.700289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.543752, 18.556444, 23.752878>,  <11.342942, 18.684036, 23.784431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.543752, 18.556444, 23.752878>,  <11.878435, 18.343790, 23.700289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.543752, 18.556444, 23.752878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377227, 0.385445, 0.842100,
		0.397014, 0.754186, -0.523052,
		-0.836708, 0.531635, 0.131472,
		11.292740, 18.715935, 23.792320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.104735, 18.941128, 23.817541>,  <11.878435, 18.343790, 23.700289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.104735, 18.941128, 23.817541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.740770, 18.986959, 23.977007>,  <11.522391, 19.014458, 24.072687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.740770, 18.986959, 23.977007>,  <12.104735, 18.941128, 23.817541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.740770, 18.986959, 23.977007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411793, 0.365071, 0.834955,
		-0.049874, 0.923902, -0.379364,
		-0.909912, 0.114577, 0.398664,
		11.467797, 19.021332, 24.096605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.085675, 19.706783, 24.128839>,  <12.104735, 18.941128, 23.817541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.085675, 19.706783, 24.128839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765894, 19.516193, 24.275177>,  <11.574025, 19.401838, 24.362980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765894, 19.516193, 24.275177>,  <12.085675, 19.706783, 24.128839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.765894, 19.516193, 24.275177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167034, 0.408676, 0.897264,
		-0.577038, 0.778430, -0.247130,
		-0.799454, -0.476477, 0.365846,
		11.526057, 19.373251, 24.384932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.633636, 20.238148, 24.476488>,  <12.085675, 19.706783, 24.128839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.633636, 20.238148, 24.476488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.537600, 19.893579, 24.655512>,  <11.479978, 19.686838, 24.762926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.537600, 19.893579, 24.655512>,  <11.633636, 20.238148, 24.476488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.537600, 19.893579, 24.655512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092728, 0.438583, 0.893894,
		-0.966311, 0.256118, -0.025422,
		-0.240092, -0.861422, 0.447557,
		11.465572, 19.635153, 24.789780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.267930, 20.498295, 24.996618>,  <11.633636, 20.238148, 24.476488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.267930, 20.498295, 24.996618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.368733, 20.123718, 25.094248>,  <11.429215, 19.898973, 25.152826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.368733, 20.123718, 25.094248>,  <11.267930, 20.498295, 24.996618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.368733, 20.123718, 25.094248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048278, 0.264065, 0.963296,
		-0.966520, -0.230975, 0.111756,
		0.252008, -0.936440, 0.244073,
		11.444336, 19.842787, 25.167469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.886238, 20.260885, 25.632046>,  <11.267930, 20.498295, 24.996618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.886238, 20.260885, 25.632046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174284, 19.983496, 25.641264>,  <11.347112, 19.817062, 25.646795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174284, 19.983496, 25.641264>,  <10.886238, 20.260885, 25.632046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.174284, 19.983496, 25.641264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157520, 0.195739, 0.967922,
		-0.675739, -0.693385, 0.250191,
		0.720114, -0.693473, 0.023046,
		11.390318, 19.775454, 25.648178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.768820, 19.887173, 26.271524>,  <10.886238, 20.260885, 25.632046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.768820, 19.887173, 26.271524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147618, 19.830784, 26.156061>,  <11.374897, 19.796951, 26.086782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147618, 19.830784, 26.156061>,  <10.768820, 19.887173, 26.271524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.147618, 19.830784, 26.156061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297781, 0.048119, 0.953421,
		-0.120517, -0.988843, 0.087548,
		0.946996, -0.140973, -0.288660,
		11.431717, 19.788492, 26.069464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.009179, 19.253136, 26.647789>,  <10.768820, 19.887173, 26.271524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.009179, 19.253136, 26.647789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.287634, 19.525457, 26.556665>,  <11.454707, 19.688850, 26.501991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.287634, 19.525457, 26.556665>,  <11.009179, 19.253136, 26.647789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.287634, 19.525457, 26.556665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341872, -0.035341, 0.939082,
		0.631281, -0.731611, -0.257351,
		0.696137, 0.680805, -0.227807,
		11.496475, 19.729698, 26.488323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.018483, 19.866821, 27.087593>,  <11.009179, 19.253136, 26.647789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.018483, 19.866821, 27.087593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.339298, 20.104321, 27.061678>,  <11.531787, 20.246820, 27.046129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.339298, 20.104321, 27.061678>,  <11.018483, 19.866821, 27.087593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.339298, 20.104321, 27.061678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205746, -0.172816, 0.963225,
		0.560718, -0.785873, -0.260766,
		0.802037, 0.593750, -0.064789,
		11.579909, 20.282446, 27.042240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.777721, 19.494740, 27.265301>,  <11.018483, 19.866821, 27.087593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.777721, 19.494740, 27.265301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.835165, 19.886433, 27.322550>,  <11.869632, 20.121449, 27.356899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.835165, 19.886433, 27.322550>,  <11.777721, 19.494740, 27.265301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.835165, 19.886433, 27.322550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406573, -0.190232, 0.893594,
		0.902261, -0.070139, -0.425448,
		0.143610, 0.979230, 0.143122,
		11.878248, 20.180202, 27.365486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.299267, 19.407984, 27.657806>,  <11.777721, 19.494740, 27.265301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.299267, 19.407984, 27.657806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.221092, 19.799437, 27.683363>,  <12.174188, 20.034309, 27.698698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.221092, 19.799437, 27.683363>,  <12.299267, 19.407984, 27.657806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.221092, 19.799437, 27.683363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475055, 0.037472, 0.879158,
		0.857978, 0.202172, -0.472228,
		-0.195437, 0.978633, 0.063892,
		12.162461, 20.093027, 27.702530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.945737, 19.773996, 27.945442>,  <12.299267, 19.407984, 27.657806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.945737, 19.773996, 27.945442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.619552, 19.984650, 28.041506>,  <12.423841, 20.111042, 28.099144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.619552, 19.984650, 28.041506>,  <12.945737, 19.773996, 27.945442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.619552, 19.984650, 28.041506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269665, -0.021462, 0.962715,
		0.512153, 0.849821, -0.124513,
		-0.815463, 0.526634, 0.240159,
		12.374912, 20.142639, 28.113554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.228826, 20.260548, 28.370119>,  <12.945737, 19.773996, 27.945442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.228826, 20.260548, 28.370119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.838497, 20.250122, 28.456923>,  <12.604300, 20.243866, 28.509005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.838497, 20.250122, 28.456923>,  <13.228826, 20.260548, 28.370119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.838497, 20.250122, 28.456923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217496, -0.214039, 0.952304,
		0.021626, 0.976477, 0.214533,
		-0.975822, -0.026065, 0.217008,
		12.545751, 20.242302, 28.522024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199217, 20.624746, 28.989166>,  <13.228826, 20.260548, 28.370119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.199217, 20.624746, 28.989166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.866688, 20.402620, 28.979967>,  <12.667171, 20.269344, 28.974447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.866688, 20.402620, 28.979967>,  <13.199217, 20.624746, 28.989166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.866688, 20.402620, 28.979967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224036, -0.372683, 0.900508,
		-0.508636, 0.743460, 0.434230,
		-0.831322, -0.555314, -0.022998,
		12.617291, 20.236027, 28.973068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.816342, 20.889763, 29.615921>,  <13.199217, 20.624746, 28.989166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.816342, 20.889763, 29.615921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662364, 20.539415, 29.499531>,  <12.569977, 20.329206, 29.429697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662364, 20.539415, 29.499531>,  <12.816342, 20.889763, 29.615921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.662364, 20.539415, 29.499531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072954, -0.343159, 0.936440,
		-0.920051, 0.339251, 0.195996,
		-0.384946, -0.875871, -0.290975,
		12.546880, 20.276653, 29.412239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.190896, 20.723679, 30.069336>,  <12.816342, 20.889763, 29.615921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.190896, 20.723679, 30.069336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.379423, 20.402557, 29.923260>,  <12.492539, 20.209885, 29.835613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.379423, 20.402557, 29.923260>,  <12.190896, 20.723679, 30.069336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.379423, 20.402557, 29.923260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075382, -0.449218, 0.890236,
		-0.878737, -0.392054, -0.272241,
		0.471316, -0.802805, -0.365191,
		12.520818, 20.161716, 29.813702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.774171, 20.115019, 30.188040>,  <12.190896, 20.723679, 30.069336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.774171, 20.115019, 30.188040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.166382, 20.036949, 30.196724>,  <12.401709, 19.990107, 30.201935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.166382, 20.036949, 30.196724>,  <11.774171, 20.115019, 30.188040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.166382, 20.036949, 30.196724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112877, -0.469684, 0.875588,
		-0.160695, -0.860990, -0.482569,
		0.980528, -0.195174, 0.021710,
		12.460541, 19.978397, 30.203238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.999653, 19.446510, 30.499582>,  <11.774171, 20.115019, 30.188040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.999653, 19.446510, 30.499582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.285073, 19.707546, 30.601542>,  <12.456326, 19.864168, 30.662718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.285073, 19.707546, 30.601542>,  <11.999653, 19.446510, 30.499582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.285073, 19.707546, 30.601542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089618, -0.445856, 0.890607,
		0.694848, -0.612650, -0.376624,
		0.713551, 0.652589, 0.254898,
		12.499139, 19.903322, 30.678011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.487168, 18.953196, 30.864870>,  <11.999653, 19.446510, 30.499582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.487168, 18.953196, 30.864870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.555325, 19.330900, 30.977535>,  <12.596218, 19.557524, 31.045134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.555325, 19.330900, 30.977535>,  <12.487168, 18.953196, 30.864870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.555325, 19.330900, 30.977535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098826, -0.300777, 0.948560,
		0.980408, -0.133791, -0.144567,
		0.170392, 0.944263, 0.281662,
		12.606442, 19.614180, 31.062035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.178431, 18.944954, 31.176334>,  <12.487168, 18.953196, 30.864870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.178431, 18.944954, 31.176334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.925625, 19.233238, 31.290270>,  <12.773941, 19.406208, 31.358631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.925625, 19.233238, 31.290270>,  <13.178431, 18.944954, 31.176334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.925625, 19.233238, 31.290270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081714, -0.303531, 0.949311,
		0.770637, 0.623254, 0.132944,
		-0.632014, 0.720711, 0.284841,
		12.736021, 19.449451, 31.375723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548592, 18.747141, 30.480146>,  <13.178431, 18.944954, 31.176334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548592, 18.747141, 30.480146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.520179, 18.468470, 30.194603>,  <13.503131, 18.301266, 30.023277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.520179, 18.468470, 30.194603>,  <13.548592, 18.747141, 30.480146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.520179, 18.468470, 30.194603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872756, -0.389923, 0.293696,
		-0.482961, -0.602161, 0.635728,
		-0.071033, -0.696679, -0.713857,
		13.498869, 18.259466, 29.980446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.746231, 18.272625, 30.859350>,  <13.548592, 18.747141, 30.480146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.746231, 18.272625, 30.859350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.807257, 18.174948, 30.476290>,  <13.843872, 18.116341, 30.246454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.807257, 18.174948, 30.476290>,  <13.746231, 18.272625, 30.859350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.807257, 18.174948, 30.476290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840514, -0.477653, 0.255701,
		-0.519865, -0.843930, 0.132375,
		0.152564, -0.244193, -0.957650,
		13.853026, 18.101690, 30.188995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.813470, 17.595911, 30.853861>,  <13.746231, 18.272625, 30.859350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.813470, 17.595911, 30.853861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989309, 17.776604, 30.543329>,  <14.094813, 17.885019, 30.357010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989309, 17.776604, 30.543329>,  <13.813470, 17.595911, 30.853861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989309, 17.776604, 30.543329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786689, -0.610742, 0.090083,
		-0.433444, -0.650331, -0.623855,
		0.439598, 0.451734, -0.776331,
		14.121189, 17.912125, 30.310431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.688301, 17.518608, 30.179710>,  <13.813470, 17.595911, 30.853861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.688301, 17.518608, 30.179710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.555503, 17.159836, 30.062889>,  <13.475824, 16.944572, 29.992796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.555503, 17.159836, 30.062889>,  <13.688301, 17.518608, 30.179710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.555503, 17.159836, 30.062889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813595, 0.115606, 0.569823,
		-0.477328, 0.426792, -0.768119,
		-0.331995, -0.896930, -0.292054,
		13.455905, 16.890757, 29.975273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.010624, 17.519936, 29.946001>,  <13.688301, 17.518608, 30.179710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.010624, 17.519936, 29.946001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.062256, 17.150629, 30.090733>,  <13.093235, 16.929045, 30.177570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.062256, 17.150629, 30.090733>,  <13.010624, 17.519936, 29.946001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.062256, 17.150629, 30.090733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942861, -0.001245, 0.333185,
		-0.307167, -0.384160, -0.870671,
		0.129080, -0.923266, 0.361827,
		13.100980, 16.873650, 30.199282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.483727, 18.008268, 29.979568>,  <13.010624, 17.519936, 29.946001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.483727, 18.008268, 29.979568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293467, 18.199293, 29.684084>,  <12.179311, 18.313908, 29.506794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293467, 18.199293, 29.684084>,  <12.483727, 18.008268, 29.979568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.293467, 18.199293, 29.684084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627386, -0.404449, -0.665438,
		-0.616559, -0.779971, -0.107240,
		-0.475649, 0.477562, -0.738709,
		12.150772, 18.342562, 29.462471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.075412, 17.490589, 29.508791>,  <12.483727, 18.008268, 29.979568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.075412, 17.490589, 29.508791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.225546, 17.827055, 29.353067>,  <12.315626, 18.028934, 29.259632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.225546, 17.827055, 29.353067>,  <12.075412, 17.490589, 29.508791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.225546, 17.827055, 29.353067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516507, -0.538572, -0.665704,
		-0.769639, 0.048781, -0.636613,
		0.375335, 0.841166, -0.389310,
		12.338146, 18.079405, 29.236275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.059271, 17.370342, 28.780807>,  <12.075412, 17.490589, 29.508791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.059271, 17.370342, 28.780807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.358941, 17.631895, 28.823084>,  <12.538744, 17.788828, 28.848450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.358941, 17.631895, 28.823084>,  <12.059271, 17.370342, 28.780807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.358941, 17.631895, 28.823084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591904, -0.589281, -0.549907,
		-0.297294, 0.474536, -0.828512,
		0.749177, 0.653884, 0.105690,
		12.583694, 17.828060, 28.854792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197083, 17.612667, 28.144482>,  <12.059271, 17.370342, 28.780807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197083, 17.612667, 28.144482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.530484, 17.687963, 28.352266>,  <12.730525, 17.733141, 28.476936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.530484, 17.687963, 28.352266>,  <12.197083, 17.612667, 28.144482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.530484, 17.687963, 28.352266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544277, -0.441505, -0.713327,
		0.095067, 0.877290, -0.470451,
		0.833502, 0.188242, 0.519461,
		12.780535, 17.744436, 28.508104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.664537, 18.089869, 27.835567>,  <12.197083, 17.612667, 28.144482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.664537, 18.089869, 27.835567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911222, 17.913509, 28.096420>,  <13.059232, 17.807693, 28.252932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911222, 17.913509, 28.096420>,  <12.664537, 18.089869, 27.835567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.911222, 17.913509, 28.096420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657601, -0.166819, -0.734665,
		0.432699, 0.881919, 0.187055,
		0.616711, -0.440896, 0.652133,
		13.096235, 17.781240, 28.292061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.272580, 18.190834, 27.540604>,  <12.664537, 18.089869, 27.835567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.272580, 18.190834, 27.540604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.354531, 17.904413, 27.807526>,  <13.403702, 17.732561, 27.967680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.354531, 17.904413, 27.807526>,  <13.272580, 18.190834, 27.540604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.354531, 17.904413, 27.807526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680203, -0.386075, -0.623113,
		0.703810, 0.581565, 0.407961,
		0.204878, -0.716050, 0.667306,
		13.415995, 17.689598, 28.007717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.112894, 18.131668, 27.589085>,  <13.272580, 18.190834, 27.540604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.112894, 18.131668, 27.589085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.917215, 17.804184, 27.709352>,  <13.799809, 17.607695, 27.781513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.917215, 17.804184, 27.709352>,  <14.112894, 18.131668, 27.589085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.917215, 17.804184, 27.709352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493835, -0.544161, -0.678245,
		0.718899, -0.183313, 0.670508,
		-0.489196, -0.818709, 0.300670,
		13.770456, 17.558571, 27.799553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.628331, 17.637632, 27.671497>,  <14.112894, 18.131668, 27.589085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.628331, 17.637632, 27.671497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.301661, 17.407795, 27.650024>,  <14.105658, 17.269894, 27.637140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.301661, 17.407795, 27.650024>,  <14.628331, 17.637632, 27.671497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.301661, 17.407795, 27.650024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456484, -0.586284, -0.669249,
		0.353073, -0.571065, 0.741096,
		-0.816678, -0.574592, -0.053681,
		14.056657, 17.235418, 27.633921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896166, 17.022074, 27.612720>,  <14.628331, 17.637632, 27.671497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896166, 17.022074, 27.612720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.521932, 16.951933, 27.490128>,  <14.297391, 16.909847, 27.416571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.521932, 16.951933, 27.490128>,  <14.896166, 17.022074, 27.612720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.521932, 16.951933, 27.490128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344230, -0.646304, -0.681026,
		-0.078661, -0.742659, 0.665034,
		-0.935585, -0.175355, -0.306484,
		14.241257, 16.899326, 27.398182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.941298, 16.286171, 27.512594>,  <14.896166, 17.022074, 27.612720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.941298, 16.286171, 27.512594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645226, 16.463470, 27.310341>,  <14.467583, 16.569851, 27.188990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645226, 16.463470, 27.310341>,  <14.941298, 16.286171, 27.512594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.645226, 16.463470, 27.310341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112190, -0.660020, -0.742823,
		-0.663015, -0.606531, 0.438784,
		-0.740152, 0.443276, -0.505650,
		14.423172, 16.596445, 27.158651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.531845, 15.667070, 27.153734>,  <14.941298, 16.286171, 27.512594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.531845, 15.667070, 27.153734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448943, 16.007542, 26.960844>,  <14.399202, 16.211824, 26.845110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448943, 16.007542, 26.960844>,  <14.531845, 15.667070, 27.153734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448943, 16.007542, 26.960844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081417, -0.476211, -0.875553,
		-0.974893, -0.220724, 0.029397,
		-0.207255, 0.851178, -0.482226,
		14.386766, 16.262896, 26.816175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.988540, 15.413995, 26.747894>,  <14.531845, 15.667070, 27.153734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.988540, 15.413995, 26.747894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.134672, 15.750112, 26.587673>,  <14.222352, 15.951782, 26.491541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.134672, 15.750112, 26.587673>,  <13.988540, 15.413995, 26.747894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.134672, 15.750112, 26.587673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113361, -0.386931, -0.915114,
		-0.923949, 0.379727, -0.046102,
		0.365332, 0.840293, -0.400551,
		14.244271, 16.002199, 26.467508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.607221, 15.584957, 26.102581>,  <13.988540, 15.413995, 26.747894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.607221, 15.584957, 26.102581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.947659, 15.784401, 26.036821>,  <14.151921, 15.904067, 25.997366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.947659, 15.784401, 26.036821>,  <13.607221, 15.584957, 26.102581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.947659, 15.784401, 26.036821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017059, -0.339229, -0.940549,
		-0.524736, 0.797692, -0.297221,
		0.851094, 0.498610, -0.164398,
		14.202987, 15.933984, 25.987501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.527730, 15.785276, 25.424789>,  <13.607221, 15.584957, 26.102581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.527730, 15.785276, 25.424789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.919125, 15.848789, 25.477478>,  <14.153961, 15.886897, 25.509090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.919125, 15.848789, 25.477478>,  <13.527730, 15.785276, 25.424789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.919125, 15.848789, 25.477478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186922, -0.412132, -0.891744,
		-0.087305, 0.897182, -0.432945,
		0.978488, 0.158781, 0.131721,
		14.212671, 15.896423, 25.516994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.676221, 16.260859, 24.976753>,  <13.527730, 15.785276, 25.424789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.676221, 16.260859, 24.976753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005285, 16.052343, 25.067518>,  <14.202724, 15.927235, 25.121977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005285, 16.052343, 25.067518>,  <13.676221, 16.260859, 24.976753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.005285, 16.052343, 25.067518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114621, -0.238854, -0.964267,
		0.556858, 0.819274, -0.136745,
		0.822661, -0.521286, 0.226913,
		14.252084, 15.895958, 25.135592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078747, 16.498814, 24.521570>,  <13.676221, 16.260859, 24.976753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.078747, 16.498814, 24.521570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190453, 16.131018, 24.632238>,  <14.257476, 15.910339, 24.698639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190453, 16.131018, 24.632238>,  <14.078747, 16.498814, 24.521570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.190453, 16.131018, 24.632238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025618, -0.280897, -0.959396,
		0.959873, 0.275012, -0.054889,
		0.279263, -0.919492, 0.276670,
		14.274232, 15.855170, 24.715240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.815758, 16.370287, 24.243832>,  <14.078747, 16.498814, 24.521570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.815758, 16.370287, 24.243832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.684165, 16.002880, 24.331554>,  <14.605209, 15.782435, 24.384188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.684165, 16.002880, 24.331554>,  <14.815758, 16.370287, 24.243832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.684165, 16.002880, 24.331554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324849, -0.328135, -0.887018,
		0.886704, -0.220571, 0.406331,
		-0.328982, -0.918518, 0.219306,
		14.585470, 15.727324, 24.397346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.308663, 15.854674, 24.042194>,  <14.815758, 16.370287, 24.243832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.308663, 15.854674, 24.042194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.959042, 15.662557, 24.012955>,  <14.749269, 15.547286, 23.995411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.959042, 15.662557, 24.012955>,  <15.308663, 15.854674, 24.042194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.959042, 15.662557, 24.012955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273440, -0.361978, -0.891181,
		0.401569, -0.798930, 0.447721,
		-0.874055, -0.480295, -0.073100,
		14.696825, 15.518468, 23.991024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423203, 15.288360, 23.557093>,  <15.308663, 15.854674, 24.042194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.423203, 15.288360, 23.557093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023829, 15.289446, 23.579451>,  <14.784205, 15.290097, 23.592865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023829, 15.289446, 23.579451>,  <15.423203, 15.288360, 23.557093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.023829, 15.289446, 23.579451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054632, -0.263696, -0.963057,
		0.012125, -0.964602, 0.263431,
		-0.998433, 0.002715, 0.055896,
		14.724299, 15.290260, 23.596220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245018, 14.609780, 23.347166>,  <15.423203, 15.288360, 23.557093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245018, 14.609780, 23.347166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920742, 14.841333, 23.312117>,  <14.726176, 14.980265, 23.291088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920742, 14.841333, 23.312117>,  <15.245018, 14.609780, 23.347166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920742, 14.841333, 23.312117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194065, -0.406890, -0.892625,
		-0.552377, -0.706638, 0.442202,
		-0.810690, 0.578882, -0.087623,
		14.677535, 15.014998, 23.285830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667846, 14.242388, 23.039940>,  <15.245018, 14.609780, 23.347166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.667846, 14.242388, 23.039940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.542234, 14.614240, 22.962818>,  <14.466867, 14.837351, 22.916546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.542234, 14.614240, 22.962818>,  <14.667846, 14.242388, 23.039940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.542234, 14.614240, 22.962818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365059, -0.305696, -0.879364,
		-0.876424, -0.205760, 0.435367,
		-0.314028, 0.929630, -0.192805,
		14.448026, 14.893128, 22.904976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060372, 14.117719, 22.847746>,  <14.667846, 14.242388, 23.039940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060372, 14.117719, 22.847746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.140487, 14.477808, 22.693094>,  <14.188556, 14.693862, 22.600304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.140487, 14.477808, 22.693094>,  <14.060372, 14.117719, 22.847746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140487, 14.477808, 22.693094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366076, -0.297281, -0.881823,
		-0.908776, 0.318153, 0.270008,
		0.200287, 0.900223, -0.386630,
		14.200573, 14.747875, 22.577105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457856, 14.327980, 22.521208>,  <14.060372, 14.117719, 22.847746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457856, 14.327980, 22.521208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.746999, 14.544777, 22.349756>,  <13.920485, 14.674855, 22.246885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.746999, 14.544777, 22.349756>,  <13.457856, 14.327980, 22.521208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.746999, 14.544777, 22.349756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455849, -0.092144, -0.885274,
		-0.519308, 0.835316, 0.180460,
		0.722856, 0.541993, -0.428629,
		13.963856, 14.707375, 22.221167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.081033, 14.732705, 21.985407>,  <13.457856, 14.327980, 22.521208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.081033, 14.732705, 21.985407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.461871, 14.732140, 21.863087>,  <13.690374, 14.731800, 21.789696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.461871, 14.732140, 21.863087>,  <13.081033, 14.732705, 21.985407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.461871, 14.732140, 21.863087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301503, -0.171434, -0.937927,
		-0.051097, 0.985195, -0.163648,
		0.952095, -0.001415, -0.305799,
		13.747499, 14.731715, 21.771347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.033284, 14.899732, 21.199717>,  <13.081033, 14.732705, 21.985407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.033284, 14.899732, 21.199717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414432, 14.782439, 21.230850>,  <13.643120, 14.712064, 21.249531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414432, 14.782439, 21.230850>,  <13.033284, 14.899732, 21.199717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414432, 14.782439, 21.230850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085049, -0.504444, -0.859245,
		0.291220, 0.812128, -0.505608,
		0.952868, -0.293230, 0.077833,
		13.700292, 14.694470, 21.254200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.230886, 15.010098, 20.504725>,  <13.033284, 14.899732, 21.199717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.230886, 15.010098, 20.504725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.492879, 14.763955, 20.680147>,  <13.650075, 14.616269, 20.785400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.492879, 14.763955, 20.680147>,  <13.230886, 15.010098, 20.504725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.492879, 14.763955, 20.680147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069858, -0.528579, -0.846005,
		0.752408, 0.584755, -0.303222,
		0.654982, -0.615359, 0.438556,
		13.689374, 14.579348, 20.811714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.785578, 14.954144, 20.060387>,  <13.230886, 15.010098, 20.504725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.785578, 14.954144, 20.060387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.822079, 14.625962, 20.286140>,  <13.843980, 14.429053, 20.421593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.822079, 14.625962, 20.286140>,  <13.785578, 14.954144, 20.060387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.822079, 14.625962, 20.286140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297618, -0.518378, -0.801691,
		0.950314, 0.241128, 0.196878,
		0.091253, -0.820452, 0.564386,
		13.849455, 14.379827, 20.455456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.236812, 14.585675, 19.710358>,  <13.785578, 14.954144, 20.060387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.236812, 14.585675, 19.710358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.070315, 14.293875, 19.927456>,  <13.970418, 14.118794, 20.057714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.070315, 14.293875, 19.927456>,  <14.236812, 14.585675, 19.710358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.070315, 14.293875, 19.927456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213642, -0.658666, -0.721468,
		0.883799, -0.184350, 0.430016,
		-0.416240, -0.729502, 0.542744,
		13.945443, 14.075024, 20.090279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718190, 13.994048, 19.764706>,  <14.236812, 14.585675, 19.710358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.718190, 13.994048, 19.764706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338908, 13.880350, 19.821428>,  <14.111339, 13.812131, 19.855463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338908, 13.880350, 19.821428>,  <14.718190, 13.994048, 19.764706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338908, 13.880350, 19.821428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055085, -0.586792, -0.807862,
		0.312843, -0.758208, 0.572057,
		-0.948206, -0.284246, 0.141808,
		14.054446, 13.795076, 19.863970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.708941, 13.301224, 19.735590>,  <14.718190, 13.994048, 19.764706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.708941, 13.301224, 19.735590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.314027, 13.352370, 19.697815>,  <14.077079, 13.383059, 19.675150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.314027, 13.352370, 19.697815>,  <14.708941, 13.301224, 19.735590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.314027, 13.352370, 19.697815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008073, -0.552985, -0.833152,
		-0.158754, -0.823321, 0.544922,
		-0.987285, 0.127867, -0.094435,
		14.017841, 13.390731, 19.669485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.503419, 12.630499, 19.706915>,  <14.708941, 13.301224, 19.735590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.503419, 12.630499, 19.706915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.221671, 12.867784, 19.550983>,  <14.052623, 13.010154, 19.457424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.221671, 12.867784, 19.550983>,  <14.503419, 12.630499, 19.706915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.221671, 12.867784, 19.550983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034695, -0.577297, -0.815797,
		-0.708986, -0.561097, 0.427211,
		-0.704369, 0.593211, -0.389828,
		14.010361, 13.045747, 19.434034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.992760, 12.088010, 19.403893>,  <14.503419, 12.630499, 19.706915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.992760, 12.088010, 19.403893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.923064, 12.436392, 19.220119>,  <13.881247, 12.645421, 19.109856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.923064, 12.436392, 19.220119>,  <13.992760, 12.088010, 19.403893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.923064, 12.436392, 19.220119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042037, -0.472725, -0.880206,
		-0.983806, -0.134053, 0.118979,
		-0.174238, 0.870954, -0.459435,
		13.870792, 12.697678, 19.082289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.352046, 11.989071, 18.949053>,  <13.992760, 12.088010, 19.403893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.352046, 11.989071, 18.949053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.556167, 12.299449, 18.800728>,  <13.678639, 12.485676, 18.711733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.556167, 12.299449, 18.800728>,  <13.352046, 11.989071, 18.949053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.556167, 12.299449, 18.800728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206865, -0.307765, -0.928702,
		-0.834745, 0.550626, 0.003464,
		0.510301, 0.775946, -0.370810,
		13.709257, 12.532233, 18.689486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.856595, 12.312989, 18.654346>,  <13.352046, 11.989071, 18.949053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.856595, 12.312989, 18.654346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205737, 12.409254, 18.484545>,  <13.415222, 12.467013, 18.382664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205737, 12.409254, 18.484545>,  <12.856595, 12.312989, 18.654346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.205737, 12.409254, 18.484545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400822, -0.142578, -0.904994,
		-0.278323, 0.960080, -0.027987,
		0.872856, 0.240662, -0.424504,
		13.467594, 12.481453, 18.357193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.600558, 12.481900, 17.876385>,  <12.856595, 12.312989, 18.654346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.600558, 12.481900, 17.876385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.000285, 12.469117, 17.868965>,  <13.240121, 12.461447, 17.864513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.000285, 12.469117, 17.868965>,  <12.600558, 12.481900, 17.876385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.000285, 12.469117, 17.868965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022626, -0.132377, -0.990941,
		0.029213, 0.990684, -0.133009,
		0.999317, -0.031958, -0.018548,
		13.300080, 12.459530, 17.863401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740169, 13.022156, 17.368958>,  <12.600558, 12.481900, 17.876385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740169, 13.022156, 17.368958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.070194, 12.796477, 17.381294>,  <13.268209, 12.661070, 17.388697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.070194, 12.796477, 17.381294>,  <12.740169, 13.022156, 17.368958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.070194, 12.796477, 17.381294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036833, -0.000760, -0.999321,
		0.563838, 0.825640, 0.020154,
		0.825064, -0.564197, 0.030840,
		13.317714, 12.627218, 17.390547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.132168, 13.230836, 16.983366>,  <12.740169, 13.022156, 17.368958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.132168, 13.230836, 16.983366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.297925, 12.867261, 17.001743>,  <13.397379, 12.649116, 17.012770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.297925, 12.867261, 17.001743>,  <13.132168, 13.230836, 16.983366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.297925, 12.867261, 17.001743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009745, -0.054911, -0.998444,
		0.910046, 0.413301, -0.031612,
		0.414393, -0.908937, 0.045944,
		13.422243, 12.594580, 17.015526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.549577, 13.180214, 16.470636>,  <13.132168, 13.230836, 16.983366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.549577, 13.180214, 16.470636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.491511, 12.797203, 16.570292>,  <13.456672, 12.567396, 16.630085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.491511, 12.797203, 16.570292>,  <13.549577, 13.180214, 16.470636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.491511, 12.797203, 16.570292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047256, -0.244808, -0.968419,
		0.988279, -0.152352, -0.009712,
		-0.145164, -0.957527, 0.249139,
		13.447962, 12.509945, 16.645033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.025446, 12.743372, 15.968645>,  <13.549577, 13.180214, 16.470636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.025446, 12.743372, 15.968645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.717459, 12.516582, 16.085737>,  <13.532666, 12.380508, 16.155993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.717459, 12.516582, 16.085737>,  <14.025446, 12.743372, 15.968645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.717459, 12.516582, 16.085737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135006, -0.303624, -0.943179,
		0.623638, -0.765737, 0.157235,
		-0.769967, -0.566975, 0.292730,
		13.486468, 12.346490, 16.173555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.222334, 12.036472, 15.846136>,  <14.025446, 12.743372, 15.968645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.222334, 12.036472, 15.846136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831690, 12.114545, 15.810059>,  <13.597303, 12.161388, 15.788412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831690, 12.114545, 15.810059>,  <14.222334, 12.036472, 15.846136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.831690, 12.114545, 15.810059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042970, -0.233840, -0.971325,
		-0.210663, -0.952485, 0.219985,
		-0.976614, 0.195170, -0.090190,
		13.538707, 12.173100, 15.783001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.807527, 12.169636, 16.302094>,  <14.222334, 12.036472, 15.846136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.807527, 12.169636, 16.302094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179629, 12.316070, 16.311909>,  <15.402891, 12.403930, 16.317799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179629, 12.316070, 16.311909>,  <14.807527, 12.169636, 16.302094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.179629, 12.316070, 16.311909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222174, 0.508816, 0.831712,
		0.291990, -0.779159, 0.554665,
		0.930258, 0.366084, 0.024540,
		15.458707, 12.425895, 16.319271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.899755, 12.367581, 17.058418>,  <14.807527, 12.169636, 16.302094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.899755, 12.367581, 17.058418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239604, 12.501411, 16.895348>,  <15.443513, 12.581710, 16.797504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239604, 12.501411, 16.895348>,  <14.899755, 12.367581, 17.058418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.239604, 12.501411, 16.895348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215781, 0.484819, 0.847579,
		0.481206, -0.808100, 0.339729,
		0.849635, 0.334553, -0.407670,
		15.494491, 12.601784, 16.773045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597756, 12.196626, 17.524128>,  <14.899755, 12.367581, 17.058418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.597756, 12.196626, 17.524128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.682615, 12.516706, 17.299744>,  <15.733530, 12.708754, 17.165113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.682615, 12.516706, 17.299744>,  <15.597756, 12.196626, 17.524128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.682615, 12.516706, 17.299744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458604, 0.425369, 0.780220,
		0.862946, -0.422779, -0.276734,
		0.212146, 0.800200, -0.560959,
		15.746260, 12.756765, 17.131456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.282974, 12.185920, 17.707239>,  <15.597756, 12.196626, 17.524128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.282974, 12.185920, 17.707239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.199596, 12.552403, 17.570353>,  <16.149569, 12.772293, 17.488220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.199596, 12.552403, 17.570353>,  <16.282974, 12.185920, 17.707239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.199596, 12.552403, 17.570353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263532, 0.389577, 0.882485,
		0.941860, 0.093766, -0.322657,
		-0.208447, 0.916208, -0.342217,
		16.137062, 12.827266, 17.467688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842445, 12.565424, 17.771517>,  <16.282974, 12.185920, 17.707239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.842445, 12.565424, 17.771517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.540661, 12.826559, 17.744417>,  <16.359591, 12.983240, 17.728157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.540661, 12.826559, 17.744417>,  <16.842445, 12.565424, 17.771517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.540661, 12.826559, 17.744417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138153, 0.258866, 0.955982,
		0.641638, 0.711894, -0.285496,
		-0.754463, 0.652837, -0.067748,
		16.314322, 13.022410, 17.724092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.995098, 13.175860, 18.108370>,  <16.842445, 12.565424, 17.771517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.995098, 13.175860, 18.108370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.604599, 13.253289, 18.069445>,  <16.370300, 13.299747, 18.046089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.604599, 13.253289, 18.069445>,  <16.995098, 13.175860, 18.108370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.604599, 13.253289, 18.069445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031866, 0.572571, 0.819236,
		0.214300, 0.796676, -0.565139,
		-0.976248, 0.193571, -0.097315,
		16.311724, 13.311360, 18.040251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.985798, 13.877571, 18.295965>,  <16.995098, 13.175860, 18.108370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.985798, 13.877571, 18.295965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.605457, 13.756314, 18.321230>,  <16.377253, 13.683560, 18.336390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.605457, 13.756314, 18.321230>,  <16.985798, 13.877571, 18.295965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.605457, 13.756314, 18.321230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113018, 0.529654, 0.840651,
		-0.288289, 0.792194, -0.537882,
		-0.950850, -0.303141, 0.063161,
		16.320202, 13.665372, 18.340178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556465, 14.498288, 18.414797>,  <16.985798, 13.877571, 18.295965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556465, 14.498288, 18.414797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337166, 14.191096, 18.547239>,  <16.205585, 14.006782, 18.626705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337166, 14.191096, 18.547239>,  <16.556465, 14.498288, 18.414797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337166, 14.191096, 18.547239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196980, 0.503351, 0.841330,
		-0.812786, 0.396038, -0.427239,
		-0.548250, -0.767979, 0.331105,
		16.172691, 13.960703, 18.646570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040817, 14.871434, 18.677204>,  <16.556465, 14.498288, 18.414797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040817, 14.871434, 18.677204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.049303, 14.501617, 18.829401>,  <16.054396, 14.279728, 18.920719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.049303, 14.501617, 18.829401>,  <16.040817, 14.871434, 18.677204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.049303, 14.501617, 18.829401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222827, 0.366632, 0.903288,
		-0.974627, -0.103948, -0.198234,
		0.021216, -0.924541, 0.380492,
		16.055668, 14.224256, 18.943548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.485434, 14.883699, 19.302097>,  <16.040817, 14.871434, 18.677204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.485434, 14.883699, 19.302097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.737270, 14.580136, 19.368637>,  <15.888372, 14.397998, 19.408562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.737270, 14.580136, 19.368637>,  <15.485434, 14.883699, 19.302097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.737270, 14.580136, 19.368637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023860, 0.232898, 0.972208,
		-0.776560, -0.608125, 0.164738,
		0.629591, -0.758909, 0.166350,
		15.926147, 14.352464, 19.418543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.213137, 14.582819, 19.921698>,  <15.485434, 14.883699, 19.302097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.213137, 14.582819, 19.921698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.590476, 14.457303, 19.878561>,  <15.816879, 14.381993, 19.852680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.590476, 14.457303, 19.878561>,  <15.213137, 14.582819, 19.921698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.590476, 14.457303, 19.878561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145935, 0.100493, 0.984177,
		-0.297988, -0.944159, 0.140593,
		0.943348, -0.313790, -0.107841,
		15.873481, 14.363166, 19.846209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439207, 14.247141, 20.631826>,  <15.213137, 14.582819, 19.921698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.439207, 14.247141, 20.631826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784901, 14.344195, 20.455542>,  <15.992316, 14.402428, 20.349770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784901, 14.344195, 20.455542>,  <15.439207, 14.247141, 20.631826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784901, 14.344195, 20.455542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432072, 0.090769, 0.897259,
		0.257712, -0.965861, -0.026391,
		0.864233, 0.242637, -0.440714,
		16.044170, 14.416986, 20.323328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.958048, 13.790275, 20.913988>,  <15.439207, 14.247141, 20.631826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.958048, 13.790275, 20.913988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143412, 14.111531, 20.764206>,  <16.254631, 14.304285, 20.674337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143412, 14.111531, 20.764206>,  <15.958048, 13.790275, 20.913988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143412, 14.111531, 20.764206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512978, 0.101427, 0.852388,
		0.722568, -0.587092, -0.364992,
		0.463410, 0.803141, -0.374453,
		16.282434, 14.352473, 20.651871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634953, 13.711944, 21.147106>,  <15.958048, 13.790275, 20.913988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634953, 13.711944, 21.147106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.616211, 14.100904, 21.055679>,  <16.604967, 14.334279, 21.000824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.616211, 14.100904, 21.055679>,  <16.634953, 13.711944, 21.147106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.616211, 14.100904, 21.055679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348635, 0.230348, 0.908512,
		0.936087, -0.037120, -0.349805,
		-0.046853, 0.972400, -0.228567,
		16.602156, 14.392624, 20.987108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.215290, 13.955949, 21.378525>,  <16.634953, 13.711944, 21.147106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.215290, 13.955949, 21.378525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.015705, 14.299167, 21.329874>,  <16.895954, 14.505097, 21.300684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.015705, 14.299167, 21.329874>,  <17.215290, 13.955949, 21.378525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.015705, 14.299167, 21.329874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281135, 0.293019, 0.913840,
		0.819755, 0.421780, -0.387432,
		-0.498964, 0.858045, -0.121626,
		16.866016, 14.556581, 21.293386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617937, 14.423431, 21.296600>,  <17.215290, 13.955949, 21.378525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617937, 14.423431, 21.296600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.289911, 14.605654, 21.435144>,  <17.093096, 14.714988, 21.518270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.289911, 14.605654, 21.435144>,  <17.617937, 14.423431, 21.296600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.289911, 14.605654, 21.435144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507909, 0.300519, 0.807290,
		0.263679, 0.837948, -0.477826,
		-0.820062, 0.455557, 0.346361,
		17.043892, 14.742321, 21.539053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807203, 15.039563, 21.500570>,  <17.617937, 14.423431, 21.296600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807203, 15.039563, 21.500570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459517, 15.004977, 21.695295>,  <17.250904, 14.984225, 21.812130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459517, 15.004977, 21.695295>,  <17.807203, 15.039563, 21.500570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.459517, 15.004977, 21.695295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402295, 0.448716, 0.798005,
		-0.287441, 0.889481, -0.355247,
		-0.869216, -0.086466, 0.486814,
		17.198751, 14.979037, 21.841339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.745644, 15.645134, 21.954411>,  <17.807203, 15.039563, 21.500570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.745644, 15.645134, 21.954411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.462097, 15.405027, 22.102566>,  <17.291969, 15.260963, 22.191460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.462097, 15.405027, 22.102566>,  <17.745644, 15.645134, 21.954411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.462097, 15.405027, 22.102566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245943, 0.281810, 0.927413,
		-0.661073, 0.748508, -0.052135,
		-0.708868, -0.600266, 0.370387,
		17.249437, 15.224948, 22.213682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620909, 15.974290, 22.541595>,  <17.745644, 15.645134, 21.954411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620909, 15.974290, 22.541595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.417694, 15.640109, 22.625423>,  <17.295765, 15.439601, 22.675720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.417694, 15.640109, 22.625423>,  <17.620909, 15.974290, 22.541595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.417694, 15.640109, 22.625423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108874, 0.179070, 0.977794,
		-0.854428, 0.519570, -0.000015,
		-0.508035, -0.835452, 0.209570,
		17.265284, 15.389473, 22.688293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.936024, 16.202671, 22.900934>,  <17.620909, 15.974290, 22.541595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.936024, 16.202671, 22.900934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.055414, 15.832479, 22.994230>,  <17.127048, 15.610365, 23.050207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.055414, 15.832479, 22.994230>,  <16.936024, 16.202671, 22.900934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.055414, 15.832479, 22.994230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094620, 0.271868, 0.957671,
		-0.949715, -0.263775, 0.168715,
		0.298478, -0.925478, 0.233239,
		17.144958, 15.554836, 23.064201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.637085, 16.196653, 23.482605>,  <16.936024, 16.202671, 22.900934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.637085, 16.196653, 23.482605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.896067, 15.892912, 23.508490>,  <17.051455, 15.710667, 23.524019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.896067, 15.892912, 23.508490>,  <16.637085, 16.196653, 23.482605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896067, 15.892912, 23.508490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093797, 0.004866, 0.995579,
		-0.756311, -0.650660, -0.068074,
		0.647453, -0.759353, 0.064710,
		17.090303, 15.665106, 23.527903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332296, 15.605437, 23.921148>,  <16.637085, 16.196653, 23.482605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332296, 15.605437, 23.921148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731920, 15.588169, 23.922819>,  <16.971695, 15.577808, 23.923822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731920, 15.588169, 23.922819>,  <16.332296, 15.605437, 23.921148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.731920, 15.588169, 23.922819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004903, 0.208137, 0.978087,
		-0.043094, -0.977147, 0.208152,
		0.999058, -0.043171, 0.004179,
		17.031637, 15.575218, 23.924072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.513145, 14.988936, 24.337254>,  <16.332296, 15.605437, 23.921148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.513145, 14.988936, 24.337254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.820055, 15.245385, 24.330921>,  <17.004202, 15.399255, 24.327122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.820055, 15.245385, 24.330921>,  <16.513145, 14.988936, 24.337254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.820055, 15.245385, 24.330921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133662, 0.184006, 0.973795,
		0.627235, -0.745053, 0.226877,
		0.767275, 0.641123, -0.015830,
		17.050238, 15.437722, 24.326172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.836229, 14.841446, 24.903078>,  <16.513145, 14.988936, 24.337254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.836229, 14.841446, 24.903078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.016544, 15.189060, 24.821526>,  <17.124733, 15.397629, 24.772594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.016544, 15.189060, 24.821526>,  <16.836229, 14.841446, 24.903078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.016544, 15.189060, 24.821526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035631, 0.245741, 0.968680,
		0.891920, -0.429404, 0.141741,
		0.450787, 0.869036, -0.203881,
		17.151781, 15.449771, 24.760361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408899, 14.930524, 25.543879>,  <16.836229, 14.841446, 24.903078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.408899, 14.930524, 25.543879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.322983, 15.282454, 25.374279>,  <17.271433, 15.493611, 25.272520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.322983, 15.282454, 25.374279>,  <17.408899, 14.930524, 25.543879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322983, 15.282454, 25.374279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039290, 0.441565, 0.896369,
		0.975869, 0.175875, -0.129414,
		-0.214793, 0.879823, -0.423999,
		17.258545, 15.546400, 25.247080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816954, 15.362116, 25.898293>,  <17.408899, 14.930524, 25.543879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816954, 15.362116, 25.898293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.548809, 15.608759, 25.733170>,  <17.387922, 15.756744, 25.634096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.548809, 15.608759, 25.733170>,  <17.816954, 15.362116, 25.898293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.548809, 15.608759, 25.733170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159716, 0.423380, 0.891762,
		0.724642, 0.663735, -0.185335,
		-0.670361, 0.616608, -0.412808,
		17.347700, 15.793741, 25.609327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056505, 16.004768, 26.024597>,  <17.816954, 15.362116, 25.898293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.056505, 16.004768, 26.024597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665087, 16.020643, 25.943731>,  <17.430235, 16.030169, 25.895212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665087, 16.020643, 25.943731>,  <18.056505, 16.004768, 26.024597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.665087, 16.020643, 25.943731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138551, 0.599473, 0.788313,
		0.152479, 0.799411, -0.581113,
		-0.978547, 0.039687, -0.202166,
		17.371523, 16.032549, 25.883081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.013430, 16.658676, 26.077152>,  <18.056505, 16.004768, 26.024597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.013430, 16.658676, 26.077152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633028, 16.542189, 26.118681>,  <17.404787, 16.472296, 26.143599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633028, 16.542189, 26.118681>,  <18.013430, 16.658676, 26.077152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633028, 16.542189, 26.118681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095176, 0.595254, 0.797881,
		-0.294158, 0.748908, -0.593808,
		-0.951006, -0.291219, 0.103821,
		17.347727, 16.454823, 26.149828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.604227, 17.281485, 26.076698>,  <18.013430, 16.658676, 26.077152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.604227, 17.281485, 26.076698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.368132, 16.990755, 26.217178>,  <17.226475, 16.816317, 26.301466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.368132, 16.990755, 26.217178>,  <17.604227, 17.281485, 26.076698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.368132, 16.990755, 26.217178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192639, 0.549327, 0.813099,
		-0.783906, 0.412267, -0.464249,
		-0.590239, -0.726825, 0.351202,
		17.191059, 16.772707, 26.322538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.919657, 17.463789, 26.039509>,  <17.604227, 17.281485, 26.076698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.919657, 17.463789, 26.039509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.979975, 17.221386, 26.351923>,  <17.016167, 17.075945, 26.539371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.979975, 17.221386, 26.351923>,  <16.919657, 17.463789, 26.039509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979975, 17.221386, 26.351923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296383, 0.726010, 0.620537,
		-0.943089, -0.325060, -0.070131,
		0.150796, -0.606008, 0.781035,
		17.025213, 17.039583, 26.586233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510977, 17.780733, 26.522036>,  <16.919657, 17.463789, 26.039509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510977, 17.780733, 26.522036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.709507, 17.511396, 26.741224>,  <16.828625, 17.349794, 26.872738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.709507, 17.511396, 26.741224>,  <16.510977, 17.780733, 26.522036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.709507, 17.511396, 26.741224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207149, 0.521115, 0.827967,
		-0.843059, -0.524454, 0.119162,
		0.496327, -0.673341, 0.547971,
		16.858406, 17.309395, 26.905615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.107908, 17.656622, 27.088108>,  <16.510977, 17.780733, 26.522036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.107908, 17.656622, 27.088108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463867, 17.516315, 27.204758>,  <16.677443, 17.432131, 27.274748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463867, 17.516315, 27.204758>,  <16.107908, 17.656622, 27.088108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463867, 17.516315, 27.204758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081654, 0.506485, 0.858374,
		-0.448794, -0.787676, 0.422078,
		0.889897, -0.350768, 0.291625,
		16.730837, 17.411085, 27.292246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.948102, 17.347824, 27.706957>,  <16.107908, 17.656622, 27.088108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.948102, 17.347824, 27.706957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.329615, 17.464663, 27.678726>,  <16.558523, 17.534765, 27.661789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.329615, 17.464663, 27.678726>,  <15.948102, 17.347824, 27.706957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.329615, 17.464663, 27.678726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125014, 0.599263, 0.790731,
		0.273261, -0.745362, 0.608082,
		0.953782, 0.292095, -0.070575,
		16.615749, 17.552292, 27.657553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343393, 17.232460, 28.405811>,  <15.948102, 17.347824, 27.706957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343393, 17.232460, 28.405811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.487118, 17.515692, 28.162659>,  <16.573353, 17.685631, 28.016768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.487118, 17.515692, 28.162659>,  <16.343393, 17.232460, 28.405811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487118, 17.515692, 28.162659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086659, 0.673885, 0.733737,
		0.929185, -0.210963, 0.303497,
		0.359313, 0.708078, -0.607882,
		16.594912, 17.728115, 27.980295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.933416, 17.532902, 28.628910>,  <16.343393, 17.232460, 28.405811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.933416, 17.532902, 28.628910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702496, 17.766150, 28.400282>,  <16.563944, 17.906097, 28.263105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702496, 17.766150, 28.400282>,  <16.933416, 17.532902, 28.628910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702496, 17.766150, 28.400282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222228, 0.561369, 0.797169,
		0.785708, 0.587227, -0.194494,
		-0.577303, 0.583120, -0.571570,
		16.529305, 17.941086, 28.228811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.064749, 18.225103, 28.750885>,  <16.933416, 17.532902, 28.628910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.064749, 18.225103, 28.750885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.694561, 18.179752, 28.606304>,  <16.472448, 18.152542, 28.519556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.694561, 18.179752, 28.606304>,  <17.064749, 18.225103, 28.750885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.694561, 18.179752, 28.606304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365467, 0.518323, 0.773159,
		0.099690, 0.847636, -0.521129,
		-0.925471, -0.113379, -0.361454,
		16.416920, 18.145739, 28.497868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.724133, 18.820711, 28.583036>,  <17.064749, 18.225103, 28.750885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.724133, 18.820711, 28.583036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.411797, 18.580477, 28.651840>,  <16.224396, 18.436337, 28.693123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.411797, 18.580477, 28.651840>,  <16.724133, 18.820711, 28.583036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.411797, 18.580477, 28.651840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356941, 0.654857, 0.666149,
		-0.512723, 0.458757, -0.725711,
		-0.780838, -0.600586, 0.172011,
		16.177546, 18.400301, 28.703444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.119297, 19.201689, 28.513504>,  <16.724133, 18.820711, 28.583036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.119297, 19.201689, 28.513504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.129242, 18.900120, 28.776100>,  <16.135208, 18.719177, 28.933659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.129242, 18.900120, 28.776100>,  <16.119297, 19.201689, 28.513504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.129242, 18.900120, 28.776100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413135, 0.590245, 0.693492,
		-0.910330, -0.288461, -0.296797,
		0.024863, -0.753924, 0.656491,
		16.136702, 18.673943, 28.973047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.124609, 19.927454, 28.376074>,  <16.119297, 19.201689, 28.513504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.124609, 19.927454, 28.376074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266596, 20.294258, 28.303314>,  <16.351788, 20.514341, 28.259659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266596, 20.294258, 28.303314>,  <16.124609, 19.927454, 28.376074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.266596, 20.294258, 28.303314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012062, -0.199045, -0.979916,
		-0.934800, 0.345645, -0.081716,
		0.354969, 0.917012, -0.181898,
		16.373087, 20.569361, 28.248745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705957, 20.207813, 27.864450>,  <16.124609, 19.927454, 28.376074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.705957, 20.207813, 27.864450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033012, 20.435776, 27.831776>,  <16.229246, 20.572554, 27.812170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033012, 20.435776, 27.831776>,  <15.705957, 20.207813, 27.864450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033012, 20.435776, 27.831776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142665, 0.063098, -0.987758,
		-0.557776, 0.819283, 0.132897,
		0.817639, 0.569907, -0.081688,
		16.278303, 20.606749, 27.807270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530021, 20.833284, 27.528217>,  <15.705957, 20.207813, 27.864450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530021, 20.833284, 27.528217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920258, 20.777519, 27.460352>,  <16.154400, 20.744061, 27.419632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920258, 20.777519, 27.460352>,  <15.530021, 20.833284, 27.528217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920258, 20.777519, 27.460352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174082, -0.020031, -0.984527,
		0.133855, 0.990032, -0.043810,
		0.975591, -0.139411, -0.169665,
		16.212934, 20.735697, 27.409452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742034, 21.272352, 26.985685>,  <15.530021, 20.833284, 27.528217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.742034, 21.272352, 26.985685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.042629, 21.009373, 27.007696>,  <16.222986, 20.851585, 27.020903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.042629, 21.009373, 27.007696>,  <15.742034, 21.272352, 26.985685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.042629, 21.009373, 27.007696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074526, -0.167469, -0.983056,
		0.655523, 0.734655, -0.174848,
		0.751489, -0.657447, 0.055029,
		16.268076, 20.812140, 27.024204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.133997, 21.312349, 26.356394>,  <15.742034, 21.272352, 26.985685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.133997, 21.312349, 26.356394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305229, 20.980925, 26.500746>,  <16.407969, 20.782070, 26.587357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305229, 20.980925, 26.500746>,  <16.133997, 21.312349, 26.356394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305229, 20.980925, 26.500746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260844, -0.269046, -0.927132,
		0.865278, 0.491023, 0.100951,
		0.428082, -0.828560, 0.360880,
		16.433655, 20.732357, 26.609009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708845, 21.153442, 25.893913>,  <16.133997, 21.312349, 26.356394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708845, 21.153442, 25.893913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598526, 20.823948, 26.092062>,  <16.532335, 20.626251, 26.210951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598526, 20.823948, 26.092062>,  <16.708845, 21.153442, 25.893913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.598526, 20.823948, 26.092062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274213, -0.561368, -0.780816,
		0.921273, -0.079509, 0.380703,
		-0.275797, -0.823738, 0.495370,
		16.515787, 20.576826, 26.240673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.137045, 20.703003, 25.674732>,  <16.708845, 21.153442, 25.893913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.137045, 20.703003, 25.674732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850819, 20.473009, 25.833405>,  <16.679083, 20.335012, 25.928608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850819, 20.473009, 25.833405>,  <17.137045, 20.703003, 25.674732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850819, 20.473009, 25.833405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129930, -0.667514, -0.733173,
		0.686355, -0.473094, 0.552358,
		-0.715567, -0.574985, 0.396683,
		16.636148, 20.300514, 25.952410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393763, 19.944221, 25.618401>,  <17.137045, 20.703003, 25.674732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.393763, 19.944221, 25.618401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.994093, 19.959791, 25.622988>,  <16.754292, 19.969133, 25.625740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.994093, 19.959791, 25.622988>,  <17.393763, 19.944221, 25.618401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.994093, 19.959791, 25.622988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031611, -0.569476, -0.821400,
		-0.025443, -0.821086, 0.570238,
		-0.999177, 0.038925, 0.011466,
		16.694340, 19.971468, 25.626427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146841, 19.243271, 25.443468>,  <17.393763, 19.944221, 25.618401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.146841, 19.243271, 25.443468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.808655, 19.454271, 25.410175>,  <16.605743, 19.580872, 25.390200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.808655, 19.454271, 25.410175>,  <17.146841, 19.243271, 25.443468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.808655, 19.454271, 25.410175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244556, -0.520999, -0.817773,
		-0.474737, -0.671047, 0.569492,
		-0.845469, 0.527499, -0.083228,
		16.555016, 19.612522, 25.385206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636080, 18.744659, 25.459799>,  <17.146841, 19.243271, 25.443468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636080, 18.744659, 25.459799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.519516, 19.082741, 25.280596>,  <16.449577, 19.285589, 25.173075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.519516, 19.082741, 25.280596>,  <16.636080, 18.744659, 25.459799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.519516, 19.082741, 25.280596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284704, -0.523740, -0.802895,
		-0.913249, -0.106424, 0.393257,
		-0.291411, 0.845205, -0.448006,
		16.432093, 19.336302, 25.146194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.937485, 18.724482, 25.299633>,  <16.636080, 18.744659, 25.459799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.937485, 18.724482, 25.299633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.035133, 19.007772, 25.034658>,  <16.093723, 19.177748, 24.875673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.035133, 19.007772, 25.034658>,  <15.937485, 18.724482, 25.299633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.035133, 19.007772, 25.034658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430554, -0.532925, -0.728433,
		-0.868924, 0.463040, 0.174831,
		0.244121, 0.708227, -0.662435,
		16.108370, 19.220240, 24.835928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.387773, 18.753899, 24.767460>,  <15.937485, 18.724482, 25.299633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.387773, 18.753899, 24.767460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.710527, 18.913216, 24.592968>,  <15.904181, 19.008806, 24.488272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.710527, 18.913216, 24.592968>,  <15.387773, 18.753899, 24.767460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.710527, 18.913216, 24.592968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178532, -0.539522, -0.822826,
		-0.563080, 0.741809, -0.364226,
		0.806887, 0.398291, -0.436231,
		15.952594, 19.032703, 24.462099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.243089, 18.858631, 24.073177>,  <15.387773, 18.753899, 24.767460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.243089, 18.858631, 24.073177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.642445, 18.863443, 24.095348>,  <15.882058, 18.866331, 24.108652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.642445, 18.863443, 24.095348>,  <15.243089, 18.858631, 24.073177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.642445, 18.863443, 24.095348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056517, -0.128361, -0.990116,
		-0.004799, 0.991655, -0.128835,
		0.998390, 0.012033, 0.055429,
		15.941961, 18.867054, 24.111977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.347522, 19.195019, 23.519976>,  <15.243089, 18.858631, 24.073177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.347522, 19.195019, 23.519976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692623, 19.013041, 23.608232>,  <15.899684, 18.903854, 23.661186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692623, 19.013041, 23.608232>,  <15.347522, 19.195019, 23.519976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.692623, 19.013041, 23.608232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166914, -0.155650, -0.973608,
		0.477282, 0.876811, -0.058351,
		0.862752, -0.454946, 0.220641,
		15.951448, 18.876556, 23.674425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.896242, 19.460365, 23.046169>,  <15.347522, 19.195019, 23.519976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.896242, 19.460365, 23.046169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.038307, 19.108555, 23.172846>,  <16.123547, 18.897469, 23.248852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.038307, 19.108555, 23.172846>,  <15.896242, 19.460365, 23.046169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.038307, 19.108555, 23.172846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200708, -0.259131, -0.944758,
		0.913004, 0.399105, 0.084494,
		0.355162, -0.879526, 0.316691,
		16.144855, 18.844696, 23.267853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.638378, 19.259859, 22.652765>,  <15.896242, 19.460365, 23.046169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.638378, 19.259859, 22.652765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.476564, 18.928795, 22.808371>,  <16.379477, 18.730156, 22.901733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.476564, 18.928795, 22.808371>,  <16.638378, 19.259859, 22.652765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.476564, 18.928795, 22.808371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219304, -0.500755, -0.837347,
		0.887838, -0.253425, 0.384082,
		-0.404536, -0.827659, 0.389012,
		16.355204, 18.680496, 22.925074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087811, 18.829407, 22.493553>,  <16.638378, 19.259859, 22.652765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.087811, 18.829407, 22.493553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.804541, 18.568525, 22.601713>,  <16.634579, 18.411997, 22.666609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.804541, 18.568525, 22.601713>,  <17.087811, 18.829407, 22.493553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.804541, 18.568525, 22.601713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289223, -0.617355, -0.731590,
		0.644078, -0.439890, 0.625828,
		-0.708176, -0.652204, 0.270398,
		16.592087, 18.372864, 22.682833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.343533, 18.198673, 22.570814>,  <17.087811, 18.829407, 22.493553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.343533, 18.198673, 22.570814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.961679, 18.103407, 22.499310>,  <16.732569, 18.046247, 22.456406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.961679, 18.103407, 22.499310>,  <17.343533, 18.198673, 22.570814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.961679, 18.103407, 22.499310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291277, -0.621919, -0.726894,
		0.061945, -0.745985, 0.663076,
		-0.954631, -0.238166, -0.178763,
		16.675289, 18.031958, 22.445681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.344751, 17.507145, 22.531528>,  <17.343533, 18.198673, 22.570814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.344751, 17.507145, 22.531528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.031687, 17.643738, 22.323360>,  <16.843849, 17.725693, 22.198460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.031687, 17.643738, 22.323360>,  <17.344751, 17.507145, 22.531528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.031687, 17.643738, 22.323360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328531, -0.483517, -0.811344,
		-0.528689, -0.805979, 0.266243,
		-0.782659, 0.341480, -0.520419,
		16.796888, 17.746181, 22.167234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847126, 16.892979, 22.423475>,  <17.344751, 17.507145, 22.531528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.847126, 16.892979, 22.423475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.772680, 17.165379, 22.140181>,  <16.728012, 17.328819, 21.970203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.772680, 17.165379, 22.140181>,  <16.847126, 16.892979, 22.423475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772680, 17.165379, 22.140181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225179, -0.672079, -0.705410,
		-0.956376, -0.290768, -0.028262,
		-0.186116, 0.681001, -0.708236,
		16.716845, 17.369678, 21.927710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752316, 16.487282, 21.900389>,  <16.847126, 16.892979, 22.423475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.752316, 16.487282, 21.900389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.754570, 16.838326, 21.708652>,  <16.755922, 17.048952, 21.593611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.754570, 16.838326, 21.708652>,  <16.752316, 16.487282, 21.900389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.754570, 16.838326, 21.708652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022215, -0.479342, -0.877347,
		-0.999737, -0.005702, -0.022199,
		0.005638, 0.877610, -0.479343,
		16.756262, 17.101608, 21.564850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.283827, 16.485285, 21.262081>,  <16.752316, 16.487282, 21.900389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.283827, 16.485285, 21.262081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.536654, 16.784187, 21.180008>,  <16.688349, 16.963530, 21.130764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.536654, 16.784187, 21.180008>,  <16.283827, 16.485285, 21.262081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.536654, 16.784187, 21.180008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008341, -0.271326, -0.962451,
		-0.774870, 0.606621, -0.177729,
		0.632066, 0.747257, -0.205182,
		16.726273, 17.008364, 21.118454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.082680, 16.646374, 20.587759>,  <16.283827, 16.485285, 21.262081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.082680, 16.646374, 20.587759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448387, 16.797720, 20.645657>,  <16.667812, 16.888527, 20.680395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448387, 16.797720, 20.645657>,  <16.082680, 16.646374, 20.587759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448387, 16.797720, 20.645657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274419, -0.315607, -0.908343,
		-0.298003, 0.870191, -0.392381,
		0.914269, 0.378365, 0.144745,
		16.722668, 16.911230, 20.689079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113459, 17.036829, 19.982931>,  <16.082680, 16.646374, 20.587759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113459, 17.036829, 19.982931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475351, 16.961287, 20.135664>,  <16.692486, 16.915962, 20.227304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475351, 16.961287, 20.135664>,  <16.113459, 17.036829, 19.982931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475351, 16.961287, 20.135664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308027, -0.329122, -0.892636,
		0.294248, 0.925209, -0.239594,
		0.904731, -0.188855, 0.381833,
		16.746771, 16.904631, 20.250214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.602980, 16.960587, 19.479481>,  <16.113459, 17.036829, 19.982931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.602980, 16.960587, 19.479481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.869020, 16.845434, 19.755095>,  <17.028645, 16.776342, 19.920464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.869020, 16.845434, 19.755095>,  <16.602980, 16.960587, 19.479481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.869020, 16.845434, 19.755095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682017, -0.141618, -0.717494,
		0.304131, 0.947138, 0.102148,
		0.665100, -0.287879, 0.689034,
		17.068550, 16.759071, 19.961805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.182838, 17.349228, 19.394110>,  <16.602980, 16.960587, 19.479481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.182838, 17.349228, 19.394110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.287033, 17.002539, 19.564255>,  <17.349550, 16.794525, 19.666342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.287033, 17.002539, 19.564255>,  <17.182838, 17.349228, 19.394110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287033, 17.002539, 19.564255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608816, -0.194480, -0.769104,
		0.749327, 0.459309, 0.477017,
		0.260486, -0.866725, 0.425364,
		17.365179, 16.742521, 19.691864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867748, 17.325596, 19.418560>,  <17.182838, 17.349228, 19.394110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.867748, 17.325596, 19.418560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765146, 16.941133, 19.459318>,  <17.703585, 16.710455, 19.483774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765146, 16.941133, 19.459318>,  <17.867748, 17.325596, 19.418560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.765146, 16.941133, 19.459318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667890, -0.252464, -0.700132,
		0.698662, -0.111531, 0.706705,
		-0.256504, -0.961157, 0.101897,
		17.688194, 16.652786, 19.489887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.527878, 17.033609, 19.463470>,  <17.867748, 17.325596, 19.418560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.527878, 17.033609, 19.463470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.297659, 16.722881, 19.361259>,  <18.159529, 16.536444, 19.299932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.297659, 16.722881, 19.361259>,  <18.527878, 17.033609, 19.463470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.297659, 16.722881, 19.361259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749380, -0.375914, -0.545085,
		0.327377, -0.505209, 0.798491,
		-0.575546, -0.776822, -0.255528,
		18.124994, 16.489836, 19.284601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949371, 16.491589, 19.484215>,  <18.527878, 17.033609, 19.463470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.949371, 16.491589, 19.484215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.647615, 16.364429, 19.254488>,  <18.466562, 16.288134, 19.116652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.647615, 16.364429, 19.254488>,  <18.949371, 16.491589, 19.484215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.647615, 16.364429, 19.254488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655398, -0.413750, -0.631874,
		-0.036752, -0.853084, 0.520478,
		-0.754389, -0.317897, -0.574316,
		18.421299, 16.269060, 19.082193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.126024, 15.722134, 19.307133>,  <18.949371, 16.491589, 19.484215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.126024, 15.722134, 19.307133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.856409, 15.838227, 19.035418>,  <18.694639, 15.907884, 18.872389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.856409, 15.838227, 19.035418>,  <19.126024, 15.722134, 19.307133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.856409, 15.838227, 19.035418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501488, -0.495408, -0.709282,
		-0.542386, -0.818739, 0.188374,
		-0.674038, 0.290237, -0.679290,
		18.654198, 15.925298, 18.831631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.881908, 15.163481, 18.909134>,  <19.126024, 15.722134, 19.307133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.881908, 15.163481, 18.909134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.849295, 15.487414, 18.676746>,  <18.829725, 15.681774, 18.537313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.849295, 15.487414, 18.676746>,  <18.881908, 15.163481, 18.909134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.849295, 15.487414, 18.676746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584769, -0.433160, -0.685869,
		-0.807091, -0.395654, -0.438248,
		-0.081536, 0.809833, -0.580967,
		18.824835, 15.730364, 18.502457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.736534, 14.906521, 18.202675>,  <18.881908, 15.163481, 18.909134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.736534, 14.906521, 18.202675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.869646, 15.282494, 18.172251>,  <18.949512, 15.508078, 18.153997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.869646, 15.282494, 18.172251>,  <18.736534, 14.906521, 18.202675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.869646, 15.282494, 18.172251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275957, -0.174190, -0.945254,
		-0.901724, 0.293572, -0.317348,
		0.332779, 0.939933, -0.076058,
		18.969481, 15.564473, 18.149433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.523329, 15.121442, 17.572281>,  <18.736534, 14.906521, 18.202675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.523329, 15.121442, 17.572281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.829203, 15.360624, 17.668365>,  <19.012728, 15.504134, 17.726017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.829203, 15.360624, 17.668365>,  <18.523329, 15.121442, 17.572281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.829203, 15.360624, 17.668365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244250, 0.076003, -0.966729,
		-0.596319, 0.797917, -0.087933,
		0.764686, 0.597957, 0.240213,
		19.058609, 15.540011, 17.740429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518482, 15.553802, 17.049252>,  <18.523329, 15.121442, 17.572281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518482, 15.553802, 17.049252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.880423, 15.626079, 17.203442>,  <19.097588, 15.669445, 17.295956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.880423, 15.626079, 17.203442>,  <18.518482, 15.553802, 17.049252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.880423, 15.626079, 17.203442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338466, 0.243881, -0.908825,
		-0.258229, 0.952823, 0.159518,
		0.904853, 0.180694, 0.385475,
		19.151878, 15.680286, 17.319084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.736202, 16.186979, 16.850586>,  <18.518482, 15.553802, 17.049252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.736202, 16.186979, 16.850586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.077868, 15.994855, 16.930290>,  <19.282867, 15.879580, 16.978113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.077868, 15.994855, 16.930290>,  <18.736202, 16.186979, 16.850586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.077868, 15.994855, 16.930290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335720, 0.216733, -0.916689,
		0.397111, 0.849898, 0.346376,
		0.854163, -0.480312, 0.199261,
		19.334116, 15.850761, 16.990068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171209, 16.653069, 16.521866>,  <18.736202, 16.186979, 16.850586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171209, 16.653069, 16.521866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.394926, 16.324871, 16.569172>,  <19.529156, 16.127953, 16.597555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.394926, 16.324871, 16.569172>,  <19.171209, 16.653069, 16.521866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.394926, 16.324871, 16.569172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455424, 0.184917, -0.870859,
		0.692664, 0.540923, 0.477094,
		0.559290, -0.820493, 0.118264,
		19.562714, 16.078724, 16.604650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.923298, 16.844042, 16.234674>,  <19.171209, 16.653069, 16.521866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.923298, 16.844042, 16.234674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.926540, 16.444223, 16.246275>,  <19.928486, 16.204332, 16.253235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.926540, 16.444223, 16.246275>,  <19.923298, 16.844042, 16.234674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.926540, 16.444223, 16.246275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541519, -0.019993, -0.840451,
		0.840649, 0.022520, 0.541111,
		0.008108, -0.999547, 0.029002,
		19.928972, 16.144360, 16.254976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.648809, 16.618143, 15.970406>,  <19.923298, 16.844042, 16.234674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.648809, 16.618143, 15.970406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.409716, 16.300220, 15.928461>,  <20.266260, 16.109467, 15.903295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.409716, 16.300220, 15.928461>,  <20.648809, 16.618143, 15.970406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.409716, 16.300220, 15.928461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537802, -0.300533, -0.787686,
		0.594544, -0.527222, 0.607087,
		-0.597735, -0.794807, -0.104861,
		20.230394, 16.061779, 15.897003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.071951, 16.172096, 15.880102>,  <20.648809, 16.618143, 15.970406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.071951, 16.172096, 15.880102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.731867, 16.010216, 15.745425>,  <20.527817, 15.913087, 15.664618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.731867, 16.010216, 15.745425>,  <21.071951, 16.172096, 15.880102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.731867, 16.010216, 15.745425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467114, -0.284965, -0.837018,
		0.242798, -0.868914, 0.431321,
		-0.850208, -0.404702, -0.336693,
		20.476805, 15.888805, 15.644417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.220282, 15.566175, 15.662920>,  <21.071951, 16.172096, 15.880102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.220282, 15.566175, 15.662920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.884495, 15.656220, 15.465083>,  <20.683023, 15.710248, 15.346381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.884495, 15.656220, 15.465083>,  <21.220282, 15.566175, 15.662920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.884495, 15.656220, 15.465083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388147, -0.388590, -0.835667,
		-0.380276, -0.893498, 0.238853,
		-0.839483, 0.225074, -0.494580,
		20.632654, 15.723755, 15.316706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.975368, 14.954347, 15.307472>,  <21.220282, 15.566175, 15.662920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.975368, 14.954347, 15.307472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.855145, 15.283966, 15.115386>,  <20.783010, 15.481738, 15.000134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.855145, 15.283966, 15.115386>,  <20.975368, 14.954347, 15.307472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.855145, 15.283966, 15.115386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570456, -0.248188, -0.782932,
		-0.764358, -0.509260, -0.395489,
		-0.300561, 0.824049, -0.480215,
		20.764977, 15.531180, 14.971321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.829569, 14.739960, 14.656654>,  <20.975368, 14.954347, 15.307472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.829569, 14.739960, 14.656654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.916670, 15.130153, 14.643909>,  <20.968931, 15.364268, 14.636263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.916670, 15.130153, 14.643909>,  <20.829569, 14.739960, 14.656654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.916670, 15.130153, 14.643909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469911, -0.133397, -0.872576,
		-0.855434, 0.175034, -0.487438,
		0.217754, 0.975484, -0.031862,
		20.981997, 15.422798, 14.634351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.632090, 15.034894, 13.930299>,  <20.829569, 14.739960, 14.656654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.632090, 15.034894, 13.930299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.888767, 15.282636, 14.111244>,  <21.042774, 15.431280, 14.219811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.888767, 15.282636, 14.111244>,  <20.632090, 15.034894, 13.930299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.888767, 15.282636, 14.111244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545205, 0.046468, -0.837014,
		-0.539428, 0.783736, -0.307856,
		0.641692, 0.619354, 0.452363,
		21.081274, 15.468442, 14.246953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.741360, 15.632740, 13.475115>,  <20.632090, 15.034894, 13.930299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.741360, 15.632740, 13.475115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.036968, 15.516527, 13.718241>,  <21.214333, 15.446799, 13.864117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.036968, 15.516527, 13.718241>,  <20.741360, 15.632740, 13.475115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.036968, 15.516527, 13.718241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610609, -0.092298, -0.786535,
		0.284615, 0.952403, 0.109192,
		0.739020, -0.290533, 0.607816,
		21.258675, 15.429367, 13.900585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.318382, 15.777966, 13.202515>,  <20.741360, 15.632740, 13.475115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.318382, 15.777966, 13.202515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503786, 15.549546, 13.473531>,  <21.615028, 15.412495, 13.636141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503786, 15.549546, 13.473531>,  <21.318382, 15.777966, 13.202515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.503786, 15.549546, 13.473531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689759, -0.247465, -0.680437,
		0.556230, 0.782729, 0.279184,
		0.463509, -0.571049, 0.677541,
		21.642839, 15.378231, 13.676793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.029413, 15.876872, 13.097662>,  <21.318382, 15.777966, 13.202515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.029413, 15.876872, 13.097662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988817, 15.507761, 13.246353>,  <21.964460, 15.286295, 13.335568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988817, 15.507761, 13.246353>,  <22.029413, 15.876872, 13.097662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.988817, 15.507761, 13.246353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607565, -0.353373, -0.711331,
		0.787759, 0.153656, 0.596511,
		-0.101491, -0.922777, 0.371729,
		21.958370, 15.230927, 13.357872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.486130, 16.144535, 12.618434>,  <22.029413, 15.876872, 13.097662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.486130, 16.144535, 12.618434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.598366, 16.365871, 12.932143>,  <21.665707, 16.498672, 13.120369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.598366, 16.365871, 12.932143>,  <21.486130, 16.144535, 12.618434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.598366, 16.365871, 12.932143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181672, 0.832944, -0.522685,
		-0.942478, 0.004180, 0.334241,
		0.280589, 0.553341, 0.784272,
		21.682543, 16.531874, 13.167425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176538, 16.805338, 12.407362>,  <21.486130, 16.144535, 12.618434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176538, 16.805338, 12.407362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.371597, 16.872622, 12.750035>,  <21.488632, 16.912991, 12.955640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.371597, 16.872622, 12.750035>,  <21.176538, 16.805338, 12.407362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.371597, 16.872622, 12.750035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127462, 0.984467, -0.120743,
		-0.863687, -0.050315, 0.501511,
		0.487646, 0.168208, 0.856684,
		21.517891, 16.923084, 13.007041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891142, 16.647066, 12.240003>,  <21.176538, 16.805338, 12.407362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891142, 16.647066, 12.240003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.724699, 16.307934, 12.108529>,  <21.624832, 16.104454, 12.029645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.724699, 16.307934, 12.108529>,  <21.891142, 16.647066, 12.240003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.724699, 16.307934, 12.108529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099733, 0.401836, -0.910264,
		0.903829, -0.345987, -0.251764,
		-0.416108, -0.847833, -0.328684,
		21.599867, 16.053583, 12.009924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125484, 16.555201, 11.542670>,  <21.891142, 16.647066, 12.240003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125484, 16.555201, 11.542670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.812378, 16.306278, 11.544039>,  <21.624514, 16.156925, 11.544860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.812378, 16.306278, 11.544039>,  <22.125484, 16.555201, 11.542670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.812378, 16.306278, 11.544039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168423, 0.206552, -0.963831,
		0.599093, -0.755029, -0.266493,
		-0.782765, -0.622308, 0.003420,
		21.577549, 16.119585, 11.545065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.139620, 16.385046, 10.890326>,  <22.125484, 16.555201, 11.542670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.139620, 16.385046, 10.890326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.768290, 16.270769, 10.985484>,  <21.545492, 16.202204, 11.042579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.768290, 16.270769, 10.985484>,  <22.139620, 16.385046, 10.890326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.768290, 16.270769, 10.985484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246532, -0.005906, -0.969117,
		0.278275, -0.958303, -0.064949,
		-0.928324, -0.285693, 0.237896,
		21.489792, 16.185062, 11.056853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.018221, 15.841234, 10.559166>,  <22.139620, 16.385046, 10.890326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.018221, 15.841234, 10.559166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.661493, 16.010000, 10.624464>,  <21.447456, 16.111259, 10.663643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.661493, 16.010000, 10.624464>,  <22.018221, 15.841234, 10.559166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.661493, 16.010000, 10.624464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161048, 0.041119, -0.986090,
		-0.422759, -0.905703, 0.031278,
		-0.891818, 0.421915, 0.163245,
		21.393948, 16.136574, 10.673437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.699074, 15.464892, 10.076234>,  <22.018221, 15.841234, 10.559166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.699074, 15.464892, 10.076234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.452053, 15.768344, 10.159285>,  <21.303841, 15.950415, 10.209115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.452053, 15.768344, 10.159285>,  <21.699074, 15.464892, 10.076234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.452053, 15.768344, 10.159285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323618, -0.004481, -0.946177,
		-0.716868, -0.651507, 0.248274,
		-0.617553, 0.758629, 0.207627,
		21.266787, 15.995933, 10.221573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.032305, 15.333015, 9.803734>,  <21.699074, 15.464892, 10.076234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.032305, 15.333015, 9.803734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.028273, 15.732668, 9.819898>,  <21.025854, 15.972460, 9.829596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.028273, 15.732668, 9.819898>,  <21.032305, 15.333015, 9.803734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.028273, 15.732668, 9.819898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299621, 0.035536, -0.953396,
		-0.954005, -0.021716, 0.299003,
		-0.010079, 0.999133, 0.040408,
		21.025249, 16.032408, 9.832020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.388857, 15.541227, 9.468685>,  <21.032305, 15.333015, 9.803734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.388857, 15.541227, 9.468685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.611794, 15.873176, 9.479167>,  <20.745556, 16.072344, 9.485456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.611794, 15.873176, 9.479167>,  <20.388857, 15.541227, 9.468685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.611794, 15.873176, 9.479167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380957, 0.283638, -0.880012,
		-0.737729, 0.480483, 0.474228,
		0.557340, 0.829870, 0.026204,
		20.778996, 16.122137, 9.487028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.004396, 16.006163, 9.134891>,  <20.388857, 15.541227, 9.468685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.004396, 16.006163, 9.134891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.371067, 16.165350, 9.120342>,  <20.591070, 16.260862, 9.111613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.371067, 16.165350, 9.120342>,  <20.004396, 16.006163, 9.134891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.371067, 16.165350, 9.120342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200402, 0.379044, -0.903418,
		-0.345745, 0.835432, 0.427215,
		0.916678, 0.397968, -0.036370,
		20.646070, 16.284740, 9.109431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.889500, 16.696510, 8.886669>,  <20.004396, 16.006163, 9.134891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.889500, 16.696510, 8.886669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.281111, 16.637352, 8.830623>,  <20.516077, 16.601856, 8.796994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.281111, 16.637352, 8.830623>,  <19.889500, 16.696510, 8.886669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.281111, 16.637352, 8.830623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042373, 0.524896, -0.850111,
		0.199275, 0.838219, 0.507620,
		0.979027, -0.147896, -0.140117,
		20.574820, 16.592983, 8.788588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.188307, 17.311886, 8.688774>,  <19.889500, 16.696510, 8.886669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.188307, 17.311886, 8.688774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.427429, 17.022163, 8.551366>,  <20.570904, 16.848330, 8.468921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.427429, 17.022163, 8.551366>,  <20.188307, 17.311886, 8.688774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.427429, 17.022163, 8.551366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167323, 0.531825, -0.830160,
		0.783983, 0.438797, 0.439123,
		0.597808, -0.724306, -0.343521,
		20.606771, 16.804873, 8.448310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.673368, 17.755836, 8.368812>,  <20.188307, 17.311886, 8.688774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.673368, 17.755836, 8.368812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708006, 17.384407, 8.224450>,  <20.728788, 17.161549, 8.137833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708006, 17.384407, 8.224450>,  <20.673368, 17.755836, 8.368812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708006, 17.384407, 8.224450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250812, 0.370916, -0.894156,
		0.964155, -0.013092, 0.265016,
		0.086592, -0.928574, -0.360904,
		20.733984, 17.105835, 8.116179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.284149, 17.695585, 8.050385>,  <20.673368, 17.755836, 8.368812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.284149, 17.695585, 8.050385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.084156, 17.406004, 7.860268>,  <20.964159, 17.232254, 7.746197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.084156, 17.406004, 7.860268>,  <21.284149, 17.695585, 8.050385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.084156, 17.406004, 7.860268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123393, 0.483667, -0.866510,
		0.857199, -0.491889, -0.152494,
		-0.499983, -0.723955, -0.475295,
		20.934160, 17.188818, 7.717679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.655294, 17.512384, 7.513556>,  <21.284149, 17.695585, 8.050385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.655294, 17.512384, 7.513556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.280317, 17.408953, 7.420317>,  <21.055330, 17.346893, 7.364374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.280317, 17.408953, 7.420317>,  <21.655294, 17.512384, 7.513556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.280317, 17.408953, 7.420317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137073, 0.341315, -0.929901,
		0.320009, -0.903683, -0.284520,
		-0.937446, -0.258577, -0.233094,
		20.999084, 17.331379, 7.350389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.749371, 17.333141, 6.873978>,  <21.655294, 17.512384, 7.513556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.749371, 17.333141, 6.873978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.351822, 17.360779, 6.908484>,  <21.113293, 17.377361, 6.929187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.351822, 17.360779, 6.908484>,  <21.749371, 17.333141, 6.873978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.351822, 17.360779, 6.908484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029757, 0.584402, -0.810918,
		-0.106443, -0.808517, -0.578766,
		-0.993874, 0.069094, 0.086264,
		21.053659, 17.381508, 6.934363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502216, 17.191521, 6.175456>,  <21.749371, 17.333141, 6.873978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.502216, 17.191521, 6.175456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.221041, 17.390795, 6.378507>,  <21.052336, 17.510359, 6.500338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.221041, 17.390795, 6.378507>,  <21.502216, 17.191521, 6.175456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.221041, 17.390795, 6.378507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124094, 0.616864, -0.777226,
		-0.700339, -0.609338, -0.371797,
		-0.702941, 0.498183, 0.507629,
		21.010159, 17.540249, 6.530796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.078178, 17.535091, 5.621870>,  <21.502216, 17.191521, 6.175456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.078178, 17.535091, 5.621870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950891, 17.759315, 5.927683>,  <20.874519, 17.893850, 6.111171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950891, 17.759315, 5.927683>,  <21.078178, 17.535091, 5.621870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950891, 17.759315, 5.927683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070997, 0.790098, -0.608855,
		-0.945355, -0.248028, -0.211626,
		-0.318218, 0.560560, 0.764533,
		20.855427, 17.927483, 6.157043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.652021, 18.027182, 5.298247>,  <21.078178, 17.535091, 5.621870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.652021, 18.027182, 5.298247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.766592, 18.187107, 5.646524>,  <20.835335, 18.283062, 5.855491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.766592, 18.187107, 5.646524>,  <20.652021, 18.027182, 5.298247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.766592, 18.187107, 5.646524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004052, 0.908256, -0.418395,
		-0.958094, 0.123367, 0.258529,
		0.286426, 0.399814, 0.870694,
		20.852520, 18.307051, 5.907732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.120640, 18.573971, 5.491427>,  <20.652021, 18.027182, 5.298247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.120640, 18.573971, 5.491427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.470171, 18.647661, 5.671423>,  <20.679890, 18.691875, 5.779420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.470171, 18.647661, 5.671423>,  <20.120640, 18.573971, 5.491427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.470171, 18.647661, 5.671423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031292, 0.902223, -0.430133,
		-0.485231, 0.389942, 0.782621,
		0.873826, 0.184224, 0.449989,
		20.732319, 18.702929, 5.806419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.000414, 19.189253, 5.758586>,  <20.120640, 18.573971, 5.491427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.000414, 19.189253, 5.758586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.398878, 19.155334, 5.767310>,  <20.637957, 19.134983, 5.772544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.398878, 19.155334, 5.767310>,  <20.000414, 19.189253, 5.758586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.398878, 19.155334, 5.767310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086641, 0.918753, -0.385209,
		0.012626, 0.385620, 0.922572,
		0.996160, -0.084796, 0.021810,
		20.697725, 19.129896, 5.773853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242710, 19.857201, 5.912406>,  <20.000414, 19.189253, 5.758586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242710, 19.857201, 5.912406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573847, 19.679607, 5.775259>,  <20.772530, 19.573051, 5.692970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573847, 19.679607, 5.775259>,  <20.242710, 19.857201, 5.912406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573847, 19.679607, 5.775259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306343, 0.869837, -0.386702,
		0.469928, 0.215093, 0.856098,
		0.827842, -0.443981, -0.342869,
		20.822199, 19.546413, 5.672398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.705288, 20.385801, 6.014318>,  <20.242710, 19.857201, 5.912406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.705288, 20.385801, 6.014318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883991, 20.127773, 5.766353>,  <20.991213, 19.972956, 5.617574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883991, 20.127773, 5.766353>,  <20.705288, 20.385801, 6.014318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883991, 20.127773, 5.766353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278130, 0.758713, -0.589065,
		0.850325, 0.090753, 0.518374,
		0.446757, -0.645072, -0.619911,
		21.018019, 19.934252, 5.580379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331141, 20.694773, 5.722723>,  <20.705288, 20.385801, 6.014318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331141, 20.694773, 5.722723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.148422, 20.437662, 5.476740>,  <21.038792, 20.283396, 5.329150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.148422, 20.437662, 5.476740>,  <21.331141, 20.694773, 5.722723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.148422, 20.437662, 5.476740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238366, 0.577574, -0.780763,
		0.857041, -0.503233, -0.110617,
		-0.456795, -0.642779, -0.614958,
		21.011383, 20.244829, 5.292253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.809406, 20.591255, 5.087859>,  <21.331141, 20.694773, 5.722723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.809406, 20.591255, 5.087859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443726, 20.499865, 4.953975>,  <21.224318, 20.445030, 4.873645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443726, 20.499865, 4.953975>,  <21.809406, 20.591255, 5.087859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.443726, 20.499865, 4.953975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192867, 0.481094, -0.855191,
		0.356418, -0.846372, -0.395752,
		-0.914204, -0.228478, -0.334708,
		21.169464, 20.431320, 4.853563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.439648, 21.053698, 5.258288>,  <21.809406, 20.591255, 5.087859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.439648, 21.053698, 5.258288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.508495, 20.953215, 5.639291>,  <22.549805, 20.892925, 5.867893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.508495, 20.953215, 5.639291>,  <22.439648, 21.053698, 5.258288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.508495, 20.953215, 5.639291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959321, -0.176917, -0.220010,
		0.223782, 0.951628, 0.210536,
		0.172121, -0.251206, 0.952507,
		22.560131, 20.877853, 5.925044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.097977, 21.144161, 5.481075>,  <22.439648, 21.053698, 5.258288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.097977, 21.144161, 5.481075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.994406, 20.890791, 5.772754>,  <22.932262, 20.738770, 5.947761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.994406, 20.890791, 5.772754>,  <23.097977, 21.144161, 5.481075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.994406, 20.890791, 5.772754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951230, -0.298286, 0.078661,
		0.167683, 0.714002, 0.679767,
		-0.258929, -0.633424, 0.729198,
		22.916727, 20.700764, 5.991513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.448366, 21.363359, 6.185284>,  <23.097977, 21.144161, 5.481075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.448366, 21.363359, 6.185284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.362614, 20.984276, 6.090724>,  <23.311163, 20.756824, 6.033989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.362614, 20.984276, 6.090724>,  <23.448366, 21.363359, 6.185284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.362614, 20.984276, 6.090724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968718, -0.237270, 0.072714,
		-0.125002, -0.213415, 0.968932,
		-0.214381, -0.947711, -0.236399,
		23.298300, 20.699963, 6.019805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.555504, 20.823763, 6.764456>,  <23.448366, 21.363359, 6.185284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.555504, 20.823763, 6.764456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.612427, 20.675667, 6.397268>,  <23.646582, 20.586809, 6.176955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.612427, 20.675667, 6.397268>,  <23.555504, 20.823763, 6.764456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.612427, 20.675667, 6.397268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974523, -0.110023, 0.195450,
		-0.173362, -0.922397, 0.345150,
		0.142309, -0.370240, -0.917971,
		23.655119, 20.564594, 6.121877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.729836, 21.016830, 7.432046>,  <23.555504, 20.823763, 6.764456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.729836, 21.016830, 7.432046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.431482, 20.902466, 7.672684>,  <23.252470, 20.833847, 7.817066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.431482, 20.902466, 7.672684>,  <23.729836, 21.016830, 7.432046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.431482, 20.902466, 7.672684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647499, -0.099401, 0.755556,
		-0.156222, 0.953087, 0.259268,
		-0.745882, -0.285910, 0.601594,
		23.207718, 20.816692, 7.853162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.883570, 21.237583, 8.127904>,  <23.729836, 21.016830, 7.432046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.883570, 21.237583, 8.127904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.593498, 20.964275, 8.161980>,  <23.419455, 20.800291, 8.182425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.593498, 20.964275, 8.161980>,  <23.883570, 21.237583, 8.127904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.593498, 20.964275, 8.161980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453060, -0.380321, 0.806283,
		-0.518510, 0.623296, 0.585363,
		-0.725179, -0.683271, 0.085190,
		23.375944, 20.759295, 8.187536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.695351, 21.160328, 8.807988>,  <23.883570, 21.237583, 8.127904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.695351, 21.160328, 8.807988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.545513, 20.823818, 8.652074>,  <23.455610, 20.621912, 8.558525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.545513, 20.823818, 8.652074>,  <23.695351, 21.160328, 8.807988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.545513, 20.823818, 8.652074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325099, -0.512880, 0.794522,
		-0.868326, 0.170904, 0.465620,
		-0.374595, -0.841276, -0.389786,
		23.433134, 20.571436, 8.535138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.178030, 20.864029, 9.232486>,  <23.695351, 21.160328, 8.807988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.178030, 20.864029, 9.232486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.359959, 20.589985, 9.004887>,  <23.469116, 20.425558, 8.868327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.359959, 20.589985, 9.004887>,  <23.178030, 20.864029, 9.232486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.359959, 20.589985, 9.004887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248275, -0.516035, 0.819797,
		-0.855276, -0.514130, -0.064607,
		0.454822, -0.685112, -0.568998,
		23.496405, 20.384451, 8.834188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.854271, 20.263016, 9.437311>,  <23.178030, 20.864029, 9.232486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.854271, 20.263016, 9.437311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.189678, 20.151371, 9.250127>,  <23.390923, 20.084383, 9.137816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.189678, 20.151371, 9.250127>,  <22.854271, 20.263016, 9.437311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.189678, 20.151371, 9.250127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173262, -0.677677, 0.714657,
		-0.516595, -0.680331, -0.519884,
		0.838516, -0.279112, -0.467960,
		23.441233, 20.067636, 9.109738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.839264, 19.516193, 9.506452>,  <22.854271, 20.263016, 9.437311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.839264, 19.516193, 9.506452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.223423, 19.584513, 9.418397>,  <23.453918, 19.625504, 9.365564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.223423, 19.584513, 9.418397>,  <22.839264, 19.516193, 9.506452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.223423, 19.584513, 9.418397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263653, -0.812600, 0.519777,
		-0.090107, -0.557233, -0.825453,
		0.960400, 0.170798, -0.220138,
		23.511543, 19.635752, 9.352356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.155554, 18.837923, 9.380172>,  <22.839264, 19.516193, 9.506452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.155554, 18.837923, 9.380172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.468811, 19.076815, 9.449456>,  <23.656765, 19.220150, 9.491027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.468811, 19.076815, 9.449456>,  <23.155554, 18.837923, 9.380172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.468811, 19.076815, 9.449456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383858, -0.683437, 0.620940,
		0.489224, -0.419796, -0.764481,
		0.783143, 0.597231, 0.173212,
		23.703754, 19.255983, 9.501420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.699068, 18.471836, 9.384206>,  <23.155554, 18.837923, 9.380172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.699068, 18.471836, 9.384206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.823824, 18.775814, 9.612312>,  <23.898678, 18.958200, 9.749176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.823824, 18.775814, 9.612312>,  <23.699068, 18.471836, 9.384206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.823824, 18.775814, 9.612312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407824, -0.649181, 0.642062,
		0.858139, 0.032315, -0.512399,
		0.311891, 0.759947, 0.570267,
		23.917391, 19.003798, 9.783392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.308798, 18.301517, 9.646657>,  <23.699068, 18.471836, 9.384206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.308798, 18.301517, 9.646657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255346, 18.601923, 9.905307>,  <24.223274, 18.782166, 10.060496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255346, 18.601923, 9.905307>,  <24.308798, 18.301517, 9.646657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255346, 18.601923, 9.905307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461552, -0.530232, 0.711213,
		0.876990, 0.393491, -0.275776,
		-0.133631, 0.751012, 0.646625,
		24.215258, 18.827227, 10.099295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.959852, 18.428307, 9.968550>,  <24.308798, 18.301517, 9.646657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.959852, 18.428307, 9.968550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663445, 18.552372, 10.206774>,  <24.485600, 18.626812, 10.349708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663445, 18.552372, 10.206774>,  <24.959852, 18.428307, 9.968550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.663445, 18.552372, 10.206774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392304, -0.519847, 0.758852,
		0.544968, 0.795963, 0.263538,
		-0.741018, 0.310164, 0.595559,
		24.441139, 18.645422, 10.385442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251493, 18.499966, 10.573444>,  <24.959852, 18.428307, 9.968550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251493, 18.499966, 10.573444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866739, 18.470558, 10.678797>,  <24.635887, 18.452913, 10.742008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866739, 18.470558, 10.678797>,  <25.251493, 18.499966, 10.573444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866739, 18.470558, 10.678797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237189, -0.703614, 0.669827,
		0.136072, 0.706769, 0.694235,
		-0.961887, -0.073521, 0.263380,
		24.578173, 18.448502, 10.757811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229860, 18.533106, 11.244949>,  <25.251493, 18.499966, 10.573444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229860, 18.533106, 11.244949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884760, 18.360037, 11.140296>,  <24.677700, 18.256195, 11.077504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884760, 18.360037, 11.140296>,  <25.229860, 18.533106, 11.244949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884760, 18.360037, 11.140296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059468, -0.600683, 0.797273,
		-0.502118, 0.672290, 0.543971,
		-0.862752, -0.432674, -0.261633,
		24.625935, 18.230234, 11.061806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896273, 18.381918, 11.953571>,  <25.229860, 18.533106, 11.244949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896273, 18.381918, 11.953571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723032, 18.182943, 11.652910>,  <24.619087, 18.063559, 11.472513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723032, 18.182943, 11.652910>,  <24.896273, 18.381918, 11.953571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723032, 18.182943, 11.652910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169630, -0.774039, 0.609991,
		-0.885239, 0.391691, 0.250857,
		-0.433101, -0.497435, -0.751653,
		24.593102, 18.033712, 11.427414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.472107, 17.987396, 12.402267>,  <24.896273, 18.381918, 11.953571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.472107, 17.987396, 12.402267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421638, 17.813698, 12.045501>,  <24.391357, 17.709478, 11.831441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421638, 17.813698, 12.045501>,  <24.472107, 17.987396, 12.402267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.421638, 17.813698, 12.045501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017298, -0.898001, 0.439654,
		-0.991858, 0.070900, 0.105789,
		-0.126170, -0.434244, -0.891915,
		24.383787, 17.683424, 11.777926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.820736, 17.676571, 12.347764>,  <24.472107, 17.987396, 12.402267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.820736, 17.676571, 12.347764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.094004, 17.486336, 12.126100>,  <24.257965, 17.372194, 11.993101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.094004, 17.486336, 12.126100>,  <23.820736, 17.676571, 12.347764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.094004, 17.486336, 12.126100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017990, -0.769585, 0.638291,
		-0.730037, -0.426092, -0.534314,
		0.683171, -0.475588, -0.554161,
		24.298954, 17.343658, 11.959851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.593006, 16.954786, 12.364435>,  <23.820736, 17.676571, 12.347764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.593006, 16.954786, 12.364435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.963474, 16.910959, 12.220100>,  <24.185755, 16.884663, 12.133499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.963474, 16.910959, 12.220100>,  <23.593006, 16.954786, 12.364435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.963474, 16.910959, 12.220100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034815, -0.927929, 0.371128,
		-0.375495, -0.356290, -0.855605,
		0.926170, -0.109569, -0.360837,
		24.241325, 16.878088, 12.111849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.668810, 16.236040, 12.218171>,  <23.593006, 16.954786, 12.364435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.668810, 16.236040, 12.218171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.055737, 16.337250, 12.211534>,  <24.287893, 16.397976, 12.207551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.055737, 16.337250, 12.211534>,  <23.668810, 16.236040, 12.218171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.055737, 16.337250, 12.211534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250116, -0.941334, 0.226567,
		0.041706, -0.223313, -0.973854,
		0.967317, 0.253026, -0.016595,
		24.345932, 16.413158, 12.206555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.992958, 15.745013, 11.730841>,  <23.668810, 16.236040, 12.218171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.992958, 15.745013, 11.730841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261299, 15.897831, 11.985085>,  <24.422304, 15.989521, 12.137630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261299, 15.897831, 11.985085>,  <23.992958, 15.745013, 11.730841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.261299, 15.897831, 11.985085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240136, -0.922821, 0.301226,
		0.701635, -0.049446, -0.710819,
		0.670853, 0.382044, 0.635609,
		24.462555, 16.012444, 12.175767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.472790, 15.221385, 11.783918>,  <23.992958, 15.745013, 11.730841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.472790, 15.221385, 11.783918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548386, 15.450744, 12.102792>,  <24.593742, 15.588359, 12.294116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548386, 15.450744, 12.102792>,  <24.472790, 15.221385, 11.783918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548386, 15.450744, 12.102792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351884, -0.797444, 0.490164,
		0.916767, 0.187881, -0.352476,
		0.188988, 0.573397, 0.797182,
		24.605082, 15.622763, 12.341947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128822, 15.043384, 11.962628>,  <24.472790, 15.221385, 11.783918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128822, 15.043384, 11.962628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958281, 15.197113, 12.290169>,  <24.855955, 15.289351, 12.486693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958281, 15.197113, 12.290169>,  <25.128822, 15.043384, 11.962628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958281, 15.197113, 12.290169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170457, -0.854898, 0.489994,
		0.888351, 0.348489, 0.298977,
		-0.426353, 0.384324, 0.818852,
		24.830376, 15.312410, 12.535825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743156, 14.711728, 11.664598>,  <25.128822, 15.043384, 11.962628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743156, 14.711728, 11.664598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710026, 14.362716, 11.472003>,  <25.690147, 14.153308, 11.356446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710026, 14.362716, 11.472003>,  <25.743156, 14.711728, 11.664598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710026, 14.362716, 11.472003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075186, -0.487240, 0.870026,
		-0.993724, 0.035862, 0.105959,
		-0.082828, -0.872532, -0.481485,
		25.685177, 14.100956, 11.327558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458763, 14.772292, 11.984037>,  <25.743156, 14.711728, 11.664598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458763, 14.772292, 11.984037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813995, 14.809947, 12.164014>,  <27.027136, 14.832540, 12.271999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813995, 14.809947, 12.164014>,  <26.458763, 14.772292, 11.984037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813995, 14.809947, 12.164014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378026, -0.407347, 0.831363,
		0.261545, -0.908409, -0.326171,
		0.888082, 0.094138, 0.449941,
		27.080420, 14.838188, 12.298996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691259, 14.066942, 12.315516>,  <26.458763, 14.772292, 11.984037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691259, 14.066942, 12.315516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814262, 14.404335, 12.491687>,  <26.888063, 14.606771, 12.597389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814262, 14.404335, 12.491687>,  <26.691259, 14.066942, 12.315516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814262, 14.404335, 12.491687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443926, -0.282228, 0.850457,
		0.841646, -0.457040, 0.287656,
		0.307508, 0.843482, 0.440428,
		26.906515, 14.657380, 12.623816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940699, 13.834136, 13.031113>,  <26.691259, 14.066942, 12.315516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940699, 13.834136, 13.031113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843281, 14.221820, 13.016602>,  <26.784830, 14.454431, 13.007895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843281, 14.221820, 13.016602>,  <26.940699, 13.834136, 13.031113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843281, 14.221820, 13.016602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179362, -0.008248, 0.983749,
		0.953160, 0.246096, 0.175848,
		-0.243547, 0.969210, -0.036278,
		26.770216, 14.512583, 13.005718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340618, 14.341904, 13.545780>,  <26.940699, 13.834136, 13.031113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340618, 14.341904, 13.545780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966545, 14.441776, 13.445305>,  <26.742102, 14.501699, 13.385019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966545, 14.441776, 13.445305>,  <27.340618, 14.341904, 13.545780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966545, 14.441776, 13.445305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261837, -0.009823, 0.965062,
		0.238491, 0.968278, 0.074562,
		-0.935181, 0.249681, -0.251188,
		26.685991, 14.516681, 13.369948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137907, 15.028231, 13.586308>,  <27.340618, 14.341904, 13.545780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137907, 15.028231, 13.586308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919514, 14.719089, 13.715674>,  <26.788479, 14.533604, 13.793295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919514, 14.719089, 13.715674>,  <27.137907, 15.028231, 13.586308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919514, 14.719089, 13.715674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020075, 0.373855, 0.927270,
		-0.837556, 0.512765, -0.188603,
		-0.545982, -0.772855, 0.323418,
		26.755718, 14.487232, 13.812700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694157, 15.242874, 14.092319>,  <27.137907, 15.028231, 13.586308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694157, 15.242874, 14.092319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657715, 14.847589, 14.141536>,  <26.635851, 14.610419, 14.171066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657715, 14.847589, 14.141536>,  <26.694157, 15.242874, 14.092319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657715, 14.847589, 14.141536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206767, 0.139635, 0.968375,
		-0.974140, 0.062780, -0.217050,
		-0.091103, -0.988211, 0.123043,
		26.630384, 14.551126, 14.178449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637234, 15.494138, 14.797288>,  <26.694157, 15.242874, 14.092319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637234, 15.494138, 14.797288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789995, 15.192533, 15.011061>,  <26.881653, 15.011571, 15.139324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789995, 15.192533, 15.011061>,  <26.637234, 15.494138, 14.797288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789995, 15.192533, 15.011061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924189, 0.314621, -0.216536,
		-0.004874, 0.576613, 0.817003,
		0.381904, -0.754010, 0.534433,
		26.904566, 14.966331, 15.171391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.088685, 20.881468, 21.596184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.688931, 20.890717, 21.606703>,  <13.449078, 20.896267, 21.613014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.688931, 20.890717, 21.606703>,  <14.088685, 20.881468, 21.596184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.688931, 20.890717, 21.606703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034578, -0.532840, -0.845509,
		-0.005538, -0.845900, 0.533313,
		-0.999387, 0.023123, 0.026298,
		13.389114, 20.897654, 21.614592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.776615, 20.106241, 21.472334>,  <14.088685, 20.881468, 21.596184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.776615, 20.106241, 21.472334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.502298, 20.379778, 21.372694>,  <13.337708, 20.543900, 21.312910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.502298, 20.379778, 21.372694>,  <13.776615, 20.106241, 21.472334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.502298, 20.379778, 21.372694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211585, -0.514811, -0.830783,
		-0.696364, -0.517038, 0.497744,
		-0.685790, 0.683843, -0.249099,
		13.296561, 20.584930, 21.297964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.202329, 19.794973, 21.372766>,  <13.776615, 20.106241, 21.472334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.202329, 19.794973, 21.372766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.135606, 20.121422, 21.151453>,  <13.095572, 20.317291, 21.018665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.135606, 20.121422, 21.151453>,  <13.202329, 19.794973, 21.372766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.135606, 20.121422, 21.151453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330978, -0.574933, -0.748269,
		-0.928778, 0.058309, 0.366021,
		-0.166807, 0.816121, -0.553284,
		13.085564, 20.366259, 20.985468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.543246, 19.695276, 21.103062>,  <13.202329, 19.794973, 21.372766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.543246, 19.695276, 21.103062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.704537, 19.966227, 20.856949>,  <12.801312, 20.128796, 20.709282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.704537, 19.966227, 20.856949>,  <12.543246, 19.695276, 21.103062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.704537, 19.966227, 20.856949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157703, -0.610868, -0.775868,
		-0.901408, 0.409883, -0.139495,
		0.403228, 0.677375, -0.615281,
		12.825506, 20.169439, 20.672365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.094954, 19.730278, 20.431610>,  <12.543246, 19.695276, 21.103062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.094954, 19.730278, 20.431610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.467215, 19.852625, 20.351274>,  <12.690571, 19.926033, 20.303074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.467215, 19.852625, 20.351274>,  <12.094954, 19.730278, 20.431610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.467215, 19.852625, 20.351274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028089, -0.487536, -0.872651,
		-0.364832, 0.817774, -0.445134,
		0.930650, 0.305868, -0.200839,
		12.746409, 19.944386, 20.291023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.979239, 19.920294, 19.748997>,  <12.094954, 19.730278, 20.431610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.979239, 19.920294, 19.748997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.375668, 19.907623, 19.800804>,  <12.613524, 19.900021, 19.831888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.375668, 19.907623, 19.800804>,  <11.979239, 19.920294, 19.748997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.375668, 19.907623, 19.800804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087956, -0.574746, -0.813591,
		0.100213, 0.817719, -0.566827,
		0.991071, -0.031677, 0.129521,
		12.672989, 19.898121, 19.839661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.160975, 20.014133, 19.057119>,  <11.979239, 19.920294, 19.748997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.160975, 20.014133, 19.057119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.478818, 19.851282, 19.237272>,  <12.669523, 19.753571, 19.345364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.478818, 19.851282, 19.237272>,  <12.160975, 20.014133, 19.057119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.478818, 19.851282, 19.237272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050990, -0.694459, -0.717724,
		0.604980, 0.593273, -0.531062,
		0.794606, -0.407130, 0.450384,
		12.717200, 19.729143, 19.372387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.584586, 19.878101, 18.500629>,  <12.160975, 20.014133, 19.057119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.584586, 19.878101, 18.500629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.719923, 19.659565, 18.807102>,  <12.801126, 19.528444, 18.990986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.719923, 19.659565, 18.807102>,  <12.584586, 19.878101, 18.500629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.719923, 19.659565, 18.807102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123593, -0.781350, -0.611733,
		0.932871, 0.301671, -0.196840,
		0.338343, -0.546340, 0.766183,
		12.821426, 19.495663, 19.036957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.212227, 19.567059, 18.230131>,  <12.584586, 19.878101, 18.500629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.212227, 19.567059, 18.230131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.126871, 19.328535, 18.539680>,  <13.075658, 19.185421, 18.725410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.126871, 19.328535, 18.539680>,  <13.212227, 19.567059, 18.230131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.126871, 19.328535, 18.539680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009203, -0.793311, -0.608746,
		0.976924, -0.122777, 0.174771,
		-0.213388, -0.596308, 0.773875,
		13.062855, 19.149643, 18.771843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.758194, 19.082903, 18.416544>,  <13.212227, 19.567059, 18.230131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.758194, 19.082903, 18.416544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.427511, 18.907255, 18.557245>,  <13.229102, 18.801867, 18.641666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.427511, 18.907255, 18.557245>,  <13.758194, 19.082903, 18.416544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.427511, 18.907255, 18.557245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203220, -0.816035, -0.541099,
		0.524651, -0.375846, 0.763859,
		-0.826706, -0.439120, 0.351755,
		13.179500, 18.775518, 18.662771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.015458, 18.591852, 18.746927>,  <13.758194, 19.082903, 18.416544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.015458, 18.591852, 18.746927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.629182, 18.510254, 18.682642>,  <13.397416, 18.461294, 18.644072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.629182, 18.510254, 18.682642>,  <14.015458, 18.591852, 18.746927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.629182, 18.510254, 18.682642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246317, -0.915558, -0.317933,
		-0.082284, -0.346611, 0.934393,
		-0.965690, -0.203996, -0.160712,
		13.339475, 18.449055, 18.634428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.894144, 17.882095, 18.978519>,  <14.015458, 18.591852, 18.746927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.894144, 17.882095, 18.978519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.600381, 17.943916, 18.714169>,  <13.424123, 17.981009, 18.555557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.600381, 17.943916, 18.714169>,  <13.894144, 17.882095, 18.978519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.600381, 17.943916, 18.714169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362632, -0.733736, -0.574569,
		-0.573710, -0.661623, 0.482815,
		-0.734407, 0.154552, -0.660878,
		13.380059, 17.990282, 18.515905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.672957, 17.273157, 18.782722>,  <13.894144, 17.882095, 18.978519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.672957, 17.273157, 18.782722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.502683, 17.459105, 18.472191>,  <13.400517, 17.570673, 18.285872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.502683, 17.459105, 18.472191>,  <13.672957, 17.273157, 18.782722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.502683, 17.459105, 18.472191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412142, -0.664177, -0.623705,
		-0.805562, -0.585461, 0.091139,
		-0.425687, 0.464871, -0.776328,
		13.374976, 17.598566, 18.239292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.356024, 16.784605, 18.530813>,  <13.672957, 17.273157, 18.782722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.356024, 16.784605, 18.530813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.398818, 17.057936, 18.241920>,  <13.424495, 17.221933, 18.068584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.398818, 17.057936, 18.241920>,  <13.356024, 16.784605, 18.530813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.398818, 17.057936, 18.241920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257539, -0.720656, -0.643684,
		-0.960327, -0.117138, -0.253083,
		0.106986, 0.683326, -0.722233,
		13.430914, 17.262934, 18.025251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315128, 16.397612, 17.940863>,  <13.356024, 16.784605, 18.530813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.315128, 16.397612, 17.940863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.436745, 16.731886, 17.757914>,  <13.509715, 16.932451, 17.648144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.436745, 16.731886, 17.757914>,  <13.315128, 16.397612, 17.940863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.436745, 16.731886, 17.757914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096224, -0.504584, -0.857984,
		-0.947787, 0.216853, -0.233827,
		0.304042, 0.835685, -0.457372,
		13.527957, 16.982592, 17.620703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.043638, 16.455580, 17.288357>,  <13.315128, 16.397612, 17.940863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.043638, 16.455580, 17.288357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.387897, 16.658279, 17.268393>,  <13.594452, 16.779900, 17.256414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.387897, 16.658279, 17.268393>,  <13.043638, 16.455580, 17.288357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.387897, 16.658279, 17.268393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277107, -0.548335, -0.789012,
		-0.427200, 0.665231, -0.612347,
		0.860646, 0.506751, -0.049908,
		13.646091, 16.810305, 17.253420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.125147, 16.494644, 16.655952>,  <13.043638, 16.455580, 17.288357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.125147, 16.494644, 16.655952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.499415, 16.596582, 16.753582>,  <13.723977, 16.657745, 16.812159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.499415, 16.596582, 16.753582>,  <13.125147, 16.494644, 16.655952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.499415, 16.596582, 16.753582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342053, -0.485080, -0.804796,
		-0.086705, 0.836511, -0.541047,
		0.935672, 0.254847, 0.244072,
		13.780117, 16.673037, 16.826803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.340539, 16.834953, 16.026320>,  <13.125147, 16.494644, 16.655952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.340539, 16.834953, 16.026320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.670180, 16.734024, 16.229174>,  <13.867965, 16.673468, 16.350887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.670180, 16.734024, 16.229174>,  <13.340539, 16.834953, 16.026320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.670180, 16.734024, 16.229174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455341, -0.237443, -0.858071,
		0.336926, 0.938059, -0.080785,
		0.824103, -0.252322, 0.507137,
		13.917411, 16.658327, 16.381315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.852693, 17.100203, 15.712703>,  <13.340539, 16.834953, 16.026320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.852693, 17.100203, 15.712703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.046546, 16.811649, 15.910587>,  <14.162858, 16.638517, 16.029318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.046546, 16.811649, 15.910587>,  <13.852693, 17.100203, 15.712703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.046546, 16.811649, 15.910587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438446, -0.289052, -0.851008,
		0.756899, 0.629331, 0.176203,
		0.484633, -0.721382, 0.494711,
		14.191936, 16.595234, 16.059000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.641242, 17.158245, 15.650663>,  <13.852693, 17.100203, 15.712703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.641242, 17.158245, 15.650663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.545726, 16.775162, 15.714882>,  <14.488417, 16.545311, 15.753413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.545726, 16.775162, 15.714882>,  <14.641242, 17.158245, 15.650663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.545726, 16.775162, 15.714882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653827, -0.280803, -0.702609,
		0.717976, -0.062807, 0.693228,
		-0.238790, -0.957708, 0.160545,
		14.474089, 16.487850, 15.763045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.207653, 16.726004, 15.491453>,  <14.641242, 17.158245, 15.650663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.207653, 16.726004, 15.491453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.921206, 16.446930, 15.483305>,  <14.749338, 16.279486, 15.478416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.921206, 16.446930, 15.483305>,  <15.207653, 16.726004, 15.491453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.921206, 16.446930, 15.483305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383726, -0.369151, -0.846453,
		0.583037, -0.613975, 0.532074,
		-0.716116, -0.697684, -0.020370,
		14.706371, 16.237625, 15.477194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.564850, 16.075924, 15.319599>,  <15.207653, 16.726004, 15.491453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.564850, 16.075924, 15.319599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.176837, 16.045338, 15.227346>,  <14.944029, 16.026985, 15.171995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.176837, 16.045338, 15.227346>,  <15.564850, 16.075924, 15.319599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.176837, 16.045338, 15.227346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242968, -0.296643, -0.923564,
		0.002207, -0.951922, 0.306332,
		-0.970032, -0.076467, -0.230632,
		14.885827, 16.022398, 15.158156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170210, 16.076311, 15.042557>,  <15.564850, 16.075924, 15.319599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.170210, 16.076311, 15.042557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.539127, 16.166292, 14.916848>,  <16.760479, 16.220282, 14.841423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.539127, 16.166292, 14.916848>,  <16.170210, 16.076311, 15.042557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539127, 16.166292, 14.916848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235357, 0.318081, 0.918386,
		0.306539, -0.920994, 0.240426,
		0.922302, 0.224935, -0.314266,
		16.815817, 16.233778, 14.822567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.680986, 15.824827, 15.492848>,  <16.170210, 16.076311, 15.042557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.680986, 15.824827, 15.492848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.912352, 16.093239, 15.307308>,  <17.051170, 16.254286, 15.195984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.912352, 16.093239, 15.307308>,  <16.680986, 15.824827, 15.492848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912352, 16.093239, 15.307308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261481, 0.386105, 0.884619,
		0.772699, -0.632965, 0.047868,
		0.578415, 0.671028, -0.463851,
		17.085876, 16.294548, 15.168153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322058, 15.953269, 15.988585>,  <16.680986, 15.824827, 15.492848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.322058, 15.953269, 15.988585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.291370, 16.269073, 15.745017>,  <17.272959, 16.458557, 15.598876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.291370, 16.269073, 15.745017>,  <17.322058, 15.953269, 15.988585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.291370, 16.269073, 15.745017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006588, 0.611110, 0.791518,
		0.997031, 0.056711, -0.052084,
		-0.076717, 0.789512, -0.608922,
		17.268354, 16.505926, 15.562341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870203, 16.408001, 16.109484>,  <17.322058, 15.953269, 15.988585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870203, 16.408001, 16.109484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.586475, 16.648415, 15.962174>,  <17.416239, 16.792664, 15.873788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.586475, 16.648415, 15.962174>,  <17.870203, 16.408001, 16.109484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.586475, 16.648415, 15.962174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020563, 0.539880, 0.841491,
		0.704589, 0.589312, -0.395306,
		-0.709318, 0.601033, -0.368276,
		17.373680, 16.828724, 15.851692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.037096, 17.180567, 16.303282>,  <17.870203, 16.408001, 16.109484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.037096, 17.180567, 16.303282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.650490, 17.206594, 16.203991>,  <17.418526, 17.222212, 16.144417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.650490, 17.206594, 16.203991>,  <18.037096, 17.180567, 16.303282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.650490, 17.206594, 16.203991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103830, 0.785439, 0.610168,
		0.234671, 0.615509, -0.752382,
		-0.966514, 0.065069, -0.248228,
		17.360537, 17.226114, 16.129522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.935659, 17.873848, 16.178766>,  <18.037096, 17.180567, 16.303282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.935659, 17.873848, 16.178766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.583582, 17.707977, 16.271116>,  <17.372335, 17.608456, 16.326527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.583582, 17.707977, 16.271116>,  <17.935659, 17.873848, 16.178766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.583582, 17.707977, 16.271116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152036, 0.707162, 0.690512,
		-0.449607, 0.572682, -0.685485,
		-0.880193, -0.414677, 0.230876,
		17.319525, 17.583574, 16.340380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.489735, 18.450163, 16.352613>,  <17.935659, 17.873848, 16.178766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.489735, 18.450163, 16.352613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.248411, 18.163107, 16.491760>,  <17.103617, 17.990873, 16.575249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.248411, 18.163107, 16.491760>,  <17.489735, 18.450163, 16.352613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.248411, 18.163107, 16.491760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289313, 0.603422, 0.743088,
		-0.743181, 0.347667, -0.571672,
		-0.603307, -0.717641, 0.347867,
		17.067419, 17.947815, 16.596121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882584, 18.738726, 16.482155>,  <17.489735, 18.450163, 16.352613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.882584, 18.738726, 16.482155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.906309, 18.421356, 16.724464>,  <16.920544, 18.230934, 16.869850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.906309, 18.421356, 16.724464>,  <16.882584, 18.738726, 16.482155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.906309, 18.421356, 16.724464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405941, 0.535228, 0.740772,
		-0.911973, -0.289845, -0.290337,
		0.059313, -0.793423, 0.605774,
		16.924103, 18.183329, 16.906197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.268673, 18.746532, 16.843452>,  <16.882584, 18.738726, 16.482155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.268673, 18.746532, 16.843452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.476425, 18.498457, 17.078606>,  <16.601076, 18.349611, 17.219698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.476425, 18.498457, 17.078606>,  <16.268673, 18.746532, 16.843452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.476425, 18.498457, 17.078606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355328, 0.468921, 0.808613,
		-0.777165, -0.628870, 0.023178,
		0.519381, -0.620190, 0.587884,
		16.632240, 18.312401, 17.254971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.778606, 18.370453, 17.263521>,  <16.268673, 18.746532, 16.843452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.778606, 18.370453, 17.263521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.131964, 18.385456, 17.450373>,  <16.343979, 18.394459, 17.562483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.131964, 18.385456, 17.450373>,  <15.778606, 18.370453, 17.263521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131964, 18.385456, 17.450373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448913, 0.353829, 0.820537,
		-0.134507, -0.934558, 0.329408,
		0.883394, 0.037508, 0.467128,
		16.396982, 18.396708, 17.590511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549543, 18.296846, 17.936348>,  <15.778606, 18.370453, 17.263521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549543, 18.296846, 17.936348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.927445, 18.422081, 17.975163>,  <16.154186, 18.497221, 17.998451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.927445, 18.422081, 17.975163>,  <15.549543, 18.296846, 17.936348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927445, 18.422081, 17.975163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265075, 0.555643, 0.788033,
		0.192806, -0.770219, 0.607937,
		0.944754, 0.313086, 0.097034,
		16.210873, 18.516006, 18.004272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684034, 18.178070, 18.639486>,  <15.549543, 18.296846, 17.936348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684034, 18.178070, 18.639486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.939566, 18.449308, 18.494112>,  <16.092884, 18.612051, 18.406887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.939566, 18.449308, 18.494112>,  <15.684034, 18.178070, 18.639486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.939566, 18.449308, 18.494112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128756, 0.559964, 0.818451,
		0.758499, -0.476054, 0.445029,
		0.638828, 0.678094, -0.363438,
		16.131214, 18.652737, 18.385080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.200354, 18.232109, 19.148531>,  <15.684034, 18.178070, 18.639486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.200354, 18.232109, 19.148531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.210289, 18.573790, 18.940792>,  <16.216251, 18.778797, 18.816149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.210289, 18.573790, 18.940792>,  <16.200354, 18.232109, 19.148531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.210289, 18.573790, 18.940792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245421, 0.508821, 0.825149,
		0.969098, 0.106963, 0.222278,
		0.024839, 0.854202, -0.519348,
		16.217741, 18.830050, 18.784988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.652443, 18.701620, 19.457787>,  <16.200354, 18.232109, 19.148531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.652443, 18.701620, 19.457787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.417971, 18.949194, 19.248671>,  <16.277287, 19.097738, 19.123201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.417971, 18.949194, 19.248671>,  <16.652443, 18.701620, 19.457787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.417971, 18.949194, 19.248671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021320, 0.633271, 0.773637,
		0.809898, 0.464639, -0.358017,
		-0.586183, 0.618934, -0.522791,
		16.242115, 19.134874, 19.091833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971138, 19.475664, 19.511810>,  <16.652443, 18.701620, 19.457787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971138, 19.475664, 19.511810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.581285, 19.485649, 19.422840>,  <16.347374, 19.491640, 19.369459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.581285, 19.485649, 19.422840>,  <16.971138, 19.475664, 19.511810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581285, 19.485649, 19.422840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174194, 0.539397, 0.823837,
		0.140541, 0.841681, -0.521364,
		-0.974631, 0.024964, -0.222424,
		16.288897, 19.493139, 19.356113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.813217, 20.154093, 19.693878>,  <16.971138, 19.475664, 19.511810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.813217, 20.154093, 19.693878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.457401, 19.977901, 19.645380>,  <16.243912, 19.872187, 19.616282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.457401, 19.977901, 19.645380>,  <16.813217, 20.154093, 19.693878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457401, 19.977901, 19.645380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408764, 0.648818, 0.641830,
		-0.204046, 0.620494, -0.757201,
		-0.889538, -0.440479, -0.121247,
		16.190540, 19.845758, 19.609007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379326, 20.721361, 19.620073>,  <16.813217, 20.154093, 19.693878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.379326, 20.721361, 19.620073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.140175, 20.419863, 19.729189>,  <15.996684, 20.238964, 19.794659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.140175, 20.419863, 19.729189>,  <16.379326, 20.721361, 19.620073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.140175, 20.419863, 19.729189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391154, 0.571376, 0.721476,
		-0.699672, 0.324652, -0.636443,
		-0.597877, -0.753744, 0.272787,
		15.960812, 20.193739, 19.811026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.821971, 21.087246, 19.779171>,  <16.379326, 20.721361, 19.620073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.821971, 21.087246, 19.779171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.756832, 20.734968, 19.957094>,  <15.717749, 20.523602, 20.063848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.756832, 20.734968, 19.957094>,  <15.821971, 21.087246, 19.779171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.756832, 20.734968, 19.957094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275095, 0.473477, 0.836745,
		-0.947525, 0.013898, -0.319380,
		-0.162848, -0.880697, 0.444808,
		15.707977, 20.470758, 20.090536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<15.103839, 21.187328, 20.245338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.308818, 20.867714, 20.371157>,  <15.431806, 20.675945, 20.446648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.308818, 20.867714, 20.371157>,  <15.103839, 21.187328, 20.245338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.308818, 20.867714, 20.371157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389757, 0.109965, 0.914329,
		-0.765172, -0.591141, -0.255079,
		0.512447, -0.799037, 0.314543,
		15.462552, 20.628002, 20.465519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.644341, 20.840206, 20.697834>,  <15.103839, 21.187328, 20.245338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.644341, 20.840206, 20.697834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.021734, 20.757502, 20.801443>,  <15.248170, 20.707878, 20.863607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.021734, 20.757502, 20.801443>,  <14.644341, 20.840206, 20.697834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.021734, 20.757502, 20.801443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174144, 0.355686, 0.918238,
		-0.281987, -0.911448, 0.299577,
		0.943482, -0.206762, 0.259022,
		15.304779, 20.695473, 20.879150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.566282, 20.405214, 21.320694>,  <14.644341, 20.840206, 20.697834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.566282, 20.405214, 21.320694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.944134, 20.535799, 21.307421>,  <15.170844, 20.614149, 21.299456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.944134, 20.535799, 21.307421>,  <14.566282, 20.405214, 21.320694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944134, 20.535799, 21.307421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043734, 0.225482, 0.973265,
		0.325216, -0.917922, 0.227274,
		0.944628, 0.326462, -0.033186,
		15.227522, 20.633738, 21.297464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824287, 20.167002, 21.984409>,  <14.566282, 20.405214, 21.320694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824287, 20.167002, 21.984409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.062489, 20.461552, 21.855955>,  <15.205409, 20.638283, 21.778883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.062489, 20.461552, 21.855955>,  <14.824287, 20.167002, 21.984409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.062489, 20.461552, 21.855955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008446, 0.405459, 0.914074,
		0.803309, -0.541621, 0.247671,
		0.595502, 0.736376, -0.321134,
		15.241139, 20.682465, 21.759615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.431132, 20.145458, 22.434980>,  <14.824287, 20.167002, 21.984409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.431132, 20.145458, 22.434980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.417176, 20.506310, 22.262957>,  <15.408803, 20.722820, 22.159742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.417176, 20.506310, 22.262957>,  <15.431132, 20.145458, 22.434980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.417176, 20.506310, 22.262957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262102, 0.423517, 0.867142,
		0.964409, -0.082465, -0.251226,
		-0.034890, 0.902127, -0.430058,
		15.406710, 20.776947, 22.133940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.997919, 20.461775, 22.739132>,  <15.431132, 20.145458, 22.434980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.997919, 20.461775, 22.739132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.734695, 20.731243, 22.604597>,  <15.576761, 20.892925, 22.523876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.734695, 20.731243, 22.604597>,  <15.997919, 20.461775, 22.739132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.734695, 20.731243, 22.604597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216680, 0.597216, 0.772258,
		0.721115, 0.435314, -0.538975,
		-0.658060, 0.673672, -0.336337,
		15.537277, 20.933346, 22.503696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.249989, 21.043598, 23.030222>,  <15.997919, 20.461775, 22.739132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.249989, 21.043598, 23.030222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.891716, 21.173368, 22.908562>,  <15.676753, 21.251230, 22.835566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.891716, 21.173368, 22.908562>,  <16.249989, 21.043598, 23.030222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891716, 21.173368, 22.908562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055430, 0.597164, 0.800201,
		0.441233, 0.733583, -0.516885,
		-0.895679, 0.324424, -0.304151,
		15.623013, 21.270697, 22.817316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.323719, 21.775284, 22.989519>,  <16.249989, 21.043598, 23.030222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.323719, 21.775284, 22.989519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.931164, 21.703867, 23.017790>,  <15.695630, 21.661016, 23.034752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.931164, 21.703867, 23.017790>,  <16.323719, 21.775284, 22.989519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.931164, 21.703867, 23.017790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088635, 0.747699, 0.658096,
		-0.170343, 0.639585, -0.749609,
		-0.981391, -0.178543, 0.070675,
		15.636746, 21.650305, 23.038992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928181, 22.550583, 22.915482>,  <16.323719, 21.775284, 22.989519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.928181, 22.550583, 22.915482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.664087, 22.305368, 23.089045>,  <15.505631, 22.158239, 23.193182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.664087, 22.305368, 23.089045>,  <15.928181, 22.550583, 22.915482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.664087, 22.305368, 23.089045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038085, 0.549656, 0.834522,
		-0.750094, 0.567505, -0.339554,
		-0.660233, -0.613038, 0.433907,
		15.466017, 22.121456, 23.219217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.428683, 22.987249, 23.180653>,  <15.928181, 22.550583, 22.915482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.428683, 22.987249, 23.180653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.392796, 22.645340, 23.385126>,  <15.371263, 22.440193, 23.507811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.392796, 22.645340, 23.385126>,  <15.428683, 22.987249, 23.180653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392796, 22.645340, 23.385126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299867, 0.466255, 0.832277,
		-0.949752, 0.227960, 0.214487,
		-0.089720, -0.854775, 0.511185,
		15.365880, 22.388906, 23.538481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.194964, 23.204916, 23.850687>,  <15.428683, 22.987249, 23.180653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.194964, 23.204916, 23.850687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.288252, 22.819574, 23.903692>,  <15.344224, 22.588369, 23.935495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.288252, 22.819574, 23.903692>,  <15.194964, 23.204916, 23.850687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.288252, 22.819574, 23.903692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093827, 0.157925, 0.982983,
		-0.967888, -0.216816, 0.127219,
		0.233218, -0.963354, 0.132511,
		15.358217, 22.530569, 23.943445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654078, 22.888655, 24.341463>,  <15.194964, 23.204916, 23.850687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654078, 22.888655, 24.341463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.016875, 22.720242, 24.345348>,  <15.234553, 22.619194, 24.347679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.016875, 22.720242, 24.345348>,  <14.654078, 22.888655, 24.341463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.016875, 22.720242, 24.345348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006850, 0.037808, 0.999262,
		-0.421090, -0.906257, 0.037176,
		0.906993, -0.421034, 0.009712,
		15.288973, 22.593931, 24.348263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.694680, 22.261637, 24.821671>,  <14.654078, 22.888655, 24.341463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.694680, 22.261637, 24.821671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.049742, 22.440800, 24.778872>,  <15.262779, 22.548298, 24.753193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.049742, 22.440800, 24.778872>,  <14.694680, 22.261637, 24.821671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.049742, 22.440800, 24.778872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079932, 0.078962, 0.993668,
		0.453521, -0.890586, 0.034289,
		0.887654, 0.447909, -0.106997,
		15.316038, 22.575172, 24.746773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994089, 22.218410, 25.410044>,  <14.694680, 22.261637, 24.821671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.994089, 22.218410, 25.410044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.293299, 22.432726, 25.253384>,  <15.472824, 22.561316, 25.159388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.293299, 22.432726, 25.253384>,  <14.994089, 22.218410, 25.410044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.293299, 22.432726, 25.253384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433621, 0.052190, 0.899583,
		0.502427, -0.842737, -0.193290,
		0.748024, 0.535789, -0.391650,
		15.517706, 22.593462, 25.135889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.590977, 21.967733, 25.718441>,  <14.994089, 22.218410, 25.410044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.590977, 21.967733, 25.718441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.678228, 22.335627, 25.587894>,  <15.730579, 22.556362, 25.509567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.678228, 22.335627, 25.587894>,  <15.590977, 21.967733, 25.718441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.678228, 22.335627, 25.587894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333840, 0.243922, 0.910524,
		0.917045, -0.307565, -0.253836,
		0.218129, 0.919731, -0.326364,
		15.743668, 22.611546, 25.489985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204971, 22.219742, 26.156866>,  <15.590977, 21.967733, 25.718441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.204971, 22.219742, 26.156866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.051754, 22.551449, 25.994093>,  <15.959824, 22.750473, 25.896429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.051754, 22.551449, 25.994093>,  <16.204971, 22.219742, 26.156866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.051754, 22.551449, 25.994093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295413, 0.527367, 0.796627,
		0.875220, 0.184929, -0.446980,
		-0.383042, 0.829268, -0.406931,
		15.936841, 22.800230, 25.872013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716717, 22.738600, 26.154449>,  <16.204971, 22.219742, 26.156866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716717, 22.738600, 26.154449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.373957, 22.942945, 26.126923>,  <16.168301, 23.065554, 26.110407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.373957, 22.942945, 26.126923>,  <16.716717, 22.738600, 26.154449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373957, 22.942945, 26.126923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211452, 0.470114, 0.856902,
		0.470114, 0.719729, -0.510865,
		-0.856902, 0.510865, -0.068819,
		16.116886, 23.096205, 26.106277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.960976, 23.318033, 26.409431>,  <16.716717, 22.738600, 26.154449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.960976, 23.318033, 26.409431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.564919, 23.367495, 26.435757>,  <16.327284, 23.397171, 26.451551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.564919, 23.367495, 26.435757>,  <16.960976, 23.318033, 26.409431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.564919, 23.367495, 26.435757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112935, 0.426733, 0.897298,
		0.082867, 0.895884, -0.436491,
		-0.990141, 0.123652, 0.065815,
		16.267876, 23.404591, 26.455502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971846, 23.810314, 26.808853>,  <16.960976, 23.318033, 26.409431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971846, 23.810314, 26.808853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.596006, 23.679619, 26.849640>,  <16.370502, 23.601202, 26.874111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.596006, 23.679619, 26.849640>,  <16.971846, 23.810314, 26.808853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.596006, 23.679619, 26.849640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010346, 0.270656, 0.962621,
		-0.342125, 0.905531, -0.250927,
		-0.939598, -0.326740, 0.101966,
		16.314127, 23.581596, 26.880230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.592358, 24.368914, 27.089071>,  <16.971846, 23.810314, 26.808853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.592358, 24.368914, 27.089071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.423847, 24.019182, 27.185465>,  <16.322741, 23.809343, 27.243301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.423847, 24.019182, 27.185465>,  <16.592358, 24.368914, 27.089071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.423847, 24.019182, 27.185465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049052, 0.287289, 0.956587,
		-0.905605, 0.391167, -0.163916,
		-0.421276, -0.874330, 0.240983,
		16.297464, 23.756884, 27.257759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.999209, 24.511721, 27.558893>,  <16.592358, 24.368914, 27.089071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.999209, 24.511721, 27.558893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.045677, 24.119713, 27.623478>,  <16.073557, 23.884508, 27.662230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.045677, 24.119713, 27.623478>,  <15.999209, 24.511721, 27.558893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045677, 24.119713, 27.623478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102677, 0.149844, 0.983364,
		-0.987908, -0.130814, -0.083218,
		0.116168, -0.980018, 0.161464,
		16.080528, 23.825708, 27.671917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.459149, 24.324043, 27.945063>,  <15.999209, 24.511721, 27.558893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.459149, 24.324043, 27.945063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.761240, 24.069948, 28.009691>,  <15.942494, 23.917492, 28.048468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.761240, 24.069948, 28.009691>,  <15.459149, 24.324043, 27.945063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.761240, 24.069948, 28.009691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032687, 0.282692, 0.958654,
		-0.654648, -0.718719, 0.234261,
		0.755226, -0.635239, 0.161571,
		15.987808, 23.879377, 28.058163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.370651, 23.947941, 28.589045>,  <15.459149, 24.324043, 27.945063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.370651, 23.947941, 28.589045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.758397, 23.994375, 28.502462>,  <15.991045, 24.022236, 28.450512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.758397, 23.994375, 28.502462>,  <15.370651, 23.947941, 28.589045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758397, 23.994375, 28.502462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199966, 0.138758, 0.969928,
		0.142668, -0.983494, 0.111286,
		0.969360, 0.116124, -0.216462,
		16.049208, 24.029202, 28.437525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406436, 23.351322, 28.978666>,  <15.370651, 23.947941, 28.589045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.406436, 23.351322, 28.978666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.081762, 23.198423, 29.155327>,  <14.886958, 23.106684, 29.261322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.081762, 23.198423, 29.155327>,  <15.406436, 23.351322, 28.978666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.081762, 23.198423, 29.155327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283746, -0.402869, -0.870164,
		0.510545, -0.831615, 0.218541,
		-0.811685, -0.382247, 0.441650,
		14.838257, 23.083750, 29.287823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.290359, 22.803610, 28.510559>,  <15.406436, 23.351322, 28.978666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.290359, 22.803610, 28.510559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.956342, 22.838110, 28.727911>,  <14.755931, 22.858810, 28.858322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.956342, 22.838110, 28.727911>,  <15.290359, 22.803610, 28.510559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.956342, 22.838110, 28.727911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505307, -0.510910, -0.695439,
		0.217635, -0.855296, 0.470216,
		-0.835045, 0.086252, 0.543379,
		14.705829, 22.863985, 28.890924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981248, 22.161921, 28.507988>,  <15.290359, 22.803610, 28.510559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981248, 22.161921, 28.507988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.670706, 22.393871, 28.606792>,  <14.484381, 22.533043, 28.666075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.670706, 22.393871, 28.606792>,  <14.981248, 22.161921, 28.507988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.670706, 22.393871, 28.606792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617220, -0.620024, -0.484365,
		-0.127720, -0.528500, 0.839271,
		-0.776355, 0.579878, 0.247011,
		14.437799, 22.567835, 28.680897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.443213, 21.729420, 28.689400>,  <14.981248, 22.161921, 28.507988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.443213, 21.729420, 28.689400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.247064, 22.067038, 28.602570>,  <14.129375, 22.269609, 28.550472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.247064, 22.067038, 28.602570>,  <14.443213, 21.729420, 28.689400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.247064, 22.067038, 28.602570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601570, -0.508040, -0.616449,
		-0.630595, -0.171702, 0.756881,
		-0.490371, 0.844046, -0.217077,
		14.099952, 22.320251, 28.537447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.730382, 21.566423, 28.565302>,  <14.443213, 21.729420, 28.689400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.730382, 21.566423, 28.565302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.743768, 21.929106, 28.397129>,  <13.751800, 22.146715, 28.296225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.743768, 21.929106, 28.397129>,  <13.730382, 21.566423, 28.565302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.743768, 21.929106, 28.397129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547436, -0.335321, -0.766729,
		-0.836178, 0.255818, 0.485143,
		0.033464, 0.906707, -0.420433,
		13.753807, 22.201118, 28.271000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.074525, 21.709188, 28.184948>,  <13.730382, 21.566423, 28.565302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.074525, 21.709188, 28.184948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.293586, 21.999645, 28.018673>,  <13.425022, 22.173920, 27.918909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.293586, 21.999645, 28.018673>,  <13.074525, 21.709188, 28.184948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.293586, 21.999645, 28.018673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329303, -0.269660, -0.904900,
		-0.769179, 0.632458, 0.091440,
		0.547653, 0.726141, -0.415687,
		13.457882, 22.217487, 27.893967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.619178, 21.968695, 27.728634>,  <13.074525, 21.709188, 28.184948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.619178, 21.968695, 27.728634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.008263, 21.999166, 27.640970>,  <13.241714, 22.017448, 27.588373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.008263, 21.999166, 27.640970>,  <12.619178, 21.968695, 27.728634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.008263, 21.999166, 27.640970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201342, -0.192265, -0.960467,
		-0.115302, 0.978382, -0.171681,
		0.972711, 0.076177, -0.219158,
		13.300076, 22.022020, 27.575222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.664270, 22.449368, 27.105549>,  <12.619178, 21.968695, 27.728634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.664270, 22.449368, 27.105549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.025492, 22.278330, 27.121832>,  <13.242225, 22.175707, 27.131601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.025492, 22.278330, 27.121832>,  <12.664270, 22.449368, 27.105549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.025492, 22.278330, 27.121832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136026, -0.374597, -0.917156,
		0.407420, 0.822703, -0.396445,
		0.903054, -0.427594, 0.040709,
		13.296408, 22.150051, 27.134045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.848257, 22.521557, 26.494003>,  <12.664270, 22.449368, 27.105549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.848257, 22.521557, 26.494003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.105956, 22.245165, 26.625145>,  <13.260575, 22.079329, 26.703831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.105956, 22.245165, 26.625145>,  <12.848257, 22.521557, 26.494003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.105956, 22.245165, 26.625145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069715, -0.373832, -0.924873,
		0.761633, 0.618704, -0.192668,
		0.644248, -0.690982, 0.327855,
		13.299231, 22.037870, 26.723501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.456782, 22.642191, 26.171970>,  <12.848257, 22.521557, 26.494003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.456782, 22.642191, 26.171970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.420013, 22.249678, 26.239655>,  <13.397952, 22.014170, 26.280264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.420013, 22.249678, 26.239655>,  <13.456782, 22.642191, 26.171970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.420013, 22.249678, 26.239655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075885, -0.162530, -0.983781,
		0.992871, -0.103273, -0.059524,
		-0.091923, -0.981284, 0.169208,
		13.392436, 21.955292, 26.290417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.880950, 22.165173, 25.659208>,  <13.456782, 22.642191, 26.171970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.880950, 22.165173, 25.659208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.577277, 21.944675, 25.797642>,  <13.395074, 21.812378, 25.880703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.577277, 21.944675, 25.797642>,  <13.880950, 22.165173, 25.659208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.577277, 21.944675, 25.797642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292848, -0.185573, -0.937978,
		0.581277, -0.813446, -0.020546,
		-0.759182, -0.551242, 0.346085,
		13.349523, 21.779303, 25.901466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.892541, 21.535666, 25.314180>,  <13.880950, 22.165173, 25.659208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.892541, 21.535666, 25.314180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.509236, 21.592501, 25.413414>,  <13.279254, 21.626602, 25.472954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.509236, 21.592501, 25.413414>,  <13.892541, 21.535666, 25.314180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.509236, 21.592501, 25.413414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276119, -0.235008, -0.931949,
		-0.074113, -0.961553, 0.264431,
		-0.958262, 0.142084, 0.248086,
		13.221758, 21.635126, 25.487839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.527452, 20.946886, 25.036627>,  <13.892541, 21.535666, 25.314180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.527452, 20.946886, 25.036627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.257840, 21.238096, 25.086681>,  <13.096072, 21.412823, 25.116714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.257840, 21.238096, 25.086681>,  <13.527452, 20.946886, 25.036627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.257840, 21.238096, 25.086681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231318, -0.047136, -0.971736,
		-0.701551, -0.683927, 0.200177,
		-0.674031, 0.728026, 0.125136,
		13.055631, 21.456505, 25.124222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.926889, 20.698326, 24.850368>,  <13.527452, 20.946886, 25.036627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.926889, 20.698326, 24.850368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.854425, 21.090109, 24.814938>,  <12.810947, 21.325178, 24.793678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.854425, 21.090109, 24.814938>,  <12.926889, 20.698326, 24.850368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.854425, 21.090109, 24.814938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188244, -0.122938, -0.974398,
		-0.965270, -0.159848, 0.206648,
		-0.181160, 0.979456, -0.088578,
		12.800077, 21.383945, 24.788364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.402068, 20.709526, 24.402889>,  <12.926889, 20.698326, 24.850368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.402068, 20.709526, 24.402889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.540690, 21.084679, 24.396210>,  <12.623864, 21.309771, 24.392202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.540690, 21.084679, 24.396210>,  <12.402068, 20.709526, 24.402889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.540690, 21.084679, 24.396210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122963, 0.027774, -0.992023,
		-0.929935, 0.345845, 0.124950,
		0.346556, 0.937881, -0.016698,
		12.644657, 21.366043, 24.391201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.992093, 21.110519, 23.992851>,  <12.402068, 20.709526, 24.402889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.992093, 21.110519, 23.992851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.338201, 21.311024, 23.995630>,  <12.545865, 21.431326, 23.997297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.338201, 21.311024, 23.995630>,  <11.992093, 21.110519, 23.992851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.338201, 21.311024, 23.995630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002742, 0.018590, -0.999824,
		-0.501302, 0.865096, 0.017460,
		0.865268, 0.501262, 0.006947,
		12.597781, 21.461403, 23.997715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.946445, 21.692240, 23.543194>,  <11.992093, 21.110519, 23.992851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.946445, 21.692240, 23.543194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.344271, 21.650957, 23.537670>,  <12.582966, 21.626188, 23.534357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.344271, 21.650957, 23.537670>,  <11.946445, 21.692240, 23.543194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.344271, 21.650957, 23.537670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006091, 0.074708, -0.997187,
		0.103948, 0.991850, 0.073673,
		0.994564, -0.103207, -0.013808,
		12.642640, 21.619995, 23.533527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.150229, 22.023010, 22.942322>,  <11.946445, 21.692240, 23.543194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.150229, 22.023010, 22.942322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.485775, 21.824930, 23.032724>,  <12.687102, 21.706081, 23.086966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.485775, 21.824930, 23.032724>,  <12.150229, 22.023010, 22.942322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.485775, 21.824930, 23.032724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227274, -0.058647, -0.972063,
		0.494623, 0.866796, 0.063350,
		0.838865, -0.495203, 0.226008,
		12.737434, 21.676369, 23.100527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.661276, 22.344084, 22.585617>,  <12.150229, 22.023010, 22.942322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.661276, 22.344084, 22.585617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.780565, 21.969641, 22.660196>,  <12.852139, 21.744974, 22.704945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.780565, 21.969641, 22.660196>,  <12.661276, 22.344084, 22.585617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780565, 21.969641, 22.660196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033103, -0.185077, -0.982166,
		0.953921, 0.299078, -0.024207,
		0.298224, -0.936108, 0.186449,
		12.870032, 21.688808, 22.716131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.257025, 22.266214, 22.232059>,  <12.661276, 22.344084, 22.585617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.257025, 22.266214, 22.232059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.137725, 21.886673, 22.273489>,  <13.066145, 21.658949, 22.298347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.137725, 21.886673, 22.273489>,  <13.257025, 22.266214, 22.232059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.137725, 21.886673, 22.273489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188014, -0.164788, -0.968244,
		0.935787, -0.269306, 0.227545,
		-0.298251, -0.948851, 0.103573,
		13.048249, 21.602018, 22.304562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.819905, 21.874214, 21.912434>,  <13.257025, 22.266214, 22.232059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.819905, 21.874214, 21.912434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.471778, 21.677429, 21.921547>,  <13.262901, 21.559359, 21.927015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.471778, 21.677429, 21.921547>,  <13.819905, 21.874214, 21.912434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.471778, 21.677429, 21.921547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101451, -0.224357, -0.969212,
		0.481928, -0.841211, 0.245172,
		-0.870318, -0.491963, 0.022782,
		13.210683, 21.529840, 21.928381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.685093, 20.197231, 0.912175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.981352, 20.420366, 1.061977>,  <19.159107, 20.554247, 1.151858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.981352, 20.420366, 1.061977>,  <18.685093, 20.197231, 0.912175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981352, 20.420366, 1.061977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407894, -0.816233, 0.409128,
		0.533911, -0.150263, -0.832082,
		0.740650, 0.557839, 0.374504,
		19.203547, 20.587719, 1.174328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.381689, 19.855951, 0.688129>,  <18.685093, 20.197231, 0.912175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.381689, 19.855951, 0.688129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.426416, 20.108335, 0.995215>,  <19.453253, 20.259766, 1.179467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.426416, 20.108335, 0.995215>,  <19.381689, 19.855951, 0.688129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.426416, 20.108335, 0.995215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395779, -0.736920, 0.548004,
		0.911513, 0.242571, -0.332120,
		0.111816, 0.630959, 0.767716,
		19.459961, 20.297623, 1.225530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687998, 19.412407, 1.140662>,  <19.381689, 19.855951, 0.688129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.687998, 19.412407, 1.140662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.685263, 19.728144, 1.386228>,  <19.683622, 19.917585, 1.533568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.685263, 19.728144, 1.386228>,  <19.687998, 19.412407, 1.140662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.685263, 19.728144, 1.386228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461649, -0.542099, 0.702145,
		0.887036, 0.288214, -0.360693,
		-0.006837, 0.789342, 0.613916,
		19.683212, 19.964947, 1.570403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.299543, 19.466232, 1.410347>,  <19.687998, 19.412407, 1.140662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.299543, 19.466232, 1.410347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.046074, 19.646776, 1.661659>,  <19.893993, 19.755102, 1.812446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.046074, 19.646776, 1.661659>,  <20.299543, 19.466232, 1.410347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.046074, 19.646776, 1.661659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189391, -0.696922, 0.691687,
		0.750060, 0.557294, 0.356137,
		-0.633672, 0.451358, 0.628280,
		19.855972, 19.782185, 1.850142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.649778, 19.851051, 2.075557>,  <20.299543, 19.466232, 1.410347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.649778, 19.851051, 2.075557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.691141, 20.192516, 1.871373>,  <20.715958, 20.397394, 1.748862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.691141, 20.192516, 1.871373>,  <20.649778, 19.851051, 2.075557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.691141, 20.192516, 1.871373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200643, -0.484760, -0.851323,
		-0.974192, 0.190452, 0.121154,
		0.103406, 0.853660, -0.510462,
		20.722162, 20.448614, 1.718234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.512775, 20.314150, 2.666190>,  <20.649778, 19.851051, 2.075557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.512775, 20.314150, 2.666190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.439934, 20.444233, 2.295013>,  <20.396229, 20.522282, 2.072306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.439934, 20.444233, 2.295013>,  <20.512775, 20.314150, 2.666190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439934, 20.444233, 2.295013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619028, -0.695315, -0.365159,
		-0.763965, -0.640920, -0.074693,
		-0.182103, 0.325206, -0.927944,
		20.385303, 20.541794, 2.016629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.704985, 20.100370, 3.362620>,  <20.512775, 20.314150, 2.666190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.704985, 20.100370, 3.362620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.956150, 19.825056, 3.217298>,  <21.106850, 19.659868, 3.130105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.956150, 19.825056, 3.217298>,  <20.704985, 20.100370, 3.362620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.956150, 19.825056, 3.217298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772515, 0.494457, 0.398412,
		-0.094582, -0.530826, 0.842186,
		0.627912, -0.688285, -0.363305,
		21.144524, 19.618570, 3.108306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.177998, 19.922659, 3.932727>,  <20.704985, 20.100370, 3.362620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.177998, 19.922659, 3.932727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.352718, 19.834837, 3.583786>,  <21.457552, 19.782145, 3.374421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.352718, 19.834837, 3.583786>,  <21.177998, 19.922659, 3.932727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.352718, 19.834837, 3.583786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807640, 0.522762, 0.272832,
		0.396131, -0.823721, 0.405665,
		0.436804, -0.219554, -0.872352,
		21.483759, 19.768970, 3.322080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.849237, 19.789745, 4.068731>,  <21.177998, 19.922659, 3.932727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.849237, 19.789745, 4.068731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.860483, 19.895136, 3.683028>,  <21.867231, 19.958370, 3.451607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.860483, 19.895136, 3.683028>,  <21.849237, 19.789745, 4.068731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.860483, 19.895136, 3.683028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854550, 0.494132, 0.159933,
		0.518608, -0.828501, -0.211261,
		0.028114, 0.263476, -0.964256,
		21.868917, 19.974178, 3.393752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505459, 19.237041, 4.526354>,  <21.849237, 19.789745, 4.068731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505459, 19.237041, 4.526354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.382988, 19.426186, 4.856846>,  <21.309505, 19.539673, 5.055141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.382988, 19.426186, 4.856846>,  <21.505459, 19.237041, 4.526354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.382988, 19.426186, 4.856846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036373, -0.861468, 0.506508,
		0.951279, 0.185134, 0.246564,
		-0.306179, 0.472862, 0.826230,
		21.291134, 19.568045, 5.104715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.864487, 18.999924, 5.118804>,  <21.505459, 19.237041, 4.526354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.864487, 18.999924, 5.118804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535166, 19.168987, 5.270347>,  <21.337574, 19.270426, 5.361273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535166, 19.168987, 5.270347>,  <21.864487, 18.999924, 5.118804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.535166, 19.168987, 5.270347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071035, -0.738944, 0.670011,
		0.563142, 0.524709, 0.638398,
		-0.823301, 0.422660, 0.378858,
		21.288176, 19.295786, 5.384005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.960693, 18.915756, 5.820656>,  <21.864487, 18.999924, 5.118804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.960693, 18.915756, 5.820656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.572332, 19.010681, 5.807824>,  <21.339315, 19.067636, 5.800125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.572332, 19.010681, 5.807824>,  <21.960693, 18.915756, 5.820656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.572332, 19.010681, 5.807824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189158, -0.677854, 0.710446,
		0.146852, 0.695843, 0.703021,
		-0.970904, 0.237312, -0.032080,
		21.281061, 19.081875, 5.798200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.658764, 19.187775, 6.579268>,  <21.960693, 18.915756, 5.820656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.658764, 19.187775, 6.579268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.386486, 19.017435, 6.340838>,  <21.223120, 18.915232, 6.197780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.386486, 19.017435, 6.340838>,  <21.658764, 19.187775, 6.579268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.386486, 19.017435, 6.340838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187981, -0.684898, 0.703973,
		-0.708039, 0.591241, 0.386154,
		-0.680694, -0.425850, -0.596076,
		21.182278, 18.889681, 6.162015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.185894, 18.954359, 7.035069>,  <21.658764, 19.187775, 6.579268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.185894, 18.954359, 7.035069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.070990, 18.745026, 6.714170>,  <21.002047, 18.619425, 6.521630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.070990, 18.745026, 6.714170>,  <21.185894, 18.954359, 7.035069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.070990, 18.745026, 6.714170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296908, -0.747646, 0.594030,
		-0.910674, 0.408836, 0.059387,
		-0.287261, -0.523335, -0.802248,
		20.984812, 18.588026, 6.473495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603205, 18.648693, 7.241571>,  <21.185894, 18.954359, 7.035069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603205, 18.648693, 7.241571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.699528, 18.422443, 6.926082>,  <20.757320, 18.286694, 6.736789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.699528, 18.422443, 6.926082>,  <20.603205, 18.648693, 7.241571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.699528, 18.422443, 6.926082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328841, -0.812119, 0.482003,
		-0.913168, 0.143294, -0.381563,
		0.240806, -0.565623, -0.788722,
		20.771770, 18.252756, 6.689466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.063133, 18.218548, 7.054705>,  <20.603205, 18.648693, 7.241571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.063133, 18.218548, 7.054705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.375010, 18.015041, 6.908696>,  <20.562136, 17.892939, 6.821091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.375010, 18.015041, 6.908696>,  <20.063133, 18.218548, 7.054705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375010, 18.015041, 6.908696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330671, -0.829581, 0.449948,
		-0.531733, -0.230118, -0.815050,
		0.779690, -0.508765, -0.365022,
		20.608917, 17.862411, 6.799190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.742970, 17.636631, 6.910627>,  <20.063133, 18.218548, 7.054705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.742970, 17.636631, 6.910627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.134680, 17.562078, 6.942322>,  <20.369707, 17.517347, 6.961339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.134680, 17.562078, 6.942322>,  <19.742970, 17.636631, 6.910627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.134680, 17.562078, 6.942322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194094, -0.751975, 0.629969,
		-0.057829, -0.632294, -0.772567,
		0.979277, -0.186381, 0.079239,
		20.428463, 17.506165, 6.966094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815424, 16.872047, 7.059631>,  <19.742970, 17.636631, 6.910627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.815424, 16.872047, 7.059631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.182993, 17.007782, 7.140059>,  <20.403534, 17.089222, 7.188317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.182993, 17.007782, 7.140059>,  <19.815424, 16.872047, 7.059631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182993, 17.007782, 7.140059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111592, -0.712608, 0.692631,
		0.378319, -0.614038, -0.692699,
		0.918924, 0.339335, 0.201072,
		20.458670, 17.109583, 7.200381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172955, 16.199816, 7.265549>,  <19.815424, 16.872047, 7.059631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172955, 16.199816, 7.265549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.413618, 16.488899, 7.401608>,  <20.558016, 16.662350, 7.483243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.413618, 16.488899, 7.401608>,  <20.172955, 16.199816, 7.265549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.413618, 16.488899, 7.401608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262760, -0.581226, 0.770152,
		0.754298, -0.373990, -0.539598,
		0.601657, 0.722709, 0.340147,
		20.594116, 16.705711, 7.503652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.803560, 15.881277, 7.604586>,  <20.172955, 16.199816, 7.265549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.803560, 15.881277, 7.604586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.791140, 16.253309, 7.751003>,  <20.783688, 16.476528, 7.838853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.791140, 16.253309, 7.751003>,  <20.803560, 15.881277, 7.604586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791140, 16.253309, 7.751003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281442, -0.343265, 0.896080,
		0.959076, 0.130844, -0.251105,
		-0.031051, 0.930080, 0.366042,
		20.781824, 16.532333, 7.860816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.336954, 15.859463, 8.000737>,  <20.803560, 15.881277, 7.604586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.336954, 15.859463, 8.000737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.127668, 16.175098, 8.129475>,  <21.002096, 16.364479, 8.206717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.127668, 16.175098, 8.129475>,  <21.336954, 15.859463, 8.000737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.127668, 16.175098, 8.129475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222700, -0.237936, 0.945405,
		0.822588, 0.566325, -0.051238,
		-0.523215, 0.789090, 0.321844,
		20.970703, 16.411825, 8.226027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.726086, 16.143726, 8.527711>,  <21.336954, 15.859463, 8.000737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.726086, 16.143726, 8.527711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.376051, 16.308802, 8.628836>,  <21.166031, 16.407846, 8.689510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.376051, 16.308802, 8.628836>,  <21.726086, 16.143726, 8.527711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.376051, 16.308802, 8.628836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159625, -0.247029, 0.955770,
		0.456887, 0.876735, 0.150296,
		-0.875085, 0.412688, 0.252813,
		21.113525, 16.432608, 8.704679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.854662, 16.772665, 8.981193>,  <21.726086, 16.143726, 8.527711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.854662, 16.772665, 8.981193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.492922, 16.610792, 9.035420>,  <21.275877, 16.513668, 9.067957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.492922, 16.610792, 9.035420>,  <21.854662, 16.772665, 8.981193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.492922, 16.610792, 9.035420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152642, -0.010053, 0.988230,
		-0.398556, 0.914402, 0.070863,
		-0.904353, -0.404682, 0.135569,
		21.221617, 16.489388, 9.076091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.532719, 17.195414, 9.501112>,  <21.854662, 16.772665, 8.981193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.532719, 17.195414, 9.501112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.306795, 16.865341, 9.504410>,  <21.171240, 16.667297, 9.506389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.306795, 16.865341, 9.504410>,  <21.532719, 17.195414, 9.501112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.306795, 16.865341, 9.504410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048961, 0.043482, 0.997854,
		-0.823767, 0.563194, -0.064961,
		-0.564810, -0.825180, 0.008244,
		21.137352, 16.617786, 9.506883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.117325, 17.314177, 10.043358>,  <21.532719, 17.195414, 9.501112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.117325, 17.314177, 10.043358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.092287, 16.921562, 9.971056>,  <21.077265, 16.685993, 9.927674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.092287, 16.921562, 9.971056>,  <21.117325, 17.314177, 10.043358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.092287, 16.921562, 9.971056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017250, -0.182147, 0.983120,
		-0.997890, 0.058418, 0.028333,
		-0.062593, -0.981534, -0.180755,
		21.073509, 16.627102, 9.916829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.583788, 17.090485, 10.583969>,  <21.117325, 17.314177, 10.043358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.583788, 17.090485, 10.583969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.783491, 16.764719, 10.465668>,  <20.903313, 16.569260, 10.394687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.783491, 16.764719, 10.465668>,  <20.583788, 17.090485, 10.583969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783491, 16.764719, 10.465668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070610, -0.301960, 0.950702,
		-0.863570, -0.495531, -0.093251,
		0.499260, -0.814413, -0.295754,
		20.933270, 16.520395, 10.376942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.174643, 16.515524, 10.831511>,  <20.583788, 17.090485, 10.583969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.174643, 16.515524, 10.831511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.555801, 16.401226, 10.790849>,  <20.784496, 16.332647, 10.766452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.555801, 16.401226, 10.790849>,  <20.174643, 16.515524, 10.831511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.555801, 16.401226, 10.790849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018621, -0.279419, 0.959989,
		-0.302723, -0.916663, -0.260937,
		0.952896, -0.285752, -0.101656,
		20.841671, 16.315502, 10.760352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.216671, 15.911937, 11.263852>,  <20.174643, 16.515524, 10.831511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.216671, 15.911937, 11.263852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.604570, 15.991220, 11.206856>,  <20.837309, 16.038792, 11.172658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.604570, 15.991220, 11.206856>,  <20.216671, 15.911937, 11.263852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.604570, 15.991220, 11.206856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199437, -0.306687, 0.930682,
		0.140771, -0.930943, -0.336939,
		0.969747, 0.198211, -0.142492,
		20.895494, 16.050684, 11.164108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.575928, 15.283470, 11.362378>,  <20.216671, 15.911937, 11.263852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.575928, 15.283470, 11.362378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.887648, 15.523176, 11.435670>,  <21.074680, 15.667000, 11.479645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.887648, 15.523176, 11.435670>,  <20.575928, 15.283470, 11.362378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.887648, 15.523176, 11.435670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125490, -0.435709, 0.891297,
		0.613958, -0.671594, -0.414750,
		0.779299, 0.599266, 0.183228,
		21.121437, 15.702956, 11.490639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.132349, 14.923764, 11.582465>,  <20.575928, 15.283470, 11.362378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.132349, 14.923764, 11.582465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.251247, 15.280943, 11.717692>,  <21.322586, 15.495251, 11.798828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.251247, 15.280943, 11.717692>,  <21.132349, 14.923764, 11.582465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.251247, 15.280943, 11.717692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316544, -0.426208, 0.847435,
		0.900802, -0.144885, -0.409346,
		0.297247, 0.892947, 0.338067,
		21.340422, 15.548827, 11.819113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434139, 14.731685, 12.114592>,  <21.132349, 14.923764, 11.582465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434139, 14.731685, 12.114592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.559507, 15.106611, 12.175526>,  <21.634727, 15.331568, 12.212086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.559507, 15.106611, 12.175526>,  <21.434139, 14.731685, 12.114592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559507, 15.106611, 12.175526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475001, -0.293650, 0.829544,
		0.822279, -0.187635, -0.537262,
		0.313418, 0.937317, 0.152335,
		21.653532, 15.387806, 12.221226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.205046, 14.805061, 12.069899>,  <21.434139, 14.731685, 12.114592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.205046, 14.805061, 12.069899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.056770, 15.066910, 12.333431>,  <21.967806, 15.224019, 12.491550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.056770, 15.066910, 12.333431>,  <22.205046, 14.805061, 12.069899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.056770, 15.066910, 12.333431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576861, -0.393668, 0.715721,
		0.727888, 0.645365, -0.231698,
		-0.370689, 0.654622, 0.658832,
		21.945564, 15.263296, 12.531081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.721518, 15.227387, 12.394665>,  <22.205046, 14.805061, 12.069899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.721518, 15.227387, 12.394665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.414318, 15.159988, 12.641820>,  <22.229998, 15.119549, 12.790112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.414318, 15.159988, 12.641820>,  <22.721518, 15.227387, 12.394665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.414318, 15.159988, 12.641820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624799, -0.409099, 0.665030,
		0.140722, 0.896798, 0.419465,
		-0.768000, -0.168497, 0.617887,
		22.183918, 15.109439, 12.827187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.925659, 15.486529, 13.155374>,  <22.721518, 15.227387, 12.394665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.925659, 15.486529, 13.155374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.696821, 15.172814, 13.059373>,  <22.559519, 14.984586, 13.001773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.696821, 15.172814, 13.059373>,  <22.925659, 15.486529, 13.155374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.696821, 15.172814, 13.059373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591664, -0.597284, 0.541467,
		-0.568014, 0.167772, 0.805738,
		-0.572097, -0.784286, -0.240001,
		22.525192, 14.937529, 12.987372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.545568, 15.781832, 13.033371>,  <22.925659, 15.486529, 13.155374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.545568, 15.781832, 13.033371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.220720, 15.988663, 12.925228>,  <23.025812, 16.112761, 12.860343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.220720, 15.988663, 12.925228>,  <23.545568, 15.781832, 13.033371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.220720, 15.988663, 12.925228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079875, 0.360462, 0.929348,
		0.577998, 0.776336, -0.251437,
		-0.812120, 0.517078, -0.270356,
		22.977085, 16.143785, 12.844121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.249176, 15.853934, 13.565219>,  <23.545568, 15.781832, 13.033371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.249176, 15.853934, 13.565219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.441027, 15.688966, 13.255414>,  <24.556137, 15.589985, 13.069531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.441027, 15.688966, 13.255414>,  <24.249176, 15.853934, 13.565219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.441027, 15.688966, 13.255414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143749, 0.907666, -0.394308,
		0.865619, 0.077784, 0.494624,
		0.479624, -0.412422, -0.774512,
		24.584913, 15.565239, 13.023061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.949896, 16.264690, 13.411745>,  <24.249176, 15.853934, 13.565219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.949896, 16.264690, 13.411745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.825172, 16.088827, 13.074824>,  <24.750338, 15.983309, 12.872672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.825172, 16.088827, 13.074824>,  <24.949896, 16.264690, 13.411745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825172, 16.088827, 13.074824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006701, 0.885460, -0.464667,
		0.950121, -0.150532, -0.273148,
		-0.311809, -0.439660, -0.842303,
		24.731630, 15.956929, 12.822134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.384594, 16.527021, 12.947894>,  <24.949896, 16.264690, 13.411745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.384594, 16.527021, 12.947894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.090120, 16.373507, 12.724919>,  <24.913435, 16.281397, 12.591134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.090120, 16.373507, 12.724919>,  <25.384594, 16.527021, 12.947894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.090120, 16.373507, 12.724919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040224, 0.797394, -0.602117,
		0.675582, -0.465693, -0.571593,
		-0.736187, -0.383787, -0.557437,
		24.869265, 16.258369, 12.557688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593998, 16.694315, 12.301317>,  <25.384594, 16.527021, 12.947894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593998, 16.694315, 12.301317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.202433, 16.616034, 12.277908>,  <24.967493, 16.569065, 12.263864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.202433, 16.616034, 12.277908>,  <25.593998, 16.694315, 12.301317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.202433, 16.616034, 12.277908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108912, 0.742440, -0.661000,
		0.172809, -0.640689, -0.748101,
		-0.978915, -0.195703, -0.058521,
		24.908758, 16.557323, 12.260352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497044, 16.932989, 11.703009>,  <25.593998, 16.694315, 12.301317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497044, 16.932989, 11.703009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.112810, 16.899006, 11.808883>,  <24.882269, 16.878616, 11.872407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.112810, 16.899006, 11.808883>,  <25.497044, 16.932989, 11.703009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112810, 16.899006, 11.808883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238367, 0.741628, -0.627032,
		-0.143027, -0.665410, -0.732647,
		-0.960585, -0.084956, 0.264685,
		24.824635, 16.873520, 11.888288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.994551, 16.772055, 11.053295>,  <25.497044, 16.932989, 11.703009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.994551, 16.772055, 11.053295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.815424, 16.962978, 11.355722>,  <24.707949, 17.077532, 11.537179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.815424, 16.962978, 11.355722>,  <24.994551, 16.772055, 11.053295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.815424, 16.962978, 11.355722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128753, 0.802357, -0.582792,
		-0.884807, -0.358329, -0.297853,
		-0.447815, 0.477309, 0.756067,
		24.681080, 17.106171, 11.582542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.528702, 16.974216, 10.724455>,  <24.994551, 16.772055, 11.053295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.528702, 16.974216, 10.724455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.512644, 17.213900, 11.044290>,  <24.503008, 17.357710, 11.236190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.512644, 17.213900, 11.044290>,  <24.528702, 16.974216, 10.724455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.512644, 17.213900, 11.044290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379301, 0.731192, -0.567000,
		-0.924402, -0.326047, 0.197925,
		-0.040147, 0.599209, 0.799586,
		24.500599, 17.393661, 11.284165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.011431, 17.352713, 10.474270>,  <24.528702, 16.974216, 10.724455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.011431, 17.352713, 10.474270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.187637, 17.549425, 10.774696>,  <24.293362, 17.667452, 10.954952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.187637, 17.549425, 10.774696>,  <24.011431, 17.352713, 10.474270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.187637, 17.549425, 10.774696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276375, 0.870270, -0.407734,
		-0.854145, -0.027963, 0.519283,
		0.440515, 0.491780, 0.751065,
		24.319792, 17.696959, 11.000016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.467691, 17.767300, 10.765679>,  <24.011431, 17.352713, 10.474270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.467691, 17.767300, 10.765679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.826656, 17.911495, 10.867425>,  <24.042036, 17.998013, 10.928473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.826656, 17.911495, 10.867425>,  <23.467691, 17.767300, 10.765679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.826656, 17.911495, 10.867425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178401, 0.823797, -0.538081,
		-0.403516, 0.437501, 0.803597,
		0.897412, 0.360486, 0.254364,
		24.095881, 18.019642, 10.943734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.314068, 18.505230, 11.086186>,  <23.467691, 17.767300, 10.765679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.314068, 18.505230, 11.086186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.699446, 18.471039, 10.984622>,  <23.930672, 18.450523, 10.923683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.699446, 18.471039, 10.984622>,  <23.314068, 18.505230, 11.086186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.699446, 18.471039, 10.984622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045019, 0.882608, -0.467950,
		0.264103, 0.462274, 0.846494,
		0.963443, -0.085479, -0.253910,
		23.988480, 18.445395, 10.908449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.600054, 19.118546, 11.318970>,  <23.314068, 18.505230, 11.086186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.600054, 19.118546, 11.318970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.821630, 18.964418, 11.023760>,  <23.954576, 18.871943, 10.846634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.821630, 18.964418, 11.023760>,  <23.600054, 19.118546, 11.318970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.821630, 18.964418, 11.023760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057913, 0.866477, -0.495847,
		0.830540, 0.317411, 0.457662,
		0.553940, -0.385316, -0.738026,
		23.987812, 18.848824, 10.802352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.956015, 19.720490, 10.972977>,  <23.600054, 19.118546, 11.318970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.956015, 19.720490, 10.972977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.026964, 19.451056, 10.685972>,  <24.069534, 19.289394, 10.513769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.026964, 19.451056, 10.685972>,  <23.956015, 19.720490, 10.972977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.026964, 19.451056, 10.685972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047953, 0.722291, -0.689925,
		0.982975, 0.156780, 0.095814,
		0.177372, -0.673584, -0.717512,
		24.080175, 19.248980, 10.470718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.335649, 20.074432, 10.457183>,  <23.956015, 19.720490, 10.972977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.335649, 20.074432, 10.457183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.216198, 19.753519, 10.250431>,  <24.144527, 19.560970, 10.126380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.216198, 19.753519, 10.250431>,  <24.335649, 20.074432, 10.457183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.216198, 19.753519, 10.250431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107687, 0.566460, -0.817023,
		0.948275, -0.188323, -0.255555,
		-0.298626, -0.802283, -0.516880,
		24.126610, 19.512835, 10.095367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.736267, 20.115917, 9.816960>,  <24.335649, 20.074432, 10.457183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.736267, 20.115917, 9.816960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.409992, 19.896927, 9.742206>,  <24.214228, 19.765533, 9.697352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.409992, 19.896927, 9.742206>,  <24.736267, 20.115917, 9.816960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409992, 19.896927, 9.742206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116928, 0.472419, -0.873583,
		0.566556, -0.690717, -0.449361,
		-0.815685, -0.547477, -0.186887,
		24.165287, 19.732683, 9.686139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.757010, 19.770117, 9.125912>,  <24.736267, 20.115917, 9.816960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.757010, 19.770117, 9.125912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.363451, 19.761086, 9.196836>,  <24.127316, 19.755667, 9.239391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.363451, 19.761086, 9.196836>,  <24.757010, 19.770117, 9.125912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363451, 19.761086, 9.196836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176334, 0.284979, -0.942175,
		-0.029256, -0.958268, -0.284371,
		-0.983895, -0.022580, 0.177312,
		24.068283, 19.754311, 9.250031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.523178, 19.632664, 8.514733>,  <24.757010, 19.770117, 9.125912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.523178, 19.632664, 8.514733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.186930, 19.758873, 8.690826>,  <23.985182, 19.834599, 8.796482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.186930, 19.758873, 8.690826>,  <24.523178, 19.632664, 8.514733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.186930, 19.758873, 8.690826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284046, 0.435245, -0.854330,
		-0.461171, -0.843212, -0.276251,
		-0.840618, 0.315524, 0.440233,
		23.934744, 19.853531, 8.822896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.945490, 19.469912, 8.068116>,  <24.523178, 19.632664, 8.514733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.945490, 19.469912, 8.068116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.846712, 19.780188, 8.300434>,  <23.787445, 19.966352, 8.439825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.846712, 19.780188, 8.300434>,  <23.945490, 19.469912, 8.068116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.846712, 19.780188, 8.300434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248237, 0.528719, -0.811686,
		-0.936694, -0.344618, 0.061990,
		-0.246946, 0.775690, 0.580795,
		23.772629, 20.012894, 8.474672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.878437, 19.595753, 17.896749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645466, 19.307673, 18.047527>,  <16.505682, 19.134825, 18.137993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645466, 19.307673, 18.047527>,  <16.878437, 19.595753, 17.896749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645466, 19.307673, 18.047527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415099, -0.662202, -0.623844,
		0.698906, -0.206876, 0.684640,
		-0.582429, -0.720202, 0.376943,
		16.470737, 19.091612, 18.160610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327726, 19.116938, 18.119509>,  <16.878437, 19.595753, 17.896749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327726, 19.116938, 18.119509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978889, 18.929251, 18.063953>,  <16.769587, 18.816639, 18.030621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978889, 18.929251, 18.063953>,  <17.327726, 19.116938, 18.119509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.978889, 18.929251, 18.063953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465929, -0.709480, -0.528723,
		0.149548, -0.525807, 0.837355,
		-0.872093, -0.469217, -0.138887,
		16.717262, 18.788486, 18.022287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524857, 18.364798, 18.188164>,  <17.327726, 19.116938, 18.119509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.524857, 18.364798, 18.188164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175371, 18.386396, 17.994791>,  <16.965679, 18.399355, 17.878767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175371, 18.386396, 17.994791>,  <17.524857, 18.364798, 18.188164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.175371, 18.386396, 17.994791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296770, -0.728268, -0.617699,
		-0.385423, -0.683161, 0.620274,
		-0.873714, 0.053997, -0.483434,
		16.913258, 18.402596, 17.849760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376020, 17.645912, 18.048304>,  <17.524857, 18.364798, 18.188164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376020, 17.645912, 18.048304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146856, 17.855955, 17.796577>,  <17.009357, 17.981981, 17.645542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146856, 17.855955, 17.796577>,  <17.376020, 17.645912, 18.048304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.146856, 17.855955, 17.796577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122969, -0.704054, -0.699418,
		-0.810342, -0.478089, 0.338787,
		-0.572909, 0.525108, -0.629315,
		16.974983, 18.013487, 17.607782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.883974, 17.228111, 17.794544>,  <17.376020, 17.645912, 18.048304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.883974, 17.228111, 17.794544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901537, 17.515623, 17.517004>,  <16.912075, 17.688129, 17.350479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901537, 17.515623, 17.517004>,  <16.883974, 17.228111, 17.794544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.901537, 17.515623, 17.517004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020315, -0.695019, -0.718704,
		-0.998829, 0.017459, -0.045117,
		0.043905, 0.718779, -0.693851,
		16.914709, 17.731256, 17.308849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.465479, 16.976629, 17.232449>,  <16.883974, 17.228111, 17.794544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.465479, 16.976629, 17.232449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.651920, 17.274792, 17.041822>,  <16.763786, 17.453690, 16.927446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.651920, 17.274792, 17.041822>,  <16.465479, 16.976629, 17.232449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.651920, 17.274792, 17.041822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009403, -0.534451, -0.845148,
		-0.884680, 0.398409, -0.242100,
		0.466105, 0.745408, -0.476564,
		16.791752, 17.498415, 16.898853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075438, 17.290171, 16.595211>,  <16.465479, 16.976629, 17.232449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.075438, 17.290171, 16.595211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.470779, 17.337250, 16.556633>,  <16.707985, 17.365498, 16.533485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.470779, 17.337250, 16.556633>,  <16.075438, 17.290171, 16.595211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470779, 17.337250, 16.556633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022679, -0.512800, -0.858208,
		-0.150467, 0.850402, -0.504159,
		0.988355, 0.117698, -0.096446,
		16.767286, 17.372559, 16.527699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.118370, 17.334570, 15.811828>,  <16.075438, 17.290171, 16.595211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.118370, 17.334570, 15.811828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494520, 17.274466, 15.933888>,  <16.720209, 17.238403, 16.007124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494520, 17.274466, 15.933888>,  <16.118370, 17.334570, 15.811828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494520, 17.274466, 15.933888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158678, -0.599733, -0.784310,
		0.300861, 0.785966, -0.540130,
		0.940374, -0.150261, 0.305152,
		16.776632, 17.229387, 16.025434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510605, 17.612015, 15.265719>,  <16.118370, 17.334570, 15.811828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510605, 17.612015, 15.265719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778561, 17.365379, 15.431160>,  <16.939335, 17.217398, 15.530424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778561, 17.365379, 15.431160>,  <16.510605, 17.612015, 15.265719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778561, 17.365379, 15.431160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227913, -0.359401, -0.904924,
		0.706615, 0.700464, -0.100230,
		0.669889, -0.616589, 0.413602,
		16.979527, 17.180403, 15.555241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103062, 17.472582, 14.760615>,  <16.510605, 17.612015, 15.265719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.103062, 17.472582, 14.760615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.135660, 17.170591, 15.020884>,  <17.155220, 16.989397, 15.177044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.135660, 17.170591, 15.020884>,  <17.103062, 17.472582, 14.760615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.135660, 17.170591, 15.020884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317240, -0.599238, -0.735033,
		0.944837, 0.266322, 0.190671,
		0.081499, -0.754974, 0.650670,
		17.160110, 16.944099, 15.216084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734179, 17.218885, 14.516289>,  <17.103062, 17.472582, 14.760615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.734179, 17.218885, 14.516289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.527836, 16.936893, 14.710975>,  <17.404030, 16.767698, 14.827786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.527836, 16.936893, 14.710975>,  <17.734179, 17.218885, 14.516289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.527836, 16.936893, 14.710975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122398, -0.622970, -0.772610,
		0.847885, -0.338985, 0.407653,
		-0.515859, -0.704980, 0.486716,
		17.373077, 16.725399, 14.856990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064116, 16.530025, 14.518826>,  <17.734179, 17.218885, 14.516289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064116, 16.530025, 14.518826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.673340, 16.470816, 14.580373>,  <17.438873, 16.435289, 14.617301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.673340, 16.470816, 14.580373>,  <18.064116, 16.530025, 14.518826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.673340, 16.470816, 14.580373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012840, -0.678631, -0.734367,
		0.213123, -0.719409, 0.661082,
		-0.976941, -0.148022, 0.153869,
		17.380257, 16.426409, 14.626534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.703091, 16.973782, 14.763628>,  <18.064116, 16.530025, 14.518826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.703091, 16.973782, 14.763628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781616, 17.041807, 14.377356>,  <18.828732, 17.082623, 14.145593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781616, 17.041807, 14.377356>,  <18.703091, 16.973782, 14.763628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781616, 17.041807, 14.377356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976828, 0.051705, 0.207687,
		0.085251, -0.984075, -0.155974,
		0.196315, 0.170066, -0.965680,
		18.840511, 17.092827, 14.087651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235949, 16.486086, 14.763039>,  <18.703091, 16.973782, 14.763628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.235949, 16.486086, 14.763039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.251816, 16.711250, 14.432813>,  <19.261335, 16.846350, 14.234677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.251816, 16.711250, 14.432813>,  <19.235949, 16.486086, 14.763039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.251816, 16.711250, 14.432813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984624, -0.162691, -0.063620,
		-0.170125, -0.810348, -0.560709,
		0.039668, 0.562910, -0.825566,
		19.263716, 16.880123, 14.185143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.608694, 15.881827, 14.600911>,  <19.235949, 16.486086, 14.763039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.608694, 15.881827, 14.600911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.915983, 15.789728, 14.839849>,  <20.100357, 15.734468, 14.983212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.915983, 15.789728, 14.839849>,  <19.608694, 15.881827, 14.600911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.915983, 15.789728, 14.839849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620336, -0.037183, 0.783454,
		-0.158180, -0.972421, -0.171397,
		0.768220, -0.230250, 0.597346,
		20.146450, 15.720654, 15.019053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335606, 15.521518, 15.118727>,  <19.608694, 15.881827, 14.600911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.335606, 15.521518, 15.118727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.688770, 15.616737, 15.280616>,  <19.900669, 15.673869, 15.377749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.688770, 15.616737, 15.280616>,  <19.335606, 15.521518, 15.118727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.688770, 15.616737, 15.280616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435319, 0.091967, 0.895567,
		0.175966, -0.966890, 0.184826,
		0.882912, 0.238047, 0.404722,
		19.953644, 15.688152, 15.402032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499119, 14.980879, 15.693768>,  <19.335606, 15.521518, 15.118727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.499119, 14.980879, 15.693768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704510, 15.316502, 15.765687>,  <19.827744, 15.517875, 15.808839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704510, 15.316502, 15.765687>,  <19.499119, 14.980879, 15.693768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.704510, 15.316502, 15.765687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487471, 0.112782, 0.865824,
		0.706198, -0.532225, 0.466927,
		0.513475, 0.839057, 0.179798,
		19.858553, 15.568218, 15.819627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.744169, 14.828689, 16.329739>,  <19.499119, 14.980879, 15.693768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.744169, 14.828689, 16.329739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791660, 15.224219, 16.293682>,  <19.820154, 15.461537, 16.272049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791660, 15.224219, 16.293682>,  <19.744169, 14.828689, 16.329739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.791660, 15.224219, 16.293682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230636, 0.115762, 0.966130,
		0.965770, -0.093917, 0.241803,
		0.118727, 0.988827, -0.090139,
		19.827278, 15.520867, 16.266640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.304359, 15.013963, 16.757902>,  <19.744169, 14.828689, 16.329739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.304359, 15.013963, 16.757902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.054798, 15.322374, 16.706900>,  <19.905062, 15.507421, 16.676298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.054798, 15.322374, 16.706900>,  <20.304359, 15.013963, 16.757902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.054798, 15.322374, 16.706900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193604, 0.005580, 0.981064,
		0.757139, 0.636777, 0.145793,
		-0.623905, 0.771028, -0.127508,
		19.867626, 15.553682, 16.668648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.462641, 15.345037, 17.341242>,  <20.304359, 15.013963, 16.757902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.462641, 15.345037, 17.341242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.117424, 15.508725, 17.222788>,  <19.910294, 15.606938, 17.151716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.117424, 15.508725, 17.222788>,  <20.462641, 15.345037, 17.341242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.117424, 15.508725, 17.222788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323799, 0.001782, 0.946124,
		0.387701, 0.912433, 0.130967,
		-0.863042, 0.409221, -0.296136,
		19.858511, 15.631492, 17.133947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.304296, 15.884042, 17.930157>,  <20.462641, 15.345037, 17.341242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.304296, 15.884042, 17.930157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.969028, 15.829995, 17.718792>,  <19.767868, 15.797567, 17.591974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.969028, 15.829995, 17.718792>,  <20.304296, 15.884042, 17.930157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969028, 15.829995, 17.718792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545383, 0.197716, 0.814534,
		-0.005582, 0.970903, -0.239409,
		-0.838168, -0.135116, -0.528410,
		19.717579, 15.789460, 17.560268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.977232, 16.449610, 17.940018>,  <20.304296, 15.884042, 17.930157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.977232, 16.449610, 17.940018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.694895, 16.171888, 17.883831>,  <19.525492, 16.005257, 17.850119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.694895, 16.171888, 17.883831>,  <19.977232, 16.449610, 17.940018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.694895, 16.171888, 17.883831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555561, 0.419565, 0.717856,
		-0.439474, 0.584730, -0.681875,
		-0.705843, -0.694302, -0.140465,
		19.483143, 15.963597, 17.841692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.341347, 16.789721, 17.990971>,  <19.977232, 16.449610, 17.940018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.341347, 16.789721, 17.990971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.227234, 16.408707, 18.033485>,  <19.158766, 16.180099, 18.058994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.227234, 16.408707, 18.033485>,  <19.341347, 16.789721, 17.990971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.227234, 16.408707, 18.033485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688022, 0.280731, 0.669190,
		-0.667263, 0.117779, -0.735451,
		-0.285280, -0.952532, 0.106287,
		19.141649, 16.122948, 18.065371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.658998, 16.776316, 17.717144>,  <19.341347, 16.789721, 17.990971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.658998, 16.776316, 17.717144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.712526, 16.465651, 17.963360>,  <18.744642, 16.279251, 18.111090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.712526, 16.465651, 17.963360>,  <18.658998, 16.776316, 17.717144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.712526, 16.465651, 17.963360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854969, 0.223606, 0.468006,
		-0.501120, -0.588896, -0.634098,
		0.133819, -0.776661, 0.615541,
		18.752672, 16.232653, 18.148022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.959007, 16.488617, 17.909609>,  <18.658998, 16.776316, 17.717144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.959007, 16.488617, 17.909609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.139809, 16.294132, 18.208752>,  <18.248289, 16.177441, 18.388237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.139809, 16.294132, 18.208752>,  <17.959007, 16.488617, 17.909609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.139809, 16.294132, 18.208752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774598, 0.201829, 0.599385,
		-0.442367, -0.850213, -0.285391,
		0.452005, -0.486212, 0.747857,
		18.275410, 16.148270, 18.433109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.472441, 15.951463, 18.265564>,  <17.959007, 16.488617, 17.909609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.472441, 15.951463, 18.265564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.763586, 16.058962, 18.517910>,  <17.938272, 16.123461, 18.669317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.763586, 16.058962, 18.517910>,  <17.472441, 15.951463, 18.265564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763586, 16.058962, 18.517910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670366, 0.085260, 0.737116,
		0.144312, -0.959429, 0.242218,
		0.727862, 0.268749, 0.630864,
		17.981945, 16.139585, 18.707170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.265133, 15.614098, 18.891714>,  <17.472441, 15.951463, 18.265564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.265133, 15.614098, 18.891714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.537807, 15.878206, 19.017790>,  <17.701412, 16.036671, 19.093435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.537807, 15.878206, 19.017790>,  <17.265133, 15.614098, 18.891714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.537807, 15.878206, 19.017790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503657, 0.111019, 0.856741,
		0.530690, -0.742776, 0.408230,
		0.681688, 0.660272, 0.315188,
		17.742313, 16.076288, 19.112347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338226, 15.419542, 19.556849>,  <17.265133, 15.614098, 18.891714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338226, 15.419542, 19.556849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.466726, 15.798160, 19.545160>,  <17.543827, 16.025330, 19.538147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.466726, 15.798160, 19.545160>,  <17.338226, 15.419542, 19.556849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.466726, 15.798160, 19.545160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507051, 0.197988, 0.838868,
		0.799811, -0.254670, 0.543550,
		0.321251, 0.946543, -0.029222,
		17.563101, 16.082123, 19.536394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.183241, 14.705686, 19.760355>,  <17.338226, 15.419542, 19.556849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.183241, 14.705686, 19.760355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825619, 14.628161, 19.921898>,  <16.611046, 14.581647, 20.018824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825619, 14.628161, 19.921898>,  <17.183241, 14.705686, 19.760355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.825619, 14.628161, 19.921898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187137, -0.657522, -0.729824,
		0.406994, -0.728081, 0.551593,
		-0.894056, -0.193811, 0.403859,
		16.557402, 14.570018, 20.043055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129362, 13.977282, 19.804684>,  <17.183241, 14.705686, 19.760355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.129362, 13.977282, 19.804684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757748, 14.125259, 19.802532>,  <16.534779, 14.214046, 19.801241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757748, 14.125259, 19.802532>,  <17.129362, 13.977282, 19.804684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757748, 14.125259, 19.802532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217037, -0.556698, -0.801862,
		-0.299638, -0.743794, 0.597485,
		-0.929039, 0.369944, -0.005377,
		16.479036, 14.236243, 19.800919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731010, 13.365754, 19.639990>,  <17.129362, 13.977282, 19.804684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.731010, 13.365754, 19.639990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483587, 13.674739, 19.582460>,  <16.335133, 13.860130, 19.547943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483587, 13.674739, 19.582460>,  <16.731010, 13.365754, 19.639990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483587, 13.674739, 19.582460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210958, -0.339591, -0.916610,
		-0.756889, -0.536637, 0.373014,
		-0.618559, 0.772463, -0.143825,
		16.298019, 13.906478, 19.539312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.159466, 13.038462, 19.521124>,  <16.731010, 13.365754, 19.639990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.159466, 13.038462, 19.521124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.119511, 13.401770, 19.358610>,  <16.095537, 13.619755, 19.261103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.119511, 13.401770, 19.358610>,  <16.159466, 13.038462, 19.521124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119511, 13.401770, 19.358610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372438, -0.412773, -0.831209,
		-0.922666, 0.068288, 0.379505,
		-0.099888, 0.908270, -0.406285,
		16.089544, 13.674251, 19.236725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503744, 12.990485, 19.090805>,  <16.159466, 13.038462, 19.521124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.503744, 12.990485, 19.090805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714226, 13.293537, 18.936348>,  <15.840514, 13.475368, 18.843674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714226, 13.293537, 18.936348>,  <15.503744, 12.990485, 19.090805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714226, 13.293537, 18.936348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293238, -0.264573, -0.918701,
		-0.798199, 0.596656, 0.082947,
		0.526203, 0.757630, -0.386144,
		15.872087, 13.520826, 18.820505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051563, 13.271705, 18.504393>,  <15.503744, 12.990485, 19.090805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051563, 13.271705, 18.504393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429083, 13.386276, 18.438421>,  <15.655595, 13.455019, 18.398838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429083, 13.386276, 18.438421>,  <15.051563, 13.271705, 18.504393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429083, 13.386276, 18.438421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090541, -0.255858, -0.962465,
		-0.317875, 0.923307, -0.215545,
		0.943800, 0.286428, -0.164928,
		15.712223, 13.472204, 18.388943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.091730, 13.597303, 17.943926>,  <15.051563, 13.271705, 18.504393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.091730, 13.597303, 17.943926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468986, 13.470578, 17.984163>,  <15.695339, 13.394544, 18.008305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468986, 13.470578, 17.984163>,  <15.091730, 13.597303, 17.943926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.468986, 13.470578, 17.984163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026687, -0.229477, -0.972948,
		0.331325, 0.920310, -0.207974,
		0.943139, -0.316812, 0.100592,
		15.751927, 13.375534, 18.014341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295568, 13.757444, 17.331543>,  <15.091730, 13.597303, 17.943926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.295568, 13.757444, 17.331543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610199, 13.552979, 17.470112>,  <15.798977, 13.430299, 17.553253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610199, 13.552979, 17.470112>,  <15.295568, 13.757444, 17.331543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.610199, 13.552979, 17.470112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280897, -0.203409, -0.937935,
		0.549904, 0.835066, -0.016412,
		0.786576, -0.511164, 0.346424,
		15.846171, 13.399630, 17.574039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.967850, 14.057864, 17.097652>,  <15.295568, 13.757444, 17.331543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.967850, 14.057864, 17.097652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985312, 13.664860, 17.170057>,  <15.995790, 13.429057, 17.213501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985312, 13.664860, 17.170057>,  <15.967850, 14.057864, 17.097652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985312, 13.664860, 17.170057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200406, -0.168890, -0.965046,
		0.978740, 0.078406, 0.189528,
		0.043656, -0.982511, 0.181012,
		15.998409, 13.370107, 17.224361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.940506, 13.776628, 16.429794>,  <15.967850, 14.057864, 17.097652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.940506, 13.776628, 16.429794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873148, 13.442776, 16.639570>,  <15.832733, 13.242465, 16.765436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873148, 13.442776, 16.639570>,  <15.940506, 13.776628, 16.429794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.873148, 13.442776, 16.639570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093567, -0.543169, -0.834393,
		0.981269, -0.091436, 0.169561,
		-0.168394, -0.834630, 0.524440,
		15.822630, 13.192387, 16.796902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.530838, 13.256247, 16.396511>,  <15.940506, 13.776628, 16.429794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.530838, 13.256247, 16.396511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218491, 13.028352, 16.498995>,  <16.031082, 12.891615, 16.560486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218491, 13.028352, 16.498995>,  <16.530838, 13.256247, 16.396511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.218491, 13.028352, 16.498995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222542, -0.636934, -0.738099,
		0.583710, -0.519342, 0.624153,
		-0.780870, -0.569736, 0.256210,
		15.984230, 12.857431, 16.575857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727694, 12.526914, 16.311361>,  <16.530838, 13.256247, 16.396511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727694, 12.526914, 16.311361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330212, 12.565526, 16.288610>,  <16.091722, 12.588694, 16.274960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330212, 12.565526, 16.288610>,  <16.727694, 12.526914, 16.311361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.330212, 12.565526, 16.288610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010905, -0.588551, -0.808387,
		-0.111507, -0.802677, 0.585898,
		-0.993704, 0.096530, -0.056875,
		16.032101, 12.594485, 16.271547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<16.376209, 16.550737, 25.061924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.672153, 16.326912, 25.211321>,  <16.849720, 16.192617, 25.300959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.672153, 16.326912, 25.211321>,  <16.376209, 16.550737, 25.061924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.672153, 16.326912, 25.211321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297962, -0.225201, -0.927633,
		0.603180, 0.797605, 0.000111,
		0.739860, -0.559562, 0.373493,
		16.894112, 16.159042, 25.323368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.939400, 16.661291, 24.661404>,  <16.376209, 16.550737, 25.061924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.939400, 16.661291, 24.661404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.016539, 16.318724, 24.852970>,  <17.062822, 16.113184, 24.967909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.016539, 16.318724, 24.852970>,  <16.939400, 16.661291, 24.661404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.016539, 16.318724, 24.852970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438998, -0.361199, -0.822688,
		0.877548, 0.368895, 0.306310,
		0.192846, -0.856418, 0.478914,
		17.074392, 16.061798, 24.996645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597759, 16.594940, 24.417973>,  <16.939400, 16.661291, 24.661404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.597759, 16.594940, 24.417973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.449909, 16.238760, 24.524158>,  <17.361198, 16.025051, 24.587870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.449909, 16.238760, 24.524158>,  <17.597759, 16.594940, 24.417973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.449909, 16.238760, 24.524158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399950, -0.410343, -0.819548,
		0.838700, -0.196754, 0.507810,
		-0.369626, -0.890453, 0.265463,
		17.339022, 15.971624, 24.603798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.106543, 16.138479, 24.226185>,  <17.597759, 16.594940, 24.417973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.106543, 16.138479, 24.226185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.767090, 15.929075, 24.256531>,  <17.563417, 15.803432, 24.274738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.767090, 15.929075, 24.256531>,  <18.106543, 16.138479, 24.226185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.767090, 15.929075, 24.256531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205694, -0.458710, -0.864451,
		0.487351, -0.717997, 0.496960,
		-0.848634, -0.523512, 0.075865,
		17.512499, 15.772021, 24.279291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.287159, 15.557024, 23.844862>,  <18.106543, 16.138479, 24.226185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.287159, 15.557024, 23.844862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.889042, 15.552531, 23.883366>,  <17.650171, 15.549835, 23.906467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.889042, 15.552531, 23.883366>,  <18.287159, 15.557024, 23.844862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.889042, 15.552531, 23.883366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085183, -0.372306, -0.924193,
		0.046220, -0.928042, 0.369596,
		-0.995293, -0.011233, 0.096262,
		17.590454, 15.549162, 23.912245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.084753, 14.871881, 23.627415>,  <18.287159, 15.557024, 23.844862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.084753, 14.871881, 23.627415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.746178, 15.084059, 23.608780>,  <17.543032, 15.211365, 23.597599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.746178, 15.084059, 23.608780>,  <18.084753, 14.871881, 23.627415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.746178, 15.084059, 23.608780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164687, -0.343980, -0.924422,
		-0.506378, -0.774795, 0.378515,
		-0.846439, 0.530443, -0.046586,
		17.492245, 15.243192, 23.594805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504702, 14.406904, 23.491253>,  <18.084753, 14.871881, 23.627415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.504702, 14.406904, 23.491253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.436543, 14.774623, 23.349346>,  <17.395647, 14.995254, 23.264202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.436543, 14.774623, 23.349346>,  <17.504702, 14.406904, 23.491253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.436543, 14.774623, 23.349346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143905, -0.379387, -0.913978,
		-0.974810, -0.104689, 0.196939,
		-0.170400, 0.919296, -0.354765,
		17.385422, 15.050412, 23.242916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986284, 14.180687, 23.059622>,  <17.504702, 14.406904, 23.491253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986284, 14.180687, 23.059622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.076927, 14.547838, 22.929300>,  <17.131313, 14.768129, 22.851107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.076927, 14.547838, 22.929300>,  <16.986284, 14.180687, 23.059622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.076927, 14.547838, 22.929300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447415, -0.199026, -0.871899,
		-0.865141, 0.343347, 0.365572,
		0.226606, 0.917878, -0.325804,
		17.144909, 14.823202, 22.831558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429277, 14.297727, 22.574209>,  <16.986284, 14.180687, 23.059622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.429277, 14.297727, 22.574209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.660328, 14.616128, 22.501846>,  <16.798958, 14.807169, 22.458427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.660328, 14.616128, 22.501846>,  <16.429277, 14.297727, 22.574209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.660328, 14.616128, 22.501846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318823, 0.015976, -0.947679,
		-0.751466, 0.605082, 0.263013,
		0.577625, 0.796003, -0.180909,
		16.833616, 14.854929, 22.447575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.982964, 14.798481, 22.367163>,  <16.429277, 14.297727, 22.574209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.982964, 14.798481, 22.367163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.340206, 14.872061, 22.202957>,  <16.554552, 14.916208, 22.104433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.340206, 14.872061, 22.202957>,  <15.982964, 14.798481, 22.367163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340206, 14.872061, 22.202957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436273, 0.131729, -0.890120,
		-0.109660, 0.974069, 0.197900,
		0.893107, 0.183949, -0.410514,
		16.608139, 14.927245, 22.079803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.966324, 15.362060, 21.834766>,  <15.982964, 14.798481, 22.367163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.966324, 15.362060, 21.834766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.307297, 15.174992, 21.741261>,  <16.511881, 15.062751, 21.685158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.307297, 15.174992, 21.741261>,  <15.966324, 15.362060, 21.834766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307297, 15.174992, 21.741261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250249, 0.027614, -0.967788,
		0.459060, 0.883472, -0.093495,
		0.852431, -0.467670, -0.233764,
		16.563026, 15.034691, 21.671131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332880, 15.794811, 21.368826>,  <15.966324, 15.362060, 21.834766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332880, 15.794811, 21.368826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.453072, 15.414014, 21.345434>,  <16.525187, 15.185535, 21.331398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.453072, 15.414014, 21.345434>,  <16.332880, 15.794811, 21.368826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453072, 15.414014, 21.345434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234717, -0.014378, -0.971957,
		0.924456, 0.305781, -0.227769,
		0.300481, -0.951994, -0.058480,
		16.543217, 15.128416, 21.327890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.574312, 15.663057, 20.658745>,  <16.332880, 15.794811, 21.368826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.574312, 15.663057, 20.658745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.567556, 15.277771, 20.766026>,  <16.563503, 15.046599, 20.830393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.567556, 15.277771, 20.766026>,  <16.574312, 15.663057, 20.658745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.567556, 15.277771, 20.766026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171812, -0.261452, -0.949802,
		0.984985, -0.062122, -0.161076,
		-0.016890, -0.963215, 0.268200,
		16.562489, 14.988807, 20.846485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867811, 15.325295, 20.081432>,  <16.574312, 15.663057, 20.658745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.867811, 15.325295, 20.081432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.727560, 14.992185, 20.252798>,  <16.643410, 14.792318, 20.355618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.727560, 14.992185, 20.252798>,  <16.867811, 15.325295, 20.081432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.727560, 14.992185, 20.252798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123349, -0.412407, -0.902610,
		0.928356, -0.369325, 0.041879,
		-0.350628, -0.832778, 0.428417,
		16.622372, 14.742352, 20.381323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.603340, 15.601329, 20.237507>,  <16.867811, 15.325295, 20.081432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.603340, 15.601329, 20.237507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.536028, 15.961785, 20.077694>,  <17.495640, 16.178059, 19.981806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.536028, 15.961785, 20.077694>,  <17.603340, 15.601329, 20.237507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.536028, 15.961785, 20.077694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432795, 0.296611, 0.851299,
		0.885647, 0.316172, 0.340096,
		-0.168281, 0.901142, -0.399530,
		17.485544, 16.232128, 19.957834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.646393, 16.075569, 20.852751>,  <17.603340, 15.601329, 20.237507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.646393, 16.075569, 20.852751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.517412, 16.316755, 20.560871>,  <17.440023, 16.461468, 20.385744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.517412, 16.316755, 20.560871>,  <17.646393, 16.075569, 20.852751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.517412, 16.316755, 20.560871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470802, 0.566604, 0.676244,
		0.821201, 0.561598, 0.101176,
		-0.322451, 0.602966, -0.729697,
		17.420677, 16.497644, 20.341963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915022, 16.775393, 20.967676>,  <17.646393, 16.075569, 20.852751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.915022, 16.775393, 20.967676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.577255, 16.786802, 20.753706>,  <17.374596, 16.793648, 20.625324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.577255, 16.786802, 20.753706>,  <17.915022, 16.775393, 20.967676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.577255, 16.786802, 20.753706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400175, 0.630254, 0.665311,
		0.356116, 0.775865, -0.520784,
		-0.844418, 0.028523, -0.534925,
		17.323931, 16.795359, 20.593227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916590, 17.409449, 20.896801>,  <17.915022, 16.775393, 20.967676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.916590, 17.409449, 20.896801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.548792, 17.269861, 20.824415>,  <17.328114, 17.186108, 20.780983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.548792, 17.269861, 20.824415>,  <17.916590, 17.409449, 20.896801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.548792, 17.269861, 20.824415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354170, 0.535684, 0.766555,
		-0.170564, 0.768936, -0.616154,
		-0.919495, -0.348970, -0.180965,
		17.272943, 17.165171, 20.770126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502777, 18.009941, 20.856483>,  <17.916590, 17.409449, 20.896801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502777, 18.009941, 20.856483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.269547, 17.698397, 20.948914>,  <17.129608, 17.511469, 21.004372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.269547, 17.698397, 20.948914>,  <17.502777, 18.009941, 20.856483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.269547, 17.698397, 20.948914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315275, 0.479067, 0.819205,
		-0.748748, 0.404806, -0.524889,
		-0.583076, -0.778862, 0.231075,
		17.094624, 17.464739, 21.018236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841984, 18.310616, 21.042023>,  <17.502777, 18.009941, 20.856483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.841984, 18.310616, 21.042023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.805138, 17.937136, 21.180424>,  <16.783030, 17.713047, 21.263464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.805138, 17.937136, 21.180424>,  <16.841984, 18.310616, 21.042023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805138, 17.937136, 21.180424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523865, 0.340946, 0.780590,
		-0.846806, -0.109351, -0.520540,
		-0.092118, -0.933701, 0.346000,
		16.777502, 17.657024, 21.284224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113575, 18.121845, 21.036510>,  <16.841984, 18.310616, 21.042023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113575, 18.121845, 21.036510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.313637, 17.908508, 21.309389>,  <16.433674, 17.780506, 21.473116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.313637, 17.908508, 21.309389>,  <16.113575, 18.121845, 21.036510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.313637, 17.908508, 21.309389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516652, 0.448430, 0.729371,
		-0.694921, -0.717257, -0.051267,
		0.500156, -0.533342, 0.682195,
		16.463684, 17.748507, 21.514048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.653753, 18.141285, 21.621441>,  <16.113575, 18.121845, 21.036510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.653753, 18.141285, 21.621441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.990511, 18.000410, 21.784990>,  <16.192566, 17.915884, 21.883120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.990511, 18.000410, 21.784990>,  <15.653753, 18.141285, 21.621441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990511, 18.000410, 21.784990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230414, 0.450536, 0.862512,
		-0.487980, -0.820354, 0.298154,
		0.841894, -0.352189, 0.408873,
		16.243080, 17.894753, 21.907652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453092, 17.743910, 22.220352>,  <15.653753, 18.141285, 21.621441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.453092, 17.743910, 22.220352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.834840, 17.846411, 22.281685>,  <16.063889, 17.907911, 22.318483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.834840, 17.846411, 22.281685>,  <15.453092, 17.743910, 22.220352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.834840, 17.846411, 22.281685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240791, 0.356668, 0.902667,
		0.176623, -0.898400, 0.402097,
		0.954372, 0.256253, 0.153331,
		16.121151, 17.923286, 22.327684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.589415, 17.508509, 22.877230>,  <15.453092, 17.743910, 22.220352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.589415, 17.508509, 22.877230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.881793, 17.775942, 22.822512>,  <16.057220, 17.936401, 22.789680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.881793, 17.775942, 22.822512>,  <15.589415, 17.508509, 22.877230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881793, 17.775942, 22.822512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169494, 0.372025, 0.912616,
		0.661053, -0.643887, 0.385251,
		0.730946, 0.668585, -0.136794,
		16.101076, 17.976517, 22.781473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.981594, 17.517347, 23.435633>,  <15.589415, 17.508509, 22.877230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.981594, 17.517347, 23.435633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.083359, 17.873692, 23.285089>,  <16.144417, 18.087498, 23.194763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.083359, 17.873692, 23.285089>,  <15.981594, 17.517347, 23.435633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.083359, 17.873692, 23.285089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022616, 0.383574, 0.923233,
		0.966832, -0.243392, 0.077438,
		0.254411, 0.890860, -0.376356,
		16.159681, 18.140949, 23.172182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505970, 17.707813, 23.839661>,  <15.981594, 17.517347, 23.435633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505970, 17.707813, 23.839661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.399218, 18.051823, 23.665701>,  <16.335167, 18.258228, 23.561325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.399218, 18.051823, 23.665701>,  <16.505970, 17.707813, 23.839661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.399218, 18.051823, 23.665701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037184, 0.460118, 0.887079,
		0.963012, 0.220572, -0.154776,
		-0.266880, 0.860023, -0.434897,
		16.319153, 18.309830, 23.535233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059612, 18.164942, 23.846590>,  <16.505970, 17.707813, 23.839661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059612, 18.164942, 23.846590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.732094, 18.390396, 23.802982>,  <16.535582, 18.525669, 23.776817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.732094, 18.390396, 23.802982>,  <17.059612, 18.164942, 23.846590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.732094, 18.390396, 23.802982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167626, 0.416353, 0.893617,
		0.549065, 0.713417, -0.435389,
		-0.818797, 0.563636, -0.109018,
		16.486454, 18.559486, 23.770277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232327, 18.755222, 24.163631>,  <17.059612, 18.164942, 23.846590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.232327, 18.755222, 24.163631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.834806, 18.784618, 24.130264>,  <16.596294, 18.802256, 24.110245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.834806, 18.784618, 24.130264>,  <17.232327, 18.755222, 24.163631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.834806, 18.784618, 24.130264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054279, 0.334068, 0.940984,
		0.097021, 0.939679, -0.328008,
		-0.993801, 0.073491, -0.083417,
		16.536667, 18.806665, 24.105240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.213983, 19.389578, 23.851379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.571291, 19.209831, 23.846693>,  <10.785676, 19.101982, 23.843882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.571291, 19.209831, 23.846693>,  <10.213983, 19.389578, 23.851379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.571291, 19.209831, 23.846693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171002, -0.315592, -0.933360,
		0.415724, 0.835746, -0.358752,
		0.893270, -0.449367, -0.011715,
		10.839272, 19.075022, 23.843178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.534107, 19.662270, 23.282183>,  <10.213983, 19.389578, 23.851379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.534107, 19.662270, 23.282183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.710317, 19.306236, 23.328987>,  <10.816042, 19.092617, 23.357069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.710317, 19.306236, 23.328987>,  <10.534107, 19.662270, 23.282183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.710317, 19.306236, 23.328987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054396, -0.156563, -0.986169,
		0.896091, 0.428066, -0.117387,
		0.440524, -0.890083, 0.117010,
		10.842474, 19.039211, 23.364090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.096395, 19.591700, 22.741018>,  <10.534107, 19.662270, 23.282183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.096395, 19.591700, 22.741018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.976095, 19.233696, 22.872782>,  <10.903915, 19.018894, 22.951839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.976095, 19.233696, 22.872782>,  <11.096395, 19.591700, 22.741018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.976095, 19.233696, 22.872782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166672, -0.290758, -0.942168,
		0.939027, -0.338258, -0.061728,
		-0.300748, -0.895009, 0.329408,
		10.885871, 18.965193, 22.971603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.414146, 19.127844, 22.242405>,  <11.096395, 19.591700, 22.741018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.414146, 19.127844, 22.242405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.155365, 18.905806, 22.451525>,  <11.000096, 18.772583, 22.576998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.155365, 18.905806, 22.451525>,  <11.414146, 19.127844, 22.242405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.155365, 18.905806, 22.451525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246323, -0.496722, -0.832222,
		0.721648, -0.667187, 0.184623,
		-0.646954, -0.555094, 0.522802,
		10.961279, 18.739277, 22.608366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.587214, 18.471899, 22.154495>,  <11.414146, 19.127844, 22.242405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.587214, 18.471899, 22.154495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.197278, 18.462011, 22.243113>,  <10.963317, 18.456078, 22.296282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.197278, 18.462011, 22.243113>,  <11.587214, 18.471899, 22.154495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.197278, 18.462011, 22.243113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167945, -0.572057, -0.802835,
		0.146581, -0.819841, 0.553511,
		-0.974838, -0.024721, 0.221541,
		10.904827, 18.454596, 22.309574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.407544, 17.751177, 22.319595>,  <11.587214, 18.471899, 22.154495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.407544, 17.751177, 22.319595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.063107, 17.933804, 22.230095>,  <10.856443, 18.043379, 22.176395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.063107, 17.933804, 22.230095>,  <11.407544, 17.751177, 22.319595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063107, 17.933804, 22.230095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135899, -0.630727, -0.764012,
		-0.489945, -0.627480, 0.605163,
		-0.861095, 0.456566, -0.223748,
		10.804778, 18.070774, 22.162970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.005076, 17.260529, 22.118366>,  <11.407544, 17.751177, 22.319595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.005076, 17.260529, 22.118366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.789992, 17.558666, 21.960720>,  <10.660942, 17.737549, 21.866133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.789992, 17.558666, 21.960720>,  <11.005076, 17.260529, 22.118366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.789992, 17.558666, 21.960720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118791, -0.529755, -0.839791,
		-0.834719, -0.404747, 0.373395,
		-0.537710, 0.745345, -0.394116,
		10.628679, 17.782270, 21.842485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.417116, 16.912100, 21.719315>,  <11.005076, 17.260529, 22.118366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.417116, 16.912100, 21.719315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.454467, 17.287033, 21.585039>,  <10.476877, 17.511993, 21.504475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.454467, 17.287033, 21.585039>,  <10.417116, 16.912100, 21.719315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.454467, 17.287033, 21.585039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157710, -0.318978, -0.934548,
		-0.983061, 0.140206, 0.118042,
		0.093376, 0.937334, -0.335687,
		10.482480, 17.568233, 21.484333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.793507, 17.023466, 21.282301>,  <10.417116, 16.912100, 21.719315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.793507, 17.023466, 21.282301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.091901, 17.274872, 21.194231>,  <10.270937, 17.425714, 21.141390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.091901, 17.274872, 21.194231>,  <9.793507, 17.023466, 21.282301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.091901, 17.274872, 21.194231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069945, -0.254838, -0.964451,
		-0.662280, 0.734865, -0.146144,
		0.745985, 0.628514, -0.220174,
		10.315697, 17.463427, 21.128180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.730586, 17.184542, 20.655752>,  <9.793507, 17.023466, 21.282301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.730586, 17.184542, 20.655752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.105157, 17.319744, 20.693398>,  <10.329899, 17.400866, 20.715984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.105157, 17.319744, 20.693398>,  <9.730586, 17.184542, 20.655752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.105157, 17.319744, 20.693398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203970, -0.306175, -0.929867,
		-0.285485, 0.889949, -0.355653,
		0.936427, 0.338005, 0.094115,
		10.386085, 17.421146, 20.721632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.905227, 17.595827, 20.067278>,  <9.730586, 17.184542, 20.655752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.905227, 17.595827, 20.067278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.285053, 17.529255, 20.173578>,  <10.512949, 17.489311, 20.237358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.285053, 17.529255, 20.173578>,  <9.905227, 17.595827, 20.067278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.285053, 17.529255, 20.173578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233094, -0.192237, -0.953264,
		0.209738, 0.967133, -0.143749,
		0.949567, -0.166429, 0.265752,
		10.569923, 17.479326, 20.253304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.281837, 17.929829, 19.569250>,  <9.905227, 17.595827, 20.067278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.281837, 17.929829, 19.569250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.540499, 17.666380, 19.723162>,  <10.695695, 17.508310, 19.815508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.540499, 17.666380, 19.723162>,  <10.281837, 17.929829, 19.569250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.540499, 17.666380, 19.723162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365038, -0.175723, -0.914259,
		0.669767, 0.731667, 0.126791,
		0.646653, -0.658623, 0.384780,
		10.734494, 17.468792, 19.838596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.909712, 18.178923, 19.455063>,  <10.281837, 17.929829, 19.569250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.909712, 18.178923, 19.455063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.974760, 17.788345, 19.511789>,  <11.013789, 17.553999, 19.545826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.974760, 17.788345, 19.511789>,  <10.909712, 18.178923, 19.455063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.974760, 17.788345, 19.511789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292739, -0.089512, -0.951993,
		0.942262, 0.196330, 0.271287,
		0.162621, -0.976444, 0.141817,
		11.023546, 17.495413, 19.554335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.582468, 17.961681, 19.325026>,  <10.909712, 18.178923, 19.455063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.582468, 17.961681, 19.325026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.375711, 17.622892, 19.275293>,  <11.251657, 17.419619, 19.245453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.375711, 17.622892, 19.275293>,  <11.582468, 17.961681, 19.325026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.375711, 17.622892, 19.275293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310510, -0.050152, -0.949246,
		0.797751, -0.529263, 0.288917,
		-0.516891, -0.846974, -0.124332,
		11.220644, 17.368801, 19.237993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.147009, 18.307573, 19.263906>,  <11.582468, 17.961681, 19.325026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.147009, 18.307573, 19.263906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.461190, 18.446594, 19.059057>,  <12.649699, 18.530006, 18.936148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.461190, 18.446594, 19.059057>,  <12.147009, 18.307573, 19.263906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.461190, 18.446594, 19.059057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060326, 0.866494, 0.495529,
		0.615972, -0.358321, 0.701559,
		0.785455, 0.347554, -0.512120,
		12.696827, 18.550861, 18.905420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.627387, 18.421165, 19.775204>,  <12.147009, 18.307573, 19.263906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.627387, 18.421165, 19.775204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.709924, 18.647833, 19.456127>,  <12.759445, 18.783833, 19.264681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.709924, 18.647833, 19.456127>,  <12.627387, 18.421165, 19.775204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.709924, 18.647833, 19.456127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243542, 0.759837, 0.602773,
		0.947687, -0.318648, 0.018778,
		0.206341, 0.566667, -0.797692,
		12.771826, 18.817833, 19.216820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317102, 18.648613, 19.838821>,  <12.627387, 18.421165, 19.775204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317102, 18.648613, 19.838821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.145923, 18.924746, 19.605480>,  <13.043215, 19.090425, 19.465475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.145923, 18.924746, 19.605480>,  <13.317102, 18.648613, 19.838821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.145923, 18.924746, 19.605480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197963, 0.701367, 0.684759,
		0.881856, 0.177559, -0.436810,
		-0.427949, 0.690331, -0.583354,
		13.017538, 19.131845, 19.430473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781931, 19.148363, 19.764257>,  <13.317102, 18.648613, 19.838821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.781931, 19.148363, 19.764257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.435220, 19.331461, 19.685095>,  <13.227193, 19.441320, 19.637598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.435220, 19.331461, 19.685095>,  <13.781931, 19.148363, 19.764257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.435220, 19.331461, 19.685095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222962, 0.710679, 0.667251,
		0.446077, 0.534233, -0.718060,
		-0.866777, 0.457746, -0.197904,
		13.175186, 19.468784, 19.625723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.947272, 19.804867, 20.047987>,  <13.781931, 19.148363, 19.764257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.947272, 19.804867, 20.047987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.553452, 19.824728, 19.980824>,  <13.317159, 19.836645, 19.940525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.553452, 19.824728, 19.980824>,  <13.947272, 19.804867, 20.047987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.553452, 19.824728, 19.980824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074272, 0.749963, 0.657297,
		0.158562, 0.659613, -0.734689,
		-0.984552, 0.049655, -0.167907,
		13.258086, 19.839624, 19.930452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.797936, 20.574236, 19.901819>,  <13.947272, 19.804867, 20.047987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.797936, 20.574236, 19.901819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.480746, 20.370338, 20.035295>,  <13.290432, 20.247999, 20.115381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.480746, 20.370338, 20.035295>,  <13.797936, 20.574236, 19.901819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.480746, 20.370338, 20.035295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030337, 0.580060, 0.814009,
		-0.608497, 0.635366, -0.475438,
		-0.792976, -0.509745, 0.333690,
		13.242853, 20.217415, 20.135403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.231941, 21.118557, 19.858559>,  <13.797936, 20.574236, 19.901819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.231941, 21.118557, 19.858559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.145051, 20.818642, 20.108561>,  <13.092916, 20.638693, 20.258562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.145051, 20.818642, 20.108561>,  <13.231941, 21.118557, 19.858559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.145051, 20.818642, 20.108561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147612, 0.658161, 0.738265,
		-0.964896, 0.068112, -0.253647,
		-0.217226, -0.749790, 0.625003,
		13.079884, 20.593704, 20.296061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.841844, 21.471869, 20.380926>,  <13.231941, 21.118557, 19.858559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.841844, 21.471869, 20.380926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.909990, 21.119728, 20.557995>,  <12.950878, 20.908443, 20.664236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.909990, 21.119728, 20.557995>,  <12.841844, 21.471869, 20.380926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.909990, 21.119728, 20.557995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109373, 0.429567, 0.896387,
		-0.979292, -0.201131, -0.023102,
		0.170367, -0.880351, 0.442670,
		12.961101, 20.855623, 20.690796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.450736, 21.472980, 20.947529>,  <12.841844, 21.471869, 20.380926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.450736, 21.472980, 20.947529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.727793, 21.200905, 21.043520>,  <12.894027, 21.037661, 21.101114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.727793, 21.200905, 21.043520>,  <12.450736, 21.472980, 20.947529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.727793, 21.200905, 21.043520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136425, 0.203163, 0.969594,
		-0.708261, -0.704322, 0.047925,
		0.692643, -0.680188, 0.239979,
		12.935586, 20.996849, 21.115513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.176269, 21.288290, 21.532253>,  <12.450736, 21.472980, 20.947529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.176269, 21.288290, 21.532253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.551813, 21.153790, 21.561844>,  <12.777140, 21.073090, 21.579599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.551813, 21.153790, 21.561844>,  <12.176269, 21.288290, 21.532253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.551813, 21.153790, 21.561844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016029, 0.171946, 0.984976,
		-0.343920, -0.925942, 0.156044,
		0.938862, -0.336252, 0.073978,
		12.833472, 21.052914, 21.584038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.239709, 20.655102, 22.018087>,  <12.176269, 21.288290, 21.532253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.239709, 20.655102, 22.018087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.554575, 20.898615, 21.978582>,  <12.743494, 21.044724, 21.954880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.554575, 20.898615, 21.978582>,  <12.239709, 20.655102, 22.018087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.554575, 20.898615, 21.978582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012321, 0.144584, 0.989416,
		0.616620, -0.780050, 0.106311,
		0.787164, 0.608784, -0.098764,
		12.790725, 21.081249, 21.948954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.815558, 20.336227, 22.466940>,  <12.239709, 20.655102, 22.018087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.815558, 20.336227, 22.466940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.901954, 20.725311, 22.433025>,  <12.953791, 20.958761, 22.412676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.901954, 20.725311, 22.433025>,  <12.815558, 20.336227, 22.466940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.901954, 20.725311, 22.433025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010224, 0.089084, 0.995971,
		0.976342, -0.214250, 0.029186,
		0.215987, 0.972708, -0.084786,
		12.966750, 21.017124, 22.407589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.261537, 20.485512, 23.029228>,  <12.815558, 20.336227, 22.466940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.261537, 20.485512, 23.029228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.136209, 20.849298, 22.919905>,  <13.061012, 21.067572, 22.854311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.136209, 20.849298, 22.919905>,  <13.261537, 20.485512, 23.029228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.136209, 20.849298, 22.919905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048822, 0.271995, 0.961059,
		0.948392, 0.314462, -0.040819,
		-0.313320, 0.909468, -0.273311,
		13.042212, 21.122139, 22.837912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.787055, 21.014465, 23.390947>,  <13.261537, 20.485512, 23.029228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.787055, 21.014465, 23.390947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.466898, 21.226761, 23.279455>,  <13.274804, 21.354137, 23.212561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.466898, 21.226761, 23.279455>,  <13.787055, 21.014465, 23.390947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.466898, 21.226761, 23.279455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085493, 0.359147, 0.929357,
		0.593349, 0.767679, -0.242085,
		-0.800392, 0.530737, -0.278731,
		13.226780, 21.385983, 23.195835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.452308, 21.371389, 23.152212>,  <13.787055, 21.014465, 23.390947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.452308, 21.371389, 23.152212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.831269, 21.489262, 23.102270>,  <15.058646, 21.559984, 23.072304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.831269, 21.489262, 23.102270>,  <14.452308, 21.371389, 23.152212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.831269, 21.489262, 23.102270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012666, -0.355299, -0.934667,
		-0.319787, 0.887089, -0.332879,
		0.947405, 0.294678, -0.124856,
		15.115491, 21.577665, 23.064814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.429811, 21.800642, 22.476555>,  <14.452308, 21.371389, 23.152212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.429811, 21.800642, 22.476555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.779735, 21.631071, 22.570360>,  <14.989688, 21.529327, 22.626644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.779735, 21.631071, 22.570360>,  <14.429811, 21.800642, 22.476555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.779735, 21.631071, 22.570360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089344, -0.334588, -0.938120,
		0.476162, 0.841626, -0.254824,
		0.874807, -0.423930, 0.234512,
		15.042177, 21.503893, 22.640715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921680, 22.005203, 22.019714>,  <14.429811, 21.800642, 22.476555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921680, 22.005203, 22.019714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.104588, 21.673254, 22.147598>,  <15.214332, 21.474085, 22.224329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.104588, 21.673254, 22.147598>,  <14.921680, 22.005203, 22.019714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104588, 21.673254, 22.147598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312477, -0.186649, -0.931408,
		0.832625, 0.525804, 0.173968,
		0.457267, -0.829874, 0.319711,
		15.241768, 21.424292, 22.243511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514474, 21.920532, 21.588100>,  <14.921680, 22.005203, 22.019714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.514474, 21.920532, 21.588100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.482857, 21.565727, 21.770073>,  <15.463886, 21.352844, 21.879257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.482857, 21.565727, 21.770073>,  <15.514474, 21.920532, 21.588100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.482857, 21.565727, 21.770073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141887, -0.461725, -0.875602,
		0.986722, -0.004661, 0.162352,
		-0.079043, -0.887011, 0.454933,
		15.459144, 21.299623, 21.906553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071957, 21.564997, 21.347584>,  <15.514474, 21.920532, 21.588100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.071957, 21.564997, 21.347584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.832172, 21.275919, 21.485197>,  <15.688302, 21.102472, 21.567764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.832172, 21.275919, 21.485197>,  <16.071957, 21.564997, 21.347584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.832172, 21.275919, 21.485197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169152, -0.534502, -0.828067,
		0.782327, -0.438199, 0.442658,
		-0.599459, -0.722696, 0.344033,
		15.652334, 21.059111, 21.588408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497692, 21.056211, 21.331379>,  <16.071957, 21.564997, 21.347584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497692, 21.056211, 21.331379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.116003, 20.937174, 21.343384>,  <15.886991, 20.865751, 21.350586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.116003, 20.937174, 21.343384>,  <16.497692, 21.056211, 21.331379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.116003, 20.937174, 21.343384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166262, -0.611150, -0.773856,
		0.248637, -0.733439, 0.632651,
		-0.954221, -0.297595, 0.030011,
		15.829737, 20.847895, 21.352386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.500942, 20.350212, 21.172169>,  <16.497692, 21.056211, 21.331379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.500942, 20.350212, 21.172169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.129629, 20.467546, 21.080736>,  <15.906841, 20.537947, 21.025877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.129629, 20.467546, 21.080736>,  <16.500942, 20.350212, 21.172169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.129629, 20.467546, 21.080736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054848, -0.499945, -0.864319,
		-0.367811, -0.814868, 0.448001,
		-0.928282, 0.293334, -0.228579,
		15.851145, 20.555548, 21.012161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.118872, 19.711931, 21.093178>,  <16.500942, 20.350212, 21.172169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.118872, 19.711931, 21.093178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.939590, 20.005611, 20.889193>,  <15.832021, 20.181820, 20.766802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.939590, 20.005611, 20.889193>,  <16.118872, 19.711931, 21.093178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.939590, 20.005611, 20.889193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015773, -0.563887, -0.825701,
		-0.893792, -0.378126, 0.241156,
		-0.448204, 0.734201, -0.509962,
		15.805128, 20.225872, 20.736204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.738840, 19.342939, 20.725573>,  <16.118872, 19.711931, 21.093178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.738840, 19.342939, 20.725573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.745253, 19.691483, 20.529417>,  <15.749100, 19.900608, 20.411724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.745253, 19.691483, 20.529417>,  <15.738840, 19.342939, 20.725573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.745253, 19.691483, 20.529417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055087, -0.488935, -0.870579,
		-0.998353, 0.040970, 0.040163,
		0.016030, 0.871357, -0.490387,
		15.750062, 19.952890, 20.382301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228554, 19.254801, 20.302849>,  <15.738840, 19.342939, 20.725573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228554, 19.254801, 20.302849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.447450, 19.545280, 20.136398>,  <15.578787, 19.719568, 20.036528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.447450, 19.545280, 20.136398>,  <15.228554, 19.254801, 20.302849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.447450, 19.545280, 20.136398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098874, -0.549789, -0.829431,
		-0.831116, 0.412753, -0.372668,
		0.547239, 0.726200, -0.416128,
		15.611622, 19.763140, 20.011560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036003, 19.247007, 19.646992>,  <15.228554, 19.254801, 20.302849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036003, 19.247007, 19.646992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.384596, 19.440025, 19.611961>,  <15.593752, 19.555836, 19.590944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.384596, 19.440025, 19.611961>,  <15.036003, 19.247007, 19.646992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.384596, 19.440025, 19.611961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020609, -0.214443, -0.976519,
		-0.489992, 0.849215, -0.196829,
		0.871483, 0.482543, -0.087574,
		15.646041, 19.584789, 19.585690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020814, 19.562712, 18.983324>,  <15.036003, 19.247007, 19.646992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020814, 19.562712, 18.983324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.401421, 19.535212, 19.103252>,  <15.629785, 19.518711, 19.175209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.401421, 19.535212, 19.103252>,  <15.020814, 19.562712, 18.983324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.401421, 19.535212, 19.103252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268192, -0.291907, -0.918076,
		0.150635, 0.953973, -0.259317,
		0.951516, -0.068748, 0.299820,
		15.686875, 19.514587, 19.193199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438210, 19.819963, 18.363400>,  <15.020814, 19.562712, 18.983324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.438210, 19.819963, 18.363400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.704885, 19.621424, 18.585810>,  <15.864889, 19.502300, 18.719255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.704885, 19.621424, 18.585810>,  <15.438210, 19.819963, 18.363400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.704885, 19.621424, 18.585810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413693, -0.374118, -0.829996,
		0.619989, 0.783371, -0.044082,
		0.666687, -0.496352, 0.556024,
		15.904891, 19.472519, 18.752617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115330, 19.898205, 18.080103>,  <15.438210, 19.819963, 18.363400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115330, 19.898205, 18.080103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.167492, 19.567537, 18.299049>,  <16.198790, 19.369137, 18.430418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.167492, 19.567537, 18.299049>,  <16.115330, 19.898205, 18.080103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167492, 19.567537, 18.299049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495239, -0.423963, -0.758283,
		0.858913, 0.369963, 0.354112,
		0.130406, -0.826670, 0.547367,
		16.206614, 19.319536, 18.463259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<4.282225, 24.309280, 6.057106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.669373, 24.211142, 6.035069>,  <4.901661, 24.152258, 6.021847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.669373, 24.211142, 6.035069>,  <4.282225, 24.309280, 6.057106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.669373, 24.211142, 6.035069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240531, -0.967202, 0.081642,
		-0.073316, -0.065767, -0.995138,
		0.967868, -0.245348, -0.055092,
		4.959733, 24.137537, 6.018542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.378652, 23.769117, 5.477421>,  <4.282225, 24.309280, 6.057106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.378652, 23.769117, 5.477421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.647627, 23.733604, 5.771345>,  <4.809012, 23.712297, 5.947699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.647627, 23.733604, 5.771345>,  <4.378652, 23.769117, 5.477421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.647627, 23.733604, 5.771345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215246, -0.973329, 0.079375,
		0.708164, -0.211539, -0.673613,
		0.672438, -0.088782, 0.734809,
		4.849359, 23.706970, 5.991787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.890621, 23.366299, 5.348356>,  <4.378652, 23.769117, 5.477421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.890621, 23.366299, 5.348356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.856381, 23.343365, 5.746227>,  <4.835837, 23.329605, 5.984950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.856381, 23.343365, 5.746227>,  <4.890621, 23.366299, 5.348356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.856381, 23.343365, 5.746227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043863, -0.997158, -0.061252,
		0.995364, -0.048873, 0.082841,
		-0.085600, -0.057335, 0.994679,
		4.830701, 23.326164, 6.044631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.385149, 22.870281, 5.525229>,  <4.890621, 23.366299, 5.348356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.385149, 22.870281, 5.525229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.137750, 22.910252, 5.836991>,  <4.989310, 22.934235, 6.024049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.137750, 22.910252, 5.836991>,  <5.385149, 22.870281, 5.525229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.137750, 22.910252, 5.836991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045136, -0.994761, 0.091720,
		0.784488, 0.021549, 0.619769,
		-0.618499, 0.099927, 0.779406,
		4.952200, 22.940229, 6.070813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.290645, 22.178154, 5.850435>,  <5.385149, 22.870281, 5.525229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.290645, 22.178154, 5.850435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.049177, 22.075050, 6.152201>,  <4.904296, 22.013189, 6.333261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.049177, 22.075050, 6.152201>,  <5.290645, 22.178154, 5.850435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.049177, 22.075050, 6.152201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089879, -0.918254, -0.385656,
		0.792152, -0.300615, 0.531155,
		-0.603670, -0.257758, 0.754416,
		4.868076, 21.997723, 6.378526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.686941, 21.609411, 5.659554>,  <5.290645, 22.178154, 5.850435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.686941, 21.609411, 5.659554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.736619, 21.213577, 5.630440>,  <5.766425, 20.976076, 5.612972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.736619, 21.213577, 5.630440>,  <5.686941, 21.609411, 5.659554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.736619, 21.213577, 5.630440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266967, -0.037324, 0.962983,
		-0.955670, -0.139027, 0.259551,
		0.124193, -0.989585, -0.072785,
		5.773876, 20.916702, 5.608605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.252413, 21.158054, 6.026453>,  <5.686941, 21.609411, 5.659554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.252413, 21.158054, 6.026453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.606832, 20.974634, 5.999179>,  <5.819483, 20.864582, 5.982814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.606832, 20.974634, 5.999179>,  <5.252413, 21.158054, 6.026453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.606832, 20.974634, 5.999179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052010, -0.047831, 0.997500,
		-0.460669, -0.887379, -0.018532,
		0.886047, -0.458553, -0.068187,
		5.872646, 20.837069, 5.978723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.371065, 20.603045, 6.379995>,  <5.252413, 21.158054, 6.026453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.371065, 20.603045, 6.379995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.756496, 20.706804, 6.406004>,  <5.987755, 20.769060, 6.421609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.756496, 20.706804, 6.406004>,  <5.371065, 20.603045, 6.379995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.756496, 20.706804, 6.406004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026592, -0.334876, 0.941887,
		0.266098, -0.905853, -0.329578,
		0.963579, 0.259398, 0.065021,
		6.045570, 20.784624, 6.425510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.707642, 19.960779, 6.614023>,  <5.371065, 20.603045, 6.379995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.707642, 19.960779, 6.614023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.905519, 20.273329, 6.766197>,  <6.024245, 20.460859, 6.857501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.905519, 20.273329, 6.766197>,  <5.707642, 19.960779, 6.614023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.905519, 20.273329, 6.766197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113704, -0.375795, 0.919701,
		0.861597, -0.498227, -0.097058,
		0.494693, 0.781376, 0.380434,
		6.053927, 20.507742, 6.880327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.290102, 19.760145, 7.113645>,  <5.707642, 19.960779, 6.614023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.290102, 19.760145, 7.113645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.131608, 20.118624, 7.193470>,  <6.036511, 20.333712, 7.241365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.131608, 20.118624, 7.193470>,  <6.290102, 19.760145, 7.113645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.131608, 20.118624, 7.193470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095948, -0.256581, 0.961749,
		0.913121, 0.361932, 0.187655,
		-0.396236, 0.896198, 0.199563,
		6.012737, 20.387484, 7.253339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.625097, 19.929146, 7.689547>,  <6.290102, 19.760145, 7.113645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.625097, 19.929146, 7.689547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.315465, 20.182358, 7.686068>,  <6.129686, 20.334284, 7.683980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.315465, 20.182358, 7.686068>,  <6.625097, 19.929146, 7.689547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.315465, 20.182358, 7.686068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198381, -0.229492, 0.952879,
		0.601204, 0.739330, 0.303226,
		-0.774080, 0.633029, -0.008698,
		6.083241, 20.372267, 7.683459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.755133, 20.499907, 8.294302>,  <6.625097, 19.929146, 7.689547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.755133, 20.499907, 8.294302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.364671, 20.483631, 8.209010>,  <6.130394, 20.473866, 8.157835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.364671, 20.483631, 8.209010>,  <6.755133, 20.499907, 8.294302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.364671, 20.483631, 8.209010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206312, -0.131593, 0.969597,
		-0.067512, 0.990468, 0.120061,
		-0.976154, -0.040689, -0.213230,
		6.071825, 20.471424, 8.145041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.509182, 20.783230, 8.825892>,  <6.755133, 20.499907, 8.294302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.509182, 20.783230, 8.825892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.187276, 20.611120, 8.662323>,  <5.994133, 20.507854, 8.564181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.187276, 20.611120, 8.662323>,  <6.509182, 20.783230, 8.825892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.187276, 20.611120, 8.662323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335343, -0.238878, 0.911308,
		-0.489793, 0.870519, 0.047952,
		-0.804765, -0.430272, -0.408924,
		5.945847, 20.482038, 8.539646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.913294, 21.059345, 9.189729>,  <6.509182, 20.783230, 8.825892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.913294, 21.059345, 9.189729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.808405, 20.703285, 9.040667>,  <5.745472, 20.489649, 8.951229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.808405, 20.703285, 9.040667>,  <5.913294, 21.059345, 9.189729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.808405, 20.703285, 9.040667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267486, -0.303990, 0.914353,
		-0.927195, 0.339443, -0.158390,
		-0.262221, -0.890151, -0.372654,
		5.729739, 20.436239, 8.928870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.318513, 20.870356, 9.582987>,  <5.913294, 21.059345, 9.189729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.318513, 20.870356, 9.582987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.458155, 20.518690, 9.453253>,  <5.541941, 20.307690, 9.375413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.458155, 20.518690, 9.453253>,  <5.318513, 20.870356, 9.582987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.458155, 20.518690, 9.453253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330044, -0.439289, 0.835521,
		-0.877038, -0.184640, -0.443522,
		0.349105, -0.879166, -0.324334,
		5.562887, 20.254940, 9.355952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.789995, 20.354731, 9.843303>,  <5.318513, 20.870356, 9.582987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.789995, 20.354731, 9.843303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.128434, 20.153843, 9.771864>,  <5.331497, 20.033310, 9.729001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.128434, 20.153843, 9.771864>,  <4.789995, 20.354731, 9.843303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.128434, 20.153843, 9.771864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246304, -0.665512, 0.704577,
		-0.472708, -0.552152, -0.686786,
		0.846097, -0.502217, -0.178595,
		5.382263, 20.003178, 9.718286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.558688, 19.578415, 9.890609>,  <4.789995, 20.354731, 9.843303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.558688, 19.578415, 9.890609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.956474, 19.546896, 9.918407>,  <5.195146, 19.527985, 9.935087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.956474, 19.546896, 9.918407>,  <4.558688, 19.578415, 9.890609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.956474, 19.546896, 9.918407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102993, -0.600368, 0.793064,
		-0.020765, -0.795833, -0.605160,
		0.994465, -0.078795, 0.069498,
		5.254813, 19.523258, 9.939257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.698626, 18.783449, 9.859605>,  <4.558688, 19.578415, 9.890609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.698626, 18.783449, 9.859605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.028764, 18.956429, 10.004817>,  <5.226847, 19.060217, 10.091945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.028764, 18.956429, 10.004817>,  <4.698626, 18.783449, 9.859605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.028764, 18.956429, 10.004817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016095, -0.624675, 0.780719,
		0.564398, -0.650206, -0.508613,
		0.825346, 0.432450, 0.363031,
		5.276368, 19.086163, 10.113727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.209289, 18.254307, 9.917363>,  <4.698626, 18.783449, 9.859605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.209289, 18.254307, 9.917363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.309224, 18.542091, 10.176580>,  <5.369184, 18.714762, 10.332110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.309224, 18.542091, 10.176580>,  <5.209289, 18.254307, 9.917363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.309224, 18.542091, 10.176580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131662, -0.637810, 0.758857,
		0.959295, -0.274912, -0.064622,
		0.249836, 0.719460, 0.648043,
		5.384174, 18.757929, 10.370994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.671441, 17.986395, 10.351163>,  <5.209289, 18.254307, 9.917363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.671441, 17.986395, 10.351163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.531823, 18.292479, 10.567540>,  <5.448051, 18.476130, 10.697367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.531823, 18.292479, 10.567540>,  <5.671441, 17.986395, 10.351163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.531823, 18.292479, 10.567540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023705, -0.569853, 0.821404,
		0.936805, 0.299531, 0.180766,
		-0.349047, 0.765211, 0.540942,
		5.427109, 18.522041, 10.729823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.866840, 17.709234, 11.032086>,  <5.671441, 17.986395, 10.351163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.866840, 17.709234, 11.032086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.687586, 18.048536, 11.144967>,  <5.580033, 18.252117, 11.212695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.687586, 18.048536, 11.144967>,  <5.866840, 17.709234, 11.032086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.687586, 18.048536, 11.144967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121439, -0.370512, 0.920855,
		0.885678, 0.378399, 0.269051,
		-0.448137, 0.848254, 0.282202,
		5.553145, 18.303013, 11.229628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.274306, 18.006914, 11.657797>,  <5.866840, 17.709234, 11.032086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.274306, 18.006914, 11.657797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.887719, 18.109627, 11.658504>,  <5.655766, 18.171253, 11.658929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.887719, 18.109627, 11.658504>,  <6.274306, 18.006914, 11.657797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.887719, 18.109627, 11.658504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062014, -0.240085, 0.968769,
		0.249185, 0.936175, 0.247959,
		-0.966469, 0.256779, 0.001769,
		5.597778, 18.186661, 11.659036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.225697, 18.359621, 12.262338>,  <6.274306, 18.006914, 11.657797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.225697, 18.359621, 12.262338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.854092, 18.242445, 12.171896>,  <5.631129, 18.172140, 12.117631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.854092, 18.242445, 12.171896>,  <6.225697, 18.359621, 12.262338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.854092, 18.242445, 12.171896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141638, -0.282993, 0.948606,
		-0.341869, 0.913292, 0.221413,
		-0.929013, -0.292938, -0.226104,
		5.575388, 18.154564, 12.104065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.776958, 18.545578, 12.748393>,  <6.225697, 18.359621, 12.262338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.776958, 18.545578, 12.748393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.534521, 18.274883, 12.581214>,  <5.389059, 18.112467, 12.480906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.534521, 18.274883, 12.581214>,  <5.776958, 18.545578, 12.748393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.534521, 18.274883, 12.581214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085640, -0.466882, 0.880163,
		-0.790770, 0.569253, 0.225018,
		-0.606093, -0.676736, -0.417947,
		5.352693, 18.071863, 12.455830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.114294, 18.582561, 13.171440>,  <5.776958, 18.545578, 12.748393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.114294, 18.582561, 13.171440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.182887, 18.236834, 12.982319>,  <5.224043, 18.029396, 12.868846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.182887, 18.236834, 12.982319>,  <5.114294, 18.582561, 13.171440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.182887, 18.236834, 12.982319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068740, -0.489239, 0.869437,
		-0.982786, -0.116594, -0.143310,
		0.171484, -0.864321, -0.472803,
		5.234333, 17.977537, 12.840478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.655678, 18.109289, 13.532835>,  <5.114294, 18.582561, 13.171440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.655678, 18.109289, 13.532835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.910557, 17.858589, 13.353432>,  <5.063485, 17.708168, 13.245790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.910557, 17.858589, 13.353432>,  <4.655678, 18.109289, 13.532835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.910557, 17.858589, 13.353432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081310, -0.633371, 0.769564,
		-0.766400, -0.453896, -0.454544,
		0.637197, -0.626753, -0.448509,
		5.101717, 17.670563, 13.218879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.456118, 17.368666, 13.757489>,  <4.655678, 18.109289, 13.532835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.456118, 17.368666, 13.757489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.829242, 17.316006, 13.623306>,  <5.053116, 17.284410, 13.542796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.829242, 17.316006, 13.623306>,  <4.456118, 17.368666, 13.757489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.829242, 17.316006, 13.623306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169478, -0.661245, 0.730775,
		-0.318026, -0.738528, -0.594504,
		0.932811, -0.131650, -0.335458,
		5.109085, 17.276510, 13.522669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.586656, 16.525761, 13.840776>,  <4.456118, 17.368666, 13.757489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.586656, 16.525761, 13.840776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.935648, 16.717648, 13.803580>,  <5.145044, 16.832781, 13.781262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.935648, 16.717648, 13.803580>,  <4.586656, 16.525761, 13.840776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.935648, 16.717648, 13.803580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387198, -0.562621, 0.730435,
		0.298086, -0.673296, -0.676622,
		0.872481, 0.479719, -0.092989,
		5.197392, 16.861563, 13.775683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.155756, 16.013231, 13.744175>,  <4.586656, 16.525761, 13.840776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.155756, 16.013231, 13.744175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.334157, 16.336739, 13.897524>,  <5.441197, 16.530844, 13.989533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.334157, 16.336739, 13.897524>,  <5.155756, 16.013231, 13.744175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.334157, 16.336739, 13.897524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544565, -0.585136, 0.600886,
		0.710304, -0.059224, -0.701399,
		0.446001, 0.808770, 0.383373,
		5.467957, 16.579369, 14.012536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.806498, 15.739439, 13.893181>,  <5.155756, 16.013231, 13.744175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.806498, 15.739439, 13.893181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.792298, 16.093798, 14.078189>,  <5.783778, 16.306414, 14.189194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.792298, 16.093798, 14.078189>,  <5.806498, 15.739439, 13.893181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.792298, 16.093798, 14.078189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590536, -0.354774, 0.724847,
		0.806230, 0.298868, -0.510560,
		-0.035500, 0.885897, 0.462521,
		5.781648, 16.359568, 14.216946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.479345, 16.016088, 14.052945>,  <5.806498, 15.739439, 13.893181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.479345, 16.016088, 14.052945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.199559, 16.136185, 14.312360>,  <6.031687, 16.208242, 14.468009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.199559, 16.136185, 14.312360>,  <6.479345, 16.016088, 14.052945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.199559, 16.136185, 14.312360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426777, -0.552412, 0.716033,
		0.573243, 0.777622, 0.258257,
		-0.699467, 0.300243, 0.648537,
		5.989719, 16.226257, 14.506921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.407115, 16.707567, 13.890625>,  <6.479345, 16.016088, 14.052945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.407115, 16.707567, 13.890625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.676498, 16.415598, 13.843863>,  <6.838129, 16.240417, 13.815804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.676498, 16.415598, 13.843863>,  <6.407115, 16.707567, 13.890625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.676498, 16.415598, 13.843863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281728, 0.399647, -0.872302,
		0.683434, 0.554524, 0.474786,
		0.673459, -0.729921, -0.116907,
		6.878536, 16.196621, 13.808790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.116402, 17.025526, 13.786525>,  <6.407115, 16.707567, 13.890625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.116402, 17.025526, 13.786525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.097053, 16.673899, 13.596831>,  <7.085443, 16.462923, 13.483015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.097053, 16.673899, 13.596831>,  <7.116402, 17.025526, 13.786525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.097053, 16.673899, 13.596831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326437, 0.434804, -0.839276,
		0.943980, -0.195406, 0.265927,
		-0.048374, -0.879069, -0.474235,
		7.082541, 16.410177, 13.454561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.789288, 16.866877, 13.634495>,  <7.116402, 17.025526, 13.786525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.789288, 16.866877, 13.634495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.572334, 16.646708, 13.380611>,  <7.442162, 16.514606, 13.228281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.572334, 16.646708, 13.380611>,  <7.789288, 16.866877, 13.634495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.572334, 16.646708, 13.380611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438424, 0.459017, -0.772714,
		0.716662, -0.697379, -0.007645,
		-0.542384, -0.550423, -0.634708,
		7.409619, 16.481581, 13.190199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.257258, 16.587133, 13.056464>,  <7.789288, 16.866877, 13.634495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.257258, 16.587133, 13.056464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.891023, 16.551842, 12.899536>,  <7.671282, 16.530666, 12.805379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.891023, 16.551842, 12.899536>,  <8.257258, 16.587133, 13.056464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.891023, 16.551842, 12.899536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302107, 0.492968, -0.815913,
		0.265387, -0.865563, -0.424701,
		-0.915588, -0.088227, -0.392320,
		7.616347, 16.525373, 12.781840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.380659, 16.409962, 12.336956>,  <8.257258, 16.587133, 13.056464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.380659, 16.409962, 12.336956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.014168, 16.567604, 12.365807>,  <7.794273, 16.662189, 12.383117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.014168, 16.567604, 12.365807>,  <8.380659, 16.409962, 12.336956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.014168, 16.567604, 12.365807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094616, 0.387769, -0.916888,
		-0.389322, -0.833255, -0.392574,
		-0.916230, 0.394108, 0.072127,
		7.739299, 16.685837, 12.387444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.234677, 16.369022, 11.685367>,  <8.380659, 16.409962, 12.336956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.234677, 16.369022, 11.685367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.954326, 16.601290, 11.851063>,  <7.786115, 16.740650, 11.950480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.954326, 16.601290, 11.851063>,  <8.234677, 16.369022, 11.685367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.954326, 16.601290, 11.851063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067960, 0.523748, -0.849158,
		-0.710035, -0.623309, -0.327622,
		-0.700879, 0.580667, 0.414240,
		7.744062, 16.775490, 11.975335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.743982, 16.360470, 11.225015>,  <8.234677, 16.369022, 11.685367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.743982, 16.360470, 11.225015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.683790, 16.692410, 11.439939>,  <7.647675, 16.891573, 11.568894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.683790, 16.692410, 11.439939>,  <7.743982, 16.360470, 11.225015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.683790, 16.692410, 11.439939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016872, 0.545577, -0.837891,
		-0.988469, -0.117020, -0.096100,
		-0.150480, 0.829850, 0.537312,
		7.638646, 16.941364, 11.601133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.246700, 16.714100, 10.848847>,  <7.743982, 16.360470, 11.225015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.246700, 16.714100, 10.848847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.459170, 16.955801, 11.086412>,  <7.586652, 17.100821, 11.228951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.459170, 16.955801, 11.086412>,  <7.246700, 16.714100, 10.848847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.459170, 16.955801, 11.086412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218397, 0.579643, -0.785058,
		-0.818631, 0.546712, 0.175925,
		0.531175, 0.604251, 0.593914,
		7.618523, 17.137077, 11.264586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.961087, 17.332884, 10.753458>,  <7.246700, 16.714100, 10.848847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.961087, 17.332884, 10.753458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.306598, 17.435408, 10.926984>,  <7.513905, 17.496922, 11.031099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.306598, 17.435408, 10.926984>,  <6.961087, 17.332884, 10.753458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.306598, 17.435408, 10.926984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132102, 0.715649, -0.685854,
		-0.486249, 0.649733, 0.584302,
		0.863777, 0.256308, 0.433815,
		7.565732, 17.512300, 11.057128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.004050, 18.077982, 10.912388>,  <6.961087, 17.332884, 10.753458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.004050, 18.077982, 10.912388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.386752, 17.965528, 10.882499>,  <7.616373, 17.898056, 10.864565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.386752, 17.965528, 10.882499>,  <7.004050, 18.077982, 10.912388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.386752, 17.965528, 10.882499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168404, 0.744745, -0.645751,
		0.237194, 0.605241, 0.759883,
		0.956754, -0.281136, -0.074724,
		7.673778, 17.881187, 10.860082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.275091, 18.681244, 10.969913>,  <7.004050, 18.077982, 10.912388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.275091, 18.681244, 10.969913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.538668, 18.432695, 10.800351>,  <7.696814, 18.283566, 10.698614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.538668, 18.432695, 10.800351>,  <7.275091, 18.681244, 10.969913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.538668, 18.432695, 10.800351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285908, 0.728160, -0.622928,
		0.695738, 0.289276, 0.657471,
		0.658942, -0.621371, -0.423902,
		7.736350, 18.246284, 10.673181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.907934, 19.048418, 11.063034>,  <7.275091, 18.681244, 10.969913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.907934, 19.048418, 11.063034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.964885, 18.791426, 10.761851>,  <7.999055, 18.637230, 10.581141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.964885, 18.791426, 10.761851>,  <7.907934, 19.048418, 11.063034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.964885, 18.791426, 10.761851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410928, 0.730421, -0.545549,
		0.900482, -0.231738, 0.368009,
		0.142377, -0.642482, -0.752958,
		8.007598, 18.598680, 10.535964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.550929, 19.265348, 10.792830>,  <7.907934, 19.048418, 11.063034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.550929, 19.265348, 10.792830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.431119, 19.015661, 10.504210>,  <8.359233, 18.865849, 10.331038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.431119, 19.015661, 10.504210>,  <8.550929, 19.265348, 10.792830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.431119, 19.015661, 10.504210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495560, 0.544467, -0.676739,
		0.815294, -0.560272, 0.146256,
		-0.299526, -0.624220, -0.721549,
		8.341261, 18.828396, 10.287745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.190253, 19.180321, 10.385550>,  <8.550929, 19.265348, 10.792830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.190253, 19.180321, 10.385550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.861468, 19.116753, 10.166781>,  <8.664197, 19.078611, 10.035521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.861468, 19.116753, 10.166781>,  <9.190253, 19.180321, 10.385550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.861468, 19.116753, 10.166781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412760, 0.495452, -0.764301,
		0.392434, -0.853975, -0.341649,
		-0.821964, -0.158918, -0.546919,
		8.614880, 19.069077, 10.002706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.488526, 18.818581, 9.841451>,  <9.190253, 19.180321, 10.385550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.488526, 18.818581, 9.841451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.126444, 18.951237, 9.735156>,  <8.909194, 19.030830, 9.671379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.126444, 18.951237, 9.735156>,  <9.488526, 18.818581, 9.841451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.126444, 18.951237, 9.735156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362515, 0.276272, -0.890088,
		-0.221773, -0.902047, -0.370308,
		-0.905207, 0.331640, -0.265736,
		8.854881, 19.050728, 9.655436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.427718, 18.586632, 9.223881>,  <9.488526, 18.818581, 9.841451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.427718, 18.586632, 9.223881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.158525, 18.882465, 9.228152>,  <8.997010, 19.059965, 9.230715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.158525, 18.882465, 9.228152>,  <9.427718, 18.586632, 9.223881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.158525, 18.882465, 9.228152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317582, 0.301962, -0.898866,
		-0.668009, -0.601529, -0.438093,
		-0.672982, 0.739582, 0.010679,
		8.956631, 19.104340, 9.231356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.227627, 18.701874, 8.513742>,  <9.427718, 18.586632, 9.223881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.227627, 18.701874, 8.513742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.125067, 19.040827, 8.699733>,  <9.063531, 19.244198, 8.811327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.125067, 19.040827, 8.699733>,  <9.227627, 18.701874, 8.513742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.125067, 19.040827, 8.699733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388629, 0.530839, -0.753112,
		-0.885001, -0.012394, -0.465424,
		-0.256399, 0.847382, 0.464977,
		9.048147, 19.295042, 8.839226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.940457, 18.986235, 8.046835>,  <9.227627, 18.701874, 8.513742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.940457, 18.986235, 8.046835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.005320, 19.288097, 8.301142>,  <9.044237, 19.469215, 8.453726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.005320, 19.288097, 8.301142>,  <8.940457, 18.986235, 8.046835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.005320, 19.288097, 8.301142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202255, 0.605197, -0.769954,
		-0.965815, 0.253440, -0.054496,
		0.162157, 0.754655, 0.635768,
		9.053967, 19.514494, 8.491872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.384867, 19.553820, 7.931259>,  <8.940457, 18.986235, 8.046835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.384867, 19.553820, 7.931259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.719148, 19.697927, 8.097056>,  <8.919717, 19.784393, 8.196535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.719148, 19.697927, 8.097056>,  <8.384867, 19.553820, 7.931259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.719148, 19.697927, 8.097056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054300, 0.696843, -0.715165,
		-0.546491, 0.620173, 0.562791,
		0.835703, 0.360271, 0.414494,
		8.969858, 19.806009, 8.221404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.279909, 20.273848, 7.862814>,  <8.384867, 19.553820, 7.931259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.279909, 20.273848, 7.862814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.669550, 20.229549, 7.941669>,  <8.903335, 20.202971, 7.988981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.669550, 20.229549, 7.941669>,  <8.279909, 20.273848, 7.862814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.669550, 20.229549, 7.941669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203100, 0.811754, -0.547545,
		-0.099387, 0.573403, 0.813223,
		0.974101, -0.110746, 0.197136,
		8.961781, 20.196325, 8.000810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.726375, 20.447447, 8.400641>,  <8.279909, 20.273848, 7.862814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.726375, 20.447447, 8.400641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.975492, 20.146023, 8.484808>,  <8.124962, 19.965168, 8.535308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.975492, 20.146023, 8.484808>,  <7.726375, 20.447447, 8.400641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.975492, 20.146023, 8.484808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503955, 0.592095, 0.628850,
		-0.598464, -0.285602, 0.748513,
		0.622792, -0.753561, 0.210417,
		8.162329, 19.919954, 8.547933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.907282, 19.668966, 23.871109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.603106, 19.477745, 24.046926>,  <16.420601, 19.363012, 24.152416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.603106, 19.477745, 24.046926>,  <16.907282, 19.668966, 23.871109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.603106, 19.477745, 24.046926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024224, 0.655484, 0.754821,
		-0.648957, 0.584643, -0.486875,
		-0.760439, -0.478052, 0.439544,
		16.374973, 19.334330, 24.178789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.420919, 20.142406, 24.037731>,  <16.907282, 19.668966, 23.871109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.420919, 20.142406, 24.037731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.368881, 19.832945, 24.285774>,  <16.337658, 19.647268, 24.434601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.368881, 19.832945, 24.285774>,  <16.420919, 20.142406, 24.037731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.368881, 19.832945, 24.285774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012037, 0.624146, 0.781215,
		-0.991428, 0.109097, -0.071887,
		-0.130096, -0.773653, 0.620109,
		16.329853, 19.600849, 24.471807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758371, 20.205658, 24.482454>,  <16.420919, 20.142406, 24.037731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.758371, 20.205658, 24.482454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.974849, 19.949648, 24.700619>,  <16.104734, 19.796041, 24.831518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.974849, 19.949648, 24.700619>,  <15.758371, 20.205658, 24.482454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.974849, 19.949648, 24.700619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168004, 0.553234, 0.815908,
		-0.823944, -0.533196, 0.191880,
		0.541194, -0.640026, 0.545413,
		16.137207, 19.757641, 24.864243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.399621, 20.190788, 25.121675>,  <15.758371, 20.205658, 24.482454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.399621, 20.190788, 25.121675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.752940, 20.018946, 25.196747>,  <15.964931, 19.915840, 25.241791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.752940, 20.018946, 25.196747>,  <15.399621, 20.190788, 25.121675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.752940, 20.018946, 25.196747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067666, 0.279310, 0.957814,
		-0.463905, -0.858733, 0.217643,
		0.883297, -0.429608, 0.187680,
		16.017929, 19.890064, 25.253052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.401285, 19.873108, 25.764601>,  <15.399621, 20.190788, 25.121675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.401285, 19.873108, 25.764601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.799262, 19.900179, 25.734913>,  <16.038048, 19.916422, 25.717100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.799262, 19.900179, 25.734913>,  <15.401285, 19.873108, 25.764601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.799262, 19.900179, 25.734913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050415, 0.302608, 0.951781,
		0.086870, -0.950709, 0.297666,
		0.994943, 0.067674, -0.074218,
		16.097746, 19.920481, 25.712648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549056, 19.692863, 26.336971>,  <15.401285, 19.873108, 25.764601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549056, 19.692863, 26.336971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.889346, 19.869688, 26.223236>,  <16.093521, 19.975782, 26.154995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.889346, 19.869688, 26.223236>,  <15.549056, 19.692863, 26.336971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.889346, 19.869688, 26.223236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124851, 0.355527, 0.926290,
		0.510567, -0.823518, 0.247264,
		0.850725, 0.442062, -0.284337,
		16.144564, 20.002306, 26.137936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.046755, 19.529598, 26.749454>,  <15.549056, 19.692863, 26.336971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.046755, 19.529598, 26.749454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.222641, 19.851961, 26.590879>,  <16.328173, 20.045380, 26.495735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.222641, 19.851961, 26.590879>,  <16.046755, 19.529598, 26.749454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.222641, 19.851961, 26.590879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195311, 0.345033, 0.918045,
		0.876644, -0.481107, -0.005686,
		0.439715, 0.805908, -0.396437,
		16.354555, 20.093733, 26.471949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.807835, 19.607904, 27.049225>,  <16.046755, 19.529598, 26.749454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.807835, 19.607904, 27.049225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.675251, 19.954029, 26.898830>,  <16.595701, 20.161705, 26.808594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.675251, 19.954029, 26.898830>,  <16.807835, 19.607904, 27.049225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675251, 19.954029, 26.898830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288466, 0.472380, 0.832853,
		0.898288, 0.167599, -0.406189,
		-0.331461, 0.865314, -0.375987,
		16.575813, 20.213623, 26.786034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286463, 20.014051, 27.216644>,  <16.807835, 19.607904, 27.049225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286463, 20.014051, 27.216644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.985863, 20.262005, 27.126320>,  <16.805502, 20.410778, 27.072124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.985863, 20.262005, 27.126320>,  <17.286463, 20.014051, 27.216644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.985863, 20.262005, 27.126320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069741, 0.415004, 0.907143,
		0.656036, 0.665969, -0.355107,
		-0.751500, 0.619884, -0.225812,
		16.760412, 20.447969, 27.058577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.513506, 20.700563, 27.288301>,  <17.286463, 20.014051, 27.216644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.513506, 20.700563, 27.288301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.116196, 20.712044, 27.333164>,  <16.877810, 20.718931, 27.360081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.116196, 20.712044, 27.333164>,  <17.513506, 20.700563, 27.288301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.116196, 20.712044, 27.333164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112891, 0.454798, 0.883411,
		-0.025653, 0.890132, -0.454980,
		-0.993276, 0.028701, 0.112155,
		16.818213, 20.720654, 27.366810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322638, 21.289762, 27.548540>,  <17.513506, 20.700563, 27.288301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.322638, 21.289762, 27.548540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.026115, 21.050684, 27.670671>,  <16.848202, 20.907238, 27.743950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.026115, 21.050684, 27.670671>,  <17.322638, 21.289762, 27.548540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026115, 21.050684, 27.670671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080714, 0.372230, 0.924624,
		-0.666295, 0.710075, -0.227694,
		-0.741307, -0.597694, 0.305328,
		16.803722, 20.871376, 27.762270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112902, 21.695742, 28.040073>,  <17.322638, 21.289762, 27.548540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112902, 21.695742, 28.040073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.919178, 21.352777, 28.109690>,  <16.802944, 21.146999, 28.151459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.919178, 21.352777, 28.109690>,  <17.112902, 21.695742, 28.040073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.919178, 21.352777, 28.109690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108740, 0.256376, 0.960441,
		-0.868114, 0.446225, -0.217400,
		-0.484308, -0.857412, 0.174041,
		16.773886, 21.095554, 28.161901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.678144, 21.816839, 28.605009>,  <17.112902, 21.695742, 28.040073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.678144, 21.816839, 28.605009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.913553, 21.985889, 28.880699>,  <17.054798, 22.087320, 29.046114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.913553, 21.985889, 28.880699>,  <16.678144, 21.816839, 28.605009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.913553, 21.985889, 28.880699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651916, 0.256138, -0.713722,
		-0.478174, 0.869357, -0.124773,
		0.588520, 0.422625, 0.689226,
		17.090109, 22.112677, 29.087467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.861528, 22.393139, 28.313997>,  <16.678144, 21.816839, 28.605009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.861528, 22.393139, 28.313997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.144100, 22.320879, 28.587734>,  <17.313643, 22.277523, 28.751976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.144100, 22.320879, 28.587734>,  <16.861528, 22.393139, 28.313997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.144100, 22.320879, 28.587734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694664, 0.362265, -0.621455,
		-0.135648, 0.914401, 0.381406,
		0.706429, -0.180650, 0.684342,
		17.356030, 22.266684, 28.793037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982891, 23.069971, 27.997393>,  <16.861528, 22.393139, 28.313997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.982891, 23.069971, 27.997393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.640623, 23.271797, 28.043425>,  <16.435263, 23.392893, 28.071043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.640623, 23.271797, 28.043425>,  <16.982891, 23.069971, 27.997393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.640623, 23.271797, 28.043425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215318, -0.144885, -0.965736,
		-0.470604, -0.851130, 0.232616,
		-0.855669, 0.504565, 0.115080,
		16.383923, 23.423166, 28.077948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304531, 22.578838, 27.749382>,  <16.982891, 23.069971, 27.997393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.304531, 22.578838, 27.749382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.231258, 22.972036, 27.744253>,  <16.187294, 23.207954, 27.741177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.231258, 22.972036, 27.744253>,  <16.304531, 22.578838, 27.749382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.231258, 22.972036, 27.744253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375711, -0.082054, -0.923097,
		-0.908453, -0.164277, 0.384353,
		-0.183181, 0.982995, -0.012821,
		16.176304, 23.266935, 27.740406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.642099, 22.695244, 27.543573>,  <16.304531, 22.578838, 27.749382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.642099, 22.695244, 27.543573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.866063, 23.011240, 27.443638>,  <16.000443, 23.200838, 27.383677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.866063, 23.011240, 27.443638>,  <15.642099, 22.695244, 27.543573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.866063, 23.011240, 27.443638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308103, -0.081396, -0.947865,
		-0.769138, 0.607695, 0.197823,
		0.559910, 0.789989, -0.249837,
		16.034037, 23.248236, 27.368687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203875, 22.979231, 27.142910>,  <15.642099, 22.695244, 27.543573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203875, 22.979231, 27.142910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.553583, 23.152782, 27.055826>,  <15.763409, 23.256914, 27.003576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.553583, 23.152782, 27.055826>,  <15.203875, 22.979231, 27.142910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.553583, 23.152782, 27.055826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256538, 0.032220, -0.965997,
		-0.412113, 0.900394, 0.139476,
		0.874272, 0.433880, -0.217707,
		15.815865, 23.282948, 26.990515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.916059, 23.189533, 26.485270>,  <15.203875, 22.979231, 27.142910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.916059, 23.189533, 26.485270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.294343, 23.317818, 26.464170>,  <15.521313, 23.394789, 26.451511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.294343, 23.317818, 26.464170>,  <14.916059, 23.189533, 26.485270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.294343, 23.317818, 26.464170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066158, 0.031056, -0.997326,
		-0.318214, 0.946668, 0.050588,
		0.945708, 0.320710, -0.052748,
		15.578055, 23.414030, 26.448347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036431, 23.799648, 26.028515>,  <14.916059, 23.189533, 26.485270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036431, 23.799648, 26.028515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.371092, 23.581463, 26.048443>,  <15.571888, 23.450552, 26.060400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.371092, 23.581463, 26.048443>,  <15.036431, 23.799648, 26.028515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371092, 23.581463, 26.048443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102186, -0.244801, -0.964173,
		0.538120, 0.801586, -0.260552,
		0.836651, -0.545465, 0.049821,
		15.622087, 23.417824, 26.063389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.372047, 23.933825, 25.418800>,  <15.036431, 23.799648, 26.028515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.372047, 23.933825, 25.418800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.554901, 23.599752, 25.541113>,  <15.664614, 23.399309, 25.614500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.554901, 23.599752, 25.541113>,  <15.372047, 23.933825, 25.418800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.554901, 23.599752, 25.541113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110872, -0.287614, -0.951307,
		0.882460, 0.468778, -0.038880,
		0.457134, -0.835180, 0.305783,
		15.692041, 23.349199, 25.632847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919674, 23.741022, 24.930183>,  <15.372047, 23.933825, 25.418800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919674, 23.741022, 24.930183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.847437, 23.395527, 25.118372>,  <15.804094, 23.188231, 25.231285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.847437, 23.395527, 25.118372>,  <15.919674, 23.741022, 24.930183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.847437, 23.395527, 25.118372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185981, -0.499694, -0.846001,
		0.965815, -0.065283, 0.250879,
		-0.180592, -0.863738, 0.470470,
		15.793260, 23.136406, 25.259514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.500006, 23.316832, 24.725876>,  <15.919674, 23.741022, 24.930183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.500006, 23.316832, 24.725876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.204348, 23.071678, 24.837618>,  <16.026953, 22.924587, 24.904663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.204348, 23.071678, 24.837618>,  <16.500006, 23.316832, 24.725876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.204348, 23.071678, 24.837618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084081, -0.495470, -0.864546,
		0.668277, -0.615537, 0.417756,
		-0.739146, -0.612881, 0.279356,
		15.982604, 22.887814, 24.921425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647036, 22.609930, 24.555452>,  <16.500006, 23.316832, 24.725876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.647036, 22.609930, 24.555452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.249470, 22.587992, 24.593672>,  <16.010931, 22.574829, 24.616604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.249470, 22.587992, 24.593672>,  <16.647036, 22.609930, 24.555452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.249470, 22.587992, 24.593672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040754, -0.622738, -0.781368,
		0.102358, -0.780506, 0.616712,
		-0.993912, -0.054846, 0.095550,
		15.951296, 22.571539, 24.622337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414038, 21.965050, 24.322220>,  <16.647036, 22.609930, 24.555452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.414038, 21.965050, 24.322220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.063618, 22.157068, 24.340521>,  <15.853366, 22.272280, 24.351501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.063618, 22.157068, 24.340521>,  <16.414038, 21.965050, 24.322220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.063618, 22.157068, 24.340521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312745, -0.493385, -0.811641,
		-0.367050, -0.725348, 0.582362,
		-0.876051, 0.480044, 0.045752,
		15.800802, 22.301083, 24.354246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985149, 21.408161, 24.229185>,  <16.414038, 21.965050, 24.322220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.985149, 21.408161, 24.229185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.772861, 21.739365, 24.156811>,  <15.645488, 21.938086, 24.113386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.772861, 21.739365, 24.156811>,  <15.985149, 21.408161, 24.229185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.772861, 21.739365, 24.156811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449387, -0.455917, -0.768238,
		-0.718600, -0.326409, 0.614061,
		-0.530721, 0.828008, -0.180938,
		15.613644, 21.987766, 24.102530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.293574, 21.219450, 24.043303>,  <15.985149, 21.408161, 24.229185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.293574, 21.219450, 24.043303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.281072, 21.596024, 23.909004>,  <15.273570, 21.821968, 23.828424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.281072, 21.596024, 23.909004>,  <15.293574, 21.219450, 24.043303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.281072, 21.596024, 23.909004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348887, -0.325060, -0.878985,
		-0.936644, 0.089663, 0.338614,
		-0.031257, 0.941433, -0.335747,
		15.271694, 21.878454, 23.808281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.622536, 21.409363, 23.864950>,  <15.293574, 21.219450, 24.043303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.622536, 21.409363, 23.864950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.894896, 21.610819, 23.652264>,  <15.058311, 21.731693, 23.524652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.894896, 21.610819, 23.652264>,  <14.622536, 21.409363, 23.864950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.894896, 21.610819, 23.652264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329501, -0.437722, -0.836558,
		-0.654068, 0.744813, -0.132095,
		0.680900, 0.503641, -0.531716,
		15.099165, 21.761911, 23.492748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.902470, 21.644663, 23.765211>,  <14.622536, 21.409363, 23.864950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.902470, 21.644663, 23.765211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.511887, 21.631294, 23.679968>,  <13.277537, 21.623272, 23.628822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.511887, 21.631294, 23.679968>,  <13.902470, 21.644663, 23.765211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.511887, 21.631294, 23.679968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215631, 0.123878, 0.968585,
		-0.005974, 0.991735, -0.128169,
		-0.976457, -0.033423, -0.213109,
		13.218949, 21.621267, 23.616035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.705296, 22.155979, 24.221518>,  <13.902470, 21.644663, 23.765211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.705296, 22.155979, 24.221518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.382175, 21.951109, 24.104807>,  <13.188303, 21.828186, 24.034781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.382175, 21.951109, 24.104807>,  <13.705296, 22.155979, 24.221518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.382175, 21.951109, 24.104807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284157, -0.095322, 0.954027,
		-0.516443, 0.853574, -0.068538,
		-0.807800, -0.512177, -0.291778,
		13.139835, 21.797457, 24.017273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.107274, 22.620705, 24.321320>,  <13.705296, 22.155979, 24.221518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.107274, 22.620705, 24.321320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.957451, 22.250311, 24.340321>,  <12.867557, 22.028074, 24.351721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.957451, 22.250311, 24.340321>,  <13.107274, 22.620705, 24.321320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.957451, 22.250311, 24.340321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228536, 0.141849, 0.963146,
		-0.898598, 0.349898, -0.264752,
		-0.374558, -0.925986, 0.047501,
		12.845083, 21.972515, 24.354570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.381210, 22.651808, 24.771053>,  <13.107274, 22.620705, 24.321320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.381210, 22.651808, 24.771053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.512874, 22.274189, 24.779345>,  <12.591871, 22.047617, 24.784319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.512874, 22.274189, 24.779345>,  <12.381210, 22.651808, 24.771053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.512874, 22.274189, 24.779345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066174, -0.001164, 0.997807,
		-0.941953, -0.329807, -0.062855,
		0.329158, -0.944048, 0.020728,
		12.611621, 21.990974, 24.785563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.017500, 22.302223, 25.367590>,  <12.381210, 22.651808, 24.771053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.017500, 22.302223, 25.367590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.342321, 22.082912, 25.287624>,  <12.537214, 21.951326, 25.239645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.342321, 22.082912, 25.287624>,  <12.017500, 22.302223, 25.367590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.342321, 22.082912, 25.287624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078560, -0.236739, 0.968392,
		-0.578273, -0.802090, -0.149172,
		0.812052, -0.548276, -0.199912,
		12.585938, 21.918430, 25.227652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.951768, 21.718239, 25.820866>,  <12.017500, 22.302223, 25.367590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.951768, 21.718239, 25.820866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.339367, 21.696394, 25.724483>,  <12.571926, 21.683287, 25.666655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.339367, 21.696394, 25.724483>,  <11.951768, 21.718239, 25.820866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.339367, 21.696394, 25.724483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227725, -0.180864, 0.956781,
		-0.095829, -0.981991, -0.162821,
		0.968998, -0.054609, -0.240955,
		12.630067, 21.680012, 25.652197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.223717, 21.175585, 26.186666>,  <11.951768, 21.718239, 25.820866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.223717, 21.175585, 26.186666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.525511, 21.416658, 26.082726>,  <12.706587, 21.561302, 26.020361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.525511, 21.416658, 26.082726>,  <12.223717, 21.175585, 26.186666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.525511, 21.416658, 26.082726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397360, -0.104350, 0.911710,
		0.522357, -0.791128, -0.318213,
		0.754485, 0.602684, -0.259854,
		12.751857, 21.597464, 26.004768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.364396, 20.466532, 25.900459>,  <12.223717, 21.175585, 26.186666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.364396, 20.466532, 25.900459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.201035, 20.152687, 26.087046>,  <12.103019, 19.964380, 26.198997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.201035, 20.152687, 26.087046>,  <12.364396, 20.466532, 25.900459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.201035, 20.152687, 26.087046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400270, -0.305338, -0.864033,
		0.820361, -0.539585, -0.189357,
		-0.408401, -0.784613, 0.466467,
		12.078515, 19.917303, 26.226986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.448866, 19.918688, 25.620701>,  <12.364396, 20.466532, 25.900459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.448866, 19.918688, 25.620701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.131736, 19.758953, 25.804857>,  <11.941458, 19.663113, 25.915350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.131736, 19.758953, 25.804857>,  <12.448866, 19.918688, 25.620701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.131736, 19.758953, 25.804857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342903, -0.332215, -0.878664,
		0.503830, -0.854497, 0.126455,
		-0.792826, -0.399335, 0.460389,
		11.893888, 19.639153, 25.942974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420867, 19.099522, 25.598959>,  <12.448866, 19.918688, 25.620701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420867, 19.099522, 25.598959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.087217, 19.319145, 25.620024>,  <11.887028, 19.450918, 25.632662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.087217, 19.319145, 25.620024>,  <12.420867, 19.099522, 25.598959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.087217, 19.319145, 25.620024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276417, -0.333484, -0.901323,
		-0.477318, -0.766370, 0.429935,
		-0.834124, 0.549059, 0.052660,
		11.836980, 19.483862, 25.635822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.858954, 18.599909, 25.411522>,  <12.420867, 19.099522, 25.598959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.858954, 18.599909, 25.411522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.714660, 18.969727, 25.362396>,  <11.628083, 19.191618, 25.332922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.714660, 18.969727, 25.362396>,  <11.858954, 18.599909, 25.411522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.714660, 18.969727, 25.362396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334352, -0.251121, -0.908376,
		-0.870677, -0.286621, 0.399713,
		-0.360736, 0.924546, -0.122813,
		11.606439, 19.247091, 25.325552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.111489, 18.535538, 25.393568>,  <11.858954, 18.599909, 25.411522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.111489, 18.535538, 25.393568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.221423, 18.873510, 25.210024>,  <11.287383, 19.076294, 25.099897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.221423, 18.873510, 25.210024>,  <11.111489, 18.535538, 25.393568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.221423, 18.873510, 25.210024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372401, -0.346445, -0.860984,
		-0.886444, 0.407509, 0.219439,
		0.274835, 0.844933, -0.458861,
		11.303874, 19.126991, 25.072365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.593792, 18.873392, 25.162767>,  <11.111489, 18.535538, 25.393568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.593792, 18.873392, 25.162767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.879419, 19.011204, 24.918995>,  <11.050796, 19.093891, 24.772732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.879419, 19.011204, 24.918995>,  <10.593792, 18.873392, 25.162767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.879419, 19.011204, 24.918995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539749, -0.283454, -0.792670,
		-0.445844, 0.894960, -0.016446,
		0.714069, 0.344530, -0.609430,
		11.093640, 19.114563, 24.736166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.281858, 19.228291, 24.550381>,  <10.593792, 18.873392, 25.162767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.281858, 19.228291, 24.550381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.649532, 19.122850, 24.433342>,  <10.870136, 19.059586, 24.363119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.649532, 19.122850, 24.433342>,  <10.281858, 19.228291, 24.550381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.649532, 19.122850, 24.433342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362576, -0.276375, -0.890031,
		0.153747, 0.924192, -0.349615,
		0.919185, -0.263602, -0.292598,
		10.925287, 19.043770, 24.345562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.976074, 19.204391, 29.423729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.956347, 18.805328, 29.442701>,  <16.944510, 18.565891, 29.454084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.956347, 18.805328, 29.442701>,  <16.976074, 19.204391, 29.423729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.956347, 18.805328, 29.442701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228668, -0.034947, -0.972877,
		0.972255, -0.058827, -0.226408,
		-0.049319, -0.997656, 0.047429,
		16.941551, 18.506031, 29.456930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.632315, 18.740606, 29.249081>,  <16.976074, 19.204391, 29.423729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.632315, 18.740606, 29.249081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.904907, 18.546741, 29.029741>,  <18.068462, 18.430422, 28.898138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.904907, 18.546741, 29.029741>,  <17.632315, 18.740606, 29.249081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.904907, 18.546741, 29.029741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672941, -0.120503, -0.729815,
		0.287637, 0.866360, -0.408270,
		0.681481, -0.484663, -0.548348,
		18.109352, 18.401342, 28.865236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.592850, 18.971428, 28.597322>,  <17.632315, 18.740606, 29.249081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.592850, 18.971428, 28.597322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.737530, 18.600643, 28.557489>,  <17.824339, 18.378172, 28.533590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.737530, 18.600643, 28.557489>,  <17.592850, 18.971428, 28.597322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737530, 18.600643, 28.557489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631932, -0.165236, -0.757205,
		0.685444, 0.336810, -0.645542,
		0.361701, -0.926961, -0.099581,
		17.846041, 18.322556, 28.527615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.164619, 18.790371, 28.018999>,  <17.592850, 18.971428, 28.597322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.164619, 18.790371, 28.018999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.370029, 18.464029, 28.125340>,  <17.493275, 18.268225, 28.189144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.370029, 18.464029, 28.125340>,  <17.164619, 18.790371, 28.018999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.370029, 18.464029, 28.125340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401565, -0.502299, -0.765795,
		0.758312, 0.286499, -0.585561,
		0.513526, -0.815852, 0.265851,
		17.524088, 18.219275, 28.205095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721048, 18.499767, 27.630297>,  <17.164619, 18.790371, 28.018999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.721048, 18.499767, 27.630297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.516157, 18.195890, 27.790541>,  <17.393223, 18.013565, 27.886688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.516157, 18.195890, 27.790541>,  <17.721048, 18.499767, 27.630297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.516157, 18.195890, 27.790541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174002, -0.364983, -0.914610,
		0.841038, -0.538197, 0.054766,
		-0.512229, -0.759692, 0.400612,
		17.362488, 17.967983, 27.910725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.875010, 17.854740, 27.389629>,  <17.721048, 18.499767, 27.630297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.875010, 17.854740, 27.389629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.511707, 17.731947, 27.503351>,  <17.293726, 17.658270, 27.571585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.511707, 17.731947, 27.503351>,  <17.875010, 17.854740, 27.389629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.511707, 17.731947, 27.503351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002461, -0.683391, -0.730048,
		0.418404, -0.662372, 0.621451,
		-0.908258, -0.306984, 0.284304,
		17.239229, 17.639853, 27.588642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968828, 17.217012, 27.547470>,  <17.875010, 17.854740, 27.389629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.968828, 17.217012, 27.547470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.576393, 17.264254, 27.486130>,  <17.340931, 17.292599, 27.449326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.576393, 17.264254, 27.486130>,  <17.968828, 17.217012, 27.547470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576393, 17.264254, 27.486130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009933, -0.760504, -0.649258,
		-0.193302, -0.638503, 0.744948,
		-0.981089, 0.118103, -0.153350,
		17.282066, 17.299685, 27.440125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660995, 16.607893, 27.633240>,  <17.968828, 17.217012, 27.547470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.660995, 16.607893, 27.633240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.384443, 16.800943, 27.418182>,  <17.218512, 16.916775, 27.289146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.384443, 16.800943, 27.418182>,  <17.660995, 16.607893, 27.633240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.384443, 16.800943, 27.418182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046569, -0.772377, -0.633455,
		-0.720985, -0.412923, 0.556484,
		-0.691384, 0.482626, -0.537643,
		17.177029, 16.945732, 27.256889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083025, 16.117432, 27.525234>,  <17.660995, 16.607893, 27.633240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083025, 16.117432, 27.525234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.057169, 16.406485, 27.249952>,  <17.041655, 16.579916, 27.084784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.057169, 16.406485, 27.249952>,  <17.083025, 16.117432, 27.525234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.057169, 16.406485, 27.249952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079924, -0.691179, -0.718250,
		-0.994703, 0.008575, 0.102434,
		-0.064642, 0.722632, -0.688203,
		17.037777, 16.623274, 27.043491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.551594, 15.928137, 27.100094>,  <17.083025, 16.117432, 27.525234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.551594, 15.928137, 27.100094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.724756, 16.191710, 26.854036>,  <16.828653, 16.349854, 26.706402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.724756, 16.191710, 26.854036>,  <16.551594, 15.928137, 27.100094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.724756, 16.191710, 26.854036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032158, -0.670679, -0.741051,
		-0.900865, 0.340588, -0.269152,
		0.432907, 0.658931, -0.615143,
		16.854628, 16.389389, 26.669493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.160669, 15.985350, 26.412207>,  <16.551594, 15.928137, 27.100094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.160669, 15.985350, 26.412207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.531700, 16.108215, 26.327116>,  <16.754318, 16.181934, 26.276062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.531700, 16.108215, 26.327116>,  <16.160669, 15.985350, 26.412207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531700, 16.108215, 26.327116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116125, -0.304150, -0.945520,
		-0.355132, 0.901744, -0.246453,
		0.927575, 0.307165, -0.212729,
		16.809973, 16.200365, 26.263298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.108688, 16.160976, 25.756130>,  <16.160669, 15.985350, 26.412207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.108688, 16.160976, 25.756130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.505630, 16.126257, 25.791225>,  <16.743795, 16.105425, 25.812283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.505630, 16.126257, 25.791225>,  <16.108688, 16.160976, 25.756130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505630, 16.126257, 25.791225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061569, -0.267945, -0.961465,
		0.106964, 0.959516, -0.260552,
		0.992355, -0.086801, 0.087737,
		16.803337, 16.100216, 25.817547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.491102, 15.925049, 25.627613>,  <16.108688, 16.160976, 25.756130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.491102, 15.925049, 25.627613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.091788, 15.926077, 25.604212>,  <14.852201, 15.926694, 25.590172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.091788, 15.926077, 25.604212>,  <15.491102, 15.925049, 25.627613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091788, 15.926077, 25.604212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047372, 0.551871, 0.832583,
		0.034425, 0.833925, -0.550802,
		-0.998284, 0.002569, -0.058502,
		14.792303, 15.926847, 25.586660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.225213, 16.630104, 25.783466>,  <15.491102, 15.925049, 25.627613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.225213, 16.630104, 25.783466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.908742, 16.395432, 25.852568>,  <14.718860, 16.254627, 25.894028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.908742, 16.395432, 25.852568>,  <15.225213, 16.630104, 25.783466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.908742, 16.395432, 25.852568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266568, 0.585022, 0.765957,
		-0.550437, 0.559958, -0.619246,
		-0.791177, -0.586683, 0.172752,
		14.671389, 16.219427, 25.904392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.712503, 17.073153, 25.835344>,  <15.225213, 16.630104, 25.783466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.712503, 17.073153, 25.835344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.585155, 16.741724, 26.019567>,  <14.508747, 16.542868, 26.130100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.585155, 16.741724, 26.019567>,  <14.712503, 17.073153, 25.835344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.585155, 16.741724, 26.019567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201671, 0.533915, 0.821136,
		-0.926266, 0.168544, -0.337081,
		-0.318370, -0.828570, 0.460557,
		14.489645, 16.493153, 26.157734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.955534, 17.237101, 26.118128>,  <14.712503, 17.073153, 25.835344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.955534, 17.237101, 26.118128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.104102, 16.949799, 26.353468>,  <14.193243, 16.777416, 26.494671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.104102, 16.949799, 26.353468>,  <13.955534, 17.237101, 26.118128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.104102, 16.949799, 26.353468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429838, 0.428660, 0.794663,
		-0.822974, -0.548049, -0.149521,
		0.371421, -0.718257, 0.588348,
		14.215528, 16.734322, 26.529972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.373795, 17.041416, 26.440800>,  <13.955534, 17.237101, 26.118128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.373795, 17.041416, 26.440800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.646193, 16.855692, 26.667307>,  <13.809631, 16.744257, 26.803211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.646193, 16.855692, 26.667307>,  <13.373795, 17.041416, 26.440800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.646193, 16.855692, 26.667307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423614, 0.380986, 0.821828,
		-0.597324, -0.799540, 0.062761,
		0.680995, -0.464311, 0.566269,
		13.850492, 16.716398, 26.837187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.037821, 16.702515, 26.991474>,  <13.373795, 17.041416, 26.440800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.037821, 16.702515, 26.991474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.411633, 16.762407, 27.120613>,  <13.635921, 16.798342, 27.198097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.411633, 16.762407, 27.120613>,  <13.037821, 16.702515, 26.991474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.411633, 16.762407, 27.120613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355530, 0.432981, 0.828327,
		-0.015762, -0.888880, 0.457868,
		0.934532, 0.149730, 0.322848,
		13.691993, 16.807327, 27.217468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.970450, 16.521799, 27.615576>,  <13.037821, 16.702515, 26.991474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.970450, 16.521799, 27.615576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.308146, 16.735956, 27.625483>,  <13.510764, 16.864450, 27.631428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.308146, 16.735956, 27.625483>,  <12.970450, 16.521799, 27.615576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.308146, 16.735956, 27.625483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338470, 0.496748, 0.799174,
		0.415566, -0.683080, 0.600588,
		0.844241, 0.535391, 0.024771,
		13.561419, 16.896574, 27.632914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.262799, 16.478388, 28.254353>,  <12.970450, 16.521799, 27.615576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.262799, 16.478388, 28.254353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.391273, 16.822987, 28.097044>,  <13.468358, 17.029745, 28.002659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.391273, 16.822987, 28.097044>,  <13.262799, 16.478388, 28.254353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.391273, 16.822987, 28.097044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319310, 0.489474, 0.811453,
		0.891561, -0.135051, 0.432297,
		0.321186, 0.861497, -0.393273,
		13.487629, 17.081436, 27.979063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593443, 16.708197, 28.817865>,  <13.262799, 16.478388, 28.254353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593443, 16.708197, 28.817865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.545235, 17.025555, 28.579203>,  <13.516310, 17.215969, 28.436005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.545235, 17.025555, 28.579203>,  <13.593443, 16.708197, 28.817865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.545235, 17.025555, 28.579203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320837, 0.537651, 0.779740,
		0.939435, 0.285404, 0.189753,
		-0.120521, 0.793395, -0.596656,
		13.509079, 17.263573, 28.400206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.873883, 17.308329, 29.169167>,  <13.593443, 16.708197, 28.817865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.873883, 17.308329, 29.169167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.617527, 17.439949, 28.891754>,  <13.463714, 17.518921, 28.725307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.617527, 17.439949, 28.891754>,  <13.873883, 17.308329, 29.169167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.617527, 17.439949, 28.891754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336921, 0.691216, 0.639300,
		0.689743, 0.643386, -0.332129,
		-0.640890, 0.329051, -0.693532,
		13.425261, 17.538664, 28.683695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.830014, 17.987873, 29.253143>,  <13.873883, 17.308329, 29.169167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.830014, 17.987873, 29.253143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.521661, 17.937597, 29.003363>,  <13.336649, 17.907433, 28.853495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.521661, 17.937597, 29.003363>,  <13.830014, 17.987873, 29.253143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.521661, 17.937597, 29.003363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491438, 0.741056, 0.457520,
		0.405250, 0.659575, -0.633035,
		-0.770883, -0.125688, -0.624453,
		13.290396, 17.899891, 28.816027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.652244, 18.587969, 28.985460>,  <13.830014, 17.987873, 29.253143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.652244, 18.587969, 28.985460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.320816, 18.366449, 28.952518>,  <13.121960, 18.233538, 28.932753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.320816, 18.366449, 28.952518>,  <13.652244, 18.587969, 28.985460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.320816, 18.366449, 28.952518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539169, 0.749589, 0.383944,
		-0.150894, 0.362527, -0.919677,
		-0.828569, -0.553797, -0.082355,
		13.072246, 18.200310, 28.927813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.065009, 18.922024, 28.519314>,  <13.652244, 18.587969, 28.985460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.065009, 18.922024, 28.519314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.912445, 18.674982, 28.794439>,  <12.820907, 18.526756, 28.959515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.912445, 18.674982, 28.794439>,  <13.065009, 18.922024, 28.519314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.912445, 18.674982, 28.794439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552272, 0.748917, 0.366223,
		-0.741297, -0.240180, -0.626731,
		-0.381411, -0.617606, 0.687815,
		12.798022, 18.489700, 29.000784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.324281, 19.065140, 28.608688>,  <13.065009, 18.922024, 28.519314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.324281, 19.065140, 28.608688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.458862, 18.901440, 28.947937>,  <12.539611, 18.803219, 29.151487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.458862, 18.901440, 28.947937>,  <12.324281, 19.065140, 28.608688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.458862, 18.901440, 28.947937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325790, 0.794429, 0.512585,
		-0.883550, -0.448771, 0.133959,
		0.336454, -0.409252, 0.848123,
		12.559798, 18.778664, 29.202374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974824, 19.140297, 29.335705>,  <12.324281, 19.065140, 28.608688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974824, 19.140297, 29.335705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.182234, 19.482111, 29.323675>,  <12.306680, 19.687199, 29.316458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.182234, 19.482111, 29.323675>,  <11.974824, 19.140297, 29.335705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.182234, 19.482111, 29.323675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404727, 0.214299, -0.888973,
		-0.753212, 0.473126, 0.456972,
		0.518524, 0.854534, -0.030074,
		12.337791, 19.738472, 29.314653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.532824, 19.579723, 28.804258>,  <11.974824, 19.140297, 29.335705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.532824, 19.579723, 28.804258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.854054, 19.809196, 28.868704>,  <12.046793, 19.946880, 28.907372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.854054, 19.809196, 28.868704>,  <11.532824, 19.579723, 28.804258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.854054, 19.809196, 28.868704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152077, 0.458752, -0.875454,
		-0.576142, 0.678555, 0.455657,
		0.803077, 0.573681, 0.161113,
		12.094977, 19.981300, 28.917038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.326477, 20.349398, 28.875019>,  <11.532824, 19.579723, 28.804258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.326477, 20.349398, 28.875019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.704581, 20.308847, 28.750952>,  <11.931444, 20.284517, 28.676512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.704581, 20.308847, 28.750952>,  <11.326477, 20.349398, 28.875019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.704581, 20.308847, 28.750952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282908, 0.219083, -0.933791,
		0.162618, 0.970425, 0.178410,
		0.945261, -0.101377, -0.310168,
		11.988159, 20.278435, 28.657902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.410341, 20.919298, 28.394053>,  <11.326477, 20.349398, 28.875019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.410341, 20.919298, 28.394053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.717865, 20.677965, 28.309275>,  <11.902379, 20.533165, 28.258408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.717865, 20.677965, 28.309275>,  <11.410341, 20.919298, 28.394053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.717865, 20.677965, 28.309275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140895, 0.163474, -0.976435,
		0.623762, 0.780555, 0.040674,
		0.768810, -0.603332, -0.211946,
		11.948508, 20.496965, 28.245691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.808875, 21.350565, 27.961470>,  <11.410341, 20.919298, 28.394053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.808875, 21.350565, 27.961470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.897460, 20.968353, 27.883577>,  <11.950611, 20.739027, 27.836842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.897460, 20.968353, 27.883577>,  <11.808875, 21.350565, 27.961470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.897460, 20.968353, 27.883577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161549, 0.160982, -0.973646,
		0.961695, 0.247085, -0.118713,
		0.221463, -0.955528, -0.194732,
		11.963899, 20.681694, 27.825157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.392710, 21.338936, 27.461758>,  <11.808875, 21.350565, 27.961470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.392710, 21.338936, 27.461758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.195835, 20.991461, 27.439363>,  <12.077710, 20.782976, 27.425926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.195835, 20.991461, 27.439363>,  <12.392710, 21.338936, 27.461758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.195835, 20.991461, 27.439363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083901, 0.111356, -0.990232,
		0.866437, -0.482682, -0.127692,
		-0.492186, -0.868688, -0.055985,
		12.048180, 20.730854, 27.422567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.625157, 21.065405, 26.818190>,  <12.392710, 21.338936, 27.461758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.625157, 21.065405, 26.818190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.298353, 20.851307, 26.903986>,  <12.102270, 20.722849, 26.955463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.298353, 20.851307, 26.903986>,  <12.625157, 21.065405, 26.818190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.298353, 20.851307, 26.903986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311313, 0.096339, -0.945412,
		0.485362, -0.839186, -0.245338,
		-0.817012, -0.535244, 0.214490,
		12.053249, 20.690733, 26.968332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.335728, 20.759232, 26.772791>,  <12.625157, 21.065405, 26.818190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.335728, 20.759232, 26.772791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.359776, 21.126390, 26.615896>,  <13.374205, 21.346685, 26.521759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.359776, 21.126390, 26.615896>,  <13.335728, 20.759232, 26.772791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.359776, 21.126390, 26.615896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489576, 0.315324, 0.812949,
		0.869885, -0.240903, -0.430424,
		0.060119, 0.917898, -0.392237,
		13.377811, 21.401760, 26.498226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.945318, 20.935675, 26.970585>,  <13.335728, 20.759232, 26.772791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.945318, 20.935675, 26.970585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.754506, 21.278082, 26.890915>,  <13.640018, 21.483526, 26.843113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.754506, 21.278082, 26.890915>,  <13.945318, 20.935675, 26.970585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.754506, 21.278082, 26.890915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335122, 0.386664, 0.859177,
		0.812487, 0.343105, -0.471322,
		-0.477031, 0.856020, -0.199177,
		13.611397, 21.534887, 26.831161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.470000, 21.456966, 27.107754>,  <13.945318, 20.935675, 26.970585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.470000, 21.456966, 27.107754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.108909, 21.628094, 27.125881>,  <13.892254, 21.730770, 27.136759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.108909, 21.628094, 27.125881>,  <14.470000, 21.456966, 27.107754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.108909, 21.628094, 27.125881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310689, 0.575434, 0.756537,
		0.297580, 0.697028, -0.652379,
		-0.902728, 0.427817, 0.045321,
		13.838090, 21.756439, 27.139477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561563, 22.243723, 27.147303>,  <14.470000, 21.456966, 27.107754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561563, 22.243723, 27.147303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.192241, 22.180212, 27.287186>,  <13.970648, 22.142105, 27.371115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.192241, 22.180212, 27.287186>,  <14.561563, 22.243723, 27.147303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.192241, 22.180212, 27.287186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180091, 0.625249, 0.759362,
		-0.339225, 0.764103, -0.548701,
		-0.923306, -0.158779, 0.349708,
		13.915249, 22.132578, 27.392097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315929, 22.971264, 27.354567>,  <14.561563, 22.243723, 27.147303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315929, 22.971264, 27.354567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.025840, 22.749662, 27.518095>,  <13.851787, 22.616701, 27.616211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.025840, 22.749662, 27.518095>,  <14.315929, 22.971264, 27.354567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.025840, 22.749662, 27.518095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156821, 0.445252, 0.881565,
		-0.670417, 0.703443, -0.236028,
		-0.725223, -0.554002, 0.408819,
		13.808273, 22.583462, 27.640741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.858864, 23.412905, 27.740068>,  <14.315929, 22.971264, 27.354567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.858864, 23.412905, 27.740068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.844867, 23.038151, 27.879219>,  <13.836469, 22.813297, 27.962709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.844867, 23.038151, 27.879219>,  <13.858864, 23.412905, 27.740068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.844867, 23.038151, 27.879219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274105, 0.325744, 0.904852,
		-0.961063, 0.127017, 0.245407,
		-0.034992, -0.936887, 0.347877,
		13.834370, 22.757084, 27.983582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.612185, 23.532700, 28.355103>,  <13.858864, 23.412905, 27.740068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.612185, 23.532700, 28.355103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.751062, 23.160831, 28.404364>,  <13.834389, 22.937710, 28.433920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.751062, 23.160831, 28.404364>,  <13.612185, 23.532700, 28.355103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.751062, 23.160831, 28.404364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170673, 0.191769, 0.966486,
		-0.922132, -0.314538, 0.225251,
		0.347193, -0.929672, 0.123153,
		13.855221, 22.881929, 28.441309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.406827, 23.203131, 29.080580>,  <13.612185, 23.532700, 28.355103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.406827, 23.203131, 29.080580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.735182, 23.012869, 28.954155>,  <13.932195, 22.898712, 28.878300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.735182, 23.012869, 28.954155>,  <13.406827, 23.203131, 29.080580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.735182, 23.012869, 28.954155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484417, 0.286828, 0.826480,
		-0.302463, -0.831554, 0.465869,
		0.820888, -0.475655, -0.316064,
		13.981448, 22.870173, 28.859335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.605423, 22.850983, 29.651665>,  <13.406827, 23.203131, 29.080580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.605423, 22.850983, 29.651665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.939478, 22.867298, 29.432253>,  <14.139911, 22.877087, 29.300606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.939478, 22.867298, 29.432253>,  <13.605423, 22.850983, 29.651665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.939478, 22.867298, 29.432253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468243, 0.470538, 0.747892,
		0.288606, -0.881437, 0.373866,
		0.835137, 0.040786, -0.548527,
		14.190020, 22.879534, 29.267694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.605844, 15.694825, 15.037710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.997419, 15.775729, 15.048787>,  <14.232365, 15.824271, 15.055433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.997419, 15.775729, 15.048787>,  <13.605844, 15.694825, 15.037710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.997419, 15.775729, 15.048787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029370, 0.005295, 0.999555,
		0.202024, -0.979317, 0.011123,
		0.978940, 0.202261, 0.027693,
		14.291101, 15.836407, 15.057096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.974168, 15.186732, 15.517745>,  <13.605844, 15.694825, 15.037710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.974168, 15.186732, 15.517745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.194505, 15.519546, 15.491530>,  <14.326707, 15.719234, 15.475801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.194505, 15.519546, 15.491530>,  <13.974168, 15.186732, 15.517745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.194505, 15.519546, 15.491530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052531, 0.043804, 0.997658,
		0.832955, -0.552995, -0.019579,
		0.550842, 0.832033, -0.065536,
		14.359757, 15.769156, 15.471869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406918, 15.290594, 16.178818>,  <13.974168, 15.186732, 15.517745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406918, 15.290594, 16.178818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.405274, 15.666624, 16.042439>,  <14.404288, 15.892241, 15.960611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.405274, 15.666624, 16.042439>,  <14.406918, 15.290594, 16.178818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.405274, 15.666624, 16.042439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060144, 0.340100, 0.938464,
		0.998181, 0.024361, 0.055142,
		-0.004108, 0.940074, -0.340947,
		14.404042, 15.948647, 15.940154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.707603, 15.661234, 16.665030>,  <14.406918, 15.290594, 16.178818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.707603, 15.661234, 16.665030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564676, 15.985260, 16.479076>,  <14.478920, 16.179676, 16.367504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564676, 15.985260, 16.479076>,  <14.707603, 15.661234, 16.665030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.564676, 15.985260, 16.479076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139940, 0.445690, 0.884182,
		0.923439, 0.380991, -0.045893,
		-0.357319, 0.810066, -0.464884,
		14.457480, 16.228279, 16.339611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995512, 16.308628, 17.002708>,  <14.707603, 15.661234, 16.665030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.995512, 16.308628, 17.002708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.662867, 16.414164, 16.807238>,  <14.463280, 16.477486, 16.689955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.662867, 16.414164, 16.807238>,  <14.995512, 16.308628, 17.002708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.662867, 16.414164, 16.807238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372522, 0.387594, 0.843207,
		0.411880, 0.883266, -0.224042,
		-0.831614, 0.263840, -0.488679,
		14.413383, 16.493315, 16.660633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969357, 16.947918, 17.230373>,  <14.995512, 16.308628, 17.002708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.969357, 16.947918, 17.230373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595693, 16.859957, 17.117954>,  <14.371494, 16.807180, 17.050503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595693, 16.859957, 17.117954>,  <14.969357, 16.947918, 17.230373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.595693, 16.859957, 17.117954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355844, 0.633298, 0.687247,
		0.026861, 0.742008, -0.669852,
		-0.934159, -0.219903, -0.281050,
		14.315445, 16.793985, 17.033640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.605050, 17.628519, 17.148340>,  <14.969357, 16.947918, 17.230373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.605050, 17.628519, 17.148340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299158, 17.371037, 17.159847>,  <14.115623, 17.216547, 17.166752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299158, 17.371037, 17.159847>,  <14.605050, 17.628519, 17.148340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299158, 17.371037, 17.159847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554956, 0.680665, 0.478246,
		-0.327430, 0.349766, -0.877755,
		-0.764731, -0.643708, 0.028765,
		14.069739, 17.177925, 17.168476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044567, 18.028790, 17.238987>,  <14.605050, 17.628519, 17.148340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.044567, 18.028790, 17.238987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.837991, 17.696266, 17.321167>,  <13.714045, 17.496752, 17.370476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.837991, 17.696266, 17.321167>,  <14.044567, 18.028790, 17.238987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.837991, 17.696266, 17.321167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544864, 0.504096, 0.670082,
		-0.660614, 0.234115, -0.713288,
		-0.516442, -0.831311, 0.205452,
		13.683058, 17.446873, 17.382803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.427035, 18.036341, 17.005596>,  <14.044567, 18.028790, 17.238987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.427035, 18.036341, 17.005596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433652, 17.811283, 17.336210>,  <13.437622, 17.676249, 17.534578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433652, 17.811283, 17.336210>,  <13.427035, 18.036341, 17.005596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433652, 17.811283, 17.336210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583417, 0.665902, 0.464973,
		-0.812004, -0.489905, -0.317241,
		0.016541, -0.562644, 0.826534,
		13.438614, 17.642490, 17.584171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.759275, 18.138805, 17.227459>,  <13.427035, 18.036341, 17.005596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.759275, 18.138805, 17.227459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.958690, 17.990314, 17.540804>,  <13.078339, 17.901220, 17.728811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.958690, 17.990314, 17.540804>,  <12.759275, 18.138805, 17.227459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.958690, 17.990314, 17.540804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628989, 0.466933, 0.621567,
		-0.596519, -0.802598, -0.000715,
		0.498535, -0.371227, 0.783360,
		13.108251, 17.878946, 17.775812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.324363, 18.158203, 17.838978>,  <12.759275, 18.138805, 17.227459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.324363, 18.158203, 17.838978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.676388, 18.137024, 18.027737>,  <12.887603, 18.124315, 18.140991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.676388, 18.137024, 18.027737>,  <12.324363, 18.158203, 17.838978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.676388, 18.137024, 18.027737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343234, 0.615800, 0.709211,
		-0.328146, -0.786121, 0.523769,
		0.880063, -0.052950, 0.471896,
		12.940407, 18.121140, 18.169306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.102826, 18.104315, 18.457821>,  <12.324363, 18.158203, 17.838978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.102826, 18.104315, 18.457821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.487207, 18.210033, 18.490595>,  <12.717836, 18.273464, 18.510260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.487207, 18.210033, 18.490595>,  <12.102826, 18.104315, 18.457821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.487207, 18.210033, 18.490595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240007, 0.648754, 0.722160,
		0.137708, -0.713628, 0.686856,
		0.960954, 0.264297, 0.081937,
		12.775494, 18.289322, 18.515177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.087928, 17.370853, 18.883247>,  <12.102826, 18.104315, 18.457821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.087928, 17.370853, 18.883247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.720759, 17.212151, 18.882647>,  <11.500458, 17.116928, 18.882286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.720759, 17.212151, 18.882647>,  <12.087928, 17.370853, 18.883247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.720759, 17.212151, 18.882647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148986, -0.341172, -0.928119,
		0.367726, -0.852165, 0.372281,
		-0.917922, -0.396758, -0.001503,
		11.445383, 17.093122, 18.882196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.202366, 16.788580, 18.570982>,  <12.087928, 17.370853, 18.883247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.202366, 16.788580, 18.570982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.803948, 16.812733, 18.544909>,  <11.564898, 16.827225, 18.529264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.803948, 16.812733, 18.544909>,  <12.202366, 16.788580, 18.570982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.803948, 16.812733, 18.544909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023105, -0.532332, -0.846220,
		-0.085795, -0.844379, 0.528832,
		-0.996045, 0.060382, -0.065181,
		11.505135, 16.830847, 18.525354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.966736, 16.054544, 18.527252>,  <12.202366, 16.788580, 18.570982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.966736, 16.054544, 18.527252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.706340, 16.308388, 18.360645>,  <11.550102, 16.460693, 18.260681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.706340, 16.308388, 18.360645>,  <11.966736, 16.054544, 18.527252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.706340, 16.308388, 18.360645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002871, -0.550761, -0.834658,
		-0.759083, -0.542156, 0.360361,
		-0.650988, 0.634609, -0.416517,
		11.511044, 16.498770, 18.235691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.395411, 15.647338, 18.431242>,  <11.966736, 16.054544, 18.527252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.395411, 15.647338, 18.431242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340048, 15.959393, 18.187199>,  <11.306829, 16.146626, 18.040773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340048, 15.959393, 18.187199>,  <11.395411, 15.647338, 18.431242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.340048, 15.959393, 18.187199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123544, -0.624825, -0.770929,
		-0.982639, -0.031329, 0.182863,
		-0.138409, 0.780137, -0.610107,
		11.298525, 16.193434, 18.004168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.820591, 15.512487, 18.017427>,  <11.395411, 15.647338, 18.431242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.820591, 15.512487, 18.017427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.033556, 15.788119, 17.820772>,  <11.161335, 15.953499, 17.702780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.033556, 15.788119, 17.820772>,  <10.820591, 15.512487, 18.017427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.033556, 15.788119, 17.820772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001789, -0.579880, -0.814700,
		-0.846484, 0.434635, -0.307502,
		0.532412, 0.689080, -0.491636,
		11.193279, 15.994843, 17.673281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.503505, 15.593870, 17.479292>,  <10.820591, 15.512487, 18.017427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.503505, 15.593870, 17.479292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.862552, 15.733321, 17.371410>,  <11.077980, 15.816992, 17.306681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.862552, 15.733321, 17.371410>,  <10.503505, 15.593870, 17.479292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.862552, 15.733321, 17.371410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075090, -0.481996, -0.872950,
		-0.434331, 0.803828, -0.406470,
		0.897618, 0.348627, -0.269705,
		11.131837, 15.837910, 17.290499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.423780, 16.007702, 16.838070>,  <10.503505, 15.593870, 17.479292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.423780, 16.007702, 16.838070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815359, 15.927032, 16.850653>,  <11.050306, 15.878631, 16.858202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815359, 15.927032, 16.850653>,  <10.423780, 16.007702, 16.838070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.815359, 15.927032, 16.850653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051915, -0.395053, -0.917190,
		0.197400, 0.896248, -0.397206,
		0.978948, -0.201674, 0.031455,
		11.109043, 15.866530, 16.860088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.658702, 16.035902, 16.197733>,  <10.423780, 16.007702, 16.838070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.658702, 16.035902, 16.197733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.004953, 15.881644, 16.325460>,  <11.212705, 15.789089, 16.402098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.004953, 15.881644, 16.325460>,  <10.658702, 16.035902, 16.197733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.004953, 15.881644, 16.325460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067047, -0.542737, -0.837223,
		0.496178, 0.746133, -0.443952,
		0.865628, -0.385645, 0.319320,
		11.264642, 15.765950, 16.421257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.165427, 16.171902, 15.715752>,  <10.658702, 16.035902, 16.197733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.165427, 16.171902, 15.715752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.275703, 15.847132, 15.921575>,  <11.341869, 15.652269, 16.045069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.275703, 15.847132, 15.921575>,  <11.165427, 16.171902, 15.715752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.275703, 15.847132, 15.921575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021344, -0.530001, -0.847728,
		0.961009, 0.244694, -0.128786,
		0.275691, -0.811926, 0.514559,
		11.358411, 15.603554, 16.075943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.680408, 15.848379, 15.347084>,  <11.165427, 16.171902, 15.715752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.680408, 15.848379, 15.347084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.565193, 15.565158, 15.604981>,  <11.496064, 15.395226, 15.759720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.565193, 15.565158, 15.604981>,  <11.680408, 15.848379, 15.347084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.565193, 15.565158, 15.604981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015612, -0.669717, -0.742452,
		0.957491, -0.223921, 0.181851,
		-0.288039, -0.708053, 0.644744,
		11.478782, 15.352742, 15.798405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.262033, 15.309956, 15.212019>,  <11.680408, 15.848379, 15.347084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.262033, 15.309956, 15.212019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.958174, 15.118039, 15.387626>,  <11.775858, 15.002889, 15.492990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.958174, 15.118039, 15.387626>,  <12.262033, 15.309956, 15.212019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.958174, 15.118039, 15.387626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039960, -0.708223, -0.704857,
		0.649107, -0.517900, 0.557172,
		-0.759647, -0.479792, 0.439017,
		11.730280, 14.974102, 15.519331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.403557, 14.652688, 15.256798>,  <12.262033, 15.309956, 15.212019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.403557, 14.652688, 15.256798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.007527, 14.603172, 15.283418>,  <11.769910, 14.573462, 15.299390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.007527, 14.603172, 15.283418>,  <12.403557, 14.652688, 15.256798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.007527, 14.603172, 15.283418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075133, -0.866355, -0.493744,
		0.118776, -0.483844, 0.867057,
		-0.990074, -0.123789, 0.066550,
		11.710505, 14.566035, 15.303383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.164803, 13.971827, 15.674121>,  <12.403557, 14.652688, 15.256798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.164803, 13.971827, 15.674121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.904435, 14.081457, 15.390944>,  <11.748215, 14.147236, 15.221037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.904435, 14.081457, 15.390944>,  <12.164803, 13.971827, 15.674121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.904435, 14.081457, 15.390944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048475, -0.915644, -0.399058,
		-0.757598, -0.294072, 0.582724,
		-0.650920, 0.274077, -0.707945,
		11.709159, 14.163680, 15.178560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.912545, 13.390806, 15.453247>,  <12.164803, 13.971827, 15.674121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.912545, 13.390806, 15.453247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.010403, 13.239563, 15.096107>,  <12.069118, 13.148817, 14.881823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.010403, 13.239563, 15.096107>,  <11.912545, 13.390806, 15.453247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.010403, 13.239563, 15.096107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046135, 0.915250, -0.400235,
		0.968515, 0.139107, 0.206466,
		0.244644, -0.378108, -0.892851,
		12.083796, 13.126130, 14.828251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.981018, 12.652333, 15.139079>,  <11.912545, 13.390806, 15.453247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.981018, 12.652333, 15.139079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374739, 12.585488, 15.161783>,  <12.610971, 12.545382, 15.175406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374739, 12.585488, 15.161783>,  <11.981018, 12.652333, 15.139079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.374739, 12.585488, 15.161783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154626, -0.661505, 0.733827,
		-0.085084, -0.731085, -0.676961,
		0.984303, -0.167112, 0.056761,
		12.670030, 12.535355, 15.178811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.088602, 11.909531, 15.350244>,  <11.981018, 12.652333, 15.139079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.088602, 11.909531, 15.350244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.382505, 12.163521, 15.445691>,  <12.558847, 12.315915, 15.502959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.382505, 12.163521, 15.445691>,  <12.088602, 11.909531, 15.350244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.382505, 12.163521, 15.445691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092498, -0.442276, 0.892096,
		0.671994, -0.633403, -0.383699,
		0.734757, 0.634974, 0.238619,
		12.602933, 12.354013, 15.517277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.306298, 11.829765, 16.022379>,  <12.088602, 11.909531, 15.350244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.306298, 11.829765, 16.022379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.634406, 12.058191, 16.035284>,  <12.831271, 12.195247, 16.043026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.634406, 12.058191, 16.035284>,  <12.306298, 11.829765, 16.022379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.634406, 12.058191, 16.035284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151036, -0.270659, 0.950753,
		0.551674, -0.775002, -0.308265,
		0.820270, 0.571065, 0.032262,
		12.880487, 12.229511, 16.044962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.582630, 11.621519, 16.698067>,  <12.306298, 11.829765, 16.022379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.582630, 11.621519, 16.698067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.857346, 11.848495, 16.516371>,  <13.022175, 11.984681, 16.407354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.857346, 11.848495, 16.516371>,  <12.582630, 11.621519, 16.698067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.857346, 11.848495, 16.516371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478818, 0.116980, 0.870086,
		0.546858, -0.815063, -0.191360,
		0.686789, 0.567440, -0.454238,
		13.063382, 12.018727, 16.380100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.148924, 11.287210, 16.947111>,  <12.582630, 11.621519, 16.698067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.148924, 11.287210, 16.947111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.242599, 11.663757, 16.849970>,  <13.298803, 11.889687, 16.791685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.242599, 11.663757, 16.849970>,  <13.148924, 11.287210, 16.947111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.242599, 11.663757, 16.849970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454465, 0.114824, 0.883333,
		0.859429, -0.317235, -0.400930,
		0.234188, 0.941370, -0.242855,
		13.312855, 11.946168, 16.777113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.843327, 11.361582, 17.127586>,  <13.148924, 11.287210, 16.947111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.843327, 11.361582, 17.127586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741021, 11.746207, 17.087624>,  <13.679638, 11.976982, 17.063646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741021, 11.746207, 17.087624>,  <13.843327, 11.361582, 17.127586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.741021, 11.746207, 17.087624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465683, 0.213108, 0.858908,
		0.847185, 0.173153, -0.502290,
		-0.255765, 0.961563, -0.099908,
		13.664291, 12.034676, 17.057652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.322150, 11.743976, 17.485956>,  <13.843327, 11.361582, 17.127586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.322150, 11.743976, 17.485956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.037491, 12.022769, 17.450695>,  <13.866695, 12.190045, 17.429539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.037491, 12.022769, 17.450695>,  <14.322150, 11.743976, 17.485956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.037491, 12.022769, 17.450695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196383, 0.317835, 0.927585,
		0.674531, 0.642802, -0.363062,
		-0.711648, 0.696984, -0.088154,
		13.823997, 12.231864, 17.424250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.567289, 12.275767, 17.743773>,  <14.322150, 11.743976, 17.485956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.567289, 12.275767, 17.743773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.174740, 12.329247, 17.798954>,  <13.939210, 12.361336, 17.832064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.174740, 12.329247, 17.798954>,  <14.567289, 12.275767, 17.743773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.174740, 12.329247, 17.798954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176699, 0.346352, 0.921313,
		0.075398, 0.928528, -0.363526,
		-0.981373, 0.133700, 0.137956,
		13.880328, 12.369357, 17.840342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.520618, 13.005501, 17.887119>,  <14.567289, 12.275767, 17.743773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.520618, 13.005501, 17.887119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186314, 12.842604, 18.034445>,  <13.985730, 12.744865, 18.122839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186314, 12.842604, 18.034445>,  <14.520618, 13.005501, 17.887119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186314, 12.842604, 18.034445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104627, 0.540364, 0.834901,
		-0.539030, 0.736314, -0.409008,
		-0.835763, -0.407244, 0.368311,
		13.935585, 12.720430, 18.144938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.318884, 13.528822, 18.276241>,  <14.520618, 13.005501, 17.887119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.318884, 13.528822, 18.276241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068821, 13.238150, 18.390162>,  <13.918783, 13.063746, 18.458513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068821, 13.238150, 18.390162>,  <14.318884, 13.528822, 18.276241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.068821, 13.238150, 18.390162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214982, 0.511102, 0.832200,
		-0.750306, 0.459030, -0.475743,
		-0.625158, -0.726681, 0.284800,
		13.881273, 13.020145, 18.475601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.623959, 13.891191, 18.476866>,  <14.318884, 13.528822, 18.276241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.623959, 13.891191, 18.476866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.699512, 13.548187, 18.668282>,  <13.744844, 13.342385, 18.783131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.699512, 13.548187, 18.668282>,  <13.623959, 13.891191, 18.476866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.699512, 13.548187, 18.668282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402622, 0.376845, 0.834196,
		-0.895667, -0.350237, -0.274072,
		0.188883, -0.857509, 0.478541,
		13.756178, 13.290935, 18.811844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.006431, 13.720594, 18.909967>,  <13.623959, 13.891191, 18.476866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.006431, 13.720594, 18.909967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.302753, 13.502848, 19.067381>,  <13.480547, 13.372200, 19.161829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.302753, 13.502848, 19.067381>,  <13.006431, 13.720594, 18.909967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.302753, 13.502848, 19.067381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269475, 0.295804, 0.916451,
		-0.615294, -0.784962, 0.072441,
		0.740808, -0.544366, 0.393535,
		13.524996, 13.339538, 19.185442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.725320, 13.594535, 19.536455>,  <13.006431, 13.720594, 18.909967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.725320, 13.594535, 19.536455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.118137, 13.528716, 19.573368>,  <13.353827, 13.489224, 19.595516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.118137, 13.528716, 19.573368>,  <12.725320, 13.594535, 19.536455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.118137, 13.528716, 19.573368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046967, 0.260509, 0.964328,
		-0.182719, -0.951346, 0.248102,
		0.982043, -0.164549, 0.092282,
		13.412750, 13.479352, 19.601053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.887841, 13.262186, 20.218884>,  <12.725320, 13.594535, 19.536455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.887841, 13.262186, 20.218884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.231329, 13.433105, 20.105734>,  <13.437422, 13.535655, 20.037844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.231329, 13.433105, 20.105734>,  <12.887841, 13.262186, 20.218884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.231329, 13.433105, 20.105734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204747, 0.219946, 0.953783,
		0.469765, -0.876950, 0.101384,
		0.858720, 0.427296, -0.282876,
		13.488945, 13.561294, 20.020870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.400713, 13.076382, 20.738892>,  <12.887841, 13.262186, 20.218884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.400713, 13.076382, 20.738892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.546385, 13.404315, 20.562145>,  <13.633788, 13.601075, 20.456099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.546385, 13.404315, 20.562145>,  <13.400713, 13.076382, 20.738892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.546385, 13.404315, 20.562145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282257, 0.354973, 0.891249,
		0.887527, -0.449294, -0.102130,
		0.364180, 0.819834, -0.441865,
		13.655639, 13.650266, 20.429586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.856608, 13.331014, 21.146984>,  <13.400713, 13.076382, 20.738892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.856608, 13.331014, 21.146984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862990, 13.668560, 20.932457>,  <13.866819, 13.871088, 20.803741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862990, 13.668560, 20.932457>,  <13.856608, 13.331014, 21.146984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.862990, 13.668560, 20.932457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374886, 0.492207, 0.785616,
		0.926933, -0.213593, -0.308500,
		0.015956, 0.843866, -0.536317,
		13.867777, 13.921720, 20.771563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.506757, 13.621425, 21.318401>,  <13.856608, 13.331014, 21.146984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.506757, 13.621425, 21.318401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.260473, 13.910238, 21.192183>,  <14.112703, 14.083527, 21.116451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.260473, 13.910238, 21.192183>,  <14.506757, 13.621425, 21.318401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.260473, 13.910238, 21.192183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174981, 0.515742, 0.838684,
		0.768300, 0.461170, -0.443889,
		-0.615708, 0.722034, -0.315549,
		14.075761, 14.126848, 21.097517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.868897, 14.172797, 21.373253>,  <14.506757, 13.621425, 21.318401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.868897, 14.172797, 21.373253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.502574, 14.327724, 21.330770>,  <14.282780, 14.420681, 21.305281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.502574, 14.327724, 21.330770>,  <14.868897, 14.172797, 21.373253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.502574, 14.327724, 21.330770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081448, 0.438063, 0.895247,
		0.393270, 0.811224, -0.432728,
		-0.915808, 0.387319, -0.106205,
		14.227832, 14.443920, 21.298908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894361, 14.820694, 21.289230>,  <14.868897, 14.172797, 21.373253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894361, 14.820694, 21.289230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.536208, 14.787004, 21.464136>,  <14.321317, 14.766790, 21.569080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.536208, 14.787004, 21.464136>,  <14.894361, 14.820694, 21.289230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.536208, 14.787004, 21.464136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328826, 0.537097, 0.776788,
		-0.300278, 0.839305, -0.453211,
		-0.895381, -0.084225, 0.437264,
		14.267594, 14.761737, 21.595316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822596, 15.411321, 21.619507>,  <14.894361, 14.820694, 21.289230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822596, 15.411321, 21.619507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.542016, 15.199296, 21.810085>,  <14.373668, 15.072081, 21.924433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.542016, 15.199296, 21.810085>,  <14.822596, 15.411321, 21.619507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.542016, 15.199296, 21.810085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181830, 0.513280, 0.838738,
		-0.689134, 0.674965, -0.263659,
		-0.701450, -0.530062, 0.476447,
		14.331581, 15.040277, 21.953020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.384790, 15.912914, 22.030058>,  <14.822596, 15.411321, 21.619507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.384790, 15.912914, 22.030058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.344192, 15.556532, 22.207098>,  <14.319833, 15.342703, 22.313322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.344192, 15.556532, 22.207098>,  <14.384790, 15.912914, 22.030058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.344192, 15.556532, 22.207098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043609, 0.448456, 0.892740,
		-0.993880, 0.071309, -0.084371,
		-0.101496, -0.890956, 0.442601,
		14.313743, 15.289246, 22.339878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.971655, 16.080915, 22.644445>,  <14.384790, 15.912914, 22.030058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.971655, 16.080915, 22.644445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.113876, 15.715601, 22.723930>,  <14.199209, 15.496412, 22.771622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.113876, 15.715601, 22.723930>,  <13.971655, 16.080915, 22.644445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.113876, 15.715601, 22.723930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083198, 0.242687, 0.966530,
		-0.930946, -0.327121, 0.162272,
		0.355554, -0.913288, 0.198713,
		14.220543, 15.441614, 22.783545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.591532, 15.835376, 23.171541>,  <13.971655, 16.080915, 22.644445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.591532, 15.835376, 23.171541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.912865, 15.597864, 23.189787>,  <14.105665, 15.455357, 23.200733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.912865, 15.597864, 23.189787>,  <13.591532, 15.835376, 23.171541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.912865, 15.597864, 23.189787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006015, 0.068498, 0.997633,
		-0.595499, -0.801706, 0.051455,
		0.803333, -0.593781, 0.045612,
		14.153865, 15.419730, 23.203470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.443758, 15.345001, 23.592384>,  <13.591532, 15.835376, 23.171541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.443758, 15.345001, 23.592384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.843571, 15.340565, 23.603800>,  <14.083458, 15.337903, 23.610649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.843571, 15.340565, 23.603800>,  <13.443758, 15.345001, 23.592384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.843571, 15.340565, 23.603800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026758, 0.136750, 0.990244,
		-0.014887, -0.990543, 0.136389,
		0.999531, -0.011092, 0.028540,
		14.143430, 15.337237, 23.612362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.595407, 14.902358, 24.095577>,  <13.443758, 15.345001, 23.592384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.595407, 14.902358, 24.095577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932058, 15.113432, 24.049597>,  <14.134048, 15.240076, 24.022009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932058, 15.113432, 24.049597>,  <13.595407, 14.902358, 24.095577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.932058, 15.113432, 24.049597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169008, -0.055188, 0.984068,
		0.512933, -0.847646, -0.135631,
		0.841627, 0.527684, -0.114951,
		14.184546, 15.271737, 24.015112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.081069, 14.556663, 24.651646>,  <13.595407, 14.902358, 24.095577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.081069, 14.556663, 24.651646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.246590, 14.913972, 24.581411>,  <14.345902, 15.128358, 24.539270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.246590, 14.913972, 24.581411>,  <14.081069, 14.556663, 24.651646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.246590, 14.913972, 24.581411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096057, 0.148952, 0.984168,
		0.905285, -0.424116, -0.024168,
		0.413802, 0.893274, -0.175584,
		14.370730, 15.181954, 24.528736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819985, 14.674015, 25.123661>,  <14.081069, 14.556663, 24.651646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819985, 14.674015, 25.123661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.655384, 15.014998, 24.994677>,  <14.556623, 15.219588, 24.917286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.655384, 15.014998, 24.994677>,  <14.819985, 14.674015, 25.123661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.655384, 15.014998, 24.994677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182630, 0.423753, 0.887175,
		0.892922, 0.306185, -0.330061,
		-0.411504, 0.852457, -0.322460,
		14.531933, 15.270736, 24.897938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.265852, 15.114923, 25.271233>,  <14.819985, 14.674015, 25.123661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.265852, 15.114923, 25.271233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.946597, 15.354239, 25.242878>,  <14.755044, 15.497828, 25.225864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.946597, 15.354239, 25.242878>,  <15.265852, 15.114923, 25.271233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946597, 15.354239, 25.242878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263765, 0.452783, 0.851713,
		0.541668, 0.661087, -0.519192,
		-0.798138, 0.598290, -0.070886,
		14.707156, 15.533726, 25.221613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
