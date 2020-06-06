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
	<24.160501, 35.290298, 35.398380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392708, 35.058285, 35.169796>,  <24.532032, 34.919075, 35.032646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392708, 35.058285, 35.169796>,  <24.160501, 35.290298, 35.398380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392708, 35.058285, 35.169796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223199, -0.561583, 0.796748,
		-0.783062, -0.590072, -0.196544,
		0.580514, -0.580034, -0.571458,
		24.566862, 34.884274, 34.998360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.977875, 34.449726, 35.328758>,  <24.160501, 35.290298, 35.398380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.977875, 34.449726, 35.328758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.365627, 34.545029, 35.304966>,  <24.598278, 34.602211, 35.290691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.365627, 34.545029, 35.304966>,  <23.977875, 34.449726, 35.328758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.365627, 34.545029, 35.304966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219278, -0.730782, 0.646432,
		0.110551, -0.639680, -0.760650,
		0.969379, 0.238257, -0.059479,
		24.656441, 34.616505, 35.287121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.439068, 33.802929, 35.220718>,  <23.977875, 34.449726, 35.328758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.439068, 33.802929, 35.220718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657652, 34.092278, 35.389530>,  <24.788801, 34.265888, 35.490818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657652, 34.092278, 35.389530>,  <24.439068, 33.802929, 35.220718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.657652, 34.092278, 35.389530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137827, -0.574733, 0.806651,
		0.826067, -0.382634, -0.413769,
		0.546459, 0.723376, 0.422031,
		24.821590, 34.309292, 35.516140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.976810, 33.420494, 35.582691>,  <24.439068, 33.802929, 35.220718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.976810, 33.420494, 35.582691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994339, 33.791893, 35.730190>,  <25.004856, 34.014732, 35.818687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994339, 33.791893, 35.730190>,  <24.976810, 33.420494, 35.582691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.994339, 33.791893, 35.730190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096531, -0.363437, 0.926604,
		0.994365, -0.076199, 0.073703,
		0.043820, 0.928497, 0.368745,
		25.007484, 34.070442, 35.840813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545521, 33.490646, 36.065582>,  <24.976810, 33.420494, 35.582691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545521, 33.490646, 36.065582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264345, 33.758968, 36.160149>,  <25.095640, 33.919964, 36.216888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264345, 33.758968, 36.160149>,  <25.545521, 33.490646, 36.065582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264345, 33.758968, 36.160149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057335, -0.384750, 0.921239,
		0.708935, 0.634020, 0.308917,
		-0.702940, 0.670810, 0.236411,
		25.053463, 33.960213, 36.231071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721640, 33.905910, 36.684391>,  <25.545521, 33.490646, 36.065582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721640, 33.905910, 36.684391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324299, 33.869621, 36.656044>,  <25.085894, 33.847847, 36.639034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324299, 33.869621, 36.656044>,  <25.721640, 33.905910, 36.684391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324299, 33.869621, 36.656044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023227, -0.444984, 0.895237,
		-0.112750, 0.890932, 0.439918,
		-0.993352, -0.090720, -0.070866,
		25.026293, 33.842403, 36.634785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302839, 34.202377, 37.281864>,  <25.721640, 33.905910, 36.684391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302839, 34.202377, 37.281864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081133, 33.904179, 37.133797>,  <24.948109, 33.725262, 37.044956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081133, 33.904179, 37.133797>,  <25.302839, 34.202377, 37.281864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081133, 33.904179, 37.133797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003468, -0.442665, 0.896680,
		-0.832333, 0.498282, 0.242769,
		-0.554265, -0.745495, -0.370173,
		24.914854, 33.680531, 37.022743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.621664, 34.082542, 37.642559>,  <25.302839, 34.202377, 37.281864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.621664, 34.082542, 37.642559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757889, 33.745045, 37.476616>,  <24.839624, 33.542545, 37.377048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757889, 33.745045, 37.476616>,  <24.621664, 34.082542, 37.642559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757889, 33.745045, 37.476616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184225, -0.492565, 0.850553,
		-0.921997, -0.213240, -0.323189,
		0.340564, -0.843747, -0.414860,
		24.860058, 33.491920, 37.352158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.127882, 33.678555, 37.808662>,  <24.621664, 34.082542, 37.642559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.127882, 33.678555, 37.808662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432564, 33.436794, 37.715275>,  <24.615374, 33.291737, 37.659245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432564, 33.436794, 37.715275>,  <24.127882, 33.678555, 37.808662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432564, 33.436794, 37.715275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196437, -0.558789, 0.805709,
		-0.617428, -0.567852, -0.544359,
		0.761706, -0.604400, -0.233465,
		24.661076, 33.255474, 37.645237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.870762, 33.092766, 37.823845>,  <24.127882, 33.678555, 37.808662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.870762, 33.092766, 37.823845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257736, 33.017700, 37.891788>,  <24.489920, 32.972660, 37.932556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257736, 33.017700, 37.891788>,  <23.870762, 33.092766, 37.823845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.257736, 33.017700, 37.891788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248361, -0.574221, 0.780120,
		-0.048868, -0.796901, -0.602131,
		0.967434, -0.187668, 0.169858,
		24.547966, 32.961399, 37.942745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.890007, 32.334007, 38.068031>,  <23.870762, 33.092766, 37.823845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.890007, 32.334007, 38.068031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220102, 32.521370, 38.194260>,  <24.418159, 32.633785, 38.269997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220102, 32.521370, 38.194260>,  <23.890007, 32.334007, 38.068031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.220102, 32.521370, 38.194260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151455, -0.354741, 0.922616,
		0.544101, -0.809171, -0.221803,
		0.825237, 0.468403, 0.315568,
		24.467672, 32.661892, 38.288929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.363178, 31.837370, 38.416691>,  <23.890007, 32.334007, 38.068031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.363178, 31.837370, 38.416691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432621, 32.203323, 38.562485>,  <24.474287, 32.422894, 38.649963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432621, 32.203323, 38.562485>,  <24.363178, 31.837370, 38.416691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432621, 32.203323, 38.562485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263101, -0.313570, 0.912388,
		0.949020, -0.254295, 0.186268,
		0.173608, 0.914882, 0.364489,
		24.484703, 32.477787, 38.671833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.154781, 31.757597, 39.105328>,  <24.363178, 31.837370, 38.416691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.154781, 31.757597, 39.105328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246035, 32.146866, 39.093399>,  <24.300787, 32.380428, 39.086243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246035, 32.146866, 39.093399>,  <24.154781, 31.757597, 39.105328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246035, 32.146866, 39.093399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292636, 0.097750, 0.951215,
		0.928612, -0.208277, 0.307086,
		0.228133, 0.973173, -0.029823,
		24.314474, 32.438816, 39.084454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.052553, 32.367432, 39.480648>,  <24.154781, 31.757597, 39.105328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.052553, 32.367432, 39.480648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451963, 32.381733, 39.496979>,  <24.691610, 32.390312, 39.506779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451963, 32.381733, 39.496979>,  <24.052553, 32.367432, 39.480648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.451963, 32.381733, 39.496979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012052, 0.587413, -0.809198,
		-0.052912, 0.808497, 0.586116,
		0.998526, 0.035753, 0.040825,
		24.751522, 32.392460, 39.509228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284306, 33.076771, 39.392529>,  <24.052553, 32.367432, 39.480648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284306, 33.076771, 39.392529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527237, 32.782001, 39.273808>,  <24.672997, 32.605141, 39.202576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527237, 32.782001, 39.273808>,  <24.284306, 33.076771, 39.392529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.527237, 32.782001, 39.273808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085812, 0.432262, -0.897656,
		0.789803, 0.519702, 0.325761,
		0.607328, -0.736926, -0.296805,
		24.709435, 32.560925, 39.184765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915617, 33.389919, 39.087006>,  <24.284306, 33.076771, 39.392529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915617, 33.389919, 39.087006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898708, 33.020527, 38.934483>,  <24.888563, 32.798893, 38.842968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898708, 33.020527, 38.934483>,  <24.915617, 33.389919, 39.087006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898708, 33.020527, 38.934483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142777, 0.372148, -0.917126,
		0.988852, -0.093208, 0.116122,
		-0.042269, -0.923482, -0.381307,
		24.886028, 32.743481, 38.820091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576611, 33.242702, 38.707844>,  <24.915617, 33.389919, 39.087006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576611, 33.242702, 38.707844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254593, 33.046577, 38.574280>,  <25.061382, 32.928902, 38.494141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254593, 33.046577, 38.574280>,  <25.576611, 33.242702, 38.707844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254593, 33.046577, 38.574280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188245, 0.322642, -0.927613,
		0.562556, -0.809626, -0.167442,
		-0.805043, -0.490314, -0.333912,
		25.013081, 32.899483, 38.474106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793701, 32.797153, 38.091110>,  <25.576611, 33.242702, 38.707844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793701, 32.797153, 38.091110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398235, 32.851639, 38.065834>,  <25.160955, 32.884331, 38.050671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398235, 32.851639, 38.065834>,  <25.793701, 32.797153, 38.091110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398235, 32.851639, 38.065834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089587, 0.197383, -0.976224,
		-0.120504, -0.970817, -0.207348,
		-0.988662, 0.136214, -0.063187,
		25.101637, 32.892502, 38.046879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599127, 32.352657, 37.505184>,  <25.793701, 32.797153, 38.091110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599127, 32.352657, 37.505184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336712, 32.651608, 37.547211>,  <25.179262, 32.830978, 37.572426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336712, 32.651608, 37.547211>,  <25.599127, 32.352657, 37.505184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336712, 32.651608, 37.547211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133887, 0.252251, -0.958355,
		-0.742758, -0.614649, -0.265550,
		-0.656037, 0.747380, 0.105068,
		25.139900, 32.875820, 37.578732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059118, 32.307415, 36.888260>,  <25.599127, 32.352657, 37.505184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.059118, 32.307415, 36.888260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042362, 32.678524, 37.036575>,  <25.032309, 32.901188, 37.125565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042362, 32.678524, 37.036575>,  <25.059118, 32.307415, 36.888260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.042362, 32.678524, 37.036575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066299, 0.372875, -0.925510,
		-0.996920, -0.014188, -0.077131,
		-0.041891, 0.927773, 0.370785,
		25.029795, 32.956856, 37.147812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.421558, 32.505833, 36.741177>,  <25.059118, 32.307415, 36.888260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.421558, 32.505833, 36.741177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.512835, 32.814453, 36.978710>,  <24.567600, 32.999626, 37.121231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.512835, 32.814453, 36.978710>,  <24.421558, 32.505833, 36.741177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.512835, 32.814453, 36.978710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080545, 0.622794, -0.778229,
		-0.970279, 0.129755, 0.204261,
		0.228191, 0.771551, 0.593833,
		24.581291, 33.045918, 37.156860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.972803, 32.951271, 36.508320>,  <24.421558, 32.505833, 36.741177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.972803, 32.951271, 36.508320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247177, 33.172649, 36.697292>,  <24.411800, 33.305477, 36.810677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247177, 33.172649, 36.697292>,  <23.972803, 32.951271, 36.508320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.247177, 33.172649, 36.697292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016780, 0.637038, -0.770650,
		-0.727471, 0.536542, 0.427678,
		0.685933, 0.553449, 0.472430,
		24.452957, 33.338684, 36.839020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.718191, 33.598618, 36.496944>,  <23.972803, 32.951271, 36.508320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.718191, 33.598618, 36.496944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112719, 33.647636, 36.541042>,  <24.349436, 33.677048, 36.567501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112719, 33.647636, 36.541042>,  <23.718191, 33.598618, 36.496944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.112719, 33.647636, 36.541042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000151, 0.668145, -0.744031,
		-0.164843, 0.733869, 0.658986,
		0.986320, 0.122549, 0.110249,
		24.408615, 33.684402, 36.574116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.969013, 34.298466, 36.242554>,  <23.718191, 33.598618, 36.496944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.969013, 34.298466, 36.242554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306387, 34.254295, 36.452858>,  <24.508812, 34.227795, 36.579041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306387, 34.254295, 36.452858>,  <23.969013, 34.298466, 36.242554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.306387, 34.254295, 36.452858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536833, 0.210876, -0.816910,
		-0.020661, 0.971255, 0.237141,
		0.843436, -0.110427, 0.525759,
		24.559418, 34.221169, 36.610584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.207525, 34.974491, 36.267822>,  <23.969013, 34.298466, 36.242554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.207525, 34.974491, 36.267822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472630, 34.676231, 36.295414>,  <24.631691, 34.497276, 36.311970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472630, 34.676231, 36.295414>,  <24.207525, 34.974491, 36.267822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.472630, 34.676231, 36.295414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413842, 0.287945, -0.863610,
		0.624087, 0.600913, 0.499419,
		0.662759, -0.745649, 0.068980,
		24.671457, 34.452538, 36.316109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867058, 35.295452, 36.307671>,  <24.207525, 34.974491, 36.267822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867058, 35.295452, 36.307671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903854, 34.922787, 36.167072>,  <24.925932, 34.699188, 36.082714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903854, 34.922787, 36.167072>,  <24.867058, 35.295452, 36.307671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.903854, 34.922787, 36.167072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337266, 0.361280, -0.869326,
		0.936904, -0.038575, 0.347452,
		0.091993, -0.931659, -0.351494,
		24.931452, 34.643288, 36.061623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575054, 35.258762, 35.903229>,  <24.867058, 35.295452, 36.307671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575054, 35.258762, 35.903229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316980, 34.981621, 35.774426>,  <25.162136, 34.815334, 35.697144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316980, 34.981621, 35.774426>,  <25.575054, 35.258762, 35.903229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316980, 34.981621, 35.774426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151902, 0.296725, -0.942804,
		0.748773, -0.657197, -0.086197,
		-0.645186, -0.692853, -0.322009,
		25.123425, 34.773766, 35.677822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897995, 35.040573, 35.219177>,  <25.575054, 35.258762, 35.903229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897995, 35.040573, 35.219177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509779, 34.950050, 35.252254>,  <25.276850, 34.895737, 35.272099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509779, 34.950050, 35.252254>,  <25.897995, 35.040573, 35.219177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509779, 34.950050, 35.252254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142849, 0.264096, -0.953859,
		0.194020, -0.937572, -0.288643,
		-0.970541, -0.226300, 0.082691,
		25.218616, 34.882160, 35.277061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773012, 34.906590, 34.596840>,  <25.897995, 35.040573, 35.219177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773012, 34.906590, 34.596840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398870, 34.923344, 34.737331>,  <25.174385, 34.933395, 34.821625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398870, 34.923344, 34.737331>,  <25.773012, 34.906590, 34.596840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398870, 34.923344, 34.737331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304902, 0.407877, -0.860623,
		-0.179302, -0.912076, -0.368739,
		-0.935353, 0.041882, 0.351227,
		25.118265, 34.935909, 34.842701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286959, 34.551109, 34.188412>,  <25.773012, 34.906590, 34.596840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286959, 34.551109, 34.188412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099539, 34.865551, 34.349659>,  <24.987087, 35.054214, 34.446407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099539, 34.865551, 34.349659>,  <25.286959, 34.551109, 34.188412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099539, 34.865551, 34.349659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228681, 0.332828, -0.914839,
		-0.853325, -0.520834, 0.023820,
		-0.468552, 0.786103, 0.403115,
		24.958973, 35.101383, 34.470592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753292, 34.033058, 33.904060>,  <25.286959, 34.551109, 34.188412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753292, 34.033058, 33.904060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126637, 33.899574, 33.851185>,  <26.350643, 33.819485, 33.819462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126637, 33.899574, 33.851185>,  <25.753292, 34.033058, 33.904060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126637, 33.899574, 33.851185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300606, -0.525500, -0.795918,
		0.196142, 0.782615, -0.590797,
		0.933362, -0.333710, -0.132186,
		26.406645, 33.799461, 33.811527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941751, 34.169735, 33.270340>,  <25.753292, 34.033058, 33.904060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941751, 34.169735, 33.270340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201889, 33.879879, 33.361515>,  <26.357971, 33.705967, 33.416218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201889, 33.879879, 33.361515>,  <25.941751, 34.169735, 33.270340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201889, 33.879879, 33.361515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130636, -0.402272, -0.906152,
		0.748323, 0.559534, -0.356279,
		0.650343, -0.724637, 0.227935,
		26.396992, 33.662487, 33.429897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273993, 34.032551, 32.593925>,  <25.941751, 34.169735, 33.270340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273993, 34.032551, 32.593925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430519, 33.712120, 32.775097>,  <26.524435, 33.519859, 32.883801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430519, 33.712120, 32.775097>,  <26.273993, 34.032551, 32.593925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430519, 33.712120, 32.775097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043643, -0.475464, -0.878652,
		0.919220, 0.363599, -0.151095,
		0.391317, -0.801081, 0.452924,
		26.547915, 33.471794, 32.910973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879133, 33.763306, 32.268093>,  <26.273993, 34.032551, 32.593925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879133, 33.763306, 32.268093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781956, 33.434902, 32.474751>,  <26.723650, 33.237862, 32.598743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781956, 33.434902, 32.474751>,  <26.879133, 33.763306, 32.268093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781956, 33.434902, 32.474751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216552, -0.565062, -0.796122,
		0.945560, -0.081531, 0.315069,
		-0.242942, -0.821010, 0.516645,
		26.709074, 33.188599, 32.629745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397112, 33.312462, 32.477528>,  <26.879133, 33.763306, 32.268093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397112, 33.312462, 32.477528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326271, 33.037968, 32.759724>,  <27.283766, 32.873272, 32.929043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326271, 33.037968, 32.759724>,  <27.397112, 33.312462, 32.477528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326271, 33.037968, 32.759724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441094, -0.585453, -0.680206,
		0.879813, -0.431653, -0.199010,
		-0.177102, -0.686236, 0.705489,
		27.273140, 32.832096, 32.971371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622150, 32.764400, 32.300079>,  <27.397112, 33.312462, 32.477528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622150, 32.764400, 32.300079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329741, 32.657593, 32.551254>,  <27.154295, 32.593506, 32.701958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329741, 32.657593, 32.551254>,  <27.622150, 32.764400, 32.300079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329741, 32.657593, 32.551254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326946, -0.670667, -0.665816,
		0.598923, -0.692029, 0.402972,
		-0.731025, -0.267023, 0.627935,
		27.110434, 32.577484, 32.739635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484175, 32.062019, 32.147343>,  <27.622150, 32.764400, 32.300079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484175, 32.062019, 32.147343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167883, 32.207184, 32.344540>,  <26.978107, 32.294285, 32.462856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167883, 32.207184, 32.344540>,  <27.484175, 32.062019, 32.147343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167883, 32.207184, 32.344540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560282, -0.753507, -0.343964,
		0.246643, -0.548196, 0.799154,
		-0.790728, 0.362915, 0.492992,
		26.930664, 32.316059, 32.492435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268126, 31.540453, 32.614189>,  <27.484175, 32.062019, 32.147343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268126, 31.540453, 32.614189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950607, 31.768616, 32.529785>,  <26.760098, 31.905514, 32.479141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950607, 31.768616, 32.529785>,  <27.268126, 31.540453, 32.614189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950607, 31.768616, 32.529785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458724, -0.789335, -0.408073,
		-0.399328, -0.227129, 0.888228,
		-0.793795, 0.570406, -0.211014,
		26.712469, 31.939737, 32.466480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763647, 31.074741, 32.610882>,  <27.268126, 31.540453, 32.614189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763647, 31.074741, 32.610882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570509, 31.372099, 32.425743>,  <26.454626, 31.550514, 32.314659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570509, 31.372099, 32.425743>,  <26.763647, 31.074741, 32.610882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570509, 31.372099, 32.425743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541023, -0.668841, -0.509849,
		-0.688593, 0.004239, 0.725136,
		-0.482839, 0.743394, -0.462853,
		26.425655, 31.595118, 32.286888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165190, 30.734695, 32.547333>,  <26.763647, 31.074741, 32.610882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165190, 30.734695, 32.547333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189369, 31.048891, 32.300968>,  <26.203876, 31.237410, 32.153149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189369, 31.048891, 32.300968>,  <26.165190, 30.734695, 32.547333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189369, 31.048891, 32.300968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569881, -0.479437, -0.667365,
		-0.819501, 0.391338, 0.418656,
		0.060447, 0.785490, -0.615915,
		26.207502, 31.284538, 32.116192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349005, 30.732615, 31.848726>,  <26.165190, 30.734695, 32.547333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349005, 30.732615, 31.848726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032751, 30.884567, 31.656647>,  <25.842999, 30.975739, 31.541399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032751, 30.884567, 31.656647>,  <26.349005, 30.732615, 31.848726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032751, 30.884567, 31.656647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114047, 0.861908, 0.494073,
		0.601574, 0.335866, -0.724778,
		-0.790634, 0.379880, -0.480197,
		25.795561, 30.998531, 31.512587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510338, 31.314760, 31.397381>,  <26.349005, 30.732615, 31.848726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510338, 31.314760, 31.397381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149746, 31.333214, 31.569521>,  <25.933390, 31.344286, 31.672806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149746, 31.333214, 31.569521>,  <26.510338, 31.314760, 31.397381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149746, 31.333214, 31.569521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246979, 0.871360, 0.423950,
		-0.355433, 0.488471, -0.796909,
		-0.901482, 0.046133, 0.430352,
		25.879301, 31.347054, 31.698627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103004, 32.047321, 31.216295>,  <26.510338, 31.314760, 31.397381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103004, 32.047321, 31.216295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000990, 31.875101, 31.562609>,  <25.939781, 31.771769, 31.770397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000990, 31.875101, 31.562609>,  <26.103004, 32.047321, 31.216295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000990, 31.875101, 31.562609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357865, 0.789782, 0.498174,
		-0.898271, 0.436885, -0.047341,
		-0.255034, -0.430553, 0.865784,
		25.924480, 31.745935, 31.822344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796764, 32.547424, 31.750301>,  <26.103004, 32.047321, 31.216295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796764, 32.547424, 31.750301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977797, 32.246410, 31.941658>,  <26.086416, 32.065804, 32.056473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977797, 32.246410, 31.941658>,  <25.796764, 32.547424, 31.750301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977797, 32.246410, 31.941658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496252, 0.658283, 0.566036,
		-0.740880, -0.018775, 0.671375,
		0.452582, -0.752536, 0.478391,
		26.113571, 32.020649, 32.085175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629900, 32.677803, 32.330376>,  <25.796764, 32.547424, 31.750301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629900, 32.677803, 32.330376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957283, 32.451874, 32.372509>,  <26.153713, 32.316315, 32.397789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957283, 32.451874, 32.372509>,  <25.629900, 32.677803, 32.330376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957283, 32.451874, 32.372509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433739, 0.727618, 0.531454,
		-0.376823, -0.389285, 0.840513,
		0.818458, -0.564827, 0.105335,
		26.202820, 32.282425, 32.404110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806034, 32.712303, 33.068756>,  <25.629900, 32.677803, 32.330376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806034, 32.712303, 33.068756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134068, 32.640743, 32.851334>,  <26.330887, 32.597809, 32.720879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134068, 32.640743, 32.851334>,  <25.806034, 32.712303, 33.068756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134068, 32.640743, 32.851334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559854, 0.447420, 0.697409,
		0.118434, -0.876248, 0.467080,
		0.820083, -0.178900, -0.543561,
		26.380093, 32.587074, 32.688267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358171, 32.379177, 33.520603>,  <25.806034, 32.712303, 33.068756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358171, 32.379177, 33.520603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496922, 32.592979, 33.212322>,  <26.580172, 32.721260, 33.027355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496922, 32.592979, 33.212322>,  <26.358171, 32.379177, 33.520603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496922, 32.592979, 33.212322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445978, 0.628883, 0.636875,
		0.825095, -0.564632, -0.020235,
		0.346875, 0.534506, -0.770702,
		26.600985, 32.753330, 32.981113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093758, 32.498306, 33.542038>,  <26.358171, 32.379177, 33.520603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093758, 32.498306, 33.542038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914820, 32.802624, 33.353966>,  <26.807457, 32.985214, 33.241123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914820, 32.802624, 33.353966>,  <27.093758, 32.498306, 33.542038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914820, 32.802624, 33.353966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370496, 0.636129, 0.676811,
		0.814012, 0.128568, -0.566441,
		-0.447345, 0.760796, -0.470183,
		26.780617, 33.030861, 33.212910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477137, 33.036606, 33.604534>,  <27.093758, 32.498306, 33.542038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477137, 33.036606, 33.604534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114616, 33.197365, 33.552238>,  <26.897104, 33.293819, 33.520859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114616, 33.197365, 33.552238>,  <27.477137, 33.036606, 33.604534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114616, 33.197365, 33.552238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092543, 0.490561, 0.866479,
		0.412374, 0.773192, -0.481790,
		-0.906302, 0.401900, -0.130741,
		26.842726, 33.317936, 33.513016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614159, 33.511848, 33.951202>,  <27.477137, 33.036606, 33.604534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614159, 33.511848, 33.951202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224298, 33.572990, 33.885849>,  <26.990383, 33.609676, 33.846638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224298, 33.572990, 33.885849>,  <27.614159, 33.511848, 33.951202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224298, 33.572990, 33.885849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025968, 0.648006, 0.761192,
		0.222226, 0.746138, -0.627609,
		-0.974649, 0.152859, -0.163380,
		26.931904, 33.618847, 33.836834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125860, 33.415627, 34.409714>,  <27.614159, 33.511848, 33.951202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125860, 33.415627, 34.409714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140221, 33.455013, 34.807510>,  <28.148838, 33.478645, 35.046188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140221, 33.455013, 34.807510>,  <28.125860, 33.415627, 34.409714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140221, 33.455013, 34.807510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596281, -0.796474, 0.100387,
		0.801973, -0.596601, 0.030119,
		0.035902, 0.098467, 0.994492,
		28.150991, 33.484554, 35.105858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071358, 34.155487, 34.212746>,  <28.125860, 33.415627, 34.409714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071358, 34.155487, 34.212746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466667, 34.126156, 34.159176>,  <28.703854, 34.108559, 34.127033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466667, 34.126156, 34.159176>,  <28.071358, 34.155487, 34.212746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466667, 34.126156, 34.159176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121073, 0.910775, 0.394752,
		0.093032, -0.406339, 0.908974,
		0.988275, -0.073327, -0.133928,
		28.763149, 34.104156, 34.118996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426579, 34.350800, 34.889946>,  <28.071358, 34.155487, 34.212746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426579, 34.350800, 34.889946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625715, 34.421349, 34.550289>,  <28.745197, 34.463676, 34.346497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625715, 34.421349, 34.550289>,  <28.426579, 34.350800, 34.889946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625715, 34.421349, 34.550289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042973, 0.972884, 0.227268,
		0.866202, -0.149634, 0.476765,
		0.497844, 0.176372, -0.849143,
		28.775068, 34.474258, 34.295547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974752, 34.015423, 35.326504>,  <28.426579, 34.350800, 34.889946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974752, 34.015423, 35.326504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289139, 33.780979, 35.247784>,  <29.477770, 33.640312, 35.200554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289139, 33.780979, 35.247784>,  <28.974752, 34.015423, 35.326504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289139, 33.780979, 35.247784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275236, 0.046667, 0.960243,
		-0.553626, -0.808885, 0.197998,
		0.785966, -0.586112, -0.196798,
		29.524929, 33.605145, 35.188744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893906, 33.519173, 35.771584>,  <28.974752, 34.015423, 35.326504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893906, 33.519173, 35.771584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270868, 33.479584, 35.643787>,  <29.497046, 33.455830, 35.567108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270868, 33.479584, 35.643787>,  <28.893906, 33.519173, 35.771584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270868, 33.479584, 35.643787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299415, -0.176071, 0.937737,
		-0.149059, -0.979390, -0.136298,
		0.942408, -0.098969, -0.319488,
		29.553591, 33.449890, 35.547939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248737, 32.935787, 36.226215>,  <28.893906, 33.519173, 35.771584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248737, 32.935787, 36.226215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518702, 33.183483, 36.065697>,  <29.680679, 33.332100, 35.969383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518702, 33.183483, 36.065697>,  <29.248737, 32.935787, 36.226215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518702, 33.183483, 36.065697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523351, -0.018311, 0.851920,
		0.520191, -0.784992, -0.336436,
		0.674911, 0.619235, -0.401301,
		29.721174, 33.369255, 35.945305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883886, 32.628872, 36.479870>,  <29.248737, 32.935787, 36.226215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883886, 32.628872, 36.479870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973181, 33.010719, 36.401009>,  <30.026758, 33.239826, 36.353691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973181, 33.010719, 36.401009>,  <29.883886, 32.628872, 36.479870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973181, 33.010719, 36.401009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508019, 0.058680, 0.859345,
		0.831914, -0.291998, -0.471864,
		0.223238, 0.954617, -0.197157,
		30.040152, 33.297104, 36.341862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592611, 32.643105, 36.550510>,  <29.883886, 32.628872, 36.479870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592611, 32.643105, 36.550510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370426, 32.964077, 36.637745>,  <30.237114, 33.156662, 36.690086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370426, 32.964077, 36.637745>,  <30.592611, 32.643105, 36.550510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370426, 32.964077, 36.637745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417812, 0.042567, 0.907535,
		0.718952, 0.595224, -0.358910,
		-0.555464, 0.802432, 0.218088,
		30.203787, 33.204807, 36.703171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075224, 33.142975, 36.713531>,  <30.592611, 32.643105, 36.550510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075224, 33.142975, 36.713531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725037, 33.222908, 36.889542>,  <30.514923, 33.270870, 36.995148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725037, 33.222908, 36.889542>,  <31.075224, 33.142975, 36.713531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725037, 33.222908, 36.889542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457156, 0.047185, 0.888134,
		0.156718, 0.978693, -0.132664,
		-0.875470, 0.199834, 0.440021,
		30.462395, 33.282860, 37.021549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880129, 32.967308, 37.466644>,  <31.075224, 33.142975, 36.713531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880129, 32.967308, 37.466644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019506, 33.341972, 37.452431>,  <31.103132, 33.566769, 37.443901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019506, 33.341972, 37.452431>,  <30.880129, 32.967308, 37.466644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019506, 33.341972, 37.452431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678642, 0.225944, -0.698852,
		-0.646555, 0.267627, 0.714383,
		0.348442, 0.936656, -0.035537,
		31.124039, 33.622971, 37.441769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341185, 33.446388, 37.594124>,  <30.880129, 32.967308, 37.466644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341185, 33.446388, 37.594124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616526, 33.612968, 37.356556>,  <30.781731, 33.712917, 37.214016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616526, 33.612968, 37.356556>,  <30.341185, 33.446388, 37.594124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616526, 33.612968, 37.356556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707846, 0.206713, -0.675444,
		-0.158518, 0.885347, 0.437073,
		0.688351, 0.416451, -0.593921,
		30.823030, 33.737904, 37.178379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185265, 34.196354, 37.353733>,  <30.341185, 33.446388, 37.594124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185265, 34.196354, 37.353733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386372, 33.974117, 37.088840>,  <30.507036, 33.840775, 36.929905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386372, 33.974117, 37.088840>,  <30.185265, 34.196354, 37.353733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386372, 33.974117, 37.088840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755719, 0.089419, -0.648762,
		0.419661, 0.826635, -0.374912,
		0.502766, -0.555588, -0.662230,
		30.537201, 33.807442, 36.890171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084553, 34.501514, 36.747646>,  <30.185265, 34.196354, 37.353733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084553, 34.501514, 36.747646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187405, 34.120518, 36.682365>,  <30.249115, 33.891918, 36.643196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187405, 34.120518, 36.682365>,  <30.084553, 34.501514, 36.747646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187405, 34.120518, 36.682365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478753, 0.021147, -0.877695,
		0.839452, 0.303816, -0.450573,
		0.257130, -0.952496, -0.163205,
		30.264544, 33.834770, 36.633404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486965, 34.505554, 36.108631>,  <30.084553, 34.501514, 36.747646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486965, 34.505554, 36.108631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341978, 34.137192, 36.165977>,  <30.254986, 33.916176, 36.200386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341978, 34.137192, 36.165977>,  <30.486965, 34.505554, 36.108631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341978, 34.137192, 36.165977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216604, -0.066381, -0.974000,
		0.906476, -0.384100, -0.175410,
		-0.362470, -0.920902, 0.143370,
		30.233236, 33.860920, 36.208988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795938, 34.013203, 35.591614>,  <30.486965, 34.505554, 36.108631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795938, 34.013203, 35.591614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445803, 33.842785, 35.683064>,  <30.235722, 33.740536, 35.737934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445803, 33.842785, 35.683064>,  <30.795938, 34.013203, 35.591614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445803, 33.842785, 35.683064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243215, -0.020692, -0.969752,
		0.417885, -0.904467, -0.085507,
		-0.875339, -0.426042, 0.228627,
		30.183201, 33.714973, 35.751652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888918, 33.490616, 35.211601>,  <30.795938, 34.013203, 35.591614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888918, 33.490616, 35.211601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503622, 33.483349, 35.318813>,  <30.272446, 33.478989, 35.383141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503622, 33.483349, 35.318813>,  <30.888918, 33.490616, 35.211601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503622, 33.483349, 35.318813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262003, -0.156976, -0.952215,
		0.059378, -0.987435, 0.146444,
		-0.963238, -0.018172, 0.268032,
		30.214651, 33.477898, 35.399223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521866, 32.849586, 34.932102>,  <30.888918, 33.490616, 35.211601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521866, 32.849586, 34.932102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284908, 33.169186, 34.973431>,  <30.142733, 33.360943, 34.998226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284908, 33.169186, 34.973431>,  <30.521866, 32.849586, 34.932102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284908, 33.169186, 34.973431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156455, 0.011713, -0.987616,
		-0.790309, -0.601225, 0.118067,
		-0.592396, 0.798994, 0.103322,
		30.107189, 33.408882, 35.004429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919149, 32.710949, 34.724014>,  <30.521866, 32.849586, 34.932102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919149, 32.710949, 34.724014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927532, 33.109478, 34.690765>,  <29.932562, 33.348595, 34.670818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927532, 33.109478, 34.690765>,  <29.919149, 32.710949, 34.724014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927532, 33.109478, 34.690765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088026, -0.080975, -0.992821,
		-0.995898, 0.028124, 0.086005,
		0.020958, 0.996319, -0.083119,
		29.933819, 33.408375, 34.665829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375874, 32.893616, 34.232391>,  <29.919149, 32.710949, 34.724014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375874, 32.893616, 34.232391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636433, 33.196461, 34.212505>,  <29.792768, 33.378166, 34.200573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636433, 33.196461, 34.212505>,  <29.375874, 32.893616, 34.232391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636433, 33.196461, 34.212505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239719, 0.143200, -0.960223,
		-0.719874, 0.637402, 0.274773,
		0.651395, 0.757108, -0.049711,
		29.831852, 33.423592, 34.197594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112473, 33.452682, 33.802685>,  <29.375874, 32.893616, 34.232391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112473, 33.452682, 33.802685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503555, 33.536484, 33.797047>,  <29.738205, 33.586765, 33.793663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503555, 33.536484, 33.797047>,  <29.112473, 33.452682, 33.802685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503555, 33.536484, 33.797047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036074, 0.101475, -0.994184,
		-0.206850, 0.972529, 0.106770,
		0.977707, 0.209499, -0.014093,
		29.796867, 33.599335, 33.792820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113840, 34.058838, 33.358425>,  <29.112473, 33.452682, 33.802685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113840, 34.058838, 33.358425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466110, 33.869583, 33.367798>,  <29.677473, 33.756031, 33.373421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466110, 33.869583, 33.367798>,  <29.113840, 34.058838, 33.358425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466110, 33.869583, 33.367798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007907, -0.034774, -0.999364,
		0.473650, 0.880303, -0.026884,
		0.880678, -0.473136, 0.023431,
		29.730314, 33.727642, 33.374828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533730, 34.528481, 32.962322>,  <29.113840, 34.058838, 33.358425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533730, 34.528481, 32.962322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697084, 34.165047, 32.927235>,  <29.795097, 33.946987, 32.906181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697084, 34.165047, 32.927235>,  <29.533730, 34.528481, 32.962322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697084, 34.165047, 32.927235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067267, 0.125790, -0.989774,
		0.910327, 0.398310, 0.112488,
		0.408387, -0.908585, -0.087717,
		29.819601, 33.892471, 32.900921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016991, 34.503666, 32.360126>,  <29.533730, 34.528481, 32.962322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016991, 34.503666, 32.360126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983728, 34.108784, 32.414539>,  <29.963770, 33.871853, 32.447186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983728, 34.108784, 32.414539>,  <30.016991, 34.503666, 32.360126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983728, 34.108784, 32.414539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013084, -0.137574, -0.990405,
		0.996451, -0.080579, 0.024357,
		-0.083157, -0.987208, 0.136032,
		29.958782, 33.812622, 32.455349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528429, 34.241276, 31.898941>,  <30.016991, 34.503666, 32.360126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528429, 34.241276, 31.898941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281389, 33.942940, 31.998772>,  <30.133165, 33.763939, 32.058670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281389, 33.942940, 31.998772>,  <30.528429, 34.241276, 31.898941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281389, 33.942940, 31.998772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157224, -0.193843, -0.968352,
		0.770618, -0.637293, 0.002453,
		-0.617600, -0.745843, 0.249576,
		30.096109, 33.719185, 32.073643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796680, 33.610146, 31.593588>,  <30.528429, 34.241276, 31.898941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796680, 33.610146, 31.593588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411144, 33.510971, 31.632656>,  <30.179823, 33.451466, 31.656097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411144, 33.510971, 31.632656>,  <30.796680, 33.610146, 31.593588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411144, 33.510971, 31.632656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081081, -0.076279, -0.993784,
		0.253842, -0.965770, 0.053418,
		-0.963841, -0.247933, 0.097669,
		30.121992, 33.436592, 31.661957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756590, 32.992718, 31.186699>,  <30.796680, 33.610146, 31.593588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756590, 32.992718, 31.186699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384247, 33.133991, 31.224136>,  <30.160841, 33.218758, 31.246599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384247, 33.133991, 31.224136>,  <30.756590, 32.992718, 31.186699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384247, 33.133991, 31.224136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148969, -0.132959, -0.979862,
		-0.333632, -0.926056, 0.176381,
		-0.930859, 0.353189, 0.093594,
		30.104990, 33.239948, 31.252214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271986, 32.528328, 30.874102>,  <30.756590, 32.992718, 31.186699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271986, 32.528328, 30.874102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092178, 32.885632, 30.875811>,  <29.984293, 33.100014, 30.876837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092178, 32.885632, 30.875811>,  <30.271986, 32.528328, 30.874102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092178, 32.885632, 30.875811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210147, -0.101100, -0.972428,
		-0.868199, -0.438024, 0.233163,
		-0.449520, 0.893260, 0.004275,
		29.957323, 33.153610, 30.877092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745682, 32.464058, 30.438581>,  <30.271986, 32.528328, 30.874102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745682, 32.464058, 30.438581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727850, 32.863239, 30.456881>,  <29.717152, 33.102749, 30.467861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727850, 32.863239, 30.456881>,  <29.745682, 32.464058, 30.438581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727850, 32.863239, 30.456881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319095, 0.029172, -0.947274,
		-0.946674, -0.056828, 0.317143,
		-0.044580, 0.997958, 0.045750,
		29.714476, 33.162628, 30.470606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167576, 32.621502, 30.055401>,  <29.745682, 32.464058, 30.438581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167576, 32.621502, 30.055401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369659, 32.966282, 30.072409>,  <29.490910, 33.173149, 30.082613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369659, 32.966282, 30.072409>,  <29.167576, 32.621502, 30.055401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369659, 32.966282, 30.072409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143130, 0.132276, -0.980825,
		-0.851044, 0.489437, 0.190198,
		0.505210, 0.861948, 0.042519,
		29.521223, 33.224865, 30.085165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795477, 33.148743, 29.679426>,  <29.167576, 32.621502, 30.055401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795477, 33.148743, 29.679426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156351, 33.321274, 29.680975>,  <29.372875, 33.424793, 29.681904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156351, 33.321274, 29.680975>,  <28.795477, 33.148743, 29.679426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156351, 33.321274, 29.680975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152569, 0.327486, -0.932457,
		-0.403465, 0.840658, 0.361261,
		0.902185, 0.431331, 0.003871,
		29.427006, 33.450672, 29.682137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659012, 33.703758, 29.295635>,  <28.795477, 33.148743, 29.679426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659012, 33.703758, 29.295635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057360, 33.713928, 29.260763>,  <29.296368, 33.720032, 29.239840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057360, 33.713928, 29.260763>,  <28.659012, 33.703758, 29.295635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057360, 33.713928, 29.260763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090391, 0.369804, -0.924702,
		0.008726, 0.928762, 0.370575,
		0.995868, 0.025427, -0.087179,
		29.356121, 33.721558, 29.234610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908272, 34.373970, 29.080656>,  <28.659012, 33.703758, 29.295635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908272, 34.373970, 29.080656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199926, 34.120102, 28.978239>,  <29.374918, 33.967781, 28.916790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199926, 34.120102, 28.978239>,  <28.908272, 34.373970, 29.080656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199926, 34.120102, 28.978239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068532, 0.439959, -0.895399,
		0.680929, 0.635320, 0.364285,
		0.729135, -0.634669, -0.256041,
		29.418667, 33.929703, 28.901426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381296, 34.860397, 28.735273>,  <28.908272, 34.373970, 29.080656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381296, 34.860397, 28.735273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427858, 34.479591, 28.622049>,  <29.455795, 34.251110, 28.554115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427858, 34.479591, 28.622049>,  <29.381296, 34.860397, 28.735273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427858, 34.479591, 28.622049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044948, 0.289757, -0.956044,
		0.992184, 0.098567, 0.076521,
		0.116407, -0.952011, -0.283062,
		29.462780, 34.193989, 28.537130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793242, 34.927502, 28.203613>,  <29.381296, 34.860397, 28.735273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793242, 34.927502, 28.203613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636770, 34.562508, 28.155708>,  <29.542887, 34.343510, 28.126965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636770, 34.562508, 28.155708>,  <29.793242, 34.927502, 28.203613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636770, 34.562508, 28.155708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059450, 0.104807, -0.992714,
		0.918392, -0.395449, 0.013249,
		-0.391180, -0.912489, -0.119763,
		29.519417, 34.288761, 28.119780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229229, 34.648209, 27.767715>,  <29.793242, 34.927502, 28.203613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229229, 34.648209, 27.767715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906956, 34.411888, 27.750610>,  <29.713591, 34.270096, 27.740349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906956, 34.411888, 27.750610>,  <30.229229, 34.648209, 27.767715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906956, 34.411888, 27.750610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043504, 0.012975, -0.998969,
		0.590744, -0.806715, 0.015249,
		-0.805685, -0.590799, -0.042760,
		29.665251, 34.234650, 27.737782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445990, 34.306877, 27.208563>,  <30.229229, 34.648209, 27.767715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445990, 34.306877, 27.208563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048075, 34.268532, 27.222481>,  <29.809326, 34.245525, 27.230831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048075, 34.268532, 27.222481>,  <30.445990, 34.306877, 27.208563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048075, 34.268532, 27.222481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042394, 0.078381, -0.996022,
		0.092779, -0.992301, -0.082038,
		-0.994784, -0.095888, 0.034795,
		29.749640, 34.239773, 27.232920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338825, 33.789074, 26.768257>,  <30.445990, 34.306877, 27.208563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338825, 33.789074, 26.768257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003407, 34.003803, 26.805471>,  <29.802155, 34.132641, 26.827801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003407, 34.003803, 26.805471>,  <30.338825, 33.789074, 26.768257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003407, 34.003803, 26.805471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027315, 0.129122, -0.991252,
		-0.544144, -0.833753, -0.093611,
		-0.838547, 0.536828, 0.093035,
		29.751842, 34.164852, 26.833382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946579, 33.769085, 26.074553>,  <30.338825, 33.789074, 26.768257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946579, 33.769085, 26.074553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754257, 34.074692, 26.246647>,  <29.638865, 34.258057, 26.349903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754257, 34.074692, 26.246647>,  <29.946579, 33.769085, 26.074553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754257, 34.074692, 26.246647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198042, 0.383369, -0.902113,
		-0.854171, -0.518943, -0.033017,
		-0.480803, 0.764020, 0.430236,
		29.610016, 34.303898, 26.375717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507141, 33.914974, 25.550976>,  <29.946579, 33.769085, 26.074553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507141, 33.914974, 25.550976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480587, 34.239052, 25.783930>,  <29.464655, 34.433498, 25.923702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480587, 34.239052, 25.783930>,  <29.507141, 33.914974, 25.550976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480587, 34.239052, 25.783930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121089, 0.572819, -0.810688,
		-0.990419, -0.124338, 0.060080,
		-0.066384, 0.810196, 0.582387,
		29.460672, 34.482109, 25.958647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949705, 34.335091, 25.391903>,  <29.507141, 33.914974, 25.550976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949705, 34.335091, 25.391903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197474, 34.589115, 25.576515>,  <29.346134, 34.741531, 25.687283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197474, 34.589115, 25.576515>,  <28.949705, 34.335091, 25.391903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197474, 34.589115, 25.576515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000694, 0.588335, -0.808617,
		-0.785059, 0.500553, 0.364867,
		0.619420, 0.635066, 0.461530,
		29.383299, 34.779636, 25.714973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752750, 35.016769, 25.146790>,  <28.949705, 34.335091, 25.391903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752750, 35.016769, 25.146790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122877, 35.082664, 25.283407>,  <29.344954, 35.122200, 25.365377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122877, 35.082664, 25.283407>,  <28.752750, 35.016769, 25.146790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122877, 35.082664, 25.283407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170690, 0.623344, -0.763090,
		-0.338608, 0.764398, 0.548671,
		0.925316, 0.164736, 0.341544,
		29.400473, 35.132084, 25.385870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906946, 35.779972, 25.229969>,  <28.752750, 35.016769, 25.146790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906946, 35.779972, 25.229969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274019, 35.621716, 25.215422>,  <29.494263, 35.526760, 25.206694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274019, 35.621716, 25.215422>,  <28.906946, 35.779972, 25.229969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274019, 35.621716, 25.215422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259769, 0.666737, -0.698557,
		0.300630, 0.631606, 0.714630,
		0.917683, -0.395646, -0.036369,
		29.549324, 35.503021, 25.204512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370056, 36.358974, 25.215521>,  <28.906946, 35.779972, 25.229969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370056, 36.358974, 25.215521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592016, 36.060909, 25.067564>,  <29.725191, 35.882069, 24.978790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592016, 36.060909, 25.067564>,  <29.370056, 36.358974, 25.215521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592016, 36.060909, 25.067564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263061, 0.578980, -0.771739,
		0.789231, 0.330932, 0.517299,
		0.554899, -0.745162, -0.369894,
		29.758486, 35.837360, 24.956596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041744, 36.587322, 25.159893>,  <29.370056, 36.358974, 25.215521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041744, 36.587322, 25.159893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010120, 36.284397, 24.900593>,  <29.991146, 36.102642, 24.745012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010120, 36.284397, 24.900593>,  <30.041744, 36.587322, 25.159893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010120, 36.284397, 24.900593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346741, 0.588790, -0.730135,
		0.934623, -0.282500, 0.216041,
		-0.079061, -0.757311, -0.648251,
		29.986403, 36.057205, 24.706118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727602, 36.571648, 24.982748>,  <30.041744, 36.587322, 25.159893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727602, 36.571648, 24.982748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469749, 36.419537, 24.717468>,  <30.315037, 36.328270, 24.558300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469749, 36.419537, 24.717468>,  <30.727602, 36.571648, 24.982748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469749, 36.419537, 24.717468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435687, 0.530094, -0.727446,
		0.628193, -0.757883, -0.176031,
		-0.644632, -0.380282, -0.663202,
		30.276360, 36.305454, 24.518507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077177, 36.394234, 24.339508>,  <30.727602, 36.571648, 24.982748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077177, 36.394234, 24.339508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699039, 36.404778, 24.209505>,  <30.472157, 36.411102, 24.131504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699039, 36.404778, 24.209505>,  <31.077177, 36.394234, 24.339508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699039, 36.404778, 24.209505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284339, 0.554537, -0.782074,
		0.159612, -0.831741, -0.531723,
		-0.945344, 0.026361, -0.325007,
		30.415436, 36.412685, 24.112003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154818, 36.261913, 23.599445>,  <31.077177, 36.394234, 24.339508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154818, 36.261913, 23.599445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784382, 36.408348, 23.635960>,  <30.562120, 36.496208, 23.657867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784382, 36.408348, 23.635960>,  <31.154818, 36.261913, 23.599445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784382, 36.408348, 23.635960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194308, 0.670153, -0.716337,
		-0.323419, -0.645656, -0.691757,
		-0.926091, 0.366091, 0.091285,
		30.506554, 36.518177, 23.663345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888330, 36.365421, 22.942558>,  <31.154818, 36.261913, 23.599445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888330, 36.365421, 22.942558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659348, 36.618061, 23.151701>,  <30.521957, 36.769646, 23.277185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659348, 36.618061, 23.151701>,  <30.888330, 36.365421, 22.942558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659348, 36.618061, 23.151701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214015, 0.730672, -0.648318,
		-0.791512, -0.259234, -0.553449,
		-0.572456, 0.631598, 0.522855,
		30.487610, 36.807541, 23.308558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658100, 36.824322, 22.466946>,  <30.888330, 36.365421, 22.942558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658100, 36.824322, 22.466946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606991, 37.017433, 22.813494>,  <30.576324, 37.133301, 23.021423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606991, 37.017433, 22.813494>,  <30.658100, 36.824322, 22.466946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606991, 37.017433, 22.813494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339358, 0.842085, -0.419200,
		-0.931939, 0.240446, -0.271432,
		-0.127774, 0.482781, 0.866369,
		30.568659, 37.162266, 23.073404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430182, 37.356163, 22.248917>,  <30.658100, 36.824322, 22.466946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430182, 37.356163, 22.248917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551165, 37.453136, 22.617643>,  <30.623755, 37.511322, 22.838879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551165, 37.453136, 22.617643>,  <30.430182, 37.356163, 22.248917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551165, 37.453136, 22.617643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329063, 0.881094, -0.339693,
		-0.894559, 0.406079, 0.186719,
		0.302459, 0.242433, 0.921816,
		30.641903, 37.525867, 22.894188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159208, 38.017860, 22.306108>,  <30.430182, 37.356163, 22.248917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159208, 38.017860, 22.306108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451012, 37.957451, 22.572945>,  <30.626093, 37.921204, 22.733046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451012, 37.957451, 22.572945>,  <30.159208, 38.017860, 22.306108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451012, 37.957451, 22.572945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407845, 0.879006, -0.247003,
		-0.549073, 0.452260, 0.702837,
		0.729508, -0.151026, 0.667090,
		30.669865, 37.912144, 22.773071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130367, 38.570175, 22.671989>,  <30.159208, 38.017860, 22.306108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130367, 38.570175, 22.671989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493778, 38.416969, 22.738783>,  <30.711824, 38.325047, 22.778858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493778, 38.416969, 22.738783>,  <30.130367, 38.570175, 22.671989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493778, 38.416969, 22.738783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411730, 0.888696, -0.201738,
		-0.071130, 0.252036, 0.965100,
		0.908526, -0.383011, 0.166983,
		30.766336, 38.302067, 22.788877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437849, 38.964294, 23.184145>,  <30.130367, 38.570175, 22.671989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437849, 38.964294, 23.184145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710688, 38.782131, 22.955286>,  <30.874392, 38.672832, 22.817970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710688, 38.782131, 22.955286>,  <30.437849, 38.964294, 23.184145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710688, 38.782131, 22.955286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337892, 0.890155, -0.305700,
		0.648516, 0.015194, 0.761050,
		0.682097, -0.455404, -0.572146,
		30.915318, 38.645512, 22.783642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066526, 39.286503, 23.338406>,  <30.437849, 38.964294, 23.184145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066526, 39.286503, 23.338406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143049, 39.118393, 22.983604>,  <31.188963, 39.017529, 22.770723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143049, 39.118393, 22.983604>,  <31.066526, 39.286503, 23.338406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143049, 39.118393, 22.983604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468054, 0.833388, -0.293921,
		0.862744, -0.358935, 0.356143,
		0.191307, -0.420273, -0.887002,
		31.200441, 38.992310, 22.717505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742325, 39.616512, 23.218420>,  <31.066526, 39.286503, 23.338406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742325, 39.616512, 23.218420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597128, 39.456245, 22.881918>,  <31.510010, 39.360085, 22.680017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597128, 39.456245, 22.881918>,  <31.742325, 39.616512, 23.218420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597128, 39.456245, 22.881918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430855, 0.728347, -0.532798,
		0.826198, -0.555859, -0.091754,
		-0.362989, -0.400664, -0.841254,
		31.488232, 39.336048, 22.629541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340088, 39.477119, 22.743771>,  <31.742325, 39.616512, 23.218420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340088, 39.477119, 22.743771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010094, 39.517139, 22.521278>,  <31.812098, 39.541153, 22.387783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010094, 39.517139, 22.521278>,  <32.340088, 39.477119, 22.743771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010094, 39.517139, 22.521278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395096, 0.805838, -0.441049,
		0.404103, -0.583622, -0.704334,
		-0.824984, 0.100050, -0.556229,
		31.762598, 39.547153, 22.354410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520294, 39.533760, 22.009804>,  <32.340088, 39.477119, 22.743771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520294, 39.533760, 22.009804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151917, 39.687809, 22.033596>,  <31.930889, 39.780239, 22.047873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151917, 39.687809, 22.033596>,  <32.520294, 39.533760, 22.009804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151917, 39.687809, 22.033596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329343, 0.850803, -0.409473,
		-0.208306, -0.357513, -0.910381,
		-0.920946, 0.385123, 0.059483,
		31.875633, 39.803345, 22.051441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464020, 39.962704, 21.347065>,  <32.520294, 39.533760, 22.009804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464020, 39.962704, 21.347065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170372, 40.087696, 21.588200>,  <31.994183, 40.162693, 21.732882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170372, 40.087696, 21.588200>,  <32.464020, 39.962704, 21.347065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170372, 40.087696, 21.588200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233076, 0.949839, -0.208521,
		-0.637760, -0.012573, -0.770133,
		-0.734124, 0.312486, 0.602839,
		31.950134, 40.181442, 21.769051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075409, 40.458794, 20.998589>,  <32.464020, 39.962704, 21.347065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075409, 40.458794, 20.998589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013603, 40.535309, 21.386307>,  <31.976521, 40.581219, 21.618938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013603, 40.535309, 21.386307>,  <32.075409, 40.458794, 20.998589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013603, 40.535309, 21.386307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236756, 0.959662, -0.151644,
		-0.959204, 0.206056, -0.193569,
		-0.154514, 0.191286, 0.969296,
		31.967249, 40.592693, 21.677095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861963, 41.164284, 20.917707>,  <32.075409, 40.458794, 20.998589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861963, 41.164284, 20.917707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928251, 41.104771, 21.307661>,  <31.968023, 41.069065, 21.541634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928251, 41.104771, 21.307661>,  <31.861963, 41.164284, 20.917707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928251, 41.104771, 21.307661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142414, 0.981803, 0.125626,
		-0.975836, 0.118019, 0.183890,
		0.165717, -0.148779, 0.974886,
		31.977966, 41.060139, 21.600126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703135, 41.673214, 21.592800>,  <31.861963, 41.164284, 20.917707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703135, 41.673214, 21.592800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806192, 42.059574, 21.582493>,  <31.868027, 42.291389, 21.576309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806192, 42.059574, 21.582493>,  <31.703135, 41.673214, 21.592800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806192, 42.059574, 21.582493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119053, -0.058198, -0.991181,
		-0.958877, 0.252305, -0.129987,
		0.257645, 0.965896, -0.025767,
		31.883486, 42.349342, 21.574762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303858, 41.851936, 21.099897>,  <31.703135, 41.673214, 21.592800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303858, 41.851936, 21.099897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626165, 42.084801, 21.143389>,  <31.819550, 42.224522, 21.169483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626165, 42.084801, 21.143389>,  <31.303858, 41.851936, 21.099897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626165, 42.084801, 21.143389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220484, -0.124491, -0.967414,
		-0.549657, 0.803485, -0.228669,
		0.805769, 0.582163, 0.108728,
		31.867897, 42.259449, 21.176006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454954, 41.954327, 20.486111>,  <31.303858, 41.851936, 21.099897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454954, 41.954327, 20.486111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774694, 42.082039, 20.689716>,  <31.966539, 42.158665, 20.811880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774694, 42.082039, 20.689716>,  <31.454954, 41.954327, 20.486111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774694, 42.082039, 20.689716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586843, -0.232919, -0.775477,
		-0.129036, 0.918591, -0.373552,
		0.799353, 0.319281, 0.509014,
		32.014500, 42.177822, 20.842421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633759, 42.559464, 20.159855>,  <31.454954, 41.954327, 20.486111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633759, 42.559464, 20.159855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943249, 42.349415, 20.301611>,  <32.128944, 42.223385, 20.386665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943249, 42.349415, 20.301611>,  <31.633759, 42.559464, 20.159855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943249, 42.349415, 20.301611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332952, -0.138853, -0.932664,
		0.538972, 0.839622, 0.067407,
		0.773726, -0.525124, 0.354392,
		32.175365, 42.191879, 20.407928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309727, 42.963318, 19.941383>,  <31.633759, 42.559464, 20.159855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309727, 42.963318, 19.941383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322460, 42.564442, 19.968500>,  <32.330101, 42.325115, 19.984770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322460, 42.564442, 19.968500>,  <32.309727, 42.963318, 19.941383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322460, 42.564442, 19.968500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284954, -0.055955, -0.956906,
		0.958012, 0.049784, 0.282373,
		0.031838, -0.997191, 0.067792,
		32.332012, 42.265285, 19.988838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913853, 42.776657, 19.560169>,  <32.309727, 42.963318, 19.941383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913853, 42.776657, 19.560169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712177, 42.431477, 19.573517>,  <32.591171, 42.224369, 19.581526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712177, 42.431477, 19.573517>,  <32.913853, 42.776657, 19.560169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712177, 42.431477, 19.573517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164631, -0.133976, -0.977214,
		0.847758, -0.487203, 0.209617,
		-0.504185, -0.862951, 0.033370,
		32.560921, 42.172592, 19.583529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447845, 42.957058, 19.926785>,  <32.913853, 42.776657, 19.560169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447845, 42.957058, 19.926785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227146, 42.623459, 19.924795>,  <33.094727, 42.423302, 19.923601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227146, 42.623459, 19.924795>,  <33.447845, 42.957058, 19.926785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227146, 42.623459, 19.924795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628870, -0.419948, 0.654345,
		-0.547808, 0.357909, 0.756180,
		-0.551752, -0.833994, -0.004972,
		33.061619, 42.373260, 19.923304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252094, 42.820126, 20.643341>,  <33.447845, 42.957058, 19.926785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252094, 42.820126, 20.643341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310577, 42.501423, 20.408802>,  <33.345665, 42.310200, 20.268080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310577, 42.501423, 20.408802>,  <33.252094, 42.820126, 20.643341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310577, 42.501423, 20.408802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659800, -0.363087, 0.657900,
		-0.737081, -0.483058, 0.472616,
		0.146203, -0.796758, -0.586346,
		33.354439, 42.262394, 20.232899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148628, 42.417145, 21.206867>,  <33.252094, 42.820126, 20.643341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148628, 42.417145, 21.206867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784786, 42.406109, 21.041044>,  <32.566483, 42.399487, 20.941551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784786, 42.406109, 21.041044>,  <33.148628, 42.417145, 21.206867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784786, 42.406109, 21.041044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394054, 0.373518, 0.839765,
		0.131676, 0.927212, -0.350626,
		-0.909606, -0.027589, -0.414555,
		32.511906, 42.397831, 20.916677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841808, 43.122349, 21.307589>,  <33.148628, 42.417145, 21.206867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841808, 43.122349, 21.307589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548321, 42.855789, 21.254553>,  <32.372231, 42.695854, 21.222733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548321, 42.855789, 21.254553>,  <32.841808, 43.122349, 21.307589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548321, 42.855789, 21.254553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432180, 0.307145, 0.847870,
		-0.524292, 0.679397, -0.513359,
		-0.733715, -0.666395, -0.132588,
		32.328205, 42.655872, 21.214777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212860, 43.575562, 21.343685>,  <32.841808, 43.122349, 21.307589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212860, 43.575562, 21.343685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112297, 43.195854, 21.419250>,  <32.051960, 42.968029, 21.464590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112297, 43.195854, 21.419250>,  <32.212860, 43.575562, 21.343685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112297, 43.195854, 21.419250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307562, 0.263418, 0.914339,
		-0.917715, 0.171766, -0.358183,
		-0.251404, -0.949267, 0.188915,
		32.036877, 42.911076, 21.475925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693195, 43.584450, 21.849512>,  <32.212860, 43.575562, 21.343685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693195, 43.584450, 21.849512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885777, 43.233932, 21.842352>,  <32.001324, 43.023624, 21.838055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885777, 43.233932, 21.842352>,  <31.693195, 43.584450, 21.849512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885777, 43.233932, 21.842352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173095, -0.115087, 0.978158,
		-0.859209, -0.467839, -0.207090,
		0.481453, -0.876289, -0.017903,
		32.030212, 42.971046, 21.836981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317631, 43.080978, 22.234606>,  <31.693195, 43.584450, 21.849512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317631, 43.080978, 22.234606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696136, 42.951714, 22.239458>,  <31.923241, 42.874153, 22.242369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696136, 42.951714, 22.239458>,  <31.317631, 43.080978, 22.234606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696136, 42.951714, 22.239458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138720, -0.371738, 0.917915,
		-0.292127, -0.870274, -0.396592,
		0.946265, -0.323163, 0.012130,
		31.980017, 42.854763, 22.243097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195610, 42.469204, 22.555817>,  <31.317631, 43.080978, 22.234606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195610, 42.469204, 22.555817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594240, 42.501297, 22.563829>,  <31.833418, 42.520554, 22.568636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594240, 42.501297, 22.563829>,  <31.195610, 42.469204, 22.555817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594240, 42.501297, 22.563829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004534, -0.294877, 0.955524,
		0.082570, -0.952161, -0.294231,
		0.996575, 0.080232, 0.020031,
		31.893213, 42.525368, 22.569838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515413, 41.791611, 22.665512>,  <31.195610, 42.469204, 22.555817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515413, 41.791611, 22.665512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744776, 42.081711, 22.817944>,  <31.882393, 42.255772, 22.909403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744776, 42.081711, 22.817944>,  <31.515413, 41.791611, 22.665512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744776, 42.081711, 22.817944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038094, -0.441037, 0.896680,
		0.818385, -0.528679, -0.225267,
		0.573407, 0.725248, 0.381078,
		31.916798, 42.299286, 22.932266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889503, 41.449810, 23.135513>,  <31.515413, 41.791611, 22.665512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889503, 41.449810, 23.135513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970848, 41.829857, 23.230106>,  <32.019653, 42.057884, 23.286861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970848, 41.829857, 23.230106>,  <31.889503, 41.449810, 23.135513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970848, 41.829857, 23.230106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035463, -0.234224, 0.971536,
		0.978461, -0.205959, -0.013938,
		0.203362, 0.950116, 0.236483,
		32.031857, 42.114891, 23.301052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528370, 41.366348, 23.747114>,  <31.889503, 41.449810, 23.135513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528370, 41.366348, 23.747114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347553, 41.721638, 23.779919>,  <32.239063, 41.934811, 23.799601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347553, 41.721638, 23.779919>,  <32.528370, 41.366348, 23.747114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347553, 41.721638, 23.779919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031591, -0.107823, 0.993668,
		0.891438, 0.446588, 0.076800,
		-0.452041, 0.888219, 0.082009,
		32.211941, 41.988102, 23.804522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792847, 41.579678, 24.355341>,  <32.528370, 41.366348, 23.747114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792847, 41.579678, 24.355341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490788, 41.835140, 24.296183>,  <32.309551, 41.988419, 24.260687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490788, 41.835140, 24.296183>,  <32.792847, 41.579678, 24.355341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490788, 41.835140, 24.296183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352147, -0.204894, 0.913242,
		0.552943, 0.741713, 0.379625,
		-0.755147, 0.638655, -0.147898,
		32.264244, 42.026737, 24.251814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809223, 42.088615, 24.968195>,  <32.792847, 41.579678, 24.355341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809223, 42.088615, 24.968195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439785, 42.056286, 24.818291>,  <32.218124, 42.036888, 24.728348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439785, 42.056286, 24.818291>,  <32.809223, 42.088615, 24.968195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439785, 42.056286, 24.818291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360650, -0.148405, 0.920819,
		-0.130040, 0.985619, 0.107917,
		-0.923592, -0.080823, -0.374761,
		32.162708, 42.032040, 24.705862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202351, 42.445469, 25.460682>,  <32.809223, 42.088615, 24.968195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202351, 42.445469, 25.460682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004845, 42.180882, 25.234882>,  <31.886343, 42.022129, 25.099401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004845, 42.180882, 25.234882>,  <32.202351, 42.445469, 25.460682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004845, 42.180882, 25.234882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522481, -0.293253, 0.800635,
		-0.695136, 0.690262, -0.200808,
		-0.493761, -0.661468, -0.564500,
		31.856716, 41.982441, 25.065533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484638, 42.508488, 25.692825>,  <32.202351, 42.445469, 25.460682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484638, 42.508488, 25.692825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531040, 42.151535, 25.518381>,  <31.558882, 41.937363, 25.413715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531040, 42.151535, 25.518381>,  <31.484638, 42.508488, 25.692825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531040, 42.151535, 25.518381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240798, -0.451241, 0.859301,
		-0.963618, 0.005332, -0.267230,
		0.116004, -0.892386, -0.436108,
		31.565842, 41.883820, 25.387548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002474, 42.016075, 26.087240>,  <31.484638, 42.508488, 25.692825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002474, 42.016075, 26.087240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237082, 41.761681, 25.886631>,  <31.377846, 41.609043, 25.766266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237082, 41.761681, 25.886631>,  <31.002474, 42.016075, 26.087240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237082, 41.761681, 25.886631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020546, -0.630694, 0.775760,
		-0.809676, -0.444692, -0.382980,
		0.586517, -0.635982, -0.501521,
		31.413036, 41.570885, 25.736176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722876, 41.344971, 26.175949>,  <31.002474, 42.016075, 26.087240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722876, 41.344971, 26.175949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106073, 41.316288, 26.064882>,  <31.335993, 41.299076, 25.998241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106073, 41.316288, 26.064882>,  <30.722876, 41.344971, 26.175949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106073, 41.316288, 26.064882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112568, -0.796493, 0.594077,
		-0.263763, -0.600380, -0.754965,
		0.957997, -0.071710, -0.277669,
		31.393473, 41.294773, 25.981581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806423, 40.633846, 26.122917>,  <30.722876, 41.344971, 26.175949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806423, 40.633846, 26.122917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173613, 40.781010, 26.182201>,  <31.393927, 40.869308, 26.217772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173613, 40.781010, 26.182201>,  <30.806423, 40.633846, 26.122917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173613, 40.781010, 26.182201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188045, -0.732681, 0.654078,
		0.349231, -0.572557, -0.741766,
		0.917975, 0.367909, 0.148208,
		31.449005, 40.891384, 26.226664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181549, 40.058029, 26.078337>,  <30.806423, 40.633846, 26.122917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181549, 40.058029, 26.078337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398766, 40.324245, 26.283144>,  <31.529095, 40.483974, 26.406029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398766, 40.324245, 26.283144>,  <31.181549, 40.058029, 26.078337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398766, 40.324245, 26.283144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176772, -0.686701, 0.705120,
		0.820888, -0.292399, -0.490556,
		0.543042, 0.665541, 0.512016,
		31.561678, 40.523907, 26.436749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741184, 39.641216, 26.238079>,  <31.181549, 40.058029, 26.078337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741184, 39.641216, 26.238079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748171, 39.961586, 26.477484>,  <31.752363, 40.153809, 26.621126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748171, 39.961586, 26.477484>,  <31.741184, 39.641216, 26.238079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748171, 39.961586, 26.477484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373916, -0.560402, 0.739011,
		0.927298, 0.210887, -0.309265,
		0.017465, 0.800922, 0.598514,
		31.753410, 40.201862, 26.657038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435062, 39.836319, 26.543421>,  <31.741184, 39.641216, 26.238079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435062, 39.836319, 26.543421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139042, 39.956406, 26.784151>,  <31.961430, 40.028458, 26.928589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139042, 39.956406, 26.784151>,  <32.435062, 39.836319, 26.543421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139042, 39.956406, 26.784151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353429, -0.587722, 0.727785,
		0.572196, 0.751302, 0.328842,
		-0.740054, 0.300213, 0.601824,
		31.917027, 40.046471, 26.964699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605888, 39.751469, 27.285015>,  <32.435062, 39.836319, 26.543421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605888, 39.751469, 27.285015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218246, 39.836597, 27.334871>,  <31.985661, 39.887676, 27.364784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218246, 39.836597, 27.334871>,  <32.605888, 39.751469, 27.285015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218246, 39.836597, 27.334871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060044, -0.693741, 0.717718,
		0.239216, 0.688062, 0.685089,
		-0.969108, 0.212825, 0.124640,
		31.927513, 39.900444, 27.372263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604782, 39.482891, 27.932642>,  <32.605888, 39.751469, 27.285015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604782, 39.482891, 27.932642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218937, 39.555897, 27.856527>,  <31.987431, 39.599701, 27.810860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218937, 39.555897, 27.856527>,  <32.604782, 39.482891, 27.932642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218937, 39.555897, 27.856527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262322, -0.591456, 0.762474,
		0.026620, 0.785409, 0.618405,
		-0.964613, 0.182518, -0.190286,
		31.929552, 39.610653, 27.799442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282631, 39.711632, 28.568319>,  <32.604782, 39.482891, 27.932642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282631, 39.711632, 28.568319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009918, 39.552151, 28.322973>,  <31.846291, 39.456463, 28.175766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009918, 39.552151, 28.322973>,  <32.282631, 39.711632, 28.568319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009918, 39.552151, 28.322973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495226, -0.365579, 0.788101,
		-0.538450, 0.841064, 0.051797,
		-0.681779, -0.398702, -0.613363,
		31.805384, 39.432541, 28.138964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626308, 40.012177, 28.887548>,  <32.282631, 39.711632, 28.568319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626308, 40.012177, 28.887548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536610, 39.702347, 28.650991>,  <31.482790, 39.516449, 28.509056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536610, 39.702347, 28.650991>,  <31.626308, 40.012177, 28.887548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536610, 39.702347, 28.650991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587009, -0.377047, 0.716419,
		-0.777904, 0.507807, -0.370132,
		-0.224245, -0.774576, -0.591393,
		31.469336, 39.469975, 28.473574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952629, 40.074207, 28.720463>,  <31.626308, 40.012177, 28.887548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952629, 40.074207, 28.720463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039812, 39.688171, 28.662354>,  <31.092123, 39.456551, 28.627487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039812, 39.688171, 28.662354>,  <30.952629, 40.074207, 28.720463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039812, 39.688171, 28.662354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564773, -0.246120, 0.787691,
		-0.795943, -0.089638, -0.598698,
		0.217959, -0.965085, -0.145273,
		31.105200, 39.398647, 28.618773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358999, 39.649796, 28.750656>,  <30.952629, 40.074207, 28.720463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358999, 39.649796, 28.750656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661146, 39.396107, 28.816608>,  <30.842434, 39.243893, 28.856180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661146, 39.396107, 28.816608>,  <30.358999, 39.649796, 28.750656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661146, 39.396107, 28.816608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516590, -0.421514, 0.745292,
		-0.403173, -0.648151, -0.646028,
		0.755372, -0.634213, 0.164885,
		30.887756, 39.205841, 28.866072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031706, 39.006638, 28.835285>,  <30.358999, 39.649796, 28.750656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031706, 39.006638, 28.835285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386412, 38.971508, 29.016806>,  <30.599236, 38.950432, 29.125717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386412, 38.971508, 29.016806>,  <30.031706, 39.006638, 28.835285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386412, 38.971508, 29.016806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400276, -0.636862, 0.658928,
		0.231141, -0.765960, -0.599899,
		0.886765, -0.087820, 0.453800,
		30.652441, 38.945164, 29.152946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774948, 38.511478, 29.276346>,  <30.031706, 39.006638, 28.835285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774948, 38.511478, 29.276346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147650, 38.580116, 29.404341>,  <30.371271, 38.621300, 29.481138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147650, 38.580116, 29.404341>,  <29.774948, 38.511478, 29.276346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147650, 38.580116, 29.404341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139443, -0.644588, 0.751706,
		0.335249, -0.745024, -0.576669,
		0.931753, 0.171596, 0.319986,
		30.427176, 38.631596, 29.500336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980429, 37.904961, 29.384546>,  <29.774948, 38.511478, 29.276346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980429, 37.904961, 29.384546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235666, 38.126411, 29.598585>,  <30.388809, 38.259281, 29.727009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235666, 38.126411, 29.598585>,  <29.980429, 37.904961, 29.384546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235666, 38.126411, 29.598585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144535, -0.596485, 0.789503,
		0.756269, -0.581119, -0.300596,
		0.638096, 0.553631, 0.535095,
		30.427095, 38.292500, 29.759113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564285, 37.496738, 29.754177>,  <29.980429, 37.904961, 29.384546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564285, 37.496738, 29.754177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528776, 37.830624, 29.971573>,  <30.507471, 38.030952, 30.102011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528776, 37.830624, 29.971573>,  <30.564285, 37.496738, 29.754177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528776, 37.830624, 29.971573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177554, -0.550166, 0.815961,
		0.980099, -0.024064, 0.197045,
		-0.088772, 0.834709, 0.543490,
		30.502144, 38.081036, 30.134621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848307, 37.350826, 30.354916>,  <30.564285, 37.496738, 29.754177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848307, 37.350826, 30.354916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614061, 37.662640, 30.443808>,  <30.473515, 37.849728, 30.497143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614061, 37.662640, 30.443808>,  <30.848307, 37.350826, 30.354916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614061, 37.662640, 30.443808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216936, -0.414880, 0.883637,
		0.781024, 0.469257, 0.412067,
		-0.585611, 0.779534, 0.222232,
		30.438377, 37.896500, 30.510477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012997, 37.600513, 31.123590>,  <30.848307, 37.350826, 30.354916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012997, 37.600513, 31.123590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645477, 37.734341, 31.039804>,  <30.424965, 37.814636, 30.989532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645477, 37.734341, 31.039804>,  <31.012997, 37.600513, 31.123590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645477, 37.734341, 31.039804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314091, -0.298269, 0.901323,
		0.239076, 0.893924, 0.379134,
		-0.918798, 0.334567, -0.209464,
		30.369839, 37.834709, 30.976965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814047, 38.010792, 31.696268>,  <31.012997, 37.600513, 31.123590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814047, 38.010792, 31.696268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473680, 37.912758, 31.510418>,  <30.269461, 37.853939, 31.398909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473680, 37.912758, 31.510418>,  <30.814047, 38.010792, 31.696268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473680, 37.912758, 31.510418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407970, -0.248858, 0.878425,
		-0.330912, 0.937019, 0.111771,
		-0.850916, -0.245082, -0.464626,
		30.218407, 37.839233, 31.371031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354008, 38.276859, 32.131474>,  <30.814047, 38.010792, 31.696268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354008, 38.276859, 32.131474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097956, 38.066078, 31.907846>,  <29.944324, 37.939610, 31.773670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097956, 38.066078, 31.907846>,  <30.354008, 38.276859, 32.131474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097956, 38.066078, 31.907846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521238, -0.236706, 0.819928,
		-0.564400, 0.816264, -0.123147,
		-0.640128, -0.526956, -0.559065,
		29.905918, 37.907990, 31.740128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655451, 38.333630, 32.506027>,  <30.354008, 38.276859, 32.131474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655451, 38.333630, 32.506027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649786, 38.016037, 32.262917>,  <29.646387, 37.825481, 32.117050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649786, 38.016037, 32.262917>,  <29.655451, 38.333630, 32.506027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649786, 38.016037, 32.262917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474810, -0.529596, 0.702911,
		-0.879974, 0.298536, -0.369488,
		-0.014165, -0.793980, -0.607779,
		29.645536, 37.777843, 32.080582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948671, 38.035316, 32.528339>,  <29.655451, 38.333630, 32.506027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948671, 38.035316, 32.528339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195400, 37.738556, 32.423187>,  <29.343437, 37.560497, 32.360096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195400, 37.738556, 32.423187>,  <28.948671, 38.035316, 32.528339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195400, 37.738556, 32.423187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397219, -0.581748, 0.709779,
		-0.679521, -0.333385, -0.653534,
		0.616822, -0.741905, -0.262883,
		29.380447, 37.515984, 32.344322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623249, 37.369499, 32.748768>,  <28.948671, 38.035316, 32.528339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623249, 37.369499, 32.748768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997644, 37.242260, 32.688450>,  <29.222282, 37.165916, 32.652260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997644, 37.242260, 32.688450>,  <28.623249, 37.369499, 32.748768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997644, 37.242260, 32.688450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126481, -0.703642, 0.699207,
		-0.328522, -0.635378, -0.698834,
		0.935989, -0.318094, -0.150798,
		29.278440, 37.146832, 32.643211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637442, 36.543709, 32.566231>,  <28.623249, 37.369499, 32.748768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637442, 36.543709, 32.566231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964670, 36.694748, 32.739750>,  <29.161007, 36.785370, 32.843861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964670, 36.694748, 32.739750>,  <28.637442, 36.543709, 32.566231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964670, 36.694748, 32.739750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003302, -0.757354, 0.652996,
		0.575109, -0.532764, -0.620815,
		0.818070, 0.377594, 0.433802,
		29.210091, 36.808025, 32.869892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999420, 35.990479, 32.732227>,  <28.637442, 36.543709, 32.566231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999420, 35.990479, 32.732227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179564, 36.244125, 32.983646>,  <29.287649, 36.396313, 33.134499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179564, 36.244125, 32.983646>,  <28.999420, 35.990479, 32.732227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179564, 36.244125, 32.983646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020358, -0.711088, 0.702809,
		0.892617, -0.303719, -0.333153,
		0.450357, 0.634121, 0.628545,
		29.314671, 36.434361, 33.172211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432800, 35.585190, 33.060120>,  <28.999420, 35.990479, 32.732227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432800, 35.585190, 33.060120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425852, 35.918621, 33.280972>,  <29.421682, 36.118679, 33.413483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425852, 35.918621, 33.280972>,  <29.432800, 35.585190, 33.060120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425852, 35.918621, 33.280972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026103, -0.552398, 0.833172,
		0.999508, 0.000062, 0.031356,
		-0.017373, 0.833580, 0.552125,
		29.420639, 36.168694, 33.446609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017418, 35.523270, 33.419903>,  <29.432800, 35.585190, 33.060120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017418, 35.523270, 33.419903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802992, 35.794827, 33.620598>,  <29.674335, 35.957760, 33.741016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802992, 35.794827, 33.620598>,  <30.017418, 35.523270, 33.419903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802992, 35.794827, 33.620598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187497, -0.483759, 0.854881,
		0.823091, 0.552347, 0.132036,
		-0.536065, 0.678889, 0.501741,
		29.642172, 35.998493, 33.771122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708513, 35.547325, 33.097752>,  <30.017418, 35.523270, 33.419903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708513, 35.547325, 33.097752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848459, 35.655605, 33.456486>,  <30.932426, 35.720573, 33.671726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848459, 35.655605, 33.456486>,  <30.708513, 35.547325, 33.097752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848459, 35.655605, 33.456486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794701, 0.421142, -0.437137,
		-0.496030, 0.865655, -0.067785,
		0.349863, 0.270703, 0.896837,
		30.953419, 35.736816, 33.725536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696297, 36.155182, 32.976242>,  <30.708513, 35.547325, 33.097752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696297, 36.155182, 32.976242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952309, 36.039051, 33.260796>,  <31.105915, 35.969372, 33.431530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952309, 36.039051, 33.260796>,  <30.696297, 36.155182, 32.976242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952309, 36.039051, 33.260796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736652, 0.495054, -0.460723,
		-0.218417, 0.818922, 0.530717,
		0.640030, -0.290323, 0.711389,
		31.144318, 35.951954, 33.474213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010174, 36.748390, 33.055714>,  <30.696297, 36.155182, 32.976242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010174, 36.748390, 33.055714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244623, 36.480808, 33.238560>,  <31.385292, 36.320259, 33.348267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244623, 36.480808, 33.238560>,  <31.010174, 36.748390, 33.055714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244623, 36.480808, 33.238560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805936, 0.539329, -0.244114,
		-0.083234, 0.511486, 0.855251,
		0.586123, -0.668959, 0.457115,
		31.420460, 36.280121, 33.375694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531841, 37.123737, 33.464703>,  <31.010174, 36.748390, 33.055714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531841, 37.123737, 33.464703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693653, 36.759472, 33.431137>,  <31.790741, 36.540913, 33.410999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693653, 36.759472, 33.431137>,  <31.531841, 37.123737, 33.464703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693653, 36.759472, 33.431137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809379, 0.399223, -0.430729,
		0.425750, 0.106327, 0.898572,
		0.404529, -0.910667, -0.083910,
		31.815012, 36.486271, 33.405964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211563, 37.111366, 33.860096>,  <31.531841, 37.123737, 33.464703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211563, 37.111366, 33.860096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217449, 36.823109, 33.582836>,  <32.220982, 36.650154, 33.416481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217449, 36.823109, 33.582836>,  <32.211563, 37.111366, 33.860096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217449, 36.823109, 33.582836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652182, 0.532382, -0.539655,
		0.757920, -0.444121, 0.477823,
		0.014712, -0.720643, -0.693151,
		32.221863, 36.606915, 33.374889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025078, 37.033455, 33.610184>,  <32.211563, 37.111366, 33.860096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025078, 37.033455, 33.610184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763737, 36.883083, 33.347336>,  <32.606934, 36.792862, 33.189625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763737, 36.883083, 33.347336>,  <33.025078, 37.033455, 33.610184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763737, 36.883083, 33.347336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590916, 0.289349, -0.753058,
		0.473231, -0.880317, 0.033093,
		-0.653354, -0.375926, -0.657122,
		32.567730, 36.770306, 33.150200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486462, 36.816444, 33.009354>,  <33.025078, 37.033455, 33.610184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486462, 36.816444, 33.009354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127003, 36.832249, 32.834595>,  <32.911327, 36.841732, 32.729740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127003, 36.832249, 32.834595>,  <33.486462, 36.816444, 33.009354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127003, 36.832249, 32.834595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422101, 0.349078, -0.836645,
		0.119455, -0.936261, -0.330374,
		-0.898644, 0.039510, -0.436896,
		32.857410, 36.844101, 32.703526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663113, 36.612415, 32.362408>,  <33.486462, 36.816444, 33.009354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663113, 36.612415, 32.362408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320995, 36.818111, 32.337029>,  <33.115723, 36.941528, 32.321800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320995, 36.818111, 32.337029>,  <33.663113, 36.612415, 32.362408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320995, 36.818111, 32.337029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397488, 0.572658, -0.716984,
		-0.332370, -0.638452, -0.694197,
		-0.855297, 0.514239, -0.063443,
		33.064407, 36.972382, 32.317997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611443, 36.689495, 31.723417>,  <33.663113, 36.612415, 32.362408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611443, 36.689495, 31.723417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311806, 36.939529, 31.811171>,  <33.132023, 37.089550, 31.863823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311806, 36.939529, 31.811171>,  <33.611443, 36.689495, 31.723417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311806, 36.939529, 31.811171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273817, 0.593703, -0.756664,
		-0.603227, -0.506742, -0.615898,
		-0.749093, 0.625084, 0.219383,
		33.087078, 37.127056, 31.876986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174652, 36.870213, 31.130201>,  <33.611443, 36.689495, 31.723417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174652, 36.870213, 31.130201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152340, 37.173363, 31.390205>,  <33.138950, 37.355251, 31.546207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152340, 37.173363, 31.390205>,  <33.174652, 36.870213, 31.130201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152340, 37.173363, 31.390205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258465, 0.639795, -0.723781,
		-0.964409, 0.127631, -0.231574,
		-0.055783, 0.757874, 0.650012,
		33.135605, 37.400726, 31.585209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773510, 37.330593, 30.752735>,  <33.174652, 36.870213, 31.130201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773510, 37.330593, 30.752735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951412, 37.530525, 31.050018>,  <33.058155, 37.650482, 31.228388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951412, 37.530525, 31.050018>,  <32.773510, 37.330593, 30.752735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951412, 37.530525, 31.050018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314545, 0.689777, -0.652126,
		-0.838600, 0.523813, 0.149567,
		0.444760, 0.499827, 0.743210,
		33.084839, 37.680473, 31.272982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645298, 37.966385, 30.600227>,  <32.773510, 37.330593, 30.752735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645298, 37.966385, 30.600227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969810, 37.979427, 30.833723>,  <33.164520, 37.987255, 30.973820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969810, 37.979427, 30.833723>,  <32.645298, 37.966385, 30.600227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969810, 37.979427, 30.833723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368034, 0.747312, -0.553242,
		-0.454276, 0.663673, 0.594282,
		0.811286, 0.032608, 0.583740,
		33.213196, 37.989208, 31.008844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790810, 38.730556, 30.812759>,  <32.645298, 37.966385, 30.600227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790810, 38.730556, 30.812759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135761, 38.530876, 30.846443>,  <33.342731, 38.411068, 30.866653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135761, 38.530876, 30.846443>,  <32.790810, 38.730556, 30.812759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135761, 38.530876, 30.846443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493643, 0.792286, -0.358609,
		0.112299, 0.350828, 0.929682,
		0.862384, -0.499202, 0.084211,
		33.394478, 38.381115, 30.871706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342709, 39.124573, 31.250805>,  <32.790810, 38.730556, 30.812759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342709, 39.124573, 31.250805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507271, 38.871040, 30.988810>,  <33.606007, 38.718922, 30.831614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507271, 38.871040, 30.988810>,  <33.342709, 39.124573, 31.250805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507271, 38.871040, 30.988810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489590, 0.759819, -0.427758,
		0.768796, -0.144693, 0.622910,
		0.411405, -0.633829, -0.654986,
		33.630692, 38.680893, 30.792315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931126, 39.456837, 31.146088>,  <33.342709, 39.124573, 31.250805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931126, 39.456837, 31.146088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911201, 39.194637, 30.844666>,  <33.899246, 39.037319, 30.663813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911201, 39.194637, 30.844666>,  <33.931126, 39.456837, 31.146088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911201, 39.194637, 30.844666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462552, 0.653559, -0.599088,
		0.885192, -0.378402, 0.270643,
		-0.049815, -0.655494, -0.753555,
		33.896255, 38.997990, 30.618599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559944, 39.587421, 30.858479>,  <33.931126, 39.456837, 31.146088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559944, 39.587421, 30.858479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356647, 39.414425, 30.560581>,  <34.234669, 39.310627, 30.381844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356647, 39.414425, 30.560581>,  <34.559944, 39.587421, 30.858479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356647, 39.414425, 30.560581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372268, 0.669469, -0.642829,
		0.776601, -0.603955, -0.179246,
		-0.508239, -0.432494, -0.744743,
		34.204174, 39.284676, 30.337158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006989, 39.471836, 30.197697>,  <34.559944, 39.587421, 30.858479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006989, 39.471836, 30.197697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619503, 39.495407, 30.101269>,  <34.387012, 39.509552, 30.043411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619503, 39.495407, 30.101269>,  <35.006989, 39.471836, 30.197697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619503, 39.495407, 30.101269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198090, 0.768770, -0.608073,
		0.149495, -0.636804, -0.756394,
		-0.968717, 0.058930, -0.241071,
		34.328888, 39.513084, 30.028948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006866, 39.547840, 29.498404>,  <35.006989, 39.471836, 30.197697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006866, 39.547840, 29.498404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626534, 39.662102, 29.546274>,  <34.398335, 39.730659, 29.574997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626534, 39.662102, 29.546274>,  <35.006866, 39.547840, 29.498404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626534, 39.662102, 29.546274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072057, 0.579842, -0.811536,
		-0.301216, -0.763008, -0.571915,
		-0.950829, 0.285658, 0.119677,
		34.341286, 39.747799, 29.582178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664402, 39.383911, 28.865320>,  <35.006866, 39.547840, 29.498404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664402, 39.383911, 28.865320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414639, 39.633102, 29.053791>,  <34.264782, 39.782619, 29.166874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414639, 39.633102, 29.053791>,  <34.664402, 39.383911, 28.865320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414639, 39.633102, 29.053791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182284, 0.470348, -0.863450,
		-0.759531, -0.625033, -0.180130,
		-0.624408, 0.622982, 0.471177,
		34.227318, 39.819996, 29.195145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972519, 39.474476, 28.480391>,  <34.664402, 39.383911, 28.865320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972519, 39.474476, 28.480391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995304, 39.790520, 28.724516>,  <34.008976, 39.980145, 28.870991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995304, 39.790520, 28.724516>,  <33.972519, 39.474476, 28.480391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995304, 39.790520, 28.724516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311896, 0.594793, -0.740906,
		-0.948407, -0.148150, 0.280313,
		0.056963, 0.790109, 0.610314,
		34.012394, 40.027554, 28.907610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355831, 39.751495, 28.389408>,  <33.972519, 39.474476, 28.480391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355831, 39.751495, 28.389408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598324, 40.032127, 28.539219>,  <33.743820, 40.200508, 28.629105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598324, 40.032127, 28.539219>,  <33.355831, 39.751495, 28.389408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598324, 40.032127, 28.539219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340733, 0.654649, -0.674786,
		-0.718599, 0.281463, 0.635920,
		0.606231, 0.701579, 0.374526,
		33.780193, 40.242599, 28.651577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009655, 40.436684, 28.268076>,  <33.355831, 39.751495, 28.389408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009655, 40.436684, 28.268076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386280, 40.549950, 28.341049>,  <33.612255, 40.617908, 28.384832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386280, 40.549950, 28.341049>,  <33.009655, 40.436684, 28.268076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386280, 40.549950, 28.341049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033658, 0.617975, -0.785477,
		-0.335154, 0.733435, 0.591392,
		0.941562, 0.283161, 0.182431,
		33.668747, 40.634899, 28.395779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008965, 41.183453, 28.025522>,  <33.009655, 40.436684, 28.268076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008965, 41.183453, 28.025522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388569, 41.057373, 28.027897>,  <33.616329, 40.981724, 28.029322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388569, 41.057373, 28.027897>,  <33.008965, 41.183453, 28.025522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388569, 41.057373, 28.027897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129241, 0.371803, -0.919271,
		0.287547, 0.873161, 0.393581,
		0.949007, -0.315201, 0.005938,
		33.673271, 40.962814, 28.029678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393414, 41.713116, 27.800493>,  <33.008965, 41.183453, 28.025522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393414, 41.713116, 27.800493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612194, 41.385952, 27.729092>,  <33.743462, 41.189655, 27.686251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612194, 41.385952, 27.729092>,  <33.393414, 41.713116, 27.800493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612194, 41.385952, 27.729092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268652, 0.373434, -0.887904,
		0.792885, 0.437688, 0.423985,
		0.546955, -0.817910, -0.178504,
		33.776279, 41.140579, 27.675541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882565, 41.961254, 27.480852>,  <33.393414, 41.713116, 27.800493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882565, 41.961254, 27.480852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929123, 41.576927, 27.380226>,  <33.957058, 41.346333, 27.319851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929123, 41.576927, 27.380226>,  <33.882565, 41.961254, 27.480852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929123, 41.576927, 27.380226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339431, 0.276518, -0.899069,
		0.933402, 0.019259, 0.358316,
		0.116396, -0.960816, -0.251565,
		33.964043, 41.288681, 27.304756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473892, 41.970016, 27.117712>,  <33.882565, 41.961254, 27.480852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473892, 41.970016, 27.117712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302311, 41.621559, 27.022127>,  <34.199360, 41.412483, 26.964777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302311, 41.621559, 27.022127>,  <34.473892, 41.970016, 27.117712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302311, 41.621559, 27.022127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190865, 0.171156, -0.966580,
		0.882932, -0.460229, 0.092853,
		-0.428955, -0.871146, -0.238961,
		34.173626, 41.360214, 26.950439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876457, 41.772285, 26.614277>,  <34.473892, 41.970016, 27.117712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876457, 41.772285, 26.614277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551628, 41.551102, 26.539690>,  <34.356731, 41.418392, 26.494938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551628, 41.551102, 26.539690>,  <34.876457, 41.772285, 26.614277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551628, 41.551102, 26.539690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231798, -0.012415, -0.972685,
		0.535542, -0.833114, 0.138258,
		-0.812074, -0.552961, -0.186466,
		34.308006, 41.385212, 26.483749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139057, 41.309364, 26.192501>,  <34.876457, 41.772285, 26.614277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139057, 41.309364, 26.192501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742428, 41.266129, 26.163954>,  <34.504448, 41.240189, 26.146826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742428, 41.266129, 26.163954>,  <35.139057, 41.309364, 26.192501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742428, 41.266129, 26.163954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072942, -0.010648, -0.997279,
		0.107036, -0.994084, 0.018442,
		-0.991576, -0.108090, -0.071371,
		34.444954, 41.233704, 26.142542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872673, 40.589031, 25.816139>,  <35.139057, 41.309364, 26.192501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872673, 40.589031, 25.816139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611176, 40.889469, 25.779310>,  <34.454277, 41.069733, 25.757214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611176, 40.889469, 25.779310>,  <34.872673, 40.589031, 25.816139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611176, 40.889469, 25.779310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138845, -0.000547, -0.990314,
		-0.743868, -0.660196, -0.103928,
		-0.653745, 0.751093, -0.092072,
		34.415051, 41.114796, 25.751688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437084, 40.424641, 25.220985>,  <34.872673, 40.589031, 25.816139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437084, 40.424641, 25.220985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407688, 40.818764, 25.282665>,  <34.390053, 41.055237, 25.319674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407688, 40.818764, 25.282665>,  <34.437084, 40.424641, 25.220985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407688, 40.818764, 25.282665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007631, 0.155168, -0.987859,
		-0.997267, -0.071418, -0.018922,
		-0.073487, 0.985303, 0.154199,
		34.385643, 41.114353, 25.328924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011608, 40.590061, 24.694004>,  <34.437084, 40.424641, 25.220985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011608, 40.590061, 24.694004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190228, 40.928516, 24.810381>,  <34.297398, 41.131588, 24.880207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190228, 40.928516, 24.810381>,  <34.011608, 40.590061, 24.694004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190228, 40.928516, 24.810381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067396, 0.356044, -0.932036,
		-0.892218, 0.396589, 0.216017,
		0.446547, 0.846138, 0.290941,
		34.324192, 41.182358, 24.897663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714695, 41.025803, 24.207197>,  <34.011608, 40.590061, 24.694004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714695, 41.025803, 24.207197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014149, 41.242451, 24.360140>,  <34.193821, 41.372440, 24.451906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014149, 41.242451, 24.360140>,  <33.714695, 41.025803, 24.207197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014149, 41.242451, 24.360140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180882, 0.387982, -0.903743,
		-0.637830, 0.745735, 0.192488,
		0.748635, 0.541617, 0.382357,
		34.238739, 41.404934, 24.474848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578247, 41.677879, 24.004454>,  <33.714695, 41.025803, 24.207197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578247, 41.677879, 24.004454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973339, 41.677505, 24.066916>,  <34.210396, 41.677280, 24.104393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973339, 41.677505, 24.066916>,  <33.578247, 41.677879, 24.004454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973339, 41.677505, 24.066916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144964, 0.377280, -0.914683,
		-0.058060, 0.926099, 0.372787,
		0.987732, -0.000934, 0.156156,
		34.269657, 41.677227, 24.113762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866234, 42.395504, 23.777037>,  <33.578247, 41.677879, 24.004454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866234, 42.395504, 23.777037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182480, 42.150639, 23.771774>,  <34.372227, 42.003719, 23.768616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182480, 42.150639, 23.771774>,  <33.866234, 42.395504, 23.777037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182480, 42.150639, 23.771774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203153, 0.282523, -0.937502,
		0.577626, 0.738533, 0.347732,
		0.790618, -0.612168, -0.013157,
		34.419666, 41.966988, 23.767828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445057, 42.823761, 23.513277>,  <33.866234, 42.395504, 23.777037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445057, 42.823761, 23.513277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531174, 42.437485, 23.455194>,  <34.582844, 42.205719, 23.420345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531174, 42.437485, 23.455194>,  <34.445057, 42.823761, 23.513277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531174, 42.437485, 23.455194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381578, 0.220064, -0.897758,
		0.898914, 0.137875, 0.415866,
		0.215295, -0.965693, -0.145209,
		34.595764, 42.147778, 23.411633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917446, 42.787422, 22.930244>,  <34.445057, 42.823761, 23.513277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917446, 42.787422, 22.930244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815308, 42.401485, 22.955141>,  <34.754025, 42.169922, 22.970079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815308, 42.401485, 22.955141>,  <34.917446, 42.787422, 22.930244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815308, 42.401485, 22.955141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082890, -0.085982, -0.992842,
		0.963290, -0.248359, 0.101931,
		-0.255346, -0.964844, 0.062239,
		34.738705, 42.112034, 22.973812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389835, 42.449059, 22.510159>,  <34.917446, 42.787422, 22.930244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389835, 42.449059, 22.510159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097595, 42.175941, 22.508356>,  <34.922253, 42.012074, 22.507275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097595, 42.175941, 22.508356>,  <35.389835, 42.449059, 22.510159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097595, 42.175941, 22.508356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153535, -0.157850, -0.975454,
		0.665320, -0.713358, 0.220157,
		-0.730600, -0.682791, -0.004505,
		34.878414, 41.971104, 22.507004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636959, 41.976521, 21.952261>,  <35.389835, 42.449059, 22.510159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636959, 41.976521, 21.952261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247040, 41.904617, 22.005119>,  <35.013088, 41.861477, 22.036835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247040, 41.904617, 22.005119>,  <35.636959, 41.976521, 21.952261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247040, 41.904617, 22.005119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080577, -0.268666, -0.959857,
		0.208041, -0.946312, 0.247410,
		-0.974795, -0.179754, 0.132145,
		34.954601, 41.850693, 22.044764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558029, 41.584320, 21.423065>,  <35.636959, 41.976521, 21.952261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558029, 41.584320, 21.423065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180496, 41.675480, 21.518761>,  <34.953976, 41.730175, 21.576178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180496, 41.675480, 21.518761>,  <35.558029, 41.584320, 21.423065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180496, 41.675480, 21.518761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289878, -0.223653, -0.930564,
		-0.158570, -0.947650, 0.277155,
		-0.943836, 0.227901, 0.239238,
		34.897346, 41.743851, 21.590532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536354, 41.652676, 20.673828>,  <35.558029, 41.584320, 21.423065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536354, 41.652676, 20.673828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768349, 41.329838, 20.629635>,  <35.907547, 41.136135, 20.603119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768349, 41.329838, 20.629635>,  <35.536354, 41.652676, 20.673828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768349, 41.329838, 20.629635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470125, -0.442384, 0.763727,
		-0.665278, -0.391012, -0.636014,
		0.579989, -0.807097, -0.110484,
		35.942345, 41.087708, 20.596489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181549, 40.960033, 20.965298>,  <35.536354, 41.652676, 20.673828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181549, 40.960033, 20.965298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565514, 40.857323, 20.920343>,  <35.795895, 40.795696, 20.893370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565514, 40.857323, 20.920343>,  <35.181549, 40.960033, 20.965298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565514, 40.857323, 20.920343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039136, -0.519812, 0.853384,
		-0.277552, -0.814776, -0.509024,
		0.959913, -0.256780, -0.112388,
		35.853489, 40.780289, 20.886627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258816, 40.209213, 21.067272>,  <35.181549, 40.960033, 20.965298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258816, 40.209213, 21.067272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639759, 40.318020, 21.122452>,  <35.868324, 40.383305, 21.155560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639759, 40.318020, 21.122452>,  <35.258816, 40.209213, 21.067272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639759, 40.318020, 21.122452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081349, -0.662463, 0.744664,
		0.293944, -0.697962, -0.653028,
		0.952355, 0.272013, 0.137949,
		35.925465, 40.399624, 21.163836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547382, 39.617111, 21.160696>,  <35.258816, 40.209213, 21.067272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547382, 39.617111, 21.160696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811050, 39.879116, 21.308451>,  <35.969254, 40.036320, 21.397104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811050, 39.879116, 21.308451>,  <35.547382, 39.617111, 21.160696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811050, 39.879116, 21.308451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208985, -0.631429, 0.746742,
		0.722368, -0.415036, -0.553109,
		0.659174, 0.655014, 0.369388,
		36.008804, 40.075619, 21.419268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055355, 39.194752, 21.331711>,  <35.547382, 39.617111, 21.160696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055355, 39.194752, 21.331711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112778, 39.529339, 21.543259>,  <36.147232, 39.730091, 21.670187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112778, 39.529339, 21.543259>,  <36.055355, 39.194752, 21.331711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112778, 39.529339, 21.543259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209431, -0.547982, 0.809848,
		0.967227, -0.005501, -0.253852,
		0.143561, 0.836472, 0.528871,
		36.155846, 39.780281, 21.701920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573746, 39.120621, 21.763042>,  <36.055355, 39.194752, 21.331711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573746, 39.120621, 21.763042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395260, 39.439411, 21.925875>,  <36.288166, 39.630688, 22.023573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395260, 39.439411, 21.925875>,  <36.573746, 39.120621, 21.763042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395260, 39.439411, 21.925875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204877, -0.351821, 0.913371,
		0.871157, 0.490964, -0.006293,
		-0.446219, 0.796979, 0.407079,
		36.261395, 39.678505, 22.047998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087437, 39.406723, 22.278778>,  <36.573746, 39.120621, 21.763042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087437, 39.406723, 22.278778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719761, 39.525528, 22.382215>,  <36.499157, 39.596813, 22.444279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719761, 39.525528, 22.382215>,  <37.087437, 39.406723, 22.278778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719761, 39.525528, 22.382215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156838, -0.326227, 0.932190,
		0.361235, 0.897417, 0.253282,
		-0.919190, 0.297015, 0.258594,
		36.444004, 39.614632, 22.459793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159576, 39.830822, 22.855579>,  <37.087437, 39.406723, 22.278778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159576, 39.830822, 22.855579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781342, 39.701221, 22.867514>,  <36.554401, 39.623459, 22.874674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781342, 39.701221, 22.867514>,  <37.159576, 39.830822, 22.855579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781342, 39.701221, 22.867514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078184, -0.137240, 0.987447,
		-0.315843, 0.936048, 0.155104,
		-0.945585, -0.324005, 0.029838,
		36.497665, 39.604019, 22.876465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012268, 39.873436, 23.552582>,  <37.159576, 39.830822, 22.855579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012268, 39.873436, 23.552582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686344, 39.666672, 23.447594>,  <36.490791, 39.542614, 23.384600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686344, 39.666672, 23.447594>,  <37.012268, 39.873436, 23.552582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686344, 39.666672, 23.447594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113483, -0.301774, 0.946601,
		-0.568515, 0.801085, 0.187227,
		-0.814808, -0.516910, -0.262472,
		36.441902, 39.511600, 23.368853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526035, 40.055920, 23.998505>,  <37.012268, 39.873436, 23.552582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526035, 40.055920, 23.998505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392975, 39.708187, 23.852295>,  <36.313137, 39.499550, 23.764568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392975, 39.708187, 23.852295>,  <36.526035, 40.055920, 23.998505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392975, 39.708187, 23.852295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203857, -0.312146, 0.927905,
		-0.920752, 0.383185, -0.073382,
		-0.332653, -0.869330, -0.365524,
		36.293179, 39.447388, 23.742638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851982, 39.955006, 24.207291>,  <36.526035, 40.055920, 23.998505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851982, 39.955006, 24.207291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962570, 39.582939, 24.110670>,  <36.028923, 39.359699, 24.052698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962570, 39.582939, 24.110670>,  <35.851982, 39.955006, 24.207291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962570, 39.582939, 24.110670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343776, -0.330439, 0.878993,
		-0.897431, -0.159976, -0.411127,
		0.276470, -0.930171, -0.241550,
		36.045509, 39.303886, 24.038204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326656, 39.603149, 24.642473>,  <35.851982, 39.955006, 24.207291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326656, 39.603149, 24.642473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572170, 39.320980, 24.500685>,  <35.719479, 39.151680, 24.415611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572170, 39.320980, 24.500685>,  <35.326656, 39.603149, 24.642473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572170, 39.320980, 24.500685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130329, -0.533374, 0.835779,
		-0.778642, -0.466790, -0.419313,
		0.613784, -0.705422, -0.354471,
		35.756306, 39.109352, 24.394344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013443, 38.932201, 24.628101>,  <35.326656, 39.603149, 24.642473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013443, 38.932201, 24.628101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410225, 38.893604, 24.660862>,  <35.648296, 38.870445, 24.680519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410225, 38.893604, 24.660862>,  <35.013443, 38.932201, 24.628101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410225, 38.893604, 24.660862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116175, -0.437458, 0.891703,
		-0.050211, -0.894047, -0.445150,
		0.991959, -0.096488, 0.081901,
		35.707813, 38.864658, 24.685432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204113, 38.216896, 24.740341>,  <35.013443, 38.932201, 24.628101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204113, 38.216896, 24.740341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515148, 38.411907, 24.899178>,  <35.701767, 38.528915, 24.994478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515148, 38.411907, 24.899178>,  <35.204113, 38.216896, 24.740341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515148, 38.411907, 24.899178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120585, -0.504180, 0.855138,
		0.617107, -0.712825, -0.333254,
		0.777584, 0.487527, 0.397090,
		35.748425, 38.558167, 25.018305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515087, 37.684185, 25.151308>,  <35.204113, 38.216896, 24.740341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515087, 37.684185, 25.151308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635712, 38.040104, 25.288315>,  <35.708088, 38.253654, 25.370520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635712, 38.040104, 25.288315>,  <35.515087, 37.684185, 25.151308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635712, 38.040104, 25.288315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114491, -0.390435, 0.913483,
		0.946548, -0.236257, -0.219614,
		0.301562, 0.889799, 0.342516,
		35.726181, 38.307045, 25.391069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921062, 37.425659, 25.667143>,  <35.515087, 37.684185, 25.151308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921062, 37.425659, 25.667143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867634, 37.808178, 25.771185>,  <35.835575, 38.037689, 25.833611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867634, 37.808178, 25.771185>,  <35.921062, 37.425659, 25.667143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867634, 37.808178, 25.771185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048643, -0.255816, 0.965501,
		0.989845, 0.141617, -0.012347,
		-0.133573, 0.956297, 0.260106,
		35.827560, 38.095066, 25.849216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355862, 37.490730, 26.181692>,  <35.921062, 37.425659, 25.667143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355862, 37.490730, 26.181692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088219, 37.786915, 26.207018>,  <35.927631, 37.964626, 26.222214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088219, 37.786915, 26.207018>,  <36.355862, 37.490730, 26.181692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088219, 37.786915, 26.207018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241068, -0.296843, 0.923997,
		0.702979, 0.602992, 0.377122,
		-0.669109, 0.740463, 0.063313,
		35.887486, 38.009052, 26.226011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528618, 37.843571, 26.795258>,  <36.355862, 37.490730, 26.181692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528618, 37.843571, 26.795258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145996, 37.922562, 26.709465>,  <35.916424, 37.969955, 26.657990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145996, 37.922562, 26.709465>,  <36.528618, 37.843571, 26.795258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145996, 37.922562, 26.709465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263318, -0.269359, 0.926342,
		0.125161, 0.942575, 0.309657,
		-0.956555, 0.197480, -0.214483,
		35.859028, 37.981804, 26.645121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356205, 38.237640, 27.327885>,  <36.528618, 37.843571, 26.795258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356205, 38.237640, 27.327885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006138, 38.120926, 27.173510>,  <35.796097, 38.050896, 27.080885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006138, 38.120926, 27.173510>,  <36.356205, 38.237640, 27.327885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006138, 38.120926, 27.173510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352304, -0.162412, 0.921686,
		-0.331617, 0.942594, 0.039340,
		-0.875164, -0.291787, -0.385938,
		35.743587, 38.033390, 27.057728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803772, 38.610062, 27.741079>,  <36.356205, 38.237640, 27.327885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803772, 38.610062, 27.741079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645634, 38.278740, 27.582277>,  <35.550751, 38.079945, 27.486996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645634, 38.278740, 27.582277>,  <35.803772, 38.610062, 27.741079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645634, 38.278740, 27.582277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443185, -0.206565, 0.872306,
		-0.804544, 0.520807, -0.285429,
		-0.395343, -0.828306, -0.397005,
		35.527031, 38.030247, 27.463177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055176, 38.698086, 27.781353>,  <35.803772, 38.610062, 27.741079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055176, 38.698086, 27.781353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148766, 38.309990, 27.756388>,  <35.204918, 38.077133, 27.741409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148766, 38.309990, 27.756388>,  <35.055176, 38.698086, 27.781353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148766, 38.309990, 27.756388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494663, -0.174062, 0.851476,
		-0.836997, -0.168351, -0.520667,
		0.233975, -0.970237, -0.062413,
		35.218960, 38.018917, 27.737663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592232, 38.433048, 28.215979>,  <35.055176, 38.698086, 27.781353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592232, 38.433048, 28.215979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803303, 38.097824, 28.160549>,  <34.929947, 37.896690, 28.127291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803303, 38.097824, 28.160549>,  <34.592232, 38.433048, 28.215979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803303, 38.097824, 28.160549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451003, -0.414655, 0.790353,
		-0.719827, -0.354554, -0.596774,
		0.527678, -0.838064, -0.138575,
		34.961605, 37.846405, 28.118977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140003, 37.934586, 28.327894>,  <34.592232, 38.433048, 28.215979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140003, 37.934586, 28.327894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498428, 37.767666, 28.388472>,  <34.713482, 37.667515, 28.424818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498428, 37.767666, 28.388472>,  <34.140003, 37.934586, 28.327894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498428, 37.767666, 28.388472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327362, -0.390716, 0.860334,
		-0.299845, -0.820489, -0.486714,
		0.896062, -0.417299, 0.151442,
		34.767246, 37.642475, 28.433905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991276, 37.284172, 28.651190>,  <34.140003, 37.934586, 28.327894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991276, 37.284172, 28.651190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381447, 37.292839, 28.738899>,  <34.615547, 37.298038, 28.791525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381447, 37.292839, 28.738899>,  <33.991276, 37.284172, 28.651190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381447, 37.292839, 28.738899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171730, -0.548764, 0.818148,
		0.138054, -0.835696, -0.531557,
		0.975423, 0.021665, 0.219273,
		34.674072, 37.299339, 28.804682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213940, 36.641586, 28.903605>,  <33.991276, 37.284172, 28.651190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213940, 36.641586, 28.903605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507019, 36.872749, 29.047369>,  <34.682865, 37.011448, 29.133627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507019, 36.872749, 29.047369>,  <34.213940, 36.641586, 28.903605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507019, 36.872749, 29.047369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008106, -0.535489, 0.844504,
		0.680505, -0.615853, -0.397036,
		0.732699, 0.577907, 0.359411,
		34.726830, 37.046120, 29.155191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830284, 36.223927, 29.105732>,  <34.213940, 36.641586, 28.903605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830284, 36.223927, 29.105732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810204, 36.550674, 29.335585>,  <34.798157, 36.746723, 29.473495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810204, 36.550674, 29.335585>,  <34.830284, 36.223927, 29.105732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810204, 36.550674, 29.335585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119746, -0.566284, 0.815465,
		0.991535, 0.109745, -0.069391,
		-0.050199, 0.816871, 0.574631,
		34.795143, 36.795734, 29.507975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423409, 36.182716, 29.585892>,  <34.830284, 36.223927, 29.105732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423409, 36.182716, 29.585892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131115, 36.396210, 29.756140>,  <34.955738, 36.524307, 29.858288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131115, 36.396210, 29.756140>,  <35.423409, 36.182716, 29.585892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131115, 36.396210, 29.756140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157006, -0.475360, 0.865669,
		0.664358, 0.699401, 0.263565,
		-0.730738, 0.533732, 0.425619,
		34.911892, 36.556328, 29.883825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710964, 36.543827, 30.123003>,  <35.423409, 36.182716, 29.585892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710964, 36.543827, 30.123003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323929, 36.517681, 30.220581>,  <35.091709, 36.501995, 30.279127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323929, 36.517681, 30.220581>,  <35.710964, 36.543827, 30.123003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323929, 36.517681, 30.220581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242006, -0.516163, 0.821589,
		0.072212, 0.853992, 0.515250,
		-0.967584, -0.065365, 0.243944,
		35.033653, 36.498074, 30.293764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665390, 36.880676, 30.648197>,  <35.710964, 36.543827, 30.123003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665390, 36.880676, 30.648197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341934, 36.645393, 30.652485>,  <35.147861, 36.504223, 30.655058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341934, 36.645393, 30.652485>,  <35.665390, 36.880676, 30.648197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341934, 36.645393, 30.652485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251885, -0.329694, 0.909866,
		-0.531657, 0.738452, 0.414764,
		-0.808638, -0.588209, 0.010721,
		35.099342, 36.468929, 30.655701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516247, 36.801449, 31.304932>,  <35.665390, 36.880676, 30.648197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516247, 36.801449, 31.304932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301548, 36.491661, 31.171001>,  <35.172729, 36.305790, 31.090643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301548, 36.491661, 31.171001>,  <35.516247, 36.801449, 31.304932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301548, 36.491661, 31.171001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309850, -0.550029, 0.775539,
		-0.784792, 0.312521, 0.535194,
		-0.536744, -0.774467, -0.334824,
		35.140526, 36.259319, 31.070555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144150, 36.534603, 31.906361>,  <35.516247, 36.801449, 31.304932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144150, 36.534603, 31.906361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131302, 36.233517, 31.643335>,  <35.123592, 36.052864, 31.485521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131302, 36.233517, 31.643335>,  <35.144150, 36.534603, 31.906361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131302, 36.233517, 31.643335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293939, -0.635921, 0.713585,
		-0.955284, -0.170363, 0.241679,
		-0.032120, -0.752715, -0.657562,
		35.121666, 36.007702, 31.446066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906002, 36.040592, 32.281601>,  <35.144150, 36.534603, 31.906361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906002, 36.040592, 32.281601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099377, 35.866531, 31.977779>,  <35.215401, 35.762093, 31.795485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099377, 35.866531, 31.977779>,  <34.906002, 36.040592, 32.281601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099377, 35.866531, 31.977779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333303, -0.710832, 0.619376,
		-0.809443, -0.552593, -0.198604,
		0.483437, -0.435154, -0.759558,
		35.244408, 35.735985, 31.749912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764061, 35.306942, 32.338905>,  <34.906002, 36.040592, 32.281601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764061, 35.306942, 32.338905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077095, 35.323303, 32.090427>,  <35.264915, 35.333118, 31.941341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077095, 35.323303, 32.090427>,  <34.764061, 35.306942, 32.338905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077095, 35.323303, 32.090427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447899, -0.730015, 0.516202,
		-0.432369, -0.682206, -0.589621,
		0.782588, 0.040901, -0.621195,
		35.311871, 35.335575, 31.904068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900570, 34.578396, 32.150249>,  <34.764061, 35.306942, 32.338905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900570, 34.578396, 32.150249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236664, 34.769131, 32.047001>,  <35.438320, 34.883572, 31.985052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236664, 34.769131, 32.047001>,  <34.900570, 34.578396, 32.150249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236664, 34.769131, 32.047001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542019, -0.751608, 0.375899,
		-0.014765, -0.455752, -0.889984,
		0.840236, 0.476839, -0.258124,
		35.488735, 34.912182, 31.969564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295269, 34.096661, 31.817308>,  <34.900570, 34.578396, 32.150249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295269, 34.096661, 31.817308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549103, 34.384266, 31.930677>,  <35.701401, 34.556828, 31.998699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549103, 34.384266, 31.930677>,  <35.295269, 34.096661, 31.817308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549103, 34.384266, 31.930677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390255, -0.614645, 0.685501,
		0.667088, -0.324399, -0.670641,
		0.634582, 0.719011, 0.283424,
		35.739479, 34.599968, 32.015705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907242, 33.803280, 31.803007>,  <35.295269, 34.096661, 31.817308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907242, 33.803280, 31.803007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010597, 34.108944, 32.039413>,  <36.072613, 34.292343, 32.181255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010597, 34.108944, 32.039413>,  <35.907242, 33.803280, 31.803007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010597, 34.108944, 32.039413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500228, -0.629219, 0.594857,
		0.826442, 0.141936, -0.544837,
		0.258390, 0.764158, 0.591014,
		36.088116, 34.338192, 32.216717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671257, 33.726509, 31.992342>,  <35.907242, 33.803280, 31.803007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671257, 33.726509, 31.992342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491718, 33.922417, 32.291317>,  <36.383995, 34.039963, 32.470703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491718, 33.922417, 32.291317>,  <36.671257, 33.726509, 31.992342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491718, 33.922417, 32.291317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463528, -0.587494, 0.663319,
		0.763991, 0.644184, 0.036669,
		-0.448843, 0.489772, 0.747438,
		36.357067, 34.069347, 32.515549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148548, 33.659069, 32.557343>,  <36.671257, 33.726509, 31.992342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148548, 33.659069, 32.557343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854397, 33.849468, 32.750275>,  <36.677906, 33.963707, 32.866032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854397, 33.849468, 32.750275>,  <37.148548, 33.659069, 32.557343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854397, 33.849468, 32.750275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298359, -0.411635, 0.861127,
		0.608441, 0.777161, 0.160688,
		-0.735379, 0.476002, 0.482328,
		36.633781, 33.992268, 32.894974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470501, 33.985062, 33.231293>,  <37.148548, 33.659069, 32.557343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470501, 33.985062, 33.231293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079235, 33.923527, 33.287189>,  <36.844475, 33.886608, 33.320728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079235, 33.923527, 33.287189>,  <37.470501, 33.985062, 33.231293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079235, 33.923527, 33.287189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180575, -0.296200, 0.937901,
		-0.102887, 0.942656, 0.317510,
		-0.978165, -0.153833, 0.139745,
		36.785786, 33.877377, 33.329113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224174, 34.426052, 33.765842>,  <37.470501, 33.985062, 33.231293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224174, 34.426052, 33.765842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039112, 34.071522, 33.758106>,  <36.928074, 33.858803, 33.753464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039112, 34.071522, 33.758106>,  <37.224174, 34.426052, 33.765842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039112, 34.071522, 33.758106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248173, -0.150425, 0.956965,
		-0.851095, 0.437942, 0.289558,
		-0.462652, -0.886329, -0.019340,
		36.900318, 33.805622, 33.752304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647812, 35.029720, 33.987572>,  <37.224174, 34.426052, 33.765842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647812, 35.029720, 33.987572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977695, 34.805069, 34.014198>,  <38.175625, 34.670280, 34.030174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977695, 34.805069, 34.014198>,  <37.647812, 35.029720, 33.987572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977695, 34.805069, 34.014198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044982, 0.052195, 0.997623,
		-0.563765, -0.825744, 0.017782,
		0.824710, -0.561625, 0.066569,
		38.225109, 34.636581, 34.034168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505211, 34.591984, 34.537090>,  <37.647812, 35.029720, 33.987572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505211, 34.591984, 34.537090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902454, 34.618256, 34.498272>,  <38.140800, 34.634018, 34.474979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902454, 34.618256, 34.498272>,  <37.505211, 34.591984, 34.537090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902454, 34.618256, 34.498272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097108, 0.002238, 0.995271,
		0.065585, -0.997838, -0.004156,
		0.993110, 0.065678, -0.097045,
		38.200386, 34.637959, 34.469158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760754, 34.089382, 34.931122>,  <37.505211, 34.591984, 34.537090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760754, 34.089382, 34.931122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060513, 34.354160, 34.924969>,  <38.240368, 34.513027, 34.921276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060513, 34.354160, 34.924969>,  <37.760754, 34.089382, 34.931122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060513, 34.354160, 34.924969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189502, -0.192158, 0.962894,
		0.634425, -0.724504, -0.269442,
		0.749396, 0.661944, -0.015385,
		38.285332, 34.552742, 34.920353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152504, 33.796227, 35.445503>,  <37.760754, 34.089382, 34.931122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152504, 33.796227, 35.445503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339256, 34.141510, 35.368675>,  <38.451309, 34.348679, 35.322578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339256, 34.141510, 35.368675>,  <38.152504, 33.796227, 35.445503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339256, 34.141510, 35.368675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359949, 0.012892, 0.932883,
		0.807750, -0.504681, -0.304693,
		0.466880, 0.863210, -0.192073,
		38.479321, 34.400475, 35.311054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900902, 33.825348, 35.680950>,  <38.152504, 33.796227, 35.445503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900902, 33.825348, 35.680950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806446, 34.213753, 35.695831>,  <38.749775, 34.446796, 35.704762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806446, 34.213753, 35.695831>,  <38.900902, 33.825348, 35.680950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806446, 34.213753, 35.695831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421169, 0.067768, 0.904447,
		0.875703, 0.229241, -0.424961,
		-0.236136, 0.971008, 0.037204,
		38.735607, 34.505054, 35.706993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496231, 34.168270, 35.850777>,  <38.900902, 33.825348, 35.680950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496231, 34.168270, 35.850777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242146, 34.461533, 35.947922>,  <39.089695, 34.637489, 36.006207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242146, 34.461533, 35.947922>,  <39.496231, 34.168270, 35.850777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242146, 34.461533, 35.947922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567982, 0.230367, 0.790144,
		0.523355, 0.639849, -0.562754,
		-0.635213, 0.733160, 0.242859,
		39.051582, 34.681480, 36.020779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896591, 34.738514, 36.078674>,  <39.496231, 34.168270, 35.850777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896591, 34.738514, 36.078674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540550, 34.822079, 36.240696>,  <39.326923, 34.872215, 36.337910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540550, 34.822079, 36.240696>,  <39.896591, 34.738514, 36.078674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540550, 34.822079, 36.240696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450126, 0.542194, 0.709515,
		-0.071393, 0.813869, -0.576646,
		-0.890106, 0.208910, 0.405052,
		39.273518, 34.884750, 36.362213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925301, 35.363476, 36.272961>,  <39.896591, 34.738514, 36.078674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925301, 35.363476, 36.272961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638062, 35.229134, 36.516777>,  <39.465717, 35.148529, 36.663067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638062, 35.229134, 36.516777>,  <39.925301, 35.363476, 36.272961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638062, 35.229134, 36.516777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475098, 0.403432, 0.782000,
		-0.508551, 0.851141, -0.130136,
		-0.718094, -0.335859, 0.609541,
		39.422634, 35.128376, 36.699638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861198, 35.944809, 36.764557>,  <39.925301, 35.363476, 36.272961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861198, 35.944809, 36.764557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699150, 35.618900, 36.930462>,  <39.601921, 35.423355, 37.030006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699150, 35.618900, 36.930462>,  <39.861198, 35.944809, 36.764557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699150, 35.618900, 36.930462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391595, 0.255300, 0.884011,
		-0.826154, 0.520550, 0.215633,
		-0.405120, -0.814770, 0.414762,
		39.577614, 35.374470, 37.054890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285648, 36.193943, 37.262478>,  <39.861198, 35.944809, 36.764557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285648, 36.193943, 37.262478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431873, 35.841686, 37.383026>,  <39.519608, 35.630333, 37.455357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431873, 35.841686, 37.383026>,  <39.285648, 36.193943, 37.262478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431873, 35.841686, 37.383026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149465, 0.375119, 0.914848,
		-0.918707, -0.289392, 0.268756,
		0.365565, -0.880646, 0.301370,
		39.541542, 35.577492, 37.473438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162247, 36.180473, 37.918430>,  <39.285648, 36.193943, 37.262478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162247, 36.180473, 37.918430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399502, 35.859203, 37.896149>,  <39.541855, 35.666443, 37.882782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399502, 35.859203, 37.896149>,  <39.162247, 36.180473, 37.918430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399502, 35.859203, 37.896149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361690, 0.204018, 0.909702,
		-0.719283, -0.559725, 0.411510,
		0.593138, -0.803171, -0.055700,
		39.577442, 35.618252, 37.879440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007996, 35.862022, 38.488850>,  <39.162247, 36.180473, 37.918430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007996, 35.862022, 38.488850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361282, 35.699310, 38.395504>,  <39.573254, 35.601685, 38.339497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361282, 35.699310, 38.395504>,  <39.007996, 35.862022, 38.488850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361282, 35.699310, 38.395504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309910, 0.132805, 0.941445,
		-0.351968, -0.903822, 0.243360,
		0.883219, -0.406778, -0.233360,
		39.626247, 35.577278, 38.325497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146908, 35.405102, 39.031071>,  <39.007996, 35.862022, 38.488850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146908, 35.405102, 39.031071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502419, 35.466511, 38.858326>,  <39.715725, 35.503357, 38.754681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502419, 35.466511, 38.858326>,  <39.146908, 35.405102, 39.031071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502419, 35.466511, 38.858326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432480, 0.031098, 0.901107,
		0.151775, -0.987655, -0.038758,
		0.888777, 0.153528, -0.431861,
		39.769051, 35.512569, 38.728767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649361, 34.885658, 39.250641>,  <39.146908, 35.405102, 39.031071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649361, 34.885658, 39.250641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829269, 35.231083, 39.159458>,  <39.937214, 35.438339, 39.104748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829269, 35.231083, 39.159458>,  <39.649361, 34.885658, 39.250641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829269, 35.231083, 39.159458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353957, 0.061992, 0.933205,
		0.820013, -0.500415, -0.277783,
		0.449769, 0.863564, -0.227960,
		39.964199, 35.490150, 39.091072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420437, 34.895061, 39.350384>,  <39.649361, 34.885658, 39.250641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420437, 34.895061, 39.350384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220818, 35.233578, 39.424946>,  <40.101048, 35.436687, 39.469685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220818, 35.233578, 39.424946>,  <40.420437, 34.895061, 39.350384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220818, 35.233578, 39.424946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098623, -0.158241, 0.982463,
		0.860945, 0.508679, -0.004494,
		-0.499047, 0.846289, 0.186404,
		40.071102, 35.487465, 39.480865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838619, 35.019714, 39.993900>,  <40.420437, 34.895061, 39.350384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838619, 35.019714, 39.993900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557575, 35.303345, 39.970062>,  <40.388950, 35.473522, 39.955761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557575, 35.303345, 39.970062>,  <40.838619, 35.019714, 39.993900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557575, 35.303345, 39.970062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048749, 0.131516, 0.990115,
		0.709906, 0.692757, -0.126972,
		-0.702607, 0.709078, -0.059593,
		40.346794, 35.516068, 39.952183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982311, 35.760059, 40.217930>,  <40.838619, 35.019714, 39.993900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982311, 35.760059, 40.217930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582867, 35.760292, 40.239002>,  <40.343201, 35.760433, 40.251644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582867, 35.760292, 40.239002>,  <40.982311, 35.760059, 40.217930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582867, 35.760292, 40.239002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052359, 0.121194, 0.991247,
		-0.005805, 0.992629, -0.121056,
		-0.998612, 0.000585, 0.052676,
		40.283283, 35.760468, 40.254807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725788, 36.371124, 40.522739>,  <40.982311, 35.760059, 40.217930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725788, 36.371124, 40.522739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439373, 36.099003, 40.585331>,  <40.267525, 35.935730, 40.622887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439373, 36.099003, 40.585331>,  <40.725788, 36.371124, 40.522739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439373, 36.099003, 40.585331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082342, 0.140285, 0.986681,
		-0.693190, 0.719384, -0.044432,
		-0.716035, -0.680299, 0.156480,
		40.224564, 35.894913, 40.632275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273533, 36.650169, 41.057690>,  <40.725788, 36.371124, 40.522739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273533, 36.650169, 41.057690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219318, 36.254551, 41.081093>,  <40.186790, 36.017181, 41.095135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219318, 36.254551, 41.081093>,  <40.273533, 36.650169, 41.057690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219318, 36.254551, 41.081093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095863, 0.071866, 0.992797,
		-0.986124, 0.128953, -0.104553,
		-0.135538, -0.989043, 0.058507,
		40.178658, 35.957836, 41.098644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670277, 36.458492, 41.518982>,  <40.273533, 36.650169, 41.057690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670277, 36.458492, 41.518982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869011, 36.111675, 41.533909>,  <39.988251, 35.903584, 41.542866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869011, 36.111675, 41.533909>,  <39.670277, 36.458492, 41.518982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869011, 36.111675, 41.533909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090850, -0.009198, 0.995822,
		-0.863076, -0.498151, -0.083340,
		0.496836, -0.867042, 0.037319,
		40.018063, 35.851562, 41.545105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351799, 35.881008, 41.855595>,  <39.670277, 36.458492, 41.518982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351799, 35.881008, 41.855595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745903, 35.820385, 41.887341>,  <39.982365, 35.784012, 41.906387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745903, 35.820385, 41.887341>,  <39.351799, 35.881008, 41.855595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745903, 35.820385, 41.887341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072977, 0.047276, 0.996213,
		-0.154740, -0.987317, 0.035518,
		0.985256, -0.151562, 0.079367,
		40.041481, 35.774918, 41.911152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655029, 35.331211, 42.401287>,  <39.351799, 35.881008, 41.855595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655029, 35.331211, 42.401287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932392, 35.615463, 42.353630>,  <40.098808, 35.786015, 42.325035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932392, 35.615463, 42.353630>,  <39.655029, 35.331211, 42.401287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932392, 35.615463, 42.353630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108743, 0.060246, 0.992243,
		0.712298, -0.700979, -0.035502,
		0.693402, 0.710632, -0.119140,
		40.140411, 35.828651, 42.317886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220684, 35.214100, 42.762123>,  <39.655029, 35.331211, 42.401287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220684, 35.214100, 42.762123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175350, 35.611317, 42.749279>,  <40.148148, 35.849648, 42.741573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175350, 35.611317, 42.749279>,  <40.220684, 35.214100, 42.762123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175350, 35.611317, 42.749279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189953, 0.053380, 0.980341,
		0.975229, 0.105011, -0.194680,
		-0.113339, 0.993037, -0.032110,
		40.141350, 35.909229, 42.739647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870464, 35.468037, 42.322323>,  <40.220684, 35.214100, 42.762123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870464, 35.468037, 42.322323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603882, 35.169830, 42.319653>,  <40.443932, 34.990906, 42.318050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603882, 35.169830, 42.319653>,  <40.870464, 35.468037, 42.322323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603882, 35.169830, 42.319653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372043, 0.340315, -0.863580,
		0.646084, -0.573053, -0.504168,
		-0.666453, -0.745518, -0.006672,
		40.403946, 34.946175, 42.317650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058662, 35.097610, 41.706615>,  <40.870464, 35.468037, 42.322323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058662, 35.097610, 41.706615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672543, 35.119427, 41.808773>,  <40.440872, 35.132515, 41.870068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672543, 35.119427, 41.808773>,  <41.058662, 35.097610, 41.706615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672543, 35.119427, 41.808773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216624, 0.378960, -0.899702,
		-0.145853, -0.923805, -0.353994,
		-0.965298, 0.054540, 0.255391,
		40.382954, 35.135788, 41.885391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529625, 34.673088, 41.307377>,  <41.058662, 35.097610, 41.706615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529625, 34.673088, 41.307377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308811, 34.993111, 41.401325>,  <40.176323, 35.185123, 41.457695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308811, 34.993111, 41.401325>,  <40.529625, 34.673088, 41.307377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308811, 34.993111, 41.401325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223442, 0.129435, -0.966085,
		-0.803327, -0.585789, 0.107315,
		-0.552032, 0.800061, 0.234868,
		40.143200, 35.233128, 41.471786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811726, 34.664925, 41.096500>,  <40.529625, 34.673088, 41.307377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811726, 34.664925, 41.096500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925495, 35.047810, 41.117805>,  <39.993759, 35.277542, 41.130589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925495, 35.047810, 41.117805>,  <39.811726, 34.664925, 41.096500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925495, 35.047810, 41.117805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260185, 0.130540, -0.956694,
		-0.922716, 0.258253, 0.286183,
		0.284427, 0.957217, 0.053258,
		40.010822, 35.334976, 41.133781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310905, 34.970707, 40.732914>,  <39.811726, 34.664925, 41.096500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310905, 34.970707, 40.732914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614414, 35.231148, 40.725506>,  <39.796520, 35.387413, 40.721062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614414, 35.231148, 40.725506>,  <39.310905, 34.970707, 40.732914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614414, 35.231148, 40.725506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162734, 0.161966, -0.973285,
		-0.630705, 0.741511, 0.228851,
		0.758768, 0.651098, -0.018516,
		39.842045, 35.426476, 40.719952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991432, 35.672535, 40.454117>,  <39.310905, 34.970707, 40.732914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991432, 35.672535, 40.454117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386326, 35.705120, 40.399361>,  <39.623260, 35.724670, 40.366508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386326, 35.705120, 40.399361>,  <38.991432, 35.672535, 40.454117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386326, 35.705120, 40.399361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152599, 0.237137, -0.959416,
		-0.045698, 0.968055, 0.246540,
		0.987231, 0.081465, -0.136888,
		39.682495, 35.729561, 40.358295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074661, 36.199200, 40.057697>,  <38.991432, 35.672535, 40.454117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074661, 36.199200, 40.057697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430714, 36.025703, 40.001804>,  <39.644344, 35.921604, 39.968269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430714, 36.025703, 40.001804>,  <39.074661, 36.199200, 40.057697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430714, 36.025703, 40.001804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048758, 0.214229, -0.975566,
		0.453080, 0.875199, 0.169544,
		0.890136, -0.433742, -0.139736,
		39.697754, 35.895580, 39.959885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548645, 36.663368, 39.717163>,  <39.074661, 36.199200, 40.057697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548645, 36.663368, 39.717163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698971, 36.301228, 39.638062>,  <39.789165, 36.083942, 39.590599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698971, 36.301228, 39.638062>,  <39.548645, 36.663368, 39.717163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698971, 36.301228, 39.638062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197509, 0.286747, -0.937425,
		0.905401, 0.313242, 0.286579,
		0.375817, -0.905348, -0.197753,
		39.811714, 36.029625, 39.578735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955242, 36.724380, 38.952816>,  <39.548645, 36.663368, 39.717163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955242, 36.724380, 38.952816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046429, 36.365936, 39.105141>,  <40.101139, 36.150871, 39.196537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046429, 36.365936, 39.105141>,  <39.955242, 36.724380, 38.952816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046429, 36.365936, 39.105141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301446, -0.306938, -0.902729,
		0.925831, 0.320584, 0.200158,
		0.227965, -0.896111, 0.380811,
		40.114819, 36.097103, 39.219383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548298, 36.561531, 38.611877>,  <39.955242, 36.724380, 38.952816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548298, 36.561531, 38.611877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384686, 36.228497, 38.761269>,  <40.286518, 36.028675, 38.850903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384686, 36.228497, 38.761269>,  <40.548298, 36.561531, 38.611877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384686, 36.228497, 38.761269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056971, -0.431783, -0.900176,
		0.910740, -0.346924, 0.224047,
		-0.409032, -0.832591, 0.373477,
		40.261974, 35.978718, 38.873310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865147, 35.891804, 38.275154>,  <40.548298, 36.561531, 38.611877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865147, 35.891804, 38.275154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511684, 35.766998, 38.414749>,  <40.299606, 35.692116, 38.498505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511684, 35.766998, 38.414749>,  <40.865147, 35.891804, 38.275154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511684, 35.766998, 38.414749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171762, -0.477398, -0.861736,
		0.435480, -0.821425, 0.368265,
		-0.883660, -0.312014, 0.348987,
		40.246586, 35.673393, 38.519444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841343, 35.221027, 38.016796>,  <40.865147, 35.891804, 38.275154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841343, 35.221027, 38.016796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465733, 35.316067, 38.116207>,  <40.240364, 35.373093, 38.175854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465733, 35.316067, 38.116207>,  <40.841343, 35.221027, 38.016796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465733, 35.316067, 38.116207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325661, -0.382728, -0.864560,
		-0.110300, -0.892785, 0.436770,
		-0.939031, 0.237600, 0.248531,
		40.184025, 35.387348, 38.190765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455643, 34.630749, 37.852409>,  <40.841343, 35.221027, 38.016796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455643, 34.630749, 37.852409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201622, 34.939732, 37.854572>,  <40.049210, 35.125122, 37.855869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201622, 34.939732, 37.854572>,  <40.455643, 34.630749, 37.852409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201622, 34.939732, 37.854572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340567, -0.273693, -0.899503,
		-0.693347, -0.573067, 0.436880,
		-0.635047, 0.772455, 0.005403,
		40.011108, 35.171467, 37.856194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741966, 34.330902, 37.774643>,  <40.455643, 34.630749, 37.852409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741966, 34.330902, 37.774643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701797, 34.718189, 37.683018>,  <39.677696, 34.950562, 37.628044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701797, 34.718189, 37.683018>,  <39.741966, 34.330902, 37.774643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701797, 34.718189, 37.683018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545832, -0.246095, -0.800940,
		-0.831855, 0.044598, 0.553198,
		-0.100419, 0.968219, -0.229059,
		39.671673, 35.008656, 37.614300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041985, 34.323627, 37.592617>,  <39.741966, 34.330902, 37.774643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041985, 34.323627, 37.592617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200550, 34.648304, 37.421032>,  <39.295689, 34.843109, 37.318081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200550, 34.648304, 37.421032>,  <39.041985, 34.323627, 37.592617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200550, 34.648304, 37.421032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639827, -0.090822, -0.763134,
		-0.658388, 0.576984, 0.483337,
		0.396419, 0.811690, -0.428966,
		39.319477, 34.891811, 37.292343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449192, 34.591686, 37.303791>,  <39.041985, 34.323627, 37.592617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449192, 34.591686, 37.303791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767036, 34.750622, 37.120178>,  <38.957741, 34.845985, 37.010010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767036, 34.750622, 37.120178>,  <38.449192, 34.591686, 37.303791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767036, 34.750622, 37.120178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496538, -0.009745, -0.867960,
		-0.349351, 0.917619, 0.189552,
		0.794609, 0.397343, -0.459037,
		39.005421, 34.869823, 36.982468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113110, 35.055920, 36.855488>,  <38.449192, 34.591686, 37.303791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113110, 35.055920, 36.855488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476013, 34.995834, 36.698349>,  <38.693756, 34.959785, 36.604065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476013, 34.995834, 36.698349>,  <38.113110, 35.055920, 36.855488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476013, 34.995834, 36.698349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406535, -0.073814, -0.910649,
		0.107792, 0.985895, -0.128034,
		0.907254, -0.150211, -0.392844,
		38.748188, 34.950771, 36.580494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042854, 35.473728, 36.348248>,  <38.113110, 35.055920, 36.855488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042854, 35.473728, 36.348248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363159, 35.243210, 36.282932>,  <38.555344, 35.104900, 36.243744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363159, 35.243210, 36.282932>,  <38.042854, 35.473728, 36.348248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363159, 35.243210, 36.282932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228958, -0.042594, -0.972504,
		0.553493, 0.816132, -0.166055,
		0.800765, -0.576293, -0.163285,
		38.603390, 35.070320, 36.233948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224190, 35.684418, 35.654392>,  <38.042854, 35.473728, 36.348248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224190, 35.684418, 35.654392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427208, 35.340302, 35.673580>,  <38.549019, 35.133831, 35.685093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427208, 35.340302, 35.673580>,  <38.224190, 35.684418, 35.654392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427208, 35.340302, 35.673580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061241, -0.019510, -0.997932,
		0.859444, 0.509436, 0.042783,
		0.507549, -0.860287, 0.047967,
		38.579472, 35.082214, 35.687969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711056, 35.684219, 35.106262>,  <38.224190, 35.684418, 35.654392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711056, 35.684219, 35.106262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692116, 35.292946, 35.187176>,  <38.680752, 35.058182, 35.235722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692116, 35.292946, 35.187176>,  <38.711056, 35.684219, 35.106262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692116, 35.292946, 35.187176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143613, -0.193738, -0.970485,
		0.988501, -0.075000, -0.131307,
		-0.047347, -0.978182, 0.202281,
		38.677910, 34.999493, 35.247860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361641, 35.269459, 34.931580>,  <38.711056, 35.684219, 35.106262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361641, 35.269459, 34.931580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035477, 35.039253, 34.906639>,  <38.839779, 34.901131, 34.891674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035477, 35.039253, 34.906639>,  <39.361641, 35.269459, 34.931580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035477, 35.039253, 34.906639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008036, 0.118945, -0.992868,
		0.578826, -0.809095, -0.101614,
		-0.815411, -0.575515, -0.062347,
		38.790852, 34.866600, 34.887936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484852, 34.768078, 34.402439>,  <39.361641, 35.269459, 34.931580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484852, 34.768078, 34.402439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086533, 34.734840, 34.417866>,  <38.847542, 34.714897, 34.427120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086533, 34.734840, 34.417866>,  <39.484852, 34.768078, 34.402439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086533, 34.734840, 34.417866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012958, -0.288976, -0.957248,
		0.090683, -0.953723, 0.286685,
		-0.995796, -0.083092, 0.038563,
		38.787792, 34.709911, 34.429436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384552, 34.052265, 34.100880>,  <39.484852, 34.768078, 34.402439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384552, 34.052265, 34.100880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015446, 34.206341, 34.096222>,  <38.793983, 34.298786, 34.093430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015446, 34.206341, 34.096222>,  <39.384552, 34.052265, 34.100880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015446, 34.206341, 34.096222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102977, -0.275579, -0.955747,
		-0.371351, -0.880730, 0.293960,
		-0.922764, 0.385189, -0.011641,
		38.738617, 34.321896, 34.092731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711834, 33.522400, 33.957596>,  <39.384552, 34.052265, 34.100880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711834, 33.522400, 33.957596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661087, 33.898552, 33.831371>,  <38.630638, 34.124245, 33.755634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661087, 33.898552, 33.831371>,  <38.711834, 33.522400, 33.957596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661087, 33.898552, 33.831371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042712, -0.312661, -0.948904,
		-0.991000, -0.133863, -0.000499,
		-0.126867, 0.940385, -0.315565,
		38.623028, 34.180668, 33.736702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021587, 33.699577, 34.687511>,  <38.711834, 33.522400, 33.957596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021587, 33.699577, 34.687511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363308, 33.540203, 34.553993>,  <39.568340, 33.444576, 34.473881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363308, 33.540203, 34.553993>,  <39.021587, 33.699577, 34.687511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363308, 33.540203, 34.553993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484981, 0.842046, 0.236118,
		0.186995, -0.363600, 0.912594,
		0.854299, -0.398438, -0.333798,
		39.619598, 33.420673, 34.453854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679802, 33.632729, 35.102070>,  <39.021587, 33.699577, 34.687511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679802, 33.632729, 35.102070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768059, 33.718334, 34.721436>,  <39.821014, 33.769699, 34.493053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768059, 33.718334, 34.721436>,  <39.679802, 33.632729, 35.102070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768059, 33.718334, 34.721436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546221, 0.781174, 0.302342,
		0.808060, -0.586484, 0.055459,
		0.220642, 0.214018, -0.951585,
		39.834251, 33.782539, 34.435959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417374, 33.626419, 35.004478>,  <39.679802, 33.632729, 35.102070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417374, 33.626419, 35.004478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179947, 33.875183, 34.800163>,  <40.037491, 34.024441, 34.677574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179947, 33.875183, 34.800163>,  <40.417374, 33.626419, 35.004478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179947, 33.875183, 34.800163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490690, 0.782736, 0.382815,
		0.637891, -0.023414, -0.769771,
		-0.593565, 0.621913, -0.510789,
		40.001877, 34.061756, 34.646927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097843, 33.280975, 34.749752>,  <40.417374, 33.626419, 35.004478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097843, 33.280975, 34.749752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313030, 33.590786, 34.616669>,  <41.442142, 33.776672, 34.536819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313030, 33.590786, 34.616669>,  <41.097843, 33.280975, 34.749752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313030, 33.590786, 34.616669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828226, 0.412177, -0.379673,
		-0.156934, 0.479808, 0.863224,
		0.537972, 0.774528, -0.332705,
		41.474422, 33.823143, 34.516857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776333, 33.499527, 35.011372>,  <41.097843, 33.280975, 34.749752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776333, 33.499527, 35.011372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084137, 33.522167, 35.265820>,  <42.268818, 33.535751, 35.418488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084137, 33.522167, 35.265820>,  <41.776333, 33.499527, 35.011372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084137, 33.522167, 35.265820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290472, -0.856049, 0.427558,
		0.568751, -0.513786, -0.642298,
		0.769512, 0.056604, 0.636119,
		42.314991, 33.539150, 35.456654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251289, 32.901829, 34.917061>,  <41.776333, 33.499527, 35.011372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251289, 32.901829, 34.917061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222424, 33.061539, 35.282654>,  <42.205105, 33.157364, 35.502010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222424, 33.061539, 35.282654>,  <42.251289, 32.901829, 34.917061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222424, 33.061539, 35.282654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352213, -0.867538, 0.351176,
		0.933133, -0.296573, 0.203240,
		-0.072169, 0.399277, 0.913985,
		42.200771, 33.181320, 35.556850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578659, 32.383987, 35.394581>,  <42.251289, 32.901829, 34.917061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578659, 32.383987, 35.394581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329967, 32.629635, 35.589027>,  <42.180752, 32.777023, 35.705696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329967, 32.629635, 35.589027>,  <42.578659, 32.383987, 35.394581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329967, 32.629635, 35.589027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448425, -0.787969, 0.421924,
		0.642157, 0.044335, 0.765290,
		-0.621731, 0.614116, 0.486119,
		42.143448, 32.813869, 35.734863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978725, 32.842384, 35.741043>,  <42.578659, 32.383987, 35.394581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978725, 32.842384, 35.741043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993973, 33.178242, 35.524323>,  <43.003120, 33.379757, 35.394291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993973, 33.178242, 35.524323>,  <42.978725, 32.842384, 35.741043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993973, 33.178242, 35.524323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933402, 0.163678, 0.319328,
		0.356802, -0.517886, -0.777487,
		0.038119, 0.839645, -0.541797,
		43.005409, 33.430134, 35.361782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519936, 32.981335, 35.232624>,  <42.978725, 32.842384, 35.741043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519936, 32.981335, 35.232624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413567, 33.339691, 35.374985>,  <43.349747, 33.554703, 35.460403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413567, 33.339691, 35.374985>,  <43.519936, 32.981335, 35.232624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413567, 33.339691, 35.374985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963241, 0.232341, 0.134852,
		0.038120, 0.378683, -0.924741,
		-0.265921, 0.895889, 0.355906,
		43.333790, 33.608459, 35.481758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692863, 33.553410, 34.842026>,  <43.519936, 32.981335, 35.232624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692863, 33.553410, 34.842026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666920, 33.688480, 35.217636>,  <43.651352, 33.769524, 35.443001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666920, 33.688480, 35.217636>,  <43.692863, 33.553410, 34.842026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666920, 33.688480, 35.217636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995944, 0.080702, 0.039771,
		-0.062352, 0.937796, -0.341541,
		-0.064861, 0.337676, 0.939025,
		43.647461, 33.789783, 35.499344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009380, 34.299900, 34.912876>,  <43.692863, 33.553410, 34.842026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009380, 34.299900, 34.912876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030495, 34.044483, 35.219986>,  <44.043163, 33.891235, 35.404251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030495, 34.044483, 35.219986>,  <44.009380, 34.299900, 34.912876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030495, 34.044483, 35.219986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998304, 0.052637, -0.024857,
		-0.024541, 0.767787, 0.640235,
		0.052785, -0.638539, 0.767777,
		44.046329, 33.852921, 35.450317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448486, 34.576756, 35.439743>,  <44.009380, 34.299900, 34.912876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448486, 34.576756, 35.439743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464813, 34.178288, 35.470665>,  <44.474609, 33.939205, 35.489220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464813, 34.178288, 35.470665>,  <44.448486, 34.576756, 35.439743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464813, 34.178288, 35.470665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991992, 0.031144, -0.122401,
		0.119525, 0.081686, 0.989465,
		0.040814, -0.996171, 0.077309,
		44.477058, 33.879436, 35.493858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886936, 34.376629, 36.018799>,  <44.448486, 34.576756, 35.439743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886936, 34.376629, 36.018799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897041, 34.116726, 35.714912>,  <44.903103, 33.960785, 35.532581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897041, 34.116726, 35.714912>,  <44.886936, 34.376629, 36.018799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897041, 34.116726, 35.714912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985210, 0.145021, -0.091273,
		0.169481, -0.746178, 0.643813,
		0.025261, -0.649760, -0.759720,
		44.904621, 33.921799, 35.486996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261932, 33.701385, 36.158062>,  <44.886936, 34.376629, 36.018799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261932, 33.701385, 36.158062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263042, 33.860748, 35.791180>,  <45.263710, 33.956367, 35.571053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263042, 33.860748, 35.791180>,  <45.261932, 33.701385, 36.158062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263042, 33.860748, 35.791180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962083, 0.249098, 0.111116,
		0.272744, -0.882735, -0.382610,
		0.002779, 0.398409, -0.917204,
		45.263878, 33.980270, 35.516018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564556, 33.258892, 35.571686>,  <45.261932, 33.701385, 36.158062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564556, 33.258892, 35.571686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624817, 33.652714, 35.536011>,  <45.660973, 33.889008, 35.514606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624817, 33.652714, 35.536011>,  <45.564556, 33.258892, 35.571686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624817, 33.652714, 35.536011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981476, -0.138154, 0.132736,
		0.118364, -0.107533, -0.987130,
		0.150650, 0.984556, -0.089188,
		45.670013, 33.948082, 35.509254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149181, 33.341610, 35.390106>,  <45.564556, 33.258892, 35.571686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149181, 33.341610, 35.390106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096226, 33.727951, 35.479187>,  <46.064453, 33.959755, 35.532635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096226, 33.727951, 35.479187>,  <46.149181, 33.341610, 35.390106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096226, 33.727951, 35.479187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990811, 0.135228, 0.002529,
		-0.027673, 0.220993, -0.974883,
		-0.132390, 0.965855, 0.222705,
		46.056507, 34.017708, 35.545998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.526169, 33.749252, 34.935394>,  <46.149181, 33.341610, 35.390106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.526169, 33.749252, 34.935394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495914, 34.029388, 35.219311>,  <46.477760, 34.197472, 35.389660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495914, 34.029388, 35.219311>,  <46.526169, 33.749252, 34.935394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495914, 34.029388, 35.219311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986783, 0.154880, -0.047664,
		-0.143313, 0.696800, -0.702802,
		-0.075638, 0.700344, 0.709787,
		46.473225, 34.239491, 35.432247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.816025, 34.438000, 34.750198>,  <46.526169, 33.749252, 34.935394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.816025, 34.438000, 34.750198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849888, 34.410061, 35.147781>,  <46.870205, 34.393299, 35.386330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849888, 34.410061, 35.147781>,  <46.816025, 34.438000, 34.750198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.849888, 34.410061, 35.147781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969581, 0.235698, -0.066021,
		-0.229663, 0.969313, 0.087677,
		0.084660, -0.069847, 0.993959,
		46.875286, 34.389107, 35.445969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.864296, 35.157082, 35.035229>,  <46.816025, 34.438000, 34.750198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.864296, 35.157082, 35.035229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.058140, 34.850285, 35.203457>,  <47.174446, 34.666206, 35.304394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.058140, 34.850285, 35.203457>,  <46.864296, 35.157082, 35.035229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.058140, 34.850285, 35.203457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874727, 0.426537, -0.230042,
		-0.002950, 0.479367, 0.877610,
		0.484608, -0.766990, 0.420573,
		47.203522, 34.620186, 35.329628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.494415, 35.378819, 35.439125>,  <46.864296, 35.157082, 35.035229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.494415, 35.378819, 35.439125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638203, 35.023880, 35.323616>,  <47.724476, 34.810917, 35.254311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638203, 35.023880, 35.323616>,  <47.494415, 35.378819, 35.439125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.638203, 35.023880, 35.323616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737661, 0.459746, -0.494459,
		0.571520, -0.035271, 0.819830,
		0.359473, -0.887350, -0.288772,
		47.746044, 34.757675, 35.236984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.198605, 33.415657, 25.187870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.855068, 33.615547, 25.232887>,  <32.648945, 33.735481, 25.259897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.855068, 33.615547, 25.232887>,  <33.198605, 33.415657, 25.187870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855068, 33.615547, 25.232887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206870, -0.539365, 0.816266,
		0.468609, 0.677763, 0.566607,
		-0.858843, 0.499723, 0.112542,
		32.597416, 33.765465, 25.266649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213837, 33.644264, 25.914679>,  <33.198605, 33.415657, 25.187870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213837, 33.644264, 25.914679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.840164, 33.657906, 25.772614>,  <32.615959, 33.666092, 25.687374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.840164, 33.657906, 25.772614>,  <33.213837, 33.644264, 25.914679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840164, 33.657906, 25.772614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336765, -0.413116, 0.846123,
		-0.117869, 0.910039, 0.397410,
		-0.934182, 0.034102, -0.355163,
		32.559910, 33.668137, 25.666065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753330, 33.967941, 26.486532>,  <33.213837, 33.644264, 25.914679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753330, 33.967941, 26.486532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.491409, 33.758354, 26.268652>,  <32.334255, 33.632603, 26.137924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.491409, 33.758354, 26.268652>,  <32.753330, 33.967941, 26.486532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491409, 33.758354, 26.268652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302668, -0.478592, 0.824222,
		-0.692551, 0.704565, 0.154796,
		-0.654802, -0.523964, -0.544698,
		32.294968, 33.601166, 26.105242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079533, 34.081902, 26.740797>,  <32.753330, 33.967941, 26.486532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079533, 34.081902, 26.740797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.061916, 33.731548, 26.548597>,  <32.051346, 33.521336, 26.433277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.061916, 33.731548, 26.548597>,  <32.079533, 34.081902, 26.740797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061916, 33.731548, 26.548597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450669, -0.411831, 0.792018,
		-0.891604, 0.251428, -0.376598,
		-0.044040, -0.875888, -0.480501,
		32.048706, 33.468781, 26.404448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453646, 33.927746, 26.904463>,  <32.079533, 34.081902, 26.740797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453646, 33.927746, 26.904463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.629541, 33.587708, 26.788557>,  <31.735079, 33.383682, 26.719013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.629541, 33.587708, 26.788557>,  <31.453646, 33.927746, 26.904463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629541, 33.587708, 26.788557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369265, -0.465231, 0.804490,
		-0.818703, -0.246764, -0.518491,
		0.439737, -0.850099, -0.289764,
		31.761463, 33.332680, 26.701628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913019, 33.448563, 27.021704>,  <31.453646, 33.927746, 26.904463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913019, 33.448563, 27.021704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.260612, 33.251583, 27.002274>,  <31.469168, 33.133396, 26.990616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.260612, 33.251583, 27.002274>,  <30.913019, 33.448563, 27.021704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260612, 33.251583, 27.002274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215690, -0.465291, 0.858477,
		-0.445356, -0.735527, -0.510547,
		0.868985, -0.492448, -0.048574,
		31.521307, 33.103848, 26.987700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771168, 32.759632, 27.232361>,  <30.913019, 33.448563, 27.021704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771168, 32.759632, 27.232361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.170975, 32.761108, 27.244717>,  <31.410858, 32.761993, 27.252131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.170975, 32.761108, 27.244717>,  <30.771168, 32.759632, 27.232361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170975, 32.761108, 27.244717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021731, -0.627541, 0.778280,
		0.022260, -0.778575, -0.627157,
		0.999516, 0.003695, 0.030888,
		31.470829, 32.762218, 27.253983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970398, 32.028343, 27.351992>,  <30.771168, 32.759632, 27.232361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970398, 32.028343, 27.351992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.286373, 32.255215, 27.445202>,  <31.475958, 32.391338, 27.501129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.286373, 32.255215, 27.445202>,  <30.970398, 32.028343, 27.351992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286373, 32.255215, 27.445202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100657, -0.494816, 0.863149,
		0.604868, -0.658379, -0.447965,
		0.789939, 0.567182, 0.233027,
		31.523355, 32.425369, 27.515110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422548, 31.543327, 27.675674>,  <30.970398, 32.028343, 27.351992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422548, 31.543327, 27.675674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.507507, 31.922720, 27.769714>,  <31.558483, 32.150356, 27.826138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.507507, 31.922720, 27.769714>,  <31.422548, 31.543327, 27.675674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507507, 31.922720, 27.769714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022273, -0.235828, 0.971540,
		0.976929, -0.211590, -0.028964,
		0.212399, 0.948480, 0.235100,
		31.571226, 32.207264, 27.840244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926245, 31.470881, 28.208387>,  <31.422548, 31.543327, 27.675674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926245, 31.470881, 28.208387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.789917, 31.844162, 28.253946>,  <31.708120, 32.068130, 28.281282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.789917, 31.844162, 28.253946>,  <31.926245, 31.470881, 28.208387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789917, 31.844162, 28.253946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137099, -0.070520, 0.988044,
		0.930078, 0.352360, -0.103907,
		-0.340820, 0.933204, 0.113897,
		31.687672, 32.124123, 28.288115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471153, 31.800505, 28.681555>,  <31.926245, 31.470881, 28.208387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471153, 31.800505, 28.681555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.114605, 31.980042, 28.706820>,  <31.900675, 32.087765, 28.721979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.114605, 31.980042, 28.706820>,  <32.471153, 31.800505, 28.681555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114605, 31.980042, 28.706820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007601, -0.154135, 0.988021,
		0.453203, 0.880217, 0.140804,
		-0.891375, 0.448844, 0.063164,
		31.847193, 32.114697, 28.725769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540504, 32.196510, 29.318062>,  <32.471153, 31.800505, 28.681555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540504, 32.196510, 29.318062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.150402, 32.158176, 29.238369>,  <31.916342, 32.135174, 29.190554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.150402, 32.158176, 29.238369>,  <32.540504, 32.196510, 29.318062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150402, 32.158176, 29.238369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194512, -0.056407, 0.979277,
		-0.105090, 0.993797, 0.036370,
		-0.975255, -0.095838, -0.199233,
		31.857826, 32.129425, 29.178598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186619, 32.639061, 29.763161>,  <32.540504, 32.196510, 29.318062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186619, 32.639061, 29.763161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.897394, 32.381149, 29.664011>,  <31.723860, 32.226402, 29.604521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.897394, 32.381149, 29.664011>,  <32.186619, 32.639061, 29.763161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897394, 32.381149, 29.664011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129025, -0.226454, 0.965439,
		-0.678629, 0.730051, 0.080547,
		-0.723059, -0.644782, -0.247873,
		31.680477, 32.187714, 29.589649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633633, 32.719650, 30.277191>,  <32.186619, 32.639061, 29.763161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633633, 32.719650, 30.277191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613001, 32.355221, 30.113588>,  <31.600622, 32.136562, 30.015427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613001, 32.355221, 30.113588>,  <31.633633, 32.719650, 30.277191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613001, 32.355221, 30.113588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055542, -0.406300, 0.912050,
		-0.997123, 0.069758, -0.029647,
		-0.051577, -0.911073, -0.409006,
		31.597528, 32.081898, 29.990887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097506, 32.440018, 30.721804>,  <31.633633, 32.719650, 30.277191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097506, 32.440018, 30.721804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.267223, 32.136837, 30.523621>,  <31.369053, 31.954927, 30.404711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.267223, 32.136837, 30.523621>,  <31.097506, 32.440018, 30.721804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267223, 32.136837, 30.523621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136506, -0.594435, 0.792473,
		-0.895177, -0.268607, -0.355680,
		0.424292, -0.757956, -0.495458,
		31.394510, 31.909451, 30.374983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684357, 31.831146, 30.850145>,  <31.097506, 32.440018, 30.721804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684357, 31.831146, 30.850145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.035042, 31.670998, 30.743502>,  <31.245453, 31.574909, 30.679516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.035042, 31.670998, 30.743502>,  <30.684357, 31.831146, 30.850145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035042, 31.670998, 30.743502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095858, -0.688566, 0.718810,
		-0.471370, -0.604632, -0.642052,
		0.876711, -0.400371, -0.266610,
		31.298056, 31.550886, 30.663519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667337, 31.037672, 30.857553>,  <30.684357, 31.831146, 30.850145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667337, 31.037672, 30.857553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.056217, 31.128817, 30.879131>,  <31.289545, 31.183504, 30.892078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.056217, 31.128817, 30.879131>,  <30.667337, 31.037672, 30.857553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056217, 31.128817, 30.879131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155287, -0.799808, 0.579822,
		0.175264, -0.555325, -0.812955,
		0.972198, 0.227864, 0.053943,
		31.347876, 31.197176, 30.895313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048731, 30.390036, 30.883587>,  <30.667337, 31.037672, 30.857553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048731, 30.390036, 30.883587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.329222, 30.651350, 30.997778>,  <31.497517, 30.808138, 31.066292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.329222, 30.651350, 30.997778>,  <31.048731, 30.390036, 30.883587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329222, 30.651350, 30.997778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382597, -0.682708, 0.622518,
		0.601579, -0.327305, -0.728679,
		0.701229, 0.653285, 0.285477,
		31.539591, 30.847336, 31.083422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779301, 30.068789, 30.765146>,  <31.048731, 30.390036, 30.883587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779301, 30.068789, 30.765146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.782709, 30.364611, 31.034363>,  <31.784754, 30.542105, 31.195892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.782709, 30.364611, 31.034363>,  <31.779301, 30.068789, 30.765146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782709, 30.364611, 31.034363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383008, -0.624151, 0.680984,
		0.923705, 0.251976, -0.288576,
		0.008523, 0.739556, 0.673041,
		31.785267, 30.586477, 31.236275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318832, 29.909405, 31.269176>,  <31.779301, 30.068789, 30.765146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318832, 29.909405, 31.269176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.146198, 30.193399, 31.491762>,  <32.042618, 30.363796, 31.625313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.146198, 30.193399, 31.491762>,  <32.318832, 29.909405, 31.269176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146198, 30.193399, 31.491762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333219, -0.447766, 0.829741,
		0.838272, 0.543528, -0.043333,
		-0.431584, 0.709988, 0.556463,
		32.016724, 30.406397, 31.658701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766537, 30.176495, 31.768316>,  <32.318832, 29.909405, 31.269176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766537, 30.176495, 31.768316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.403030, 30.257572, 31.914227>,  <32.184925, 30.306219, 32.001774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.403030, 30.257572, 31.914227>,  <32.766537, 30.176495, 31.768316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403030, 30.257572, 31.914227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242380, -0.455189, 0.856770,
		0.339702, 0.867017, 0.364532,
		-0.908765, 0.202692, 0.364776,
		32.130402, 30.318380, 32.023659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909924, 30.272947, 32.402428>,  <32.766537, 30.176495, 31.768316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909924, 30.272947, 32.402428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.514076, 30.235409, 32.445980>,  <32.276569, 30.212885, 32.472115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.514076, 30.235409, 32.445980>,  <32.909924, 30.272947, 32.402428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514076, 30.235409, 32.445980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142955, -0.563067, 0.813953,
		-0.015077, 0.821065, 0.570635,
		-0.989614, -0.093847, 0.108886,
		32.217194, 30.207254, 32.478645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250999, 30.796772, 32.848404>,  <32.909924, 30.272947, 32.402428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250999, 30.796772, 32.848404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.480320, 31.076328, 33.019459>,  <33.617912, 31.244062, 33.122093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.480320, 31.076328, 33.019459>,  <33.250999, 30.796772, 32.848404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480320, 31.076328, 33.019459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193944, 0.391338, -0.899578,
		-0.796057, 0.598670, 0.088810,
		0.573305, 0.698891, 0.427636,
		33.652313, 31.285995, 33.147751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062778, 31.430952, 32.508617>,  <33.250999, 30.796772, 32.848404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062778, 31.430952, 32.508617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.432175, 31.461603, 32.658974>,  <33.653812, 31.479994, 32.749187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.432175, 31.461603, 32.658974>,  <33.062778, 31.430952, 32.508617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432175, 31.461603, 32.658974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328312, 0.348966, -0.877744,
		-0.198434, 0.933997, 0.297108,
		0.923491, 0.076630, 0.375889,
		33.709221, 31.484592, 32.771740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333973, 32.150967, 32.560440>,  <33.062778, 31.430952, 32.508617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333973, 32.150967, 32.560440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.628120, 31.881014, 32.535904>,  <33.804607, 31.719042, 32.521183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.628120, 31.881014, 32.535904>,  <33.333973, 32.150967, 32.560440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628120, 31.881014, 32.535904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367272, 0.472979, -0.800876,
		0.569512, 0.566410, 0.595681,
		0.735369, -0.674885, -0.061340,
		33.848732, 31.678549, 32.517502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938450, 32.486057, 32.494442>,  <33.333973, 32.150967, 32.560440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938450, 32.486057, 32.494442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.049946, 32.141312, 32.324978>,  <34.116844, 31.934464, 32.223301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.049946, 32.141312, 32.324978>,  <33.938450, 32.486057, 32.494442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049946, 32.141312, 32.324978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325030, 0.499774, -0.802858,
		0.903691, 0.086090, 0.419442,
		0.278744, -0.861867, -0.423660,
		34.133568, 31.882751, 32.197880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681576, 32.608990, 32.240810>,  <33.938450, 32.486057, 32.494442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681576, 32.608990, 32.240810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.540295, 32.289539, 32.045895>,  <34.455524, 32.097870, 31.928946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.540295, 32.289539, 32.045895>,  <34.681576, 32.608990, 32.240810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540295, 32.289539, 32.045895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496433, 0.281487, -0.821169,
		0.792969, -0.531946, 0.297041,
		-0.353205, -0.798623, -0.487286,
		34.434334, 32.049953, 31.899710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193985, 32.483292, 31.800158>,  <34.681576, 32.608990, 32.240810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193985, 32.483292, 31.800158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910969, 32.238853, 31.658195>,  <34.741161, 32.092190, 31.573019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910969, 32.238853, 31.658195>,  <35.193985, 32.483292, 31.800158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910969, 32.238853, 31.658195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289695, 0.207260, -0.934409,
		0.644570, -0.763941, 0.030387,
		-0.707536, -0.611095, -0.354904,
		34.698708, 32.055527, 31.551723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561878, 32.057312, 31.448704>,  <35.193985, 32.483292, 31.800158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561878, 32.057312, 31.448704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.191547, 32.110264, 31.307098>,  <34.969349, 32.142033, 31.222136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.191547, 32.110264, 31.307098>,  <35.561878, 32.057312, 31.448704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191547, 32.110264, 31.307098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377545, 0.280415, -0.882512,
		-0.017555, -0.950707, -0.309594,
		-0.925825, 0.132378, -0.354011,
		34.913799, 32.149979, 31.200895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609737, 32.111614, 30.695820>,  <35.561878, 32.057312, 31.448704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609737, 32.111614, 30.695820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224365, 32.208363, 30.741936>,  <34.993141, 32.266411, 30.769606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224365, 32.208363, 30.741936>,  <35.609737, 32.111614, 30.695820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224365, 32.208363, 30.741936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031659, 0.324499, -0.945356,
		-0.266066, -0.914439, -0.304976,
		-0.963435, 0.241872, 0.115288,
		34.935333, 32.280926, 30.776522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197746, 31.785757, 30.104826>,  <35.609737, 32.111614, 30.695820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197746, 31.785757, 30.104826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994152, 32.102146, 30.240646>,  <34.871994, 32.291981, 30.322138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994152, 32.102146, 30.240646>,  <35.197746, 31.785757, 30.104826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994152, 32.102146, 30.240646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088204, 0.344466, -0.934646,
		-0.856244, -0.505671, -0.105562,
		-0.508986, 0.790974, 0.339549,
		34.841457, 32.339439, 30.342510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679222, 31.862337, 29.614450>,  <35.197746, 31.785757, 30.104826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679222, 31.862337, 29.614450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751984, 32.213486, 29.791651>,  <34.795643, 32.424175, 29.897972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751984, 32.213486, 29.791651>,  <34.679222, 31.862337, 29.614450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751984, 32.213486, 29.791651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204722, 0.474458, -0.856141,
		-0.961768, 0.065046, 0.266027,
		0.181907, 0.877872, 0.443002,
		34.806557, 32.476849, 29.924551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128052, 32.289558, 29.404406>,  <34.679222, 31.862337, 29.614450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128052, 32.289558, 29.404406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420845, 32.539379, 29.513321>,  <34.596519, 32.689270, 29.578671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420845, 32.539379, 29.513321>,  <34.128052, 32.289558, 29.404406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420845, 32.539379, 29.513321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043511, 0.441677, -0.896118,
		-0.679934, 0.644094, 0.350474,
		0.731981, 0.624551, 0.272286,
		34.640438, 32.726746, 29.595007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857716, 32.978600, 29.075958>,  <34.128052, 32.289558, 29.404406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857716, 32.978600, 29.075958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.250259, 33.025604, 29.136787>,  <34.485786, 33.053806, 29.173285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.250259, 33.025604, 29.136787>,  <33.857716, 32.978600, 29.075958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250259, 33.025604, 29.136787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062066, 0.555095, -0.829468,
		-0.181892, 0.823443, 0.537454,
		0.981358, 0.117516, 0.152075,
		34.544666, 33.060860, 29.182409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043148, 33.675087, 28.939392>,  <33.857716, 32.978600, 29.075958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043148, 33.675087, 28.939392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393509, 33.482975, 28.920959>,  <34.603725, 33.367706, 28.909901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393509, 33.482975, 28.920959>,  <34.043148, 33.675087, 28.939392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393509, 33.482975, 28.920959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252352, 0.537422, -0.804671,
		0.411234, 0.693185, 0.591930,
		0.875903, -0.480283, -0.046080,
		34.656281, 33.338890, 28.907135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566223, 34.126213, 28.796864>,  <34.043148, 33.675087, 28.939392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566223, 34.126213, 28.796864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728657, 33.787151, 28.660284>,  <34.826115, 33.583714, 28.578337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728657, 33.787151, 28.660284>,  <34.566223, 34.126213, 28.796864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728657, 33.787151, 28.660284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202418, 0.447792, -0.870924,
		0.891137, 0.284550, 0.353420,
		0.406080, -0.847652, -0.341447,
		34.850479, 33.532856, 28.557850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188309, 34.309761, 28.414194>,  <34.566223, 34.126213, 28.796864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188309, 34.309761, 28.414194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103561, 33.941750, 28.282341>,  <35.052711, 33.720943, 28.203230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103561, 33.941750, 28.282341>,  <35.188309, 34.309761, 28.414194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103561, 33.941750, 28.282341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104975, 0.313912, -0.943631,
		0.971643, -0.234531, 0.030071,
		-0.211871, -0.920029, -0.329631,
		35.040001, 33.665741, 28.183453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599819, 34.311619, 27.833073>,  <35.188309, 34.309761, 28.414194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599819, 34.311619, 27.833073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.375320, 33.987862, 27.763926>,  <35.240620, 33.793606, 27.722437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.375320, 33.987862, 27.763926>,  <35.599819, 34.311619, 27.833073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375320, 33.987862, 27.763926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138471, 0.114090, -0.983773,
		0.815981, -0.576079, 0.048044,
		-0.561250, -0.809392, -0.172866,
		35.206944, 33.745045, 27.712067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932491, 33.886158, 27.335665>,  <35.599819, 34.311619, 27.833073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932491, 33.886158, 27.335665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.543049, 33.796387, 27.319090>,  <35.309383, 33.742523, 27.309145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.543049, 33.796387, 27.319090>,  <35.932491, 33.886158, 27.335665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543049, 33.796387, 27.319090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007527, 0.213047, -0.977013,
		0.228101, -0.950916, -0.209113,
		-0.973608, -0.224432, -0.041439,
		35.250965, 33.729061, 27.306658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844345, 33.433006, 26.735922>,  <35.932491, 33.886158, 27.335665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844345, 33.433006, 26.735922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.472809, 33.574184, 26.780966>,  <35.249886, 33.658894, 26.807991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.472809, 33.574184, 26.780966>,  <35.844345, 33.433006, 26.735922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472809, 33.574184, 26.780966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015181, 0.267438, -0.963456,
		-0.370168, -0.896606, -0.243049,
		-0.928841, 0.352951, 0.112609,
		35.194157, 33.680069, 26.814749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.396664, 33.182102, 26.127571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192589, 33.477577, 26.303776>,  <35.070145, 33.654861, 26.409498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192589, 33.477577, 26.303776>,  <35.396664, 33.182102, 26.127571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192589, 33.477577, 26.303776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241577, 0.368485, -0.897697,
		-0.825440, -0.564409, -0.009545,
		-0.510185, 0.738689, 0.440511,
		35.039532, 33.699184, 26.435928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633392, 33.163338, 25.839558>,  <35.396664, 33.182102, 26.127571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633392, 33.163338, 25.839558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.739887, 33.527634, 25.965837>,  <34.803783, 33.746212, 26.041605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.739887, 33.527634, 25.965837>,  <34.633392, 33.163338, 25.839558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739887, 33.527634, 25.965837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242107, 0.380202, -0.892653,
		-0.933007, 0.161223, 0.321721,
		0.266235, 0.910743, 0.315699,
		34.819759, 33.800858, 26.060547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058746, 33.488670, 25.609350>,  <34.633392, 33.163338, 25.839558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058746, 33.488670, 25.609350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.343643, 33.759914, 25.681877>,  <34.514584, 33.922661, 25.725393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.343643, 33.759914, 25.681877>,  <34.058746, 33.488670, 25.609350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343643, 33.759914, 25.681877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180952, 0.426959, -0.885981,
		-0.678207, 0.598226, 0.426804,
		0.712245, 0.678109, 0.181317,
		34.557316, 33.963348, 25.736273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799141, 34.112217, 25.370934>,  <34.058746, 33.488670, 25.609350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799141, 34.112217, 25.370934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.182583, 34.222355, 25.399921>,  <34.412647, 34.288437, 25.417315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.182583, 34.222355, 25.399921>,  <33.799141, 34.112217, 25.370934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182583, 34.222355, 25.399921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075259, 0.490513, -0.868178,
		-0.274600, 0.826789, 0.490932,
		0.958609, 0.275349, 0.072472,
		34.470165, 34.304958, 25.421663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843819, 34.848606, 25.104116>,  <33.799141, 34.112217, 25.370934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843819, 34.848606, 25.104116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.214821, 34.699432, 25.093859>,  <34.437424, 34.609928, 25.087704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.214821, 34.699432, 25.093859>,  <33.843819, 34.848606, 25.104116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214821, 34.699432, 25.093859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201710, 0.557064, -0.805601,
		0.314722, 0.742025, 0.591903,
		0.927504, -0.372933, -0.025646,
		34.493073, 34.587551, 25.086164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255634, 35.437515, 24.924833>,  <33.843819, 34.848606, 25.104116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255634, 35.437515, 24.924833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458233, 35.103775, 24.837828>,  <34.579792, 34.903530, 24.785624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458233, 35.103775, 24.837828>,  <34.255634, 35.437515, 24.924833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458233, 35.103775, 24.837828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176511, 0.347256, -0.921009,
		0.843981, 0.428095, 0.323157,
		0.506498, -0.834355, -0.217514,
		34.610184, 34.853470, 24.772573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878273, 35.640533, 24.604380>,  <34.255634, 35.437515, 24.924833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878273, 35.640533, 24.604380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824566, 35.262066, 24.486576>,  <34.792343, 35.034985, 24.415894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824566, 35.262066, 24.486576>,  <34.878273, 35.640533, 24.604380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824566, 35.262066, 24.486576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199707, 0.265263, -0.943267,
		0.970613, -0.185467, 0.153340,
		-0.134269, -0.946170, -0.294507,
		34.784286, 34.978214, 24.398224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465332, 35.421513, 24.184357>,  <34.878273, 35.640533, 24.604380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465332, 35.421513, 24.184357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153030, 35.190300, 24.089447>,  <34.965649, 35.051575, 24.032501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153030, 35.190300, 24.089447>,  <35.465332, 35.421513, 24.184357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153030, 35.190300, 24.089447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136591, 0.212668, -0.967531,
		0.609722, -0.787816, -0.087088,
		-0.780757, -0.578029, -0.237276,
		34.918804, 35.016891, 24.018265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776722, 34.959656, 23.775244>,  <35.465332, 35.421513, 24.184357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776722, 34.959656, 23.775244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384438, 34.960434, 23.697071>,  <35.149067, 34.960899, 23.650167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384438, 34.960434, 23.697071>,  <35.776722, 34.959656, 23.775244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384438, 34.960434, 23.697071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195346, -0.021290, -0.980503,
		-0.006070, -0.999771, 0.020499,
		-0.980716, 0.001947, -0.195430,
		35.090221, 34.961018, 23.638441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750725, 34.394699, 23.355206>,  <35.776722, 34.959656, 23.775244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750725, 34.394699, 23.355206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.450748, 34.655235, 23.308990>,  <35.270763, 34.811558, 23.281261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.450748, 34.655235, 23.308990>,  <35.750725, 34.394699, 23.355206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450748, 34.655235, 23.308990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242578, 0.108292, -0.964069,
		-0.615422, -0.751022, -0.239212,
		-0.749941, 0.651337, -0.115536,
		35.225765, 34.850636, 23.274330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445305, 34.361069, 22.648252>,  <35.750725, 34.394699, 23.355206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445305, 34.361069, 22.648252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280102, 34.708954, 22.756350>,  <35.180981, 34.917683, 22.821207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280102, 34.708954, 22.756350>,  <35.445305, 34.361069, 22.648252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280102, 34.708954, 22.756350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073955, 0.263725, -0.961759,
		-0.907720, -0.417198, -0.044601,
		-0.413007, 0.869710, 0.270242,
		35.156200, 34.969868, 22.837421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874767, 34.611752, 22.168083>,  <35.445305, 34.361069, 22.648252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874767, 34.611752, 22.168083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.975079, 34.953800, 22.349579>,  <35.035267, 35.159031, 22.458475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.975079, 34.953800, 22.349579>,  <34.874767, 34.611752, 22.168083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975079, 34.953800, 22.349579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201866, 0.504606, -0.839418,
		-0.946763, 0.118915, 0.299165,
		0.250780, 0.855121, 0.453738,
		35.050312, 35.210335, 22.485701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465954, 35.094120, 21.807755>,  <34.874767, 34.611752, 22.168083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465954, 35.094120, 21.807755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.746807, 35.314800, 21.987814>,  <34.915321, 35.447208, 22.095850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.746807, 35.314800, 21.987814>,  <34.465954, 35.094120, 21.807755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746807, 35.314800, 21.987814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068583, 0.681652, -0.728455,
		-0.708733, 0.480601, 0.516449,
		0.702135, 0.551700, 0.450149,
		34.957447, 35.480309, 22.122858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163147, 35.671501, 21.707272>,  <34.465954, 35.094120, 21.807755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163147, 35.671501, 21.707272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540817, 35.776592, 21.786781>,  <34.767418, 35.839645, 21.834488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540817, 35.776592, 21.786781>,  <34.163147, 35.671501, 21.707272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540817, 35.776592, 21.786781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040457, 0.506320, -0.861396,
		-0.326957, 0.821349, 0.467425,
		0.944173, 0.262729, 0.198774,
		34.824070, 35.855412, 21.846413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243919, 36.369926, 21.756325>,  <34.163147, 35.671501, 21.707272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243919, 36.369926, 21.756325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610073, 36.232658, 21.672136>,  <34.829765, 36.150295, 21.621622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610073, 36.232658, 21.672136>,  <34.243919, 36.369926, 21.756325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610073, 36.232658, 21.672136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040356, 0.598404, -0.800178,
		0.400548, 0.723978, 0.561620,
		0.915387, -0.343174, -0.210472,
		34.884689, 36.129707, 21.608995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801434, 36.964104, 21.683380>,  <34.243919, 36.369926, 21.756325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801434, 36.964104, 21.683380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979633, 36.682983, 21.461531>,  <35.086552, 36.514313, 21.328421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979633, 36.682983, 21.461531>,  <34.801434, 36.964104, 21.683380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979633, 36.682983, 21.461531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186507, 0.678754, -0.710287,
		0.875642, 0.212989, 0.433459,
		0.445496, -0.702800, -0.554622,
		35.113281, 36.472145, 21.295145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316105, 37.269218, 21.317984>,  <34.801434, 36.964104, 21.683380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316105, 37.269218, 21.317984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299454, 36.928074, 21.109795>,  <35.289463, 36.723389, 20.984880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299454, 36.928074, 21.109795>,  <35.316105, 37.269218, 21.317984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299454, 36.928074, 21.109795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152046, 0.509451, -0.846960,
		0.987496, -0.114397, 0.108464,
		-0.041632, -0.852861, -0.520475,
		35.286964, 36.672215, 20.953651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957283, 37.135677, 20.987606>,  <35.316105, 37.269218, 21.317984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957283, 37.135677, 20.987606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666962, 36.951389, 20.783276>,  <35.492767, 36.840816, 20.660677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666962, 36.951389, 20.783276>,  <35.957283, 37.135677, 20.987606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666962, 36.951389, 20.783276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253971, 0.510653, -0.821421,
		0.639305, -0.725924, -0.253621,
		-0.725802, -0.460726, -0.510827,
		35.449223, 36.813171, 20.630028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275833, 36.919937, 20.373890>,  <35.957283, 37.135677, 20.987606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275833, 36.919937, 20.373890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882534, 36.924217, 20.301109>,  <35.646553, 36.926785, 20.257441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882534, 36.924217, 20.301109>,  <36.275833, 36.919937, 20.373890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882534, 36.924217, 20.301109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142430, 0.668021, -0.730384,
		0.113732, -0.744065, -0.658356,
		-0.983249, 0.010701, -0.181953,
		35.587559, 36.927429, 20.246523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204193, 36.793228, 19.683754>,  <36.275833, 36.919937, 20.373890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204193, 36.793228, 19.683754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859035, 36.975883, 19.770382>,  <35.651943, 37.085476, 19.822359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859035, 36.975883, 19.770382>,  <36.204193, 36.793228, 19.683754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859035, 36.975883, 19.770382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127067, 0.610776, -0.781541,
		-0.489155, -0.646866, -0.585057,
		-0.862891, 0.456636, 0.216569,
		35.600166, 37.112873, 19.835352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950073, 37.022888, 19.082748>,  <36.204193, 36.793228, 19.683754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950073, 37.022888, 19.082748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715969, 37.237701, 19.325754>,  <35.575508, 37.366589, 19.471558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715969, 37.237701, 19.325754>,  <35.950073, 37.022888, 19.082748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715969, 37.237701, 19.325754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018637, 0.740127, -0.672209,
		-0.810634, -0.404737, -0.423156,
		-0.585257, 0.537029, 0.607515,
		35.540394, 37.398811, 19.508009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450291, 37.216259, 18.676525>,  <35.950073, 37.022888, 19.082748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450291, 37.216259, 18.676525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457775, 37.505135, 18.953102>,  <35.462265, 37.678459, 19.119049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457775, 37.505135, 18.953102>,  <35.450291, 37.216259, 18.676525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457775, 37.505135, 18.953102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178373, 0.682880, -0.708420,
		-0.983785, -0.110079, 0.141596,
		0.018711, 0.722190, 0.691442,
		35.463390, 37.721790, 19.160534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940781, 37.666428, 18.527630>,  <35.450291, 37.216259, 18.676525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940781, 37.666428, 18.527630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.155376, 37.915398, 18.755583>,  <35.284134, 38.064781, 18.892355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.155376, 37.915398, 18.755583>,  <34.940781, 37.666428, 18.527630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155376, 37.915398, 18.755583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204111, 0.750946, -0.628028,
		-0.818851, 0.220612, 0.529919,
		0.536491, 0.622424, 0.569883,
		35.316322, 38.102123, 18.926548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589104, 38.294437, 18.672806>,  <34.940781, 37.666428, 18.527630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589104, 38.294437, 18.672806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979862, 38.377628, 18.692486>,  <35.214317, 38.427544, 18.704294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979862, 38.377628, 18.692486>,  <34.589104, 38.294437, 18.672806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979862, 38.377628, 18.692486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128033, 0.753835, -0.644469,
		-0.171127, 0.623279, 0.763045,
		0.976894, 0.207982, 0.049201,
		35.272930, 38.440022, 18.707247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958279, 38.284115, 19.025288>,  <34.589104, 38.294437, 18.672806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958279, 38.284115, 19.025288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660000, 38.548054, 18.988329>,  <33.481033, 38.706417, 18.966154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660000, 38.548054, 18.988329>,  <33.958279, 38.284115, 19.025288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660000, 38.548054, 18.988329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364830, -0.288328, 0.885306,
		0.557528, 0.693877, 0.455738,
		-0.745695, 0.659849, -0.092396,
		33.436291, 38.746010, 18.960609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972824, 38.738319, 19.701450>,  <33.958279, 38.284115, 19.025288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972824, 38.738319, 19.701450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.616173, 38.697384, 19.525026>,  <33.402184, 38.672821, 19.419172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.616173, 38.697384, 19.525026>,  <33.972824, 38.738319, 19.701450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616173, 38.697384, 19.525026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383130, -0.348573, 0.855399,
		-0.241285, 0.931677, 0.271586,
		-0.891624, -0.102342, -0.441059,
		33.348686, 38.666679, 19.392708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530025, 39.037117, 20.120272>,  <33.972824, 38.738319, 19.701450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530025, 39.037117, 20.120272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.269157, 38.833935, 19.895185>,  <33.112637, 38.712025, 19.760134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.269157, 38.833935, 19.895185>,  <33.530025, 39.037117, 20.120272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269157, 38.833935, 19.895185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270888, -0.537133, 0.798817,
		-0.708018, 0.673400, 0.212704,
		-0.652174, -0.507958, -0.562715,
		33.073505, 38.681549, 19.726372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867702, 38.988441, 20.501461>,  <33.530025, 39.037117, 20.120272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867702, 38.988441, 20.501461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.834995, 38.678860, 20.250284>,  <32.815369, 38.493111, 20.099579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.834995, 38.678860, 20.250284>,  <32.867702, 38.988441, 20.501461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834995, 38.678860, 20.250284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341983, -0.570010, 0.747085,
		-0.936141, 0.275837, -0.218067,
		-0.081773, -0.773952, -0.627942,
		32.810463, 38.446674, 20.061901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132713, 38.773266, 20.557589>,  <32.867702, 38.988441, 20.501461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132713, 38.773266, 20.557589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.339764, 38.481075, 20.379385>,  <32.463993, 38.305763, 20.272463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.339764, 38.481075, 20.379385>,  <32.132713, 38.773266, 20.557589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339764, 38.481075, 20.379385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300815, -0.642819, 0.704481,
		-0.800987, -0.230637, -0.552473,
		0.517620, -0.730472, -0.445511,
		32.495049, 38.261932, 20.245731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705153, 38.227375, 20.413683>,  <32.132713, 38.773266, 20.557589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705153, 38.227375, 20.413683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.075047, 38.076523, 20.434206>,  <32.296982, 37.986012, 20.446520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.075047, 38.076523, 20.434206>,  <31.705153, 38.227375, 20.413683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075047, 38.076523, 20.434206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328015, -0.721309, 0.610016,
		-0.193051, -0.580933, -0.790726,
		0.924736, -0.377134, 0.051306,
		32.352467, 37.963383, 20.449598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545940, 37.441483, 20.576426>,  <31.705153, 38.227375, 20.413683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545940, 37.441483, 20.576426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.932537, 37.466187, 20.676090>,  <32.164494, 37.481010, 20.735889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.932537, 37.466187, 20.676090>,  <31.545940, 37.441483, 20.576426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932537, 37.466187, 20.676090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089013, -0.829772, 0.550958,
		0.240775, -0.554674, -0.796470,
		0.966491, 0.061760, 0.249162,
		32.222485, 37.484715, 20.750839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799171, 36.733036, 20.628256>,  <31.545940, 37.441483, 20.576426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799171, 36.733036, 20.628256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047714, 36.952000, 20.852489>,  <32.196838, 37.083378, 20.987030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047714, 36.952000, 20.852489>,  <31.799171, 36.733036, 20.628256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047714, 36.952000, 20.852489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055915, -0.744617, 0.665146,
		0.781530, -0.381948, -0.493282,
		0.621357, 0.547414, 0.560583,
		32.234123, 37.116222, 21.020664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398045, 36.256550, 20.743801>,  <31.799171, 36.733036, 20.628256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398045, 36.256550, 20.743801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435299, 36.533558, 21.029947>,  <32.457653, 36.699760, 21.201635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435299, 36.533558, 21.029947>,  <32.398045, 36.256550, 20.743801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435299, 36.533558, 21.029947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285015, -0.706965, 0.647276,
		0.953987, 0.143603, -0.263223,
		0.093139, 0.692516, 0.715365,
		32.463242, 36.741314, 21.244556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889732, 36.038502, 21.165222>,  <32.398045, 36.256550, 20.743801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889732, 36.038502, 21.165222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696346, 36.300407, 21.397615>,  <32.580315, 36.457550, 21.537050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696346, 36.300407, 21.397615>,  <32.889732, 36.038502, 21.165222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696346, 36.300407, 21.397615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078465, -0.628616, 0.773747,
		0.871840, 0.419666, 0.252538,
		-0.483465, 0.654769, 0.580982,
		32.551308, 36.496838, 21.571911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232204, 36.009815, 21.667311>,  <32.889732, 36.038502, 21.165222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232204, 36.009815, 21.667311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.896458, 36.148109, 21.835083>,  <32.695007, 36.231087, 21.935747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.896458, 36.148109, 21.835083>,  <33.232204, 36.009815, 21.667311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896458, 36.148109, 21.835083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148622, -0.596254, 0.788918,
		0.522845, 0.724532, 0.449095,
		-0.839371, 0.345737, 0.419430,
		32.644646, 36.251831, 21.960913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335445, 36.162571, 22.360134>,  <33.232204, 36.009815, 21.667311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335445, 36.162571, 22.360134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936539, 36.164928, 22.389589>,  <32.697193, 36.166344, 22.407263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936539, 36.164928, 22.389589>,  <33.335445, 36.162571, 22.360134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936539, 36.164928, 22.389589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058037, -0.554173, 0.830376,
		0.045704, 0.832380, 0.552317,
		-0.997268, 0.005897, 0.073637,
		32.637360, 36.166698, 22.411680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236771, 36.291447, 23.047127>,  <33.335445, 36.162571, 22.360134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236771, 36.291447, 23.047127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.899502, 36.112438, 22.927938>,  <32.697140, 36.005035, 22.856426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.899502, 36.112438, 22.927938>,  <33.236771, 36.291447, 23.047127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899502, 36.112438, 22.927938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170693, -0.748363, 0.640950,
		-0.509826, 0.489571, 0.707388,
		-0.843174, -0.447519, -0.297969,
		32.646549, 35.978184, 22.838549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877300, 36.181789, 23.623844>,  <33.236771, 36.291447, 23.047127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877300, 36.181789, 23.623844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685425, 35.915176, 23.395586>,  <32.570301, 35.755207, 23.258631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685425, 35.915176, 23.395586>,  <32.877300, 36.181789, 23.623844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685425, 35.915176, 23.395586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036704, -0.634540, 0.772018,
		-0.876672, 0.391271, 0.279916,
		-0.479686, -0.666532, -0.570645,
		32.541519, 35.715218, 23.224392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228031, 36.085255, 23.947819>,  <32.877300, 36.181789, 23.623844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228031, 36.085255, 23.947819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.261063, 35.769867, 23.704016>,  <32.280880, 35.580635, 23.557734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.261063, 35.769867, 23.704016>,  <32.228031, 36.085255, 23.947819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261063, 35.769867, 23.704016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191731, -0.612738, 0.766676,
		-0.977968, 0.053552, -0.201771,
		0.082576, -0.788470, -0.609505,
		32.285835, 35.533325, 23.521164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676785, 35.552425, 24.195679>,  <32.228031, 36.085255, 23.947819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676785, 35.552425, 24.195679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.939146, 35.350086, 23.971569>,  <32.096561, 35.228683, 23.837103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.939146, 35.350086, 23.971569>,  <31.676785, 35.552425, 24.195679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939146, 35.350086, 23.971569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157879, -0.817756, 0.553489,
		-0.738148, -0.274580, -0.616233,
		0.655905, -0.505847, -0.560275,
		32.135918, 35.198334, 23.803486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386488, 34.989368, 23.971548>,  <31.676785, 35.552425, 24.195679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386488, 34.989368, 23.971548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782047, 34.930244, 23.977659>,  <32.019382, 34.894772, 23.981325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782047, 34.930244, 23.977659>,  <31.386488, 34.989368, 23.971548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782047, 34.930244, 23.977659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125704, -0.777302, 0.616441,
		-0.079240, -0.611518, -0.787253,
		0.988898, -0.147808, 0.015277,
		32.078716, 34.885902, 23.982243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520422, 34.283508, 23.773655>,  <31.386488, 34.989368, 23.971548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520422, 34.283508, 23.773655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841190, 34.405003, 23.979437>,  <32.033653, 34.477901, 24.102905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841190, 34.405003, 23.979437>,  <31.520422, 34.283508, 23.773655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841190, 34.405003, 23.979437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063428, -0.812961, 0.578853,
		0.594053, -0.496826, -0.632666,
		0.801922, 0.303740, 0.514455,
		32.081768, 34.496124, 24.133774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952995, 33.767380, 23.749104>,  <31.520422, 34.283508, 23.773655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952995, 33.767380, 23.749104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088840, 33.980053, 24.059452>,  <32.170349, 34.107658, 24.245661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088840, 33.980053, 24.059452>,  <31.952995, 33.767380, 23.749104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088840, 33.980053, 24.059452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061785, -0.810504, 0.582466,
		0.938534, -0.245750, -0.242407,
		0.339612, 0.531687, 0.775869,
		32.190723, 34.139561, 24.292213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397499, 33.316048, 24.142872>,  <31.952995, 33.767380, 23.749104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397499, 33.316048, 24.142872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301800, 33.606434, 24.400782>,  <32.244381, 33.780666, 24.555527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301800, 33.606434, 24.400782>,  <32.397499, 33.316048, 24.142872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301800, 33.606434, 24.400782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038847, -0.656372, 0.753436,
		0.970180, 0.205308, 0.128837,
		-0.239251, 0.725964, 0.644775,
		32.230026, 33.824223, 24.594213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.856342, 33.183868, 29.448486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464115, 33.175804, 29.370426>,  <35.228779, 33.170967, 29.323589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464115, 33.175804, 29.370426>,  <35.856342, 33.183868, 29.448486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464115, 33.175804, 29.370426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181073, -0.289899, 0.939772,
		-0.075518, 0.956845, 0.280615,
		-0.980566, -0.020158, -0.195151,
		35.169945, 33.169758, 29.311880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539501, 33.542694, 30.042141>,  <35.856342, 33.183868, 29.448486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539501, 33.542694, 30.042141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.254692, 33.300545, 29.899847>,  <35.083809, 33.155254, 29.814470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.254692, 33.300545, 29.899847>,  <35.539501, 33.542694, 30.042141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254692, 33.300545, 29.899847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180370, -0.331936, 0.925897,
		-0.678596, 0.723422, 0.127154,
		-0.712021, -0.605375, -0.355734,
		35.041084, 33.118931, 29.793127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878712, 33.638729, 30.470348>,  <35.539501, 33.542694, 30.042141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878712, 33.638729, 30.470348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.858616, 33.273605, 30.308235>,  <34.846558, 33.054531, 30.210968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.858616, 33.273605, 30.308235>,  <34.878712, 33.638729, 30.470348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858616, 33.273605, 30.308235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383859, -0.356975, 0.851599,
		-0.922024, 0.198358, -0.332455,
		-0.050243, -0.912811, -0.405281,
		34.843544, 32.999763, 30.186651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204105, 33.433872, 30.621775>,  <34.878712, 33.638729, 30.470348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204105, 33.433872, 30.621775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.417862, 33.105106, 30.542906>,  <34.546116, 32.907845, 30.495584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.417862, 33.105106, 30.542906>,  <34.204105, 33.433872, 30.621775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417862, 33.105106, 30.542906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524524, -0.505397, 0.685164,
		-0.662799, -0.262722, -0.701195,
		0.534389, -0.821919, -0.197172,
		34.578178, 32.858532, 30.483755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778412, 32.795025, 30.955044>,  <34.204105, 33.433872, 30.621775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778412, 32.795025, 30.955044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.123569, 32.615879, 30.861378>,  <34.330666, 32.508392, 30.805178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.123569, 32.615879, 30.861378>,  <33.778412, 32.795025, 30.955044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123569, 32.615879, 30.861378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138471, -0.655126, 0.742722,
		-0.486041, -0.608467, -0.627321,
		0.862896, -0.447860, -0.234163,
		34.382439, 32.481522, 30.791128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636463, 32.097900, 30.789307>,  <33.778412, 32.795025, 30.955044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636463, 32.097900, 30.789307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.016621, 32.132019, 30.908962>,  <34.244713, 32.152493, 30.980755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.016621, 32.132019, 30.908962>,  <33.636463, 32.097900, 30.789307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016621, 32.132019, 30.908962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203130, -0.558122, 0.804511,
		0.235579, -0.825363, -0.513107,
		0.950390, 0.085299, 0.299138,
		34.301739, 32.157608, 30.998703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602798, 31.465796, 31.080105>,  <33.636463, 32.097900, 30.789307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602798, 31.465796, 31.080105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.918591, 31.653793, 31.238008>,  <34.108067, 31.766592, 31.332750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.918591, 31.653793, 31.238008>,  <33.602798, 31.465796, 31.080105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918591, 31.653793, 31.238008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173519, -0.446019, 0.878042,
		0.588744, -0.761691, -0.270569,
		0.789476, 0.469993, 0.394759,
		34.155434, 31.794790, 31.356436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985603, 30.902859, 31.423258>,  <33.602798, 31.465796, 31.080105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985603, 30.902859, 31.423258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.149467, 31.242846, 31.555761>,  <34.247784, 31.446838, 31.635263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.149467, 31.242846, 31.555761>,  <33.985603, 30.902859, 31.423258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149467, 31.242846, 31.555761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193715, -0.273793, 0.942078,
		0.891434, -0.450100, 0.052490,
		0.409658, 0.849969, 0.331260,
		34.272366, 31.497837, 31.655140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574596, 30.756847, 31.949167>,  <33.985603, 30.902859, 31.423258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574596, 30.756847, 31.949167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.442257, 31.129852, 32.007076>,  <34.362854, 31.353655, 32.041821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.442257, 31.129852, 32.007076>,  <34.574596, 30.756847, 31.949167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442257, 31.129852, 32.007076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042738, -0.168063, 0.984849,
		0.942717, 0.319645, 0.095456,
		-0.330844, 0.932514, 0.144775,
		34.343002, 31.409607, 32.050510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878330, 30.908789, 32.536472>,  <34.574596, 30.756847, 31.949167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878330, 30.908789, 32.536472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.558311, 31.148573, 32.546078>,  <34.366302, 31.292444, 32.551842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.558311, 31.148573, 32.546078>,  <34.878330, 30.908789, 32.536472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558311, 31.148573, 32.546078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116586, -0.194602, 0.973929,
		0.588505, 0.776386, 0.225579,
		-0.800043, 0.599462, 0.024009,
		34.318298, 31.328411, 32.553280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977512, 31.468332, 33.106319>,  <34.878330, 30.908789, 32.536472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977512, 31.468332, 33.106319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.589825, 31.478067, 33.008320>,  <34.357212, 31.483908, 32.949520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.589825, 31.478067, 33.008320>,  <34.977512, 31.468332, 33.106319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589825, 31.478067, 33.008320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243421, 0.054619, 0.968382,
		0.036948, 0.998211, -0.047014,
		-0.969217, 0.024335, -0.245004,
		34.299061, 31.485369, 32.934818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236916, 31.752415, 32.410526>,  <34.977512, 31.468332, 33.106319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236916, 31.752415, 32.410526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.436165, 31.405603, 32.415089>,  <35.555714, 31.197515, 32.417828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.436165, 31.405603, 32.415089>,  <35.236916, 31.752415, 32.410526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436165, 31.405603, 32.415089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230512, -0.145090, -0.962192,
		0.835904, 0.476664, -0.272134,
		0.498126, -0.867030, 0.011405,
		35.585602, 31.145494, 32.418510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816700, 32.266636, 32.632587>,  <35.236916, 31.752415, 32.410526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816700, 32.266636, 32.632587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.779728, 32.026661, 32.950462>,  <35.757545, 31.882677, 33.141190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.779728, 32.026661, 32.950462>,  <35.816700, 32.266636, 32.632587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779728, 32.026661, 32.950462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982363, 0.185226, 0.025574,
		-0.162540, -0.778312, -0.606474,
		-0.092430, -0.599935, 0.794692,
		35.751999, 31.846680, 33.188869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870510, 32.931599, 32.907265>,  <35.816700, 32.266636, 32.632587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870510, 32.931599, 32.907265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.070015, 33.277172, 32.879391>,  <36.189720, 33.484516, 32.862667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.070015, 33.277172, 32.879391>,  <35.870510, 32.931599, 32.907265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070015, 33.277172, 32.879391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367481, 0.137969, -0.919740,
		-0.784978, 0.484343, 0.386292,
		0.498767, 0.863931, -0.069684,
		36.219646, 33.536350, 32.858486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911491, 33.159496, 33.664852>,  <35.870510, 32.931599, 32.907265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911491, 33.159496, 33.664852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.163334, 33.460056, 33.743832>,  <36.314438, 33.640392, 33.791218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.163334, 33.460056, 33.743832>,  <35.911491, 33.159496, 33.664852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163334, 33.460056, 33.743832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395288, 0.528614, -0.751209,
		-0.668836, 0.394917, 0.629840,
		0.629607, 0.751404, 0.197450,
		36.352215, 33.685478, 33.803066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538715, 33.721161, 33.623341>,  <35.911491, 33.159496, 33.664852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538715, 33.721161, 33.623341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.922321, 33.794579, 33.536999>,  <36.152485, 33.838631, 33.485191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.922321, 33.794579, 33.536999>,  <35.538715, 33.721161, 33.623341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922321, 33.794579, 33.536999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281304, 0.525509, -0.802937,
		-0.033938, 0.830754, 0.555604,
		0.959018, 0.183544, -0.215859,
		36.210026, 33.849640, 33.472240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667072, 34.425331, 33.647057>,  <35.538715, 33.721161, 33.623341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667072, 34.425331, 33.647057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.954189, 34.284355, 33.406868>,  <36.126457, 34.199772, 33.262753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.954189, 34.284355, 33.406868>,  <35.667072, 34.425331, 33.647057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954189, 34.284355, 33.406868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278355, 0.645251, -0.711456,
		0.638199, 0.677820, 0.365052,
		0.717789, -0.352436, -0.600473,
		36.169525, 34.178623, 33.226727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980282, 34.986568, 33.367882>,  <35.667072, 34.425331, 33.647057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980282, 34.986568, 33.367882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.087612, 34.701851, 33.108234>,  <36.152012, 34.531021, 32.952446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.087612, 34.701851, 33.108234>,  <35.980282, 34.986568, 33.367882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087612, 34.701851, 33.108234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135764, 0.639158, -0.756997,
		0.953714, 0.291248, 0.074866,
		0.268325, -0.711795, -0.649115,
		36.168110, 34.488312, 32.913502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519825, 35.258408, 32.992870>,  <35.980282, 34.986568, 33.367882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519825, 35.258408, 32.992870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361103, 34.977016, 32.757019>,  <36.265869, 34.808182, 32.615509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361103, 34.977016, 32.757019>,  <36.519825, 35.258408, 32.992870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361103, 34.977016, 32.757019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288162, 0.705360, -0.647635,
		0.871497, -0.087077, -0.482607,
		-0.396806, -0.703481, -0.589627,
		36.242062, 34.765972, 32.580132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547638, 35.585922, 32.364883>,  <36.519825, 35.258408, 32.992870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547638, 35.585922, 32.364883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.288170, 35.293350, 32.280746>,  <36.132488, 35.117809, 32.230267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.288170, 35.293350, 32.280746>,  <36.547638, 35.585922, 32.364883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288170, 35.293350, 32.280746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347034, 0.530231, -0.773578,
		0.677343, -0.428803, -0.597775,
		-0.648671, -0.731426, -0.210339,
		36.093567, 35.073921, 32.217644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506927, 35.639828, 31.671946>,  <36.547638, 35.585922, 32.364883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506927, 35.639828, 31.671946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.193050, 35.411880, 31.769520>,  <36.004723, 35.275112, 31.828064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.193050, 35.411880, 31.769520>,  <36.506927, 35.639828, 31.671946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193050, 35.411880, 31.769520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560095, 0.483184, -0.672925,
		0.265615, -0.664666, -0.698332,
		-0.784693, -0.569871, 0.243935,
		35.957642, 35.240921, 31.842701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281319, 35.394199, 31.045231>,  <36.506927, 35.639828, 31.671946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281319, 35.394199, 31.045231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.985031, 35.372734, 31.313099>,  <35.807259, 35.359856, 31.473820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.985031, 35.372734, 31.313099>,  <36.281319, 35.394199, 31.045231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985031, 35.372734, 31.313099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530048, 0.659135, -0.533470,
		-0.412776, -0.750108, -0.516676,
		-0.740719, -0.053660, 0.669669,
		35.762814, 35.356636, 31.514000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755054, 35.317661, 30.606823>,  <36.281319, 35.394199, 31.045231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755054, 35.317661, 30.606823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.601212, 35.440392, 30.955061>,  <35.508907, 35.514030, 31.164003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.601212, 35.440392, 30.955061>,  <35.755054, 35.317661, 30.606823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601212, 35.440392, 30.955061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537793, 0.692064, -0.481484,
		-0.750239, -0.653382, -0.101164,
		-0.384605, 0.306822, 0.870597,
		35.485828, 35.532440, 31.216240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052708, 35.037022, 30.621370>,  <35.755054, 35.317661, 30.606823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052708, 35.037022, 30.621370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.081615, 35.356731, 30.860014>,  <35.098961, 35.548557, 31.003201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.081615, 35.356731, 30.860014>,  <35.052708, 35.037022, 30.621370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081615, 35.356731, 30.860014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648607, 0.492075, -0.580664,
		-0.757685, -0.345004, 0.553973,
		0.072265, 0.799272, 0.596610,
		35.103294, 35.596512, 31.038998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439533, 35.323799, 30.541246>,  <35.052708, 35.037022, 30.621370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439533, 35.323799, 30.541246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.680553, 35.609859, 30.682943>,  <34.825165, 35.781498, 30.767962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.680553, 35.609859, 30.682943>,  <34.439533, 35.323799, 30.541246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680553, 35.609859, 30.682943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497905, 0.683751, -0.533456,
		-0.623717, 0.145055, 0.768073,
		0.602551, 0.715153, 0.354244,
		34.861320, 35.824406, 30.789217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975746, 35.728088, 30.732914>,  <34.439533, 35.323799, 30.541246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975746, 35.728088, 30.732914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.316147, 35.934097, 30.691847>,  <34.520390, 36.057705, 30.667208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.316147, 35.934097, 30.691847>,  <33.975746, 35.728088, 30.732914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316147, 35.934097, 30.691847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467871, 0.654757, -0.593624,
		-0.238510, 0.553212, 0.798167,
		0.851005, 0.515024, -0.102666,
		34.571449, 36.088604, 30.661047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850891, 36.431194, 30.752270>,  <33.975746, 35.728088, 30.732914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850891, 36.431194, 30.752270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.215542, 36.419918, 30.588251>,  <34.434334, 36.413151, 30.489840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.215542, 36.419918, 30.588251>,  <33.850891, 36.431194, 30.752270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215542, 36.419918, 30.588251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238280, 0.776629, -0.583155,
		0.334895, 0.629327, 0.701280,
		0.911629, -0.028195, -0.410045,
		34.489029, 36.411461, 30.465239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057728, 37.081852, 30.748419>,  <33.850891, 36.431194, 30.752270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057728, 37.081852, 30.748419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.263241, 36.884979, 30.467342>,  <34.386551, 36.766853, 30.298697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.263241, 36.884979, 30.467342>,  <34.057728, 37.081852, 30.748419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263241, 36.884979, 30.467342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374821, 0.607983, -0.699905,
		0.771708, 0.622985, 0.127891,
		0.513785, -0.492186, -0.702693,
		34.417377, 36.737324, 30.256535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466572, 37.637669, 31.179796>,  <34.057728, 37.081852, 30.748419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466572, 37.637669, 31.179796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.168747, 37.888973, 31.089542>,  <33.990051, 38.039757, 31.035389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.168747, 37.888973, 31.089542>,  <34.466572, 37.637669, 31.179796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168747, 37.888973, 31.089542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588696, -0.458592, 0.665681,
		0.314749, 0.628471, 0.711307,
		-0.744561, 0.628266, -0.225637,
		33.945377, 38.077454, 31.021851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255230, 37.938931, 31.790300>,  <34.466572, 37.637669, 31.179796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255230, 37.938931, 31.790300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.943920, 37.976074, 31.541893>,  <33.757133, 37.998360, 31.392849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.943920, 37.976074, 31.541893>,  <34.255230, 37.938931, 31.790300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943920, 37.976074, 31.541893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610015, -0.346321, 0.712701,
		-0.148894, 0.933509, 0.326177,
		-0.778275, 0.092856, -0.621020,
		33.710438, 38.003933, 31.355587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847092, 38.296349, 32.221607>,  <34.255230, 37.938931, 31.790300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847092, 38.296349, 32.221607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.602104, 38.130447, 31.952423>,  <33.455112, 38.030907, 31.790913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.602104, 38.130447, 31.952423>,  <33.847092, 38.296349, 32.221607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602104, 38.130447, 31.952423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490778, -0.467864, 0.735011,
		-0.619697, 0.780441, 0.083000,
		-0.612464, -0.414749, -0.672957,
		33.418365, 38.006023, 31.750536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132381, 38.304913, 32.497131>,  <33.847092, 38.296349, 32.221607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132381, 38.304913, 32.497131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.100948, 38.027149, 32.211021>,  <33.082088, 37.860489, 32.039356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.100948, 38.027149, 32.211021>,  <33.132381, 38.304913, 32.497131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100948, 38.027149, 32.211021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577264, -0.553269, 0.600549,
		-0.812767, 0.460095, -0.357382,
		-0.078581, -0.694411, -0.715276,
		33.077374, 37.818825, 31.996439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397736, 38.119392, 32.397728>,  <33.132381, 38.304913, 32.497131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397736, 38.119392, 32.397728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.598068, 37.811867, 32.238682>,  <32.718266, 37.627350, 32.143253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.598068, 37.811867, 32.238682>,  <32.397736, 38.119392, 32.397728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598068, 37.811867, 32.238682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545572, -0.637032, 0.544556,
		-0.671956, -0.055800, -0.738486,
		0.500825, -0.768815, -0.397615,
		32.748318, 37.581223, 32.119400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924990, 37.588680, 32.267826>,  <32.397736, 38.119392, 32.397728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924990, 37.588680, 32.267826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.281574, 37.407558, 32.274300>,  <32.495525, 37.298885, 32.278183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.281574, 37.407558, 32.274300>,  <31.924990, 37.588680, 32.267826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281574, 37.407558, 32.274300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374306, -0.715854, 0.589447,
		-0.255322, -0.531526, -0.807645,
		0.891463, -0.452806, 0.016180,
		32.549011, 37.271717, 32.279152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721045, 36.950993, 32.136810>,  <31.924990, 37.588680, 32.267826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721045, 36.950993, 32.136810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.080643, 36.926960, 32.310337>,  <32.296402, 36.912540, 32.414452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.080643, 36.926960, 32.310337>,  <31.721045, 36.950993, 32.136810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080643, 36.926960, 32.310337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348311, -0.698553, 0.625063,
		0.265490, -0.713032, -0.648923,
		0.898997, -0.060079, 0.433815,
		32.350342, 36.908936, 32.440483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874704, 36.246574, 32.206253>,  <31.721045, 36.950993, 32.136810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874704, 36.246574, 32.206253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.077511, 36.432716, 32.496460>,  <32.199196, 36.544403, 32.670586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.077511, 36.432716, 32.496460>,  <31.874704, 36.246574, 32.206253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077511, 36.432716, 32.496460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296068, -0.696494, 0.653636,
		0.809493, -0.546207, -0.215357,
		0.507015, 0.465353, 0.725522,
		32.229614, 36.572323, 32.714115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174900, 35.678333, 32.462624>,  <31.874704, 36.246574, 32.206253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174900, 35.678333, 32.462624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.188637, 35.961391, 32.744919>,  <32.196877, 36.131226, 32.914295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.188637, 35.961391, 32.744919>,  <32.174900, 35.678333, 32.462624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188637, 35.961391, 32.744919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541542, -0.580322, 0.608241,
		0.839972, -0.403071, 0.363292,
		0.034338, 0.707643, 0.705735,
		32.198936, 36.173683, 32.956638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441303, 35.392487, 33.138474>,  <32.174900, 35.678333, 32.462624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441303, 35.392487, 33.138474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.231781, 35.720642, 33.230198>,  <32.106068, 35.917538, 33.285233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.231781, 35.720642, 33.230198>,  <32.441303, 35.392487, 33.138474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231781, 35.720642, 33.230198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493181, -0.511555, 0.703622,
		0.694550, 0.255472, 0.672558,
		-0.523806, 0.820394, 0.229307,
		32.074638, 35.966759, 33.298988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281731, 35.413921, 33.901123>,  <32.441303, 35.392487, 33.138474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281731, 35.413921, 33.901123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.021820, 35.688847, 33.771275>,  <31.865873, 35.853802, 33.693363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.021820, 35.688847, 33.771275>,  <32.281731, 35.413921, 33.901123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021820, 35.688847, 33.771275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682793, -0.340093, 0.646630,
		0.334038, 0.641819, 0.690281,
		-0.649779, 0.687317, -0.324626,
		31.826887, 35.895042, 33.673885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887684, 35.656654, 34.524803>,  <32.281731, 35.413921, 33.901123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887684, 35.656654, 34.524803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.668913, 35.713261, 34.194752>,  <31.537649, 35.747223, 33.996719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.668913, 35.713261, 34.194752>,  <31.887684, 35.656654, 34.524803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668913, 35.713261, 34.194752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808039, -0.347010, 0.476085,
		-0.218958, 0.927124, 0.304137,
		-0.546929, 0.141512, -0.825132,
		31.504835, 35.755714, 33.947212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.918964, 41.013653, 28.508587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530045, 40.923725, 28.483027>,  <34.296692, 40.869770, 28.467690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530045, 40.923725, 28.483027>,  <34.918964, 41.013653, 28.508587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530045, 40.923725, 28.483027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018295, -0.345777, 0.938138,
		-0.233004, 0.910986, 0.340313,
		-0.972304, -0.224817, -0.063901,
		34.238354, 40.856281, 28.463856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526085, 41.243073, 29.077654>,  <34.918964, 41.013653, 28.508587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526085, 41.243073, 29.077654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320320, 40.927116, 28.944120>,  <34.196861, 40.737541, 28.864000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320320, 40.927116, 28.944120>,  <34.526085, 41.243073, 29.077654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320320, 40.927116, 28.944120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072055, -0.427730, 0.901030,
		-0.854508, 0.439450, 0.276947,
		-0.514416, -0.789893, -0.333834,
		34.165997, 40.690147, 28.843969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052135, 41.102680, 29.694204>,  <34.526085, 41.243073, 29.077654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052135, 41.102680, 29.694204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080685, 40.781071, 29.458082>,  <34.097813, 40.588104, 29.316410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080685, 40.781071, 29.458082>,  <34.052135, 41.102680, 29.694204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080685, 40.781071, 29.458082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261263, -0.586221, 0.766868,
		-0.962625, 0.099491, -0.251902,
		0.071374, -0.804019, -0.590304,
		34.102097, 40.539864, 29.280991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526207, 40.676731, 29.905056>,  <34.052135, 41.102680, 29.694204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526207, 40.676731, 29.905056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738819, 40.422497, 29.681089>,  <33.866386, 40.269955, 29.546709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738819, 40.422497, 29.681089>,  <33.526207, 40.676731, 29.905056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738819, 40.422497, 29.681089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155821, -0.723118, 0.672920,
		-0.832584, -0.270430, -0.483396,
		0.531530, -0.635585, -0.559917,
		33.898277, 40.231823, 29.513115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094509, 40.083752, 29.877388>,  <33.526207, 40.676731, 29.905056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094509, 40.083752, 29.877388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468250, 39.966373, 29.796516>,  <33.692493, 39.895947, 29.747993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468250, 39.966373, 29.796516>,  <33.094509, 40.083752, 29.877388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468250, 39.966373, 29.796516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168072, -0.863181, 0.476099,
		-0.314227, -0.410863, -0.855835,
		0.934352, -0.293445, -0.202180,
		33.748554, 39.878342, 29.735863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143990, 39.456966, 29.570797>,  <33.094509, 40.083752, 29.877388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143990, 39.456966, 29.570797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514679, 39.495926, 29.715960>,  <33.737091, 39.519302, 29.803057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514679, 39.495926, 29.715960>,  <33.143990, 39.456966, 29.570797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514679, 39.495926, 29.715960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080648, -0.891752, 0.445279,
		0.366994, -0.441918, -0.818550,
		0.926721, 0.097400, 0.362907,
		33.792694, 39.525146, 29.824831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442757, 38.801964, 29.380058>,  <33.143990, 39.456966, 29.570797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442757, 38.801964, 29.380058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691406, 38.934952, 29.663763>,  <33.840595, 39.014744, 29.833986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691406, 38.934952, 29.663763>,  <33.442757, 38.801964, 29.380058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691406, 38.934952, 29.663763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100780, -0.863985, 0.493329,
		0.776808, -0.378143, -0.503564,
		0.621621, 0.332472, 0.709260,
		33.877892, 39.034695, 29.876541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964920, 38.261230, 29.560791>,  <33.442757, 38.801964, 29.380058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964920, 38.261230, 29.560791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955490, 38.481998, 29.894217>,  <33.949833, 38.614460, 30.094273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955490, 38.481998, 29.894217>,  <33.964920, 38.261230, 29.560791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955490, 38.481998, 29.894217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340963, -0.788243, 0.512266,
		0.939781, -0.272138, 0.206765,
		-0.023574, 0.551917, 0.833565,
		33.948418, 38.647575, 30.144287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323692, 37.806026, 30.141729>,  <33.964920, 38.261230, 29.560791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323692, 37.806026, 30.141729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076893, 38.072319, 30.309595>,  <33.928814, 38.232094, 30.410315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076893, 38.072319, 30.309595>,  <34.323692, 37.806026, 30.141729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076893, 38.072319, 30.309595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290326, -0.688210, 0.664890,
		0.731452, 0.288398, 0.617904,
		-0.617000, 0.665728, 0.419662,
		33.891792, 38.272038, 30.435493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112640, 37.767437, 30.216370>,  <34.323692, 37.806026, 30.141729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112640, 37.767437, 30.216370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015652, 37.459835, 29.979782>,  <34.957458, 37.275272, 29.837830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015652, 37.459835, 29.979782>,  <35.112640, 37.767437, 30.216370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015652, 37.459835, 29.979782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412474, 0.470099, -0.780302,
		0.878107, -0.433168, 0.203209,
		-0.242473, -0.769007, -0.591468,
		34.942909, 37.229134, 29.802341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569656, 37.881901, 29.617325>,  <35.112640, 37.767437, 30.216370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569656, 37.881901, 29.617325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330597, 37.596363, 29.471315>,  <35.187160, 37.425041, 29.383709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330597, 37.596363, 29.471315>,  <35.569656, 37.881901, 29.617325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330597, 37.596363, 29.471315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191172, 0.315271, -0.929547,
		0.778633, -0.625325, -0.051954,
		-0.597649, -0.713843, -0.365025,
		35.151302, 37.382210, 29.361809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918427, 37.535080, 29.134914>,  <35.569656, 37.881901, 29.617325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918427, 37.535080, 29.134914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543434, 37.445511, 29.028334>,  <35.318439, 37.391769, 28.964386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543434, 37.445511, 29.028334>,  <35.918427, 37.535080, 29.134914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543434, 37.445511, 29.028334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242225, 0.129982, -0.961474,
		0.249928, -0.965901, -0.067616,
		-0.937477, -0.223921, -0.266452,
		35.262192, 37.378334, 28.948399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798557, 36.955444, 28.680965>,  <35.918427, 37.535080, 29.134914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798557, 36.955444, 28.680965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482327, 37.183605, 28.591856>,  <35.292587, 37.320503, 28.538391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482327, 37.183605, 28.591856>,  <35.798557, 36.955444, 28.680965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482327, 37.183605, 28.591856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288592, 0.026190, -0.957094,
		-0.540097, -0.820946, -0.185319,
		-0.790576, 0.570405, -0.222773,
		35.245155, 37.354725, 28.525024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622513, 36.711224, 27.976467>,  <35.798557, 36.955444, 28.680965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622513, 36.711224, 27.976467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454807, 37.067249, 28.048027>,  <35.354183, 37.280865, 28.090963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454807, 37.067249, 28.048027>,  <35.622513, 36.711224, 27.976467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454807, 37.067249, 28.048027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199241, 0.282456, -0.938361,
		-0.885734, -0.357773, -0.295760,
		-0.419259, 0.890066, 0.178898,
		35.329029, 37.334270, 28.101696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266384, 36.760674, 27.453453>,  <35.622513, 36.711224, 27.976467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266384, 36.760674, 27.453453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273060, 37.145538, 27.562239>,  <35.277065, 37.376457, 27.627510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273060, 37.145538, 27.562239>,  <35.266384, 36.760674, 27.453453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273060, 37.145538, 27.562239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186729, 0.264218, -0.946214,
		-0.982270, 0.066572, -0.175255,
		0.016685, 0.962163, 0.271965,
		35.278065, 37.434189, 27.643827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896843, 36.994453, 26.886587>,  <35.266384, 36.760674, 27.453453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896843, 36.994453, 26.886587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089645, 37.292160, 27.071516>,  <35.205326, 37.470783, 27.182474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089645, 37.292160, 27.071516>,  <34.896843, 36.994453, 26.886587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089645, 37.292160, 27.071516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274274, 0.372975, -0.886377,
		-0.832133, 0.554041, -0.024357,
		0.482005, 0.744264, 0.462324,
		35.234245, 37.515438, 27.210213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613567, 37.643372, 26.635080>,  <34.896843, 36.994453, 26.886587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613567, 37.643372, 26.635080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976227, 37.739956, 26.773466>,  <35.193821, 37.797905, 26.856497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976227, 37.739956, 26.773466>,  <34.613567, 37.643372, 26.635080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976227, 37.739956, 26.773466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222195, 0.423804, -0.878078,
		-0.358639, 0.872977, 0.330589,
		0.906646, 0.241458, 0.345963,
		35.248222, 37.812393, 26.877254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672832, 38.248398, 26.326590>,  <34.613567, 37.643372, 26.635080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672832, 38.248398, 26.326590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045837, 38.174892, 26.450947>,  <35.269642, 38.130791, 26.525560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045837, 38.174892, 26.450947>,  <34.672832, 38.248398, 26.326590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045837, 38.174892, 26.450947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358939, 0.376654, -0.853988,
		0.039833, 0.907944, 0.417194,
		0.932511, -0.183764, 0.310893,
		35.325592, 38.119762, 26.544214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992897, 38.934063, 26.223398>,  <34.672832, 38.248398, 26.326590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992897, 38.934063, 26.223398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273335, 38.649490, 26.242685>,  <35.441597, 38.478745, 26.254257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273335, 38.649490, 26.242685>,  <34.992897, 38.934063, 26.223398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273335, 38.649490, 26.242685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367576, 0.302631, -0.879376,
		0.611027, 0.634251, 0.473679,
		0.701095, -0.711435, 0.048220,
		35.483662, 38.436058, 26.257151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594124, 39.308830, 26.052883>,  <34.992897, 38.934063, 26.223398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594124, 39.308830, 26.052883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684559, 38.923855, 25.992760>,  <35.738819, 38.692871, 25.956686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684559, 38.923855, 25.992760>,  <35.594124, 39.308830, 26.052883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684559, 38.923855, 25.992760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428767, 0.236876, -0.871808,
		0.874667, 0.132662, 0.466218,
		0.226092, -0.962440, -0.150306,
		35.752388, 38.635124, 25.947668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289890, 39.339424, 25.794724>,  <35.594124, 39.308830, 26.052883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289890, 39.339424, 25.794724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100647, 39.007774, 25.675579>,  <35.987099, 38.808784, 25.604094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100647, 39.007774, 25.675579>,  <36.289890, 39.339424, 25.794724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100647, 39.007774, 25.675579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320431, 0.152993, -0.934835,
		0.820664, -0.537725, 0.193294,
		-0.473112, -0.829123, -0.297860,
		35.958714, 38.759037, 25.586222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802189, 39.131901, 25.405090>,  <36.289890, 39.339424, 25.794724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802189, 39.131901, 25.405090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467495, 38.946213, 25.288897>,  <36.266678, 38.834801, 25.219179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467495, 38.946213, 25.288897>,  <36.802189, 39.131901, 25.405090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467495, 38.946213, 25.288897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249108, 0.149735, -0.956830,
		0.487676, -0.872971, -0.009647,
		-0.836730, -0.464220, -0.290487,
		36.216476, 38.806946, 25.201750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010063, 38.750416, 24.767664>,  <36.802189, 39.131901, 25.405090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010063, 38.750416, 24.767664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613998, 38.799667, 24.741098>,  <36.376358, 38.829216, 24.725159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613998, 38.799667, 24.741098>,  <37.010063, 38.750416, 24.767664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613998, 38.799667, 24.741098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078341, 0.094712, -0.992417,
		-0.115903, -0.987861, -0.103427,
		-0.990166, 0.123126, -0.066412,
		36.316948, 38.836605, 24.721174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.428036, 35.597229, 23.614161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.653347, 35.814945, 23.862827>,  <29.788534, 35.945576, 24.012028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.653347, 35.814945, 23.862827>,  <29.428036, 35.597229, 23.614161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653347, 35.814945, 23.862827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113980, -0.694002, 0.710893,
		0.818369, -0.471287, -0.328877,
		0.563276, 0.544288, 0.621668,
		29.822330, 35.978233, 24.049328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999083, 35.204937, 23.778992>,  <29.428036, 35.597229, 23.614161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999083, 35.204937, 23.778992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.936445, 35.469048, 24.072800>,  <29.898863, 35.627514, 24.249084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.936445, 35.469048, 24.072800>,  <29.999083, 35.204937, 23.778992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936445, 35.469048, 24.072800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196176, -0.749669, 0.632069,
		0.967984, -0.045117, 0.246924,
		-0.156594, 0.660273, 0.734518,
		29.889467, 35.667130, 24.293156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275909, 34.829723, 24.360470>,  <29.999083, 35.204937, 23.778992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275909, 34.829723, 24.360470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.128338, 35.139263, 24.566401>,  <30.039795, 35.324989, 24.689959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.128338, 35.139263, 24.566401>,  <30.275909, 34.829723, 24.360470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128338, 35.139263, 24.566401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016523, -0.559272, 0.828819,
		0.929311, 0.297269, 0.219118,
		-0.368929, 0.773851, 0.514826,
		30.017660, 35.371418, 24.720848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687910, 34.876762, 25.067833>,  <30.275909, 34.829723, 24.360470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687910, 34.876762, 25.067833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.349409, 35.083042, 25.121355>,  <30.146309, 35.206810, 25.153469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.349409, 35.083042, 25.121355>,  <30.687910, 34.876762, 25.067833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349409, 35.083042, 25.121355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209844, -0.553476, 0.805996,
		0.489714, 0.653999, 0.576599,
		-0.846254, 0.515703, 0.133807,
		30.095533, 35.237755, 25.161497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650890, 35.179588, 25.751028>,  <30.687910, 34.876762, 25.067833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650890, 35.179588, 25.751028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.265026, 35.162376, 25.647047>,  <30.033506, 35.152050, 25.584660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.265026, 35.162376, 25.647047>,  <30.650890, 35.179588, 25.751028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265026, 35.162376, 25.647047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222780, -0.393595, 0.891881,
		-0.140696, 0.918276, 0.370100,
		-0.964662, -0.043034, -0.259951,
		29.975628, 35.149467, 25.569061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213718, 35.598804, 26.297535>,  <30.650890, 35.179588, 25.751028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213718, 35.598804, 26.297535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.970203, 35.329254, 26.130074>,  <29.824095, 35.167522, 26.029596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.970203, 35.329254, 26.130074>,  <30.213718, 35.598804, 26.297535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970203, 35.329254, 26.130074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253062, -0.335191, 0.907528,
		-0.751889, 0.658437, 0.033528,
		-0.608788, -0.673875, -0.418652,
		29.787567, 35.127090, 26.004478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657936, 35.586700, 26.691444>,  <30.213718, 35.598804, 26.297535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657936, 35.586700, 26.691444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.613926, 35.248272, 26.482807>,  <29.587521, 35.045216, 26.357624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.613926, 35.248272, 26.482807>,  <29.657936, 35.586700, 26.691444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613926, 35.248272, 26.482807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366695, -0.453207, 0.812489,
		-0.923813, 0.280660, -0.260385,
		-0.110025, -0.846069, -0.521595,
		29.580919, 34.994450, 26.326328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958023, 35.320370, 26.888887>,  <29.657936, 35.586700, 26.691444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958023, 35.320370, 26.888887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.161814, 35.005676, 26.749466>,  <29.284088, 34.816860, 26.665813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.161814, 35.005676, 26.749466>,  <28.958023, 35.320370, 26.888887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161814, 35.005676, 26.749466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212914, -0.507727, 0.834794,
		-0.833728, -0.351095, -0.426181,
		0.509476, -0.786731, -0.348553,
		29.314657, 34.769657, 26.644899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497059, 34.795242, 27.081226>,  <28.958023, 35.320370, 26.888887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497059, 34.795242, 27.081226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.831749, 34.595325, 26.991697>,  <29.032562, 34.475376, 26.937979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.831749, 34.595325, 26.991697>,  <28.497059, 34.795242, 27.081226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831749, 34.595325, 26.991697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001074, -0.410216, 0.911988,
		-0.547623, -0.762842, -0.343775,
		0.836725, -0.499794, -0.223825,
		29.082766, 34.445389, 26.924549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462662, 34.106552, 27.328602>,  <28.497059, 34.795242, 27.081226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462662, 34.106552, 27.328602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.860331, 34.124897, 27.289570>,  <29.098932, 34.135902, 27.266151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.860331, 34.124897, 27.289570>,  <28.462662, 34.106552, 27.328602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860331, 34.124897, 27.289570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107236, -0.326574, 0.939068,
		0.011202, -0.944058, -0.329589,
		0.994171, 0.045863, -0.097579,
		29.158581, 34.138657, 27.260296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661469, 33.389256, 27.513081>,  <28.462662, 34.106552, 27.328602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661469, 33.389256, 27.513081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.957045, 33.654129, 27.562847>,  <29.134390, 33.813053, 27.592707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.957045, 33.654129, 27.562847>,  <28.661469, 33.389256, 27.513081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957045, 33.654129, 27.562847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111797, -0.302596, 0.946540,
		0.664432, -0.685527, -0.297630,
		0.738940, 0.662185, 0.124414,
		29.178726, 33.852783, 27.600172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165619, 33.057686, 27.920805>,  <28.661469, 33.389256, 27.513081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165619, 33.057686, 27.920805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.264025, 33.442097, 27.971252>,  <29.323069, 33.672745, 28.001522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.264025, 33.442097, 27.971252>,  <29.165619, 33.057686, 27.920805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264025, 33.442097, 27.971252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138069, -0.163539, 0.976827,
		0.959382, -0.222899, -0.172921,
		0.246013, 0.961026, 0.126121,
		29.337830, 33.730404, 28.009089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795153, 32.993370, 28.147951>,  <29.165619, 33.057686, 27.920805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795153, 32.993370, 28.147951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.682871, 33.355816, 28.274549>,  <29.615501, 33.573284, 28.350508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.682871, 33.355816, 28.274549>,  <29.795153, 32.993370, 28.147951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682871, 33.355816, 28.274549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302787, -0.229313, 0.925060,
		0.910783, 0.355497, -0.209990,
		-0.280702, 0.906111, 0.316495,
		29.598660, 33.627647, 28.369497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438967, 33.337982, 28.484388>,  <29.795153, 32.993370, 28.147951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438967, 33.337982, 28.484388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.097906, 33.493008, 28.624550>,  <29.893270, 33.586021, 28.708647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.097906, 33.493008, 28.624550>,  <30.438967, 33.337982, 28.484388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097906, 33.493008, 28.624550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270047, -0.247230, 0.930565,
		0.447280, 0.888074, 0.106141,
		-0.852652, 0.387560, 0.350403,
		29.842110, 33.609276, 28.729671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207550, 33.270142, 28.496988>,  <30.438967, 33.337982, 28.484388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207550, 33.270142, 28.496988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.390970, 32.918541, 28.444691>,  <31.501022, 32.707581, 28.413313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.390970, 32.918541, 28.444691>,  <31.207550, 33.270142, 28.496988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390970, 32.918541, 28.444691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269082, 0.277551, -0.922258,
		0.846951, 0.387722, 0.363794,
		0.458551, -0.878998, -0.130743,
		31.528536, 32.654842, 28.405468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829844, 33.344238, 28.350981>,  <31.207550, 33.270142, 28.496988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829844, 33.344238, 28.350981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.783358, 32.986069, 28.179066>,  <31.755466, 32.771168, 28.075916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.783358, 32.986069, 28.179066>,  <31.829844, 33.344238, 28.350981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783358, 32.986069, 28.179066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274576, 0.386893, -0.880297,
		0.954517, -0.220312, 0.200898,
		-0.116214, -0.895420, -0.429788,
		31.748493, 32.717442, 28.050129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456345, 33.178806, 27.907570>,  <31.829844, 33.344238, 28.350981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456345, 33.178806, 27.907570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.143818, 32.960712, 27.786068>,  <31.956303, 32.829857, 27.713167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.143818, 32.960712, 27.786068>,  <32.456345, 33.178806, 27.907570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143818, 32.960712, 27.786068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186636, 0.260314, -0.947314,
		0.595580, -0.796841, -0.101627,
		-0.781314, -0.545234, -0.303757,
		31.909424, 32.797142, 27.694941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827347, 32.955097, 27.321060>,  <32.456345, 33.178806, 27.907570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827347, 32.955097, 27.321060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.431816, 32.896011, 27.312986>,  <32.194500, 32.860561, 27.308142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.431816, 32.896011, 27.312986>,  <32.827347, 32.955097, 27.321060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431816, 32.896011, 27.312986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011800, 0.212515, -0.977086,
		0.148618, -0.965929, -0.211883,
		-0.988824, -0.147713, -0.020186,
		32.135170, 32.851696, 27.306931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704178, 32.560535, 26.806517>,  <32.827347, 32.955097, 27.321060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704178, 32.560535, 26.806517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.337601, 32.712296, 26.857403>,  <32.117653, 32.803352, 26.887934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.337601, 32.712296, 26.857403>,  <32.704178, 32.560535, 26.806517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337601, 32.712296, 26.857403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029793, 0.252333, -0.967182,
		-0.399050, -0.890159, -0.219945,
		-0.916445, 0.379401, 0.127214,
		32.062668, 32.826115, 26.895567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262547, 32.160587, 26.396086>,  <32.704178, 32.560535, 26.806517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262547, 32.160587, 26.396086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.115265, 32.524658, 26.471983>,  <32.026897, 32.743103, 26.517521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.115265, 32.524658, 26.471983>,  <32.262547, 32.160587, 26.396086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115265, 32.524658, 26.471983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028857, 0.192792, -0.980815,
		-0.929298, -0.366612, -0.044721,
		-0.368200, 0.910179, 0.189741,
		32.004807, 32.797710, 26.528906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991564, 32.393787, 25.726086>,  <32.262547, 32.160587, 26.396086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991564, 32.393787, 25.726086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.973379, 32.723564, 25.951735>,  <31.962469, 32.921429, 26.087124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.973379, 32.723564, 25.951735>,  <31.991564, 32.393787, 25.726086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973379, 32.723564, 25.951735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050310, 0.565878, -0.822953,
		-0.997699, -0.009030, -0.067202,
		-0.045460, 0.824440, 0.564121,
		31.959742, 32.970898, 26.120972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372616, 32.950573, 25.416632>,  <31.991564, 32.393787, 25.726086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372616, 32.950573, 25.416632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.657459, 33.137833, 25.625914>,  <31.828365, 33.250187, 25.751484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.657459, 33.137833, 25.625914>,  <31.372616, 32.950573, 25.416632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657459, 33.137833, 25.625914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254462, 0.522458, -0.813810,
		-0.654335, 0.712655, 0.252921,
		0.712106, 0.468145, 0.523206,
		31.871092, 33.278275, 25.782875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280958, 33.644386, 25.281652>,  <31.372616, 32.950573, 25.416632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280958, 33.644386, 25.281652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.667130, 33.628593, 25.384716>,  <31.898832, 33.619118, 25.446554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.667130, 33.628593, 25.384716>,  <31.280958, 33.644386, 25.281652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667130, 33.628593, 25.384716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219723, 0.655083, -0.722902,
		-0.140247, 0.754524, 0.641111,
		0.965429, -0.039482, 0.257660,
		31.956758, 33.616749, 25.462013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460014, 34.329838, 25.214315>,  <31.280958, 33.644386, 25.281652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460014, 34.329838, 25.214315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.801481, 34.121571, 25.219368>,  <32.006363, 33.996613, 25.222399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.801481, 34.121571, 25.219368>,  <31.460014, 34.329838, 25.214315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801481, 34.121571, 25.219368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379660, 0.605514, -0.699436,
		0.356525, 0.601881, 0.714583,
		0.853667, -0.520666, 0.012629,
		32.057583, 33.965370, 25.223156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048710, 34.786308, 25.435699>,  <31.460014, 34.329838, 25.214315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048710, 34.786308, 25.435699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.127666, 34.487350, 25.181948>,  <32.175041, 34.307976, 25.029697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.127666, 34.487350, 25.181948>,  <32.048710, 34.786308, 25.435699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127666, 34.487350, 25.181948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384852, 0.654241, -0.651043,
		0.901624, -0.115631, 0.416779,
		0.197393, -0.747394, -0.634380,
		32.186886, 34.263134, 24.991634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812042, 34.780823, 25.194618>,  <32.048710, 34.786308, 25.435699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812042, 34.780823, 25.194618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.605640, 34.571060, 24.923697>,  <32.481800, 34.445202, 24.761143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.605640, 34.571060, 24.923697>,  <32.812042, 34.780823, 25.194618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605640, 34.571060, 24.923697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352063, 0.590992, -0.725796,
		0.780893, -0.612966, -0.120329,
		-0.516002, -0.524405, -0.677304,
		32.450840, 34.413738, 24.720505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241562, 34.741306, 24.665154>,  <32.812042, 34.780823, 25.194618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241562, 34.741306, 24.665154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.887585, 34.665913, 24.494818>,  <32.675198, 34.620674, 24.392616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.887585, 34.665913, 24.494818>,  <33.241562, 34.741306, 24.665154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887585, 34.665913, 24.494818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298589, 0.472069, -0.829455,
		0.357365, -0.861176, -0.361477,
		-0.884949, -0.188485, -0.425839,
		32.622101, 34.609367, 24.367065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332630, 34.681118, 23.956770>,  <33.241562, 34.741306, 24.665154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332630, 34.681118, 23.956770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.937206, 34.741203, 23.962309>,  <32.699951, 34.777256, 23.965633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.937206, 34.741203, 23.962309>,  <33.332630, 34.681118, 23.956770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937206, 34.741203, 23.962309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091529, 0.670251, -0.736468,
		-0.119910, -0.726773, -0.676330,
		-0.988557, 0.150214, 0.013849,
		32.640640, 34.786266, 23.966463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938900, 34.234207, 23.692305>,  <33.332630, 34.681118, 23.956770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938900, 34.234207, 23.692305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.250298, 34.473682, 23.767691>,  <34.437138, 34.617367, 23.812922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.250298, 34.473682, 23.767691>,  <33.938900, 34.234207, 23.692305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250298, 34.473682, 23.767691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251646, -0.572803, 0.780109,
		0.574991, -0.559888, -0.596583,
		0.778498, 0.598684, 0.188463,
		34.483849, 34.653286, 23.824230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475677, 33.759087, 24.101881>,  <33.938900, 34.234207, 23.692305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475677, 33.759087, 24.101881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.571468, 34.138596, 24.184317>,  <34.628944, 34.366302, 24.233778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.571468, 34.138596, 24.184317>,  <34.475677, 33.759087, 24.101881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571468, 34.138596, 24.184317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343578, -0.281345, 0.895991,
		0.908076, -0.143765, -0.393356,
		0.239481, 0.948777, 0.206088,
		34.643314, 34.423229, 24.246143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117344, 33.707531, 24.440189>,  <34.475677, 33.759087, 24.101881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117344, 33.707531, 24.440189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.958855, 34.064793, 24.525311>,  <34.863762, 34.279148, 24.576384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.958855, 34.064793, 24.525311>,  <35.117344, 33.707531, 24.440189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958855, 34.064793, 24.525311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265721, -0.110305, 0.957719,
		0.878860, 0.436021, -0.193623,
		-0.396228, 0.893151, 0.212803,
		34.839985, 34.332737, 24.589151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637569, 34.066723, 24.874769>,  <35.117344, 33.707531, 24.440189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637569, 34.066723, 24.874769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.280422, 34.234081, 24.941374>,  <35.066132, 34.334496, 24.981337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.280422, 34.234081, 24.941374>,  <35.637569, 34.066723, 24.874769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280422, 34.234081, 24.941374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158597, -0.053906, 0.985871,
		0.421459, 0.906664, -0.018225,
		-0.892871, 0.418395, 0.166513,
		35.012562, 34.359600, 24.991327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742432, 34.349972, 25.571333>,  <35.637569, 34.066723, 24.874769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742432, 34.349972, 25.571333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.347939, 34.371284, 25.508707>,  <35.111244, 34.384071, 25.471132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.347939, 34.371284, 25.508707>,  <35.742432, 34.349972, 25.571333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347939, 34.371284, 25.508707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159459, -0.055315, 0.985654,
		0.043855, 0.997047, 0.063049,
		-0.986230, 0.053279, -0.156562,
		35.052071, 34.387268, 25.461739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427502, 34.885319, 26.035948>,  <35.742432, 34.349972, 25.571333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427502, 34.885319, 26.035948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.164207, 34.602585, 25.932329>,  <35.006229, 34.432945, 25.870157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.164207, 34.602585, 25.932329>,  <35.427502, 34.885319, 26.035948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164207, 34.602585, 25.932329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023966, -0.363605, 0.931245,
		-0.752431, 0.606770, 0.256278,
		-0.658235, -0.706839, -0.259046,
		34.966736, 34.390533, 25.854616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003414, 34.991741, 26.583147>,  <35.427502, 34.885319, 26.035948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003414, 34.991741, 26.583147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.954502, 34.632744, 26.413654>,  <34.925156, 34.417343, 26.311958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.954502, 34.632744, 26.413654>,  <35.003414, 34.991741, 26.583147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954502, 34.632744, 26.413654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077455, -0.417005, 0.905598,
		-0.989468, 0.143561, -0.018522,
		-0.122285, -0.897495, -0.423732,
		34.917816, 34.363495, 26.286535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381966, 34.710384, 26.949244>,  <35.003414, 34.991741, 26.583147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381966, 34.710384, 26.949244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.579006, 34.402618, 26.786598>,  <34.697231, 34.217957, 26.689011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.579006, 34.402618, 26.786598>,  <34.381966, 34.710384, 26.949244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579006, 34.402618, 26.786598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141328, -0.531763, 0.835018,
		-0.858701, -0.353867, -0.370689,
		0.492604, -0.769420, -0.406614,
		34.726788, 34.171791, 26.664614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974766, 34.062523, 27.150583>,  <34.381966, 34.710384, 26.949244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974766, 34.062523, 27.150583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.344952, 33.953365, 27.045477>,  <34.567062, 33.887871, 26.982414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.344952, 33.953365, 27.045477>,  <33.974766, 34.062523, 27.150583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344952, 33.953365, 27.045477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122440, -0.440918, 0.889157,
		-0.358503, -0.855056, -0.374640,
		0.925464, -0.272894, -0.262763,
		34.622589, 33.871498, 26.966648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002342, 33.436153, 27.090385>,  <33.974766, 34.062523, 27.150583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002342, 33.436153, 27.090385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.382023, 33.523987, 27.180542>,  <34.609833, 33.576687, 27.234636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.382023, 33.523987, 27.180542>,  <34.002342, 33.436153, 27.090385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382023, 33.523987, 27.180542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124048, -0.397158, 0.909328,
		0.289189, -0.891094, -0.349743,
		0.949200, 0.219582, 0.225392,
		34.666782, 33.589863, 27.248159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286652, 32.833508, 27.487642>,  <34.002342, 33.436153, 27.090385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286652, 32.833508, 27.487642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.570824, 33.106701, 27.555548>,  <34.741329, 33.270615, 27.596291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.570824, 33.106701, 27.555548>,  <34.286652, 32.833508, 27.487642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570824, 33.106701, 27.555548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094567, -0.331682, 0.938639,
		0.697381, -0.650787, -0.300226,
		0.710434, 0.682981, 0.169766,
		34.783955, 33.311596, 27.606478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860962, 32.476612, 27.770081>,  <34.286652, 32.833508, 27.487642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860962, 32.476612, 27.770081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.865955, 32.854782, 27.900318>,  <34.868950, 33.081684, 27.978460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.865955, 32.854782, 27.900318>,  <34.860962, 32.476612, 27.770081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865955, 32.854782, 27.900318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123404, -0.324589, 0.937770,
		0.992278, 0.028473, -0.120721,
		0.012484, 0.945427, 0.325596,
		34.869701, 33.138409, 27.997997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455193, 32.464458, 28.192537>,  <34.860962, 32.476612, 27.770081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455193, 32.464458, 28.192537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.277500, 32.802486, 28.311546>,  <35.170883, 33.005302, 28.382952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.277500, 32.802486, 28.311546>,  <35.455193, 32.464458, 28.192537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277500, 32.802486, 28.311546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038897, -0.313582, 0.948764,
		0.895065, 0.433047, 0.106434,
		-0.444235, 0.845066, 0.297521,
		35.144230, 33.056007, 28.400803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740047, 32.720528, 28.794819>,  <35.455193, 32.464458, 28.192537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740047, 32.720528, 28.794819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410347, 32.944382, 28.829285>,  <35.212528, 33.078693, 28.849964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410347, 32.944382, 28.829285>,  <35.740047, 32.720528, 28.794819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410347, 32.944382, 28.829285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075531, -0.259481, 0.962790,
		0.561171, 0.787068, 0.256146,
		-0.824247, 0.559636, 0.086166,
		35.163074, 33.112274, 28.855135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.681778, 38.118084, 24.365625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.477760, 38.461357, 24.342398>,  <36.355350, 38.667320, 24.328461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.477760, 38.461357, 24.342398>,  <36.681778, 38.118084, 24.365625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477760, 38.461357, 24.342398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155880, 0.025828, -0.987438,
		-0.845906, -0.512688, -0.146948,
		-0.510043, 0.858186, -0.058070,
		36.324749, 38.718815, 24.324976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651806, 38.237560, 23.610741>,  <36.681778, 38.118084, 24.365625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651806, 38.237560, 23.610741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451782, 38.554916, 23.749575>,  <36.331768, 38.745331, 23.832876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451782, 38.554916, 23.749575>,  <36.651806, 38.237560, 23.610741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451782, 38.554916, 23.749575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134182, 0.324969, -0.936157,
		-0.855534, -0.514704, -0.056044,
		-0.500056, 0.793394, 0.347086,
		36.301765, 38.792934, 23.853701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042870, 38.261581, 23.223909>,  <36.651806, 38.237560, 23.610741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042870, 38.261581, 23.223909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114536, 38.617588, 23.391605>,  <36.157536, 38.831192, 23.492224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114536, 38.617588, 23.391605>,  <36.042870, 38.261581, 23.223909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114536, 38.617588, 23.391605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173234, 0.448018, -0.877080,
		-0.968446, 0.084519, 0.234453,
		0.179169, 0.890020, 0.419240,
		36.168285, 38.884594, 23.517378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490295, 38.721104, 22.932358>,  <36.042870, 38.261581, 23.223909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490295, 38.721104, 22.932358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769661, 38.971790, 23.070604>,  <35.937279, 39.122200, 23.153551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769661, 38.971790, 23.070604>,  <35.490295, 38.721104, 22.932358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769661, 38.971790, 23.070604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135309, 0.589823, -0.796115,
		-0.702788, 0.509252, 0.496740,
		0.698413, 0.626714, 0.345614,
		35.979183, 39.159805, 23.174288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220596, 39.347610, 22.870079>,  <35.490295, 38.721104, 22.932358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220596, 39.347610, 22.870079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617569, 39.394695, 22.884048>,  <35.855755, 39.422947, 22.892431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617569, 39.394695, 22.884048>,  <35.220596, 39.347610, 22.870079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617569, 39.394695, 22.884048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026089, 0.480114, -0.876818,
		-0.119978, 0.869273, 0.479552,
		0.992434, 0.117710, 0.034925,
		35.915298, 39.430008, 22.894526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290447, 40.032192, 22.794218>,  <35.220596, 39.347610, 22.870079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290447, 40.032192, 22.794218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.654884, 39.899311, 22.696602>,  <35.873547, 39.819584, 22.638033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.654884, 39.899311, 22.696602>,  <35.290447, 40.032192, 22.794218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654884, 39.899311, 22.696602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026003, 0.544538, -0.838333,
		0.411385, 0.770143, 0.487486,
		0.911091, -0.332202, -0.244041,
		35.928211, 39.799652, 22.623390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648296, 40.699993, 22.570837>,  <35.290447, 40.032192, 22.794218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648296, 40.699993, 22.570837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.838520, 40.378761, 22.427223>,  <35.952656, 40.186024, 22.341055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.838520, 40.378761, 22.427223>,  <35.648296, 40.699993, 22.570837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838520, 40.378761, 22.427223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189989, 0.492274, -0.849453,
		0.858922, 0.335753, 0.386682,
		0.475560, -0.803079, -0.359036,
		35.981190, 40.137836, 22.319513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259941, 40.970978, 22.323633>,  <35.648296, 40.699993, 22.570837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259941, 40.970978, 22.323633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.210785, 40.620842, 22.136583>,  <36.181290, 40.410759, 22.024353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.210785, 40.620842, 22.136583>,  <36.259941, 40.970978, 22.323633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210785, 40.620842, 22.136583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232777, 0.432625, -0.871006,
		0.964734, -0.215893, 0.150593,
		-0.122894, -0.875343, -0.467623,
		36.173916, 40.358238, 21.996296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927551, 40.803104, 21.939310>,  <36.259941, 40.970978, 22.323633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927551, 40.803104, 21.939310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.616550, 40.608070, 21.780437>,  <36.429951, 40.491051, 21.685114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.616550, 40.608070, 21.780437>,  <36.927551, 40.803104, 21.939310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616550, 40.608070, 21.780437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092872, 0.535623, -0.839335,
		0.621986, -0.689471, -0.371164,
		-0.777501, -0.487584, -0.397183,
		36.383301, 40.461796, 21.661283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156086, 40.875195, 21.294651>,  <36.927551, 40.803104, 21.939310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156086, 40.875195, 21.294651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.801674, 40.694027, 21.255039>,  <36.589027, 40.585327, 21.231272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.801674, 40.694027, 21.255039>,  <37.156086, 40.875195, 21.294651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801674, 40.694027, 21.255039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146716, 0.476541, -0.866824,
		0.439790, -0.753508, -0.488683,
		-0.886036, -0.452918, -0.099026,
		36.535862, 40.558151, 21.225330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106808, 40.346294, 20.766794>,  <37.156086, 40.875195, 21.294651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106808, 40.346294, 20.766794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.727726, 40.469643, 20.799717>,  <36.500278, 40.543652, 20.819471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.727726, 40.469643, 20.799717>,  <37.106808, 40.346294, 20.766794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727726, 40.469643, 20.799717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034647, 0.355760, -0.933935,
		-0.317276, -0.882238, -0.347838,
		-0.947700, 0.308367, 0.082307,
		36.443417, 40.562153, 20.824409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702686, 40.079853, 20.227133>,  <37.106808, 40.346294, 20.766794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702686, 40.079853, 20.227133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452709, 40.368702, 20.345778>,  <36.302723, 40.542011, 20.416965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452709, 40.368702, 20.345778>,  <36.702686, 40.079853, 20.227133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452709, 40.368702, 20.345778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047092, 0.344385, -0.937647,
		-0.779246, -0.599947, -0.181216,
		-0.624947, 0.722123, 0.296614,
		36.265224, 40.585339, 20.434761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123009, 39.638260, 19.937792>,  <36.702686, 40.079853, 20.227133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123009, 39.638260, 19.937792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.239197, 39.777416, 20.294353>,  <36.308910, 39.860909, 20.508289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.239197, 39.777416, 20.294353>,  <36.123009, 39.638260, 19.937792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239197, 39.777416, 20.294353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956777, 0.091676, 0.275995,
		0.014297, -0.933041, 0.359486,
		0.290471, 0.347894, 0.891402,
		36.326340, 39.881783, 20.561773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910694, 38.838326, 19.774343>,  <36.123009, 39.638260, 19.937792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910694, 38.838326, 19.774343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738785, 38.624889, 19.482981>,  <35.635639, 38.496830, 19.308163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738785, 38.624889, 19.482981>,  <35.910694, 38.838326, 19.774343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738785, 38.624889, 19.482981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272932, -0.692203, 0.668104,
		-0.860697, 0.485941, 0.151861,
		-0.429778, -0.533587, -0.728406,
		35.609852, 38.464813, 19.264460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323830, 38.642311, 20.071878>,  <35.910694, 38.838326, 19.774343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323830, 38.642311, 20.071878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391811, 38.358185, 19.798656>,  <35.432602, 38.187710, 19.634724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391811, 38.358185, 19.798656>,  <35.323830, 38.642311, 20.071878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391811, 38.358185, 19.798656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323274, -0.694970, 0.642270,
		-0.930918, 0.111656, -0.347741,
		0.169956, -0.710317, -0.683055,
		35.442799, 38.145088, 19.593740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809933, 38.172302, 20.234543>,  <35.323830, 38.642311, 20.071878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809933, 38.172302, 20.234543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034271, 37.946049, 19.992712>,  <35.168873, 37.810299, 19.847614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034271, 37.946049, 19.992712>,  <34.809933, 38.172302, 20.234543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034271, 37.946049, 19.992712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251677, -0.812156, 0.526367,
		-0.788739, -0.143054, -0.597852,
		0.560848, -0.565631, -0.604575,
		35.202526, 37.776360, 19.811338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377941, 37.676373, 20.062799>,  <34.809933, 38.172302, 20.234543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377941, 37.676373, 20.062799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724831, 37.492329, 19.986673>,  <34.932964, 37.381905, 19.940998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724831, 37.492329, 19.986673>,  <34.377941, 37.676373, 20.062799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724831, 37.492329, 19.986673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211550, -0.686499, 0.695677,
		-0.450736, -0.563048, -0.692686,
		0.867227, -0.460105, -0.190317,
		34.985001, 37.354298, 19.929579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255817, 36.973892, 20.194872>,  <34.377941, 37.676373, 20.062799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255817, 36.973892, 20.194872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655712, 36.971550, 20.203697>,  <34.895649, 36.970146, 20.208992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655712, 36.971550, 20.203697>,  <34.255817, 36.973892, 20.194872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655712, 36.971550, 20.203697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018149, -0.790066, 0.612753,
		0.013846, -0.612994, -0.789966,
		0.999739, -0.005853, 0.022064,
		34.955635, 36.969795, 20.210316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523014, 36.196304, 20.008694>,  <34.255817, 36.973892, 20.194872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523014, 36.196304, 20.008694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.799603, 36.390514, 20.222658>,  <34.965557, 36.507042, 20.351036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.799603, 36.390514, 20.222658>,  <34.523014, 36.196304, 20.008694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799603, 36.390514, 20.222658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036384, -0.762929, 0.645458,
		0.721485, -0.426855, -0.545211,
		0.691474, 0.485525, 0.534910,
		35.007046, 36.536171, 20.383131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111897, 35.608189, 20.253847>,  <34.523014, 36.196304, 20.008694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111897, 35.608189, 20.253847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.143745, 35.943245, 20.470003>,  <35.162853, 36.144279, 20.599697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.143745, 35.943245, 20.470003>,  <35.111897, 35.608189, 20.253847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143745, 35.943245, 20.470003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193899, -0.544770, 0.815861,
		0.977785, 0.039823, -0.205792,
		0.079619, 0.837639, 0.540390,
		35.167633, 36.194538, 20.632120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572891, 35.450737, 20.705858>,  <35.111897, 35.608189, 20.253847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572891, 35.450737, 20.705858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.447437, 35.784149, 20.887785>,  <35.372166, 35.984196, 20.996941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.447437, 35.784149, 20.887785>,  <35.572891, 35.450737, 20.705858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447437, 35.784149, 20.887785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129566, -0.436937, 0.890111,
		0.940662, 0.338100, 0.029042,
		-0.313637, 0.833531, 0.454817,
		35.353348, 36.034210, 21.024231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007713, 35.555492, 21.306452>,  <35.572891, 35.450737, 20.705858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007713, 35.555492, 21.306452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.670036, 35.748047, 21.400780>,  <35.467430, 35.863579, 21.457376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.670036, 35.748047, 21.400780>,  <36.007713, 35.555492, 21.306452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670036, 35.748047, 21.400780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094812, -0.298902, 0.949562,
		0.527590, 0.823971, 0.206689,
		-0.844191, 0.481383, 0.235820,
		35.416779, 35.892464, 21.471525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089699, 36.077072, 21.909164>,  <36.007713, 35.555492, 21.306452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089699, 36.077072, 21.909164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695156, 36.012711, 21.895294>,  <35.458431, 35.974094, 21.886972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695156, 36.012711, 21.895294>,  <36.089699, 36.077072, 21.909164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695156, 36.012711, 21.895294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006240, -0.247083, 0.968974,
		-0.164480, 0.955542, 0.244717,
		-0.986361, -0.160904, -0.034678,
		35.399246, 35.964439, 21.884892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871964, 36.277630, 22.710691>,  <36.089699, 36.077072, 21.909164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871964, 36.277630, 22.710691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589725, 36.046291, 22.546913>,  <35.420383, 35.907490, 22.448647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589725, 36.046291, 22.546913>,  <35.871964, 36.277630, 22.710691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589725, 36.046291, 22.546913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222499, -0.367769, 0.902906,
		-0.672773, 0.728192, 0.130816,
		-0.705599, -0.578345, -0.409447,
		35.378044, 35.872787, 22.424080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223587, 36.302013, 23.252979>,  <35.871964, 36.277630, 22.710691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223587, 36.302013, 23.252979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.197945, 35.979855, 23.017275>,  <35.182560, 35.786560, 22.875853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.197945, 35.979855, 23.017275>,  <35.223587, 36.302013, 23.252979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197945, 35.979855, 23.017275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378235, -0.526811, 0.761189,
		-0.923487, 0.271675, -0.270857,
		-0.064105, -0.805396, -0.589260,
		35.178715, 35.738235, 22.840496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608017, 36.064629, 23.313377>,  <35.223587, 36.302013, 23.252979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608017, 36.064629, 23.313377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790424, 35.740120, 23.167009>,  <34.899868, 35.545414, 23.079189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790424, 35.740120, 23.167009>,  <34.608017, 36.064629, 23.313377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790424, 35.740120, 23.167009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383889, -0.550246, 0.741524,
		-0.802920, -0.197672, -0.562357,
		0.456013, -0.811267, -0.365919,
		34.927227, 35.496738, 23.057234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034271, 35.488602, 23.300276>,  <34.608017, 36.064629, 23.313377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034271, 35.488602, 23.300276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397625, 35.322803, 23.278276>,  <34.615639, 35.223324, 23.265076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397625, 35.322803, 23.278276>,  <34.034271, 35.488602, 23.300276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397625, 35.322803, 23.278276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298067, -0.734179, 0.610030,
		-0.293233, -0.537751, -0.790467,
		0.908389, -0.414493, -0.055000,
		34.670143, 35.198456, 23.261776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804710, 34.870655, 23.334707>,  <34.034271, 35.488602, 23.300276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804710, 34.870655, 23.334707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.184834, 34.927036, 23.445736>,  <34.412907, 34.960865, 23.512354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.184834, 34.927036, 23.445736>,  <33.804710, 34.870655, 23.334707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184834, 34.927036, 23.445736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163566, -0.532567, 0.830433,
		0.264880, -0.834568, -0.483047,
		0.950308, 0.140955, 0.277573,
		34.469925, 34.969322, 23.529007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116863, 34.514309, 23.221195>,  <33.804710, 34.870655, 23.334707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116863, 34.514309, 23.221195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786545, 34.700024, 23.349258>,  <32.588352, 34.811451, 23.426096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786545, 34.700024, 23.349258>,  <33.116863, 34.514309, 23.221195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786545, 34.700024, 23.349258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041329, 0.516339, -0.855387,
		-0.562453, -0.719606, -0.407202,
		-0.825796, 0.464285, 0.320157,
		32.538807, 34.839310, 23.445305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653618, 34.517868, 22.749971>,  <33.116863, 34.514309, 23.221195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653618, 34.517868, 22.749971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.506252, 34.821606, 22.964512>,  <32.417835, 35.003849, 23.093235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.506252, 34.821606, 22.964512>,  <32.653618, 34.517868, 22.749971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506252, 34.821606, 22.964512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038334, 0.564029, -0.824864,
		-0.928873, -0.324449, -0.178685,
		-0.368410, 0.759344, 0.536349,
		32.395729, 35.049408, 23.125416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963118, 34.856293, 22.367212>,  <32.653618, 34.517868, 22.749971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963118, 34.856293, 22.367212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153824, 35.103031, 22.617716>,  <32.268246, 35.251072, 22.768019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153824, 35.103031, 22.617716>,  <31.963118, 34.856293, 22.367212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153824, 35.103031, 22.617716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219342, 0.773390, -0.594775,
		-0.851226, 0.146202, 0.504024,
		0.476764, 0.616842, 0.626261,
		32.296852, 35.288082, 22.805593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609337, 35.405155, 22.321489>,  <31.963118, 34.856293, 22.367212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609337, 35.405155, 22.321489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.938026, 35.572113, 22.476692>,  <32.135239, 35.672287, 22.569813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.938026, 35.572113, 22.476692>,  <31.609337, 35.405155, 22.321489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938026, 35.572113, 22.476692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123763, 0.795303, -0.593444,
		-0.556285, 0.439626, 0.705178,
		0.821724, 0.417399, 0.388006,
		32.184544, 35.697334, 22.593094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350704, 36.129517, 22.386074>,  <31.609337, 35.405155, 22.321489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350704, 36.129517, 22.386074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748039, 36.153488, 22.425438>,  <31.986441, 36.167873, 22.449057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748039, 36.153488, 22.425438>,  <31.350704, 36.129517, 22.386074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748039, 36.153488, 22.425438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011937, 0.795943, -0.605253,
		-0.114602, 0.602397, 0.789927,
		0.993340, 0.059933, 0.098408,
		32.046040, 36.171467, 22.454960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544054, 36.814240, 22.472927>,  <31.350704, 36.129517, 22.386074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544054, 36.814240, 22.472927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.884956, 36.657391, 22.334417>,  <32.089497, 36.563282, 22.251312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.884956, 36.657391, 22.334417>,  <31.544054, 36.814240, 22.472927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884956, 36.657391, 22.334417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058707, 0.729437, -0.681524,
		0.519823, 0.560503, 0.644686,
		0.852255, -0.392119, -0.346273,
		32.140633, 36.539757, 22.230536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099251, 37.362846, 22.421362>,  <31.544054, 36.814240, 22.472927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099251, 37.362846, 22.421362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210938, 37.089775, 22.151253>,  <32.277950, 36.925934, 21.989187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210938, 37.089775, 22.151253>,  <32.099251, 37.362846, 22.421362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210938, 37.089775, 22.151253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231167, 0.730347, -0.642771,
		0.931988, 0.023370, 0.361736,
		0.279215, -0.682676, -0.675272,
		32.294701, 36.884972, 21.948671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997583, 37.900829, 22.955509>,  <32.099251, 37.362846, 22.421362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997583, 37.900829, 22.955509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618073, 38.019733, 22.912697>,  <31.390366, 38.091076, 22.887009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618073, 38.019733, 22.912697>,  <31.997583, 37.900829, 22.955509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618073, 38.019733, 22.912697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315939, -0.892774, 0.321149,
		-0.000092, 0.338516, 0.940961,
		-0.948780, 0.297257, -0.107032,
		31.333439, 38.108910, 22.880587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679956, 37.769192, 23.581467>,  <31.997583, 37.900829, 22.955509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679956, 37.769192, 23.581467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.359472, 37.832069, 23.350521>,  <31.167181, 37.869797, 23.211954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.359472, 37.832069, 23.350521>,  <31.679956, 37.769192, 23.581467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359472, 37.832069, 23.350521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468552, -0.764947, 0.441945,
		-0.372183, 0.624617, 0.686537,
		-0.801211, 0.157194, -0.577366,
		31.119108, 37.879227, 23.177311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137896, 37.856239, 24.018196>,  <31.679956, 37.769192, 23.581467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137896, 37.856239, 24.018196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.976801, 37.749321, 23.668030>,  <30.880144, 37.685169, 23.457930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.976801, 37.749321, 23.668030>,  <31.137896, 37.856239, 24.018196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976801, 37.749321, 23.668030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542019, -0.701046, 0.463412,
		-0.737577, 0.661125, 0.137456,
		-0.402736, -0.267298, -0.875417,
		30.855980, 37.669132, 23.405405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382244, 37.709389, 24.229208>,  <31.137896, 37.856239, 24.018196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382244, 37.709389, 24.229208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.405909, 37.558861, 23.859369>,  <30.420107, 37.468544, 23.637466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.405909, 37.558861, 23.859369>,  <30.382244, 37.709389, 24.229208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405909, 37.558861, 23.859369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467509, -0.828811, 0.307421,
		-0.882006, 0.414072, -0.224964,
		0.059159, -0.376320, -0.924599,
		30.423656, 37.445965, 23.581989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676939, 37.540482, 24.001295>,  <30.382244, 37.709389, 24.229208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676939, 37.540482, 24.001295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.929277, 37.309605, 23.793879>,  <30.080681, 37.171078, 23.669428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.929277, 37.309605, 23.793879>,  <29.676939, 37.540482, 24.001295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929277, 37.309605, 23.793879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423641, -0.816119, 0.393036,
		-0.650049, -0.028270, -0.759366,
		0.630845, -0.577191, -0.518542,
		30.118530, 37.136448, 23.638315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295767, 36.972103, 23.762283>,  <29.676939, 37.540482, 24.001295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295767, 36.972103, 23.762283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.671629, 36.838081, 23.734610>,  <29.897146, 36.757668, 23.718006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.671629, 36.838081, 23.734610>,  <29.295767, 36.972103, 23.762283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671629, 36.838081, 23.734610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295552, -0.896838, 0.329137,
		-0.172326, -0.288828, -0.941744,
		0.939656, -0.335053, -0.069185,
		29.953526, 36.737564, 23.713854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286123, 36.286427, 23.497522>,  <29.295767, 36.972103, 23.762283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286123, 36.286427, 23.497522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.632437, 36.327316, 23.693468>,  <29.840225, 36.351849, 23.811035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.632437, 36.327316, 23.693468>,  <29.286123, 36.286427, 23.497522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632437, 36.327316, 23.693468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102965, -0.921577, 0.374293,
		0.489710, -0.374495, -0.787361,
		0.865784, 0.102225, 0.489865,
		29.892172, 36.357983, 23.840427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.784382, 42.357376, 21.899441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.113522, 42.158871, 21.788708>,  <34.311005, 42.039768, 21.722267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.113522, 42.158871, 21.788708>,  <33.784382, 42.357376, 21.899441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113522, 42.158871, 21.788708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158645, -0.267171, 0.950500,
		-0.545661, -0.826039, -0.141113,
		0.822852, -0.496265, -0.276832,
		34.360378, 42.009991, 21.705658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671360, 41.703842, 22.161175>,  <33.784382, 42.357376, 21.899441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671360, 41.703842, 22.161175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.065941, 41.747326, 22.112032>,  <34.302689, 41.773415, 22.082546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.065941, 41.747326, 22.112032>,  <33.671360, 41.703842, 22.161175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065941, 41.747326, 22.112032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138177, -0.146958, 0.979444,
		0.088419, -0.983151, -0.159988,
		0.986453, 0.108708, -0.122855,
		34.361877, 41.779938, 22.075176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006618, 41.073437, 22.388054>,  <33.671360, 41.703842, 22.161175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006618, 41.073437, 22.388054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.269848, 41.370804, 22.435846>,  <34.427784, 41.549225, 22.464521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.269848, 41.370804, 22.435846>,  <34.006618, 41.073437, 22.388054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269848, 41.370804, 22.435846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038000, -0.191271, 0.980801,
		0.751995, -0.640898, -0.154120,
		0.658073, 0.743414, 0.119481,
		34.467270, 41.593826, 22.471691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397141, 40.878284, 22.939075>,  <34.006618, 41.073437, 22.388054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397141, 40.878284, 22.939075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.516544, 41.259827, 22.952097>,  <34.588184, 41.488750, 22.959909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.516544, 41.259827, 22.952097>,  <34.397141, 40.878284, 22.939075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516544, 41.259827, 22.952097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232197, -0.105665, 0.966912,
		0.925732, -0.281070, -0.253023,
		0.298506, 0.953853, 0.032554,
		34.606094, 41.545982, 22.961863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014889, 40.844307, 23.224287>,  <34.397141, 40.878284, 22.939075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014889, 40.844307, 23.224287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.893715, 41.221046, 23.282461>,  <34.821011, 41.447090, 23.317366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.893715, 41.221046, 23.282461>,  <35.014889, 40.844307, 23.224287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893715, 41.221046, 23.282461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343104, -0.034587, 0.938661,
		0.889107, 0.334251, -0.312675,
		-0.302933, 0.941850, 0.145434,
		34.802834, 41.503601, 23.326092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435570, 41.163902, 23.737986>,  <35.014889, 40.844307, 23.224287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435570, 41.163902, 23.737986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.121243, 41.410587, 23.756586>,  <34.932648, 41.558598, 23.767746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.121243, 41.410587, 23.756586>,  <35.435570, 41.163902, 23.737986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121243, 41.410587, 23.756586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039011, -0.124463, 0.991457,
		0.617229, 0.777289, 0.121864,
		-0.785816, 0.616710, 0.046499,
		34.885498, 41.595600, 23.770536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554436, 41.557434, 24.335760>,  <35.435570, 41.163902, 23.737986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554436, 41.557434, 24.335760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.162453, 41.595757, 24.265907>,  <34.927261, 41.618752, 24.223995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.162453, 41.595757, 24.265907>,  <35.554436, 41.557434, 24.335760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162453, 41.595757, 24.265907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188485, -0.162504, 0.968538,
		0.064417, 0.982045, 0.177307,
		-0.979961, 0.095810, -0.174633,
		34.868465, 41.624500, 24.213518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293644, 42.003929, 24.945658>,  <35.554436, 41.557434, 24.335760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293644, 42.003929, 24.945658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.972565, 41.832767, 24.779491>,  <34.779919, 41.730068, 24.679792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.972565, 41.832767, 24.779491>,  <35.293644, 42.003929, 24.945658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972565, 41.832767, 24.779491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350264, -0.225511, 0.909098,
		-0.482691, 0.875237, 0.031136,
		-0.802698, -0.427908, -0.415416,
		34.731754, 41.704395, 24.654867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788128, 42.319809, 25.306528>,  <35.293644, 42.003929, 24.945658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788128, 42.319809, 25.306528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.630413, 41.971668, 25.188528>,  <34.535786, 41.762783, 25.117727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.630413, 41.971668, 25.188528>,  <34.788128, 42.319809, 25.306528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630413, 41.971668, 25.188528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389735, -0.132344, 0.911368,
		-0.832252, 0.474313, -0.287025,
		-0.394288, -0.870352, -0.295000,
		34.512127, 41.710564, 25.100027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125332, 42.410007, 25.522165>,  <34.788128, 42.319809, 25.306528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125332, 42.410007, 25.522165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.201363, 42.022430, 25.458900>,  <34.246983, 41.789883, 25.420940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.201363, 42.022430, 25.458900>,  <34.125332, 42.410007, 25.522165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201363, 42.022430, 25.458900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312515, -0.212437, 0.925853,
		-0.930701, -0.126558, -0.343190,
		0.190081, -0.968944, -0.158164,
		34.258389, 41.731747, 25.411451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509762, 42.108395, 25.766180>,  <34.125332, 42.410007, 25.522165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509762, 42.108395, 25.766180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.781208, 41.814602, 25.764967>,  <33.944077, 41.638325, 25.764238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.781208, 41.814602, 25.764967>,  <33.509762, 42.108395, 25.766180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781208, 41.814602, 25.764967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308984, -0.289224, 0.906023,
		-0.666339, -0.613905, -0.423217,
		0.678617, -0.734486, -0.003034,
		33.984795, 41.594257, 25.764057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139065, 41.447430, 25.947424>,  <33.509762, 42.108395, 25.766180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139065, 41.447430, 25.947424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.526234, 41.392967, 26.031887>,  <33.758533, 41.360291, 26.082565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.526234, 41.392967, 26.031887>,  <33.139065, 41.447430, 25.947424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526234, 41.392967, 26.031887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244818, -0.322194, 0.914470,
		-0.056476, -0.936832, -0.345192,
		0.967923, -0.136155, 0.211157,
		33.816612, 41.352119, 26.095234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636471, 41.070538, 25.602184>,  <33.139065, 41.447430, 25.947424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636471, 41.070538, 25.602184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.266876, 41.154682, 25.729929>,  <32.045120, 41.205170, 25.806576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.266876, 41.154682, 25.729929>,  <32.636471, 41.070538, 25.602184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266876, 41.154682, 25.729929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150170, 0.568437, -0.808906,
		-0.351700, -0.795379, -0.493640,
		-0.923989, 0.210362, 0.319361,
		31.989679, 41.217793, 25.825737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234875, 40.753277, 25.089613>,  <32.636471, 41.070538, 25.602184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234875, 40.753277, 25.089613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.997732, 41.011986, 25.281530>,  <31.855446, 41.167213, 25.396681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.997732, 41.011986, 25.281530>,  <32.234875, 40.753277, 25.089613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997732, 41.011986, 25.281530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246646, 0.421322, -0.872728,
		-0.766606, -0.635743, -0.090260,
		-0.592859, 0.646776, 0.479792,
		31.819874, 41.206020, 25.425468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591242, 40.833191, 24.627090>,  <32.234875, 40.753277, 25.089613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591242, 40.833191, 24.627090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.601595, 41.142052, 24.881056>,  <31.607807, 41.327366, 25.033436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.601595, 41.142052, 24.881056>,  <31.591242, 40.833191, 24.627090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601595, 41.142052, 24.881056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010013, 0.635296, -0.772204,
		-0.999615, 0.013630, 0.024175,
		0.025883, 0.772148, 0.634915,
		31.609360, 41.373695, 25.071529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141840, 41.266842, 24.187780>,  <31.591242, 40.833191, 24.627090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141840, 41.266842, 24.187780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.340025, 41.481312, 24.461142>,  <31.458937, 41.609993, 24.625158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.340025, 41.481312, 24.461142>,  <31.141840, 41.266842, 24.187780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340025, 41.481312, 24.461142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079506, 0.755463, -0.650350,
		-0.864984, 0.376558, 0.331674,
		0.495462, 0.536172, 0.683401,
		31.488663, 41.642162, 24.666162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946100, 41.938732, 24.190809>,  <31.141840, 41.266842, 24.187780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946100, 41.938732, 24.190809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.316689, 41.966122, 24.338842>,  <31.539042, 41.982555, 24.427662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.316689, 41.966122, 24.338842>,  <30.946100, 41.938732, 24.190809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316689, 41.966122, 24.338842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217674, 0.704673, -0.675317,
		-0.307030, 0.706220, 0.637954,
		0.926472, 0.068477, 0.370082,
		31.594629, 41.986664, 24.449867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197742, 42.710934, 24.196100>,  <30.946100, 41.938732, 24.190809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197742, 42.710934, 24.196100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.518427, 42.472378, 24.211966>,  <31.710838, 42.329243, 24.221485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.518427, 42.472378, 24.211966>,  <31.197742, 42.710934, 24.196100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518427, 42.472378, 24.211966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365526, 0.436697, -0.822002,
		0.472913, 0.673509, 0.568102,
		0.801714, -0.596391, 0.039665,
		31.758942, 42.293461, 24.223866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718788, 43.178745, 23.964321>,  <31.197742, 42.710934, 24.196100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718788, 43.178745, 23.964321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.870167, 42.813721, 23.902340>,  <31.960995, 42.594707, 23.865150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.870167, 42.813721, 23.902340>,  <31.718788, 43.178745, 23.964321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870167, 42.813721, 23.902340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344076, 0.294103, -0.891692,
		0.859295, 0.284143, 0.425293,
		0.378448, -0.912560, -0.154955,
		31.983702, 42.539951, 23.855854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298859, 43.358189, 23.702343>,  <31.718788, 43.178745, 23.964321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298859, 43.358189, 23.702343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.199944, 42.996330, 23.563507>,  <32.140594, 42.779217, 23.480206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.199944, 42.996330, 23.563507>,  <32.298859, 43.358189, 23.702343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199944, 42.996330, 23.563507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247012, 0.287522, -0.925374,
		0.936929, -0.314565, 0.152359,
		-0.247284, -0.904644, -0.347089,
		32.125759, 42.724937, 23.459381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795189, 43.178165, 23.285271>,  <32.298859, 43.358189, 23.702343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795189, 43.178165, 23.285271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.508156, 42.920116, 23.180275>,  <32.335938, 42.765289, 23.117277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.508156, 42.920116, 23.180275>,  <32.795189, 43.178165, 23.285271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508156, 42.920116, 23.180275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289078, 0.067009, -0.954957,
		0.633650, -0.761138, 0.138405,
		-0.717580, -0.645118, -0.262489,
		32.292881, 42.726582, 23.101528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071823, 42.899361, 22.789871>,  <32.795189, 43.178165, 23.285271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071823, 42.899361, 22.789871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.704590, 42.765007, 22.705673>,  <32.484249, 42.684395, 22.655155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.704590, 42.765007, 22.705673>,  <33.071823, 42.899361, 22.789871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704590, 42.765007, 22.705673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172934, 0.138427, -0.975157,
		0.356681, -0.931674, -0.069001,
		-0.918081, -0.335887, -0.210493,
		32.429165, 42.664242, 22.642525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111851, 42.233791, 22.343904>,  <33.071823, 42.899361, 22.789871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111851, 42.233791, 22.343904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.770557, 42.435329, 22.290035>,  <32.565781, 42.556252, 22.257713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.770557, 42.435329, 22.290035>,  <33.111851, 42.233791, 22.343904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770557, 42.435329, 22.290035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216161, 0.106645, -0.970516,
		-0.474623, -0.857188, -0.199904,
		-0.853234, 0.503841, -0.134674,
		32.514587, 42.586483, 22.249634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698193, 41.870861, 21.915415>,  <33.111851, 42.233791, 22.343904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698193, 41.870861, 21.915415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.554756, 42.242989, 21.884621>,  <32.468697, 42.466263, 21.866144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.554756, 42.242989, 21.884621>,  <32.698193, 41.870861, 21.915415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554756, 42.242989, 21.884621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010102, -0.078600, -0.996855,
		-0.933441, -0.358239, 0.018787,
		-0.358589, 0.930315, -0.076987,
		32.447178, 42.522083, 21.861525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817890, 41.227070, 22.322666>,  <32.698193, 41.870861, 21.915415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817890, 41.227070, 22.322666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.460365, 41.305874, 22.161528>,  <32.245850, 41.353157, 22.064844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.460365, 41.305874, 22.161528>,  <32.817890, 41.227070, 22.322666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460365, 41.305874, 22.161528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318704, -0.911047, 0.261573,
		-0.315479, 0.362186, 0.877095,
		-0.893813, 0.197012, -0.402846,
		32.192223, 41.364979, 22.040674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380604, 40.916950, 22.837831>,  <32.817890, 41.227070, 22.322666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380604, 40.916950, 22.837831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.239857, 40.968002, 22.466908>,  <32.155407, 40.998634, 22.244354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.239857, 40.968002, 22.466908>,  <32.380604, 40.916950, 22.837831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239857, 40.968002, 22.466908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479643, -0.875304, 0.061529,
		-0.803824, 0.466426, 0.369206,
		-0.351866, 0.127629, -0.927308,
		32.134296, 41.006290, 22.188715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652126, 40.830826, 22.889099>,  <32.380604, 40.916950, 22.837831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652126, 40.830826, 22.889099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.764763, 40.758190, 22.512222>,  <31.832346, 40.714607, 22.286097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.764763, 40.758190, 22.512222>,  <31.652126, 40.830826, 22.889099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764763, 40.758190, 22.512222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546546, -0.837427, -0.001946,
		-0.788665, 0.515500, -0.335063,
		0.281594, -0.181593, -0.942194,
		31.849241, 40.703712, 22.229565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067188, 40.600285, 22.612104>,  <31.652126, 40.830826, 22.889099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067188, 40.600285, 22.612104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.312727, 40.480717, 22.319847>,  <31.460049, 40.408974, 22.144493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.312727, 40.480717, 22.319847>,  <31.067188, 40.600285, 22.612104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312727, 40.480717, 22.319847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475427, -0.878851, -0.039868,
		-0.630209, 0.371841, -0.681594,
		0.613844, -0.298923, -0.730643,
		31.496880, 40.391041, 22.100655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654554, 40.266113, 22.039968>,  <31.067188, 40.600285, 22.612104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654554, 40.266113, 22.039968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.029669, 40.131187, 22.072897>,  <31.254738, 40.050232, 22.092653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.029669, 40.131187, 22.072897>,  <30.654554, 40.266113, 22.039968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029669, 40.131187, 22.072897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342486, -0.937634, 0.059557,
		0.057096, -0.084045, -0.994825,
		0.937787, -0.337313, 0.082319,
		31.311005, 40.029995, 22.097593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634964, 39.577858, 21.595169>,  <30.654554, 40.266113, 22.039968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634964, 39.577858, 21.595169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975185, 39.520702, 21.797611>,  <31.179317, 39.486408, 21.919077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975185, 39.520702, 21.797611>,  <30.634964, 39.577858, 21.595169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975185, 39.520702, 21.797611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308416, -0.915038, 0.259971,
		0.425956, -0.377209, -0.822359,
		0.850554, -0.142893, 0.506103,
		31.230350, 39.477833, 21.949442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934958, 38.967747, 21.484018>,  <30.634964, 39.577858, 21.595169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934958, 38.967747, 21.484018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.120438, 39.058899, 21.826492>,  <31.231726, 39.113590, 22.031977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.120438, 39.058899, 21.826492>,  <30.934958, 38.967747, 21.484018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120438, 39.058899, 21.826492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244098, -0.896098, 0.370708,
		0.851703, -0.380890, -0.359895,
		0.463700, 0.227884, 0.856184,
		31.259548, 39.127266, 22.083347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499435, 38.472027, 21.606899>,  <30.934958, 38.967747, 21.484018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499435, 38.472027, 21.606899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379082, 38.642010, 21.948397>,  <31.306870, 38.743999, 22.153296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379082, 38.642010, 21.948397>,  <31.499435, 38.472027, 21.606899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379082, 38.642010, 21.948397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221603, -0.901879, 0.370819,
		0.927556, -0.077618, 0.365534,
		-0.300885, 0.424959, 0.853743,
		31.288816, 38.769497, 22.204519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932831, 38.083786, 22.162176>,  <31.499435, 38.472027, 21.606899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932831, 38.083786, 22.162176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.613764, 38.250454, 22.336584>,  <31.422323, 38.350456, 22.441229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.613764, 38.250454, 22.336584>,  <31.932831, 38.083786, 22.162176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613764, 38.250454, 22.336584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301678, -0.901683, 0.309770,
		0.522222, 0.115556, 0.844944,
		-0.797668, 0.416670, 0.436018,
		31.374464, 38.375454, 22.467390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607246, 37.702038, 22.052660>,  <31.932831, 38.083786, 22.162176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607246, 37.702038, 22.052660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.591045, 37.392349, 21.800011>,  <32.581326, 37.206535, 21.648420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.591045, 37.392349, 21.800011>,  <32.607246, 37.702038, 22.052660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591045, 37.392349, 21.800011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106471, 0.625198, -0.773169,
		0.993491, -0.098563, 0.057111,
		-0.040500, -0.774217, -0.631623,
		32.578896, 37.160084, 21.610523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172188, 37.776630, 21.626989>,  <32.607246, 37.702038, 22.052660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172188, 37.776630, 21.626989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.879280, 37.569710, 21.449820>,  <32.703537, 37.445557, 21.343517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.879280, 37.569710, 21.449820>,  <33.172188, 37.776630, 21.626989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879280, 37.569710, 21.449820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082562, 0.578154, -0.811740,
		0.675994, -0.630979, -0.380654,
		-0.732268, -0.517303, -0.442923,
		32.659599, 37.414520, 21.316942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481228, 37.514801, 21.033260>,  <33.172188, 37.776630, 21.626989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481228, 37.514801, 21.033260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.094723, 37.539963, 20.933357>,  <32.862820, 37.555061, 20.873415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.094723, 37.539963, 20.933357>,  <33.481228, 37.514801, 21.033260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094723, 37.539963, 20.933357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247590, 0.494028, -0.833448,
		0.070958, -0.867167, -0.492936,
		-0.966263, 0.062906, -0.249757,
		32.804844, 37.558834, 20.858431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493946, 37.345409, 20.381626>,  <33.481228, 37.514801, 21.033260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493946, 37.345409, 20.381626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.131821, 37.514717, 20.395733>,  <32.914543, 37.616302, 20.404198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.131821, 37.514717, 20.395733>,  <33.493946, 37.345409, 20.381626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131821, 37.514717, 20.395733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207408, 0.513021, -0.832941,
		-0.370654, -0.746760, -0.552236,
		-0.905317, 0.423271, 0.035269,
		32.860226, 37.641697, 20.406313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172462, 37.221478, 19.743252>,  <33.493946, 37.345409, 20.381626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172462, 37.221478, 19.743252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.983700, 37.538612, 19.897505>,  <32.870441, 37.728893, 19.990057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.983700, 37.538612, 19.897505>,  <33.172462, 37.221478, 19.743252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983700, 37.538612, 19.897505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231517, 0.533486, -0.813506,
		-0.850708, -0.294619, -0.435311,
		-0.471907, 0.792838, 0.385632,
		32.842129, 37.776463, 20.013195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820194, 37.480801, 19.209829>,  <33.172462, 37.221478, 19.743252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820194, 37.480801, 19.209829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.803925, 37.771420, 19.484194>,  <32.794163, 37.945789, 19.648811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.803925, 37.771420, 19.484194>,  <32.820194, 37.480801, 19.209829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803925, 37.771420, 19.484194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145844, 0.683443, -0.715287,
		-0.988471, 0.070944, -0.133760,
		-0.040672, 0.726549, 0.685910,
		32.791721, 37.989384, 19.689966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350021, 38.001595, 18.869619>,  <32.820194, 37.480801, 19.209829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350021, 38.001595, 18.869619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.555794, 38.196301, 19.152016>,  <32.679256, 38.313122, 19.321453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.555794, 38.196301, 19.152016>,  <32.350021, 38.001595, 18.869619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555794, 38.196301, 19.152016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108916, 0.779528, -0.616825,
		-0.850589, 0.394206, 0.347995,
		0.514428, 0.486762, 0.705993,
		32.710121, 38.342331, 19.363813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194641, 38.676796, 18.811518>,  <32.350021, 38.001595, 18.869619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194641, 38.676796, 18.811518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.550152, 38.672604, 18.994806>,  <32.763458, 38.670090, 19.104778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.550152, 38.672604, 18.994806>,  <32.194641, 38.676796, 18.811518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550152, 38.672604, 18.994806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381958, 0.569531, -0.727834,
		-0.253342, 0.821903, 0.510189,
		0.888777, -0.010480, 0.458219,
		32.816784, 38.669460, 19.132273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377979, 39.424824, 18.910057>,  <32.194641, 38.676796, 18.811518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377979, 39.424824, 18.910057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.698040, 39.185093, 18.900593>,  <32.890076, 39.041256, 18.894915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.698040, 39.185093, 18.900593>,  <32.377979, 39.424824, 18.910057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698040, 39.185093, 18.900593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409151, 0.574248, -0.709109,
		0.438574, 0.557717, 0.704702,
		0.800155, -0.599326, -0.023660,
		32.938087, 39.005295, 18.893496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.892347, 30.104815, 32.589916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.288527, 30.135773, 32.544270>,  <31.526234, 30.154348, 32.516880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.288527, 30.135773, 32.544270>,  <30.892347, 30.104815, 32.589916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288527, 30.135773, 32.544270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134293, 0.729218, -0.670974,
		0.031289, 0.679890, 0.732646,
		0.990448, 0.077395, -0.114121,
		31.585661, 30.158991, 32.510033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006432, 30.743767, 32.553696>,  <30.892347, 30.104815, 32.589916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006432, 30.743767, 32.553696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.336620, 30.600080, 32.379543>,  <31.534735, 30.513868, 32.275051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.336620, 30.600080, 32.379543>,  <31.006432, 30.743767, 32.553696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336620, 30.600080, 32.379543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121423, 0.640278, -0.758486,
		0.551225, 0.678975, 0.484915,
		0.825474, -0.359217, -0.435381,
		31.584263, 30.492315, 32.248928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337317, 31.298552, 32.274010>,  <31.006432, 30.743767, 32.553696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337317, 31.298552, 32.274010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517519, 31.004778, 32.070972>,  <31.625641, 30.828514, 31.949150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517519, 31.004778, 32.070972>,  <31.337317, 31.298552, 32.274010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517519, 31.004778, 32.070972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011319, 0.573209, -0.819331,
		0.892701, 0.363369, 0.266547,
		0.450507, -0.734435, -0.507591,
		31.652672, 30.784447, 31.918695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874769, 31.540472, 32.146217>,  <31.337317, 31.298552, 32.274010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874769, 31.540472, 32.146217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.841692, 31.255375, 31.867603>,  <31.821846, 31.084316, 31.700436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.841692, 31.255375, 31.867603>,  <31.874769, 31.540472, 32.146217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841692, 31.255375, 31.867603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182607, 0.676259, -0.713673,
		0.979702, -0.186207, 0.074231,
		-0.082692, -0.712742, -0.696535,
		31.816885, 31.041552, 31.658644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356976, 31.792505, 31.546791>,  <31.874769, 31.540472, 32.146217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356976, 31.792505, 31.546791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110462, 31.510481, 31.406460>,  <31.962553, 31.341267, 31.322260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110462, 31.510481, 31.406460>,  <32.356976, 31.792505, 31.546791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110462, 31.510481, 31.406460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010428, 0.452753, -0.891575,
		0.787453, -0.545807, -0.286378,
		-0.616286, -0.705060, -0.350830,
		31.925577, 31.298964, 31.301210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535690, 31.587046, 30.946686>,  <32.356976, 31.792505, 31.546791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535690, 31.587046, 30.946686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161121, 31.448374, 30.925074>,  <31.936378, 31.365170, 30.912106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161121, 31.448374, 30.925074>,  <32.535690, 31.587046, 30.946686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161121, 31.448374, 30.925074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107918, 0.431113, -0.895821,
		0.333858, -0.833039, -0.441119,
		-0.936425, -0.346681, -0.054031,
		31.880194, 31.344370, 30.908865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494965, 31.184353, 30.336187>,  <32.535690, 31.587046, 30.946686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494965, 31.184353, 30.336187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118252, 31.281612, 30.429075>,  <31.892223, 31.339968, 30.484808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118252, 31.281612, 30.429075>,  <32.494965, 31.184353, 30.336187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118252, 31.281612, 30.429075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129965, 0.373715, -0.918393,
		-0.310088, -0.895107, -0.320358,
		-0.941783, 0.243148, 0.232218,
		31.835716, 31.354557, 30.498741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012024, 30.911930, 29.784315>,  <32.494965, 31.184353, 30.336187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012024, 30.911930, 29.784315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837757, 31.215462, 29.977966>,  <31.733198, 31.397581, 30.094156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837757, 31.215462, 29.977966>,  <32.012024, 30.911930, 29.784315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837757, 31.215462, 29.977966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143818, 0.472260, -0.869648,
		-0.888546, -0.448499, -0.096613,
		-0.435662, 0.758828, 0.484127,
		31.707058, 31.443110, 30.123205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347561, 30.924854, 29.490719>,  <32.012024, 30.911930, 29.784315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347561, 30.924854, 29.490719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.403736, 31.291668, 29.640026>,  <31.437441, 31.511757, 29.729610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.403736, 31.291668, 29.640026>,  <31.347561, 30.924854, 29.490719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403736, 31.291668, 29.640026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387060, 0.397850, -0.831805,
		-0.911297, -0.027660, 0.410819,
		0.140436, 0.917033, 0.373266,
		31.445868, 31.566778, 29.752007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881021, 31.267307, 29.134457>,  <31.347561, 30.924854, 29.490719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881021, 31.267307, 29.134457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.127291, 31.551769, 29.270226>,  <31.275051, 31.722446, 29.351686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.127291, 31.551769, 29.270226>,  <30.881021, 31.267307, 29.134457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127291, 31.551769, 29.270226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045839, 0.462327, -0.885524,
		-0.786669, 0.529633, 0.317240,
		0.615671, 0.711156, 0.339421,
		31.311993, 31.765116, 29.372051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580946, 31.954872, 28.987869>,  <30.881021, 31.267307, 29.134457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580946, 31.954872, 28.987869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.973642, 32.021599, 29.024431>,  <31.209261, 32.061634, 29.046368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.973642, 32.021599, 29.024431>,  <30.580946, 31.954872, 28.987869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973642, 32.021599, 29.024431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015209, 0.547816, -0.836460,
		-0.189609, 0.819798, 0.540351,
		0.981742, 0.166819, 0.091403,
		31.268166, 32.071644, 29.051851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671509, 32.644218, 28.943474>,  <30.580946, 31.954872, 28.987869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671509, 32.644218, 28.943474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.026320, 32.483250, 28.852928>,  <31.239206, 32.386669, 28.798601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.026320, 32.483250, 28.852928>,  <30.671509, 32.644218, 28.943474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026320, 32.483250, 28.852928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018722, 0.521204, -0.853227,
		0.461341, 0.752596, 0.469855,
		0.887026, -0.402425, -0.226363,
		31.292427, 32.362522, 28.785019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582399, 33.372395, 29.216291>,  <30.671509, 32.644218, 28.943474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582399, 33.372395, 29.216291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.203524, 33.500664, 29.215973>,  <29.976198, 33.577625, 29.215782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.203524, 33.500664, 29.215973>,  <30.582399, 33.372395, 29.216291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203524, 33.500664, 29.215973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003742, -0.008569, 0.999956,
		0.320656, 0.947150, 0.009317,
		-0.947188, 0.320677, -0.000796,
		29.919367, 33.596867, 29.215734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571550, 34.030464, 29.646250>,  <30.582399, 33.372395, 29.216291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571550, 34.030464, 29.646250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.224512, 33.831623, 29.651333>,  <30.016289, 33.712318, 29.654383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.224512, 33.831623, 29.651333>,  <30.571550, 34.030464, 29.646250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224512, 33.831623, 29.651333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039294, -0.043062, 0.998299,
		-0.495714, 0.866620, 0.056894,
		-0.867596, -0.497107, 0.012707,
		29.964233, 33.682491, 29.655146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225103, 34.347538, 30.149569>,  <30.571550, 34.030464, 29.646250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225103, 34.347538, 30.149569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.014336, 34.008110, 30.130470>,  <29.887875, 33.804451, 30.119011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.014336, 34.008110, 30.130470>,  <30.225103, 34.347538, 30.149569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014336, 34.008110, 30.130470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054262, -0.022477, 0.998273,
		-0.848180, 0.528602, -0.034201,
		-0.526921, -0.848572, -0.047748,
		29.856258, 33.753540, 30.116146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654766, 34.448898, 30.546904>,  <30.225103, 34.347538, 30.149569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654766, 34.448898, 30.546904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.684355, 34.052677, 30.500711>,  <29.702108, 33.814945, 30.472996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.684355, 34.052677, 30.500711>,  <29.654766, 34.448898, 30.546904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684355, 34.052677, 30.500711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049262, -0.119284, 0.991637,
		-0.996043, -0.067666, -0.057621,
		0.073973, -0.990552, -0.115479,
		29.706547, 33.755512, 30.466068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209602, 34.176746, 30.998680>,  <29.654766, 34.448898, 30.546904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209602, 34.176746, 30.998680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.437973, 33.850773, 30.958815>,  <29.574995, 33.655190, 30.934895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.437973, 33.850773, 30.958815>,  <29.209602, 34.176746, 30.998680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437973, 33.850773, 30.958815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163498, -0.231817, 0.958921,
		-0.804558, -0.531176, -0.265589,
		0.570924, -0.814931, -0.099664,
		29.609251, 33.606293, 30.928915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871674, 33.644089, 31.427454>,  <29.209602, 34.176746, 30.998680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871674, 33.644089, 31.427454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.252214, 33.535652, 31.368883>,  <29.480539, 33.470592, 31.333740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.252214, 33.535652, 31.368883>,  <28.871674, 33.644089, 31.427454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252214, 33.535652, 31.368883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070524, -0.271038, 0.959982,
		-0.299934, -0.923605, -0.238733,
		0.951350, -0.271095, -0.146429,
		29.537621, 33.454327, 31.324955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928989, 33.050217, 31.857065>,  <28.871674, 33.644089, 31.427454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928989, 33.050217, 31.857065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303560, 33.175732, 31.794279>,  <29.528303, 33.251041, 31.756607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303560, 33.175732, 31.794279>,  <28.928989, 33.050217, 31.857065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303560, 33.175732, 31.794279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237104, -0.236193, 0.942335,
		0.258622, -0.919646, -0.295579,
		0.936428, 0.313792, -0.156967,
		29.584488, 33.269871, 31.747189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363819, 32.637386, 32.380177>,  <28.928989, 33.050217, 31.857065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363819, 32.637386, 32.380177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.566715, 32.966614, 32.277992>,  <29.688454, 33.164150, 32.216682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.566715, 32.966614, 32.277992>,  <29.363819, 32.637386, 32.380177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566715, 32.966614, 32.277992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465405, -0.012131, 0.885015,
		0.725330, -0.567811, -0.389214,
		0.507242, 0.823070, -0.255463,
		29.718887, 33.213535, 32.201355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943386, 32.559349, 32.684498>,  <29.363819, 32.637386, 32.380177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943386, 32.559349, 32.684498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.932405, 32.953827, 32.619171>,  <29.925817, 33.190514, 32.579975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.932405, 32.953827, 32.619171>,  <29.943386, 32.559349, 32.684498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932405, 32.953827, 32.619171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328137, 0.163218, 0.930423,
		0.944231, -0.028048, -0.328086,
		-0.027453, 0.986191, -0.163319,
		29.924170, 33.249683, 32.570175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464249, 32.712345, 33.139332>,  <29.943386, 32.559349, 32.684498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464249, 32.712345, 33.139332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.297119, 33.064259, 33.048649>,  <30.196840, 33.275406, 32.994240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.297119, 33.064259, 33.048649>,  <30.464249, 32.712345, 33.139332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297119, 33.064259, 33.048649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073519, 0.281460, 0.956752,
		0.905548, 0.383088, -0.182283,
		-0.417825, 0.879786, -0.226711,
		30.171772, 33.328194, 32.980637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960140, 33.212524, 33.345654>,  <30.464249, 32.712345, 33.139332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960140, 33.212524, 33.345654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585041, 33.351425, 33.343105>,  <30.359982, 33.434765, 33.341576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585041, 33.351425, 33.343105>,  <30.960140, 33.212524, 33.345654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585041, 33.351425, 33.343105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066630, 0.197867, 0.977962,
		0.340863, 0.916658, -0.208688,
		-0.937749, 0.347256, -0.006368,
		30.303717, 33.455601, 33.341194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062252, 33.847107, 33.856678>,  <30.960140, 33.212524, 33.345654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062252, 33.847107, 33.856678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.675421, 33.757893, 33.807671>,  <30.443321, 33.704365, 33.778267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.675421, 33.757893, 33.807671>,  <31.062252, 33.847107, 33.856678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675421, 33.757893, 33.807671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142350, 0.075067, 0.986966,
		-0.210935, 0.971915, -0.104346,
		-0.967080, -0.223040, -0.122517,
		30.385298, 33.690979, 33.770916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670000, 34.424103, 34.161846>,  <31.062252, 33.847107, 33.856678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670000, 34.424103, 34.161846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.415777, 34.115433, 34.171497>,  <30.263243, 33.930229, 34.177288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.415777, 34.115433, 34.171497>,  <30.670000, 34.424103, 34.161846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415777, 34.115433, 34.171497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183004, 0.180932, 0.966320,
		-0.750051, 0.609737, -0.256212,
		-0.635557, -0.771677, 0.024124,
		30.225109, 33.883930, 34.178734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100910, 34.701546, 34.500744>,  <30.670000, 34.424103, 34.161846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100910, 34.701546, 34.500744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059843, 34.307121, 34.553104>,  <30.035202, 34.070465, 34.584522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059843, 34.307121, 34.553104>,  <30.100910, 34.701546, 34.500744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059843, 34.307121, 34.553104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148735, 0.145340, 0.978138,
		-0.983533, 0.080955, -0.161584,
		-0.102669, -0.986064, 0.130906,
		30.029041, 34.011303, 34.592377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387655, 35.097168, 34.874664>,  <30.100910, 34.701546, 34.500744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387655, 35.097168, 34.874664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318872, 35.457832, 35.033379>,  <29.277603, 35.674232, 35.128605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318872, 35.457832, 35.033379>,  <29.387655, 35.097168, 34.874664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318872, 35.457832, 35.033379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094038, 0.415967, -0.904504,
		-0.980605, -0.118225, -0.156320,
		-0.171959, 0.901662, 0.396782,
		29.267284, 35.728333, 35.152412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855568, 35.429558, 34.402847>,  <29.387655, 35.097168, 34.874664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855568, 35.429558, 34.402847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.108744, 35.684483, 34.578674>,  <29.260649, 35.837437, 34.684170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.108744, 35.684483, 34.578674>,  <28.855568, 35.429558, 34.402847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108744, 35.684483, 34.578674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120738, 0.642081, -0.757069,
		-0.764728, 0.426107, 0.483347,
		0.632940, 0.637310, 0.439571,
		29.298626, 35.875675, 34.710545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617201, 36.131496, 34.291313>,  <28.855568, 35.429558, 34.402847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617201, 36.131496, 34.291313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.014778, 36.147198, 34.332378>,  <29.253325, 36.156620, 34.357018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.014778, 36.147198, 34.332378>,  <28.617201, 36.131496, 34.291313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014778, 36.147198, 34.332378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058158, 0.604753, -0.794287,
		-0.093266, 0.795445, 0.598806,
		0.993941, 0.039254, 0.102664,
		29.312960, 36.158974, 34.363178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908026, 36.771088, 34.469074>,  <28.617201, 36.131496, 34.291313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908026, 36.771088, 34.469074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.195299, 36.573357, 34.273174>,  <29.367662, 36.454720, 34.155636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.195299, 36.573357, 34.273174>,  <28.908026, 36.771088, 34.469074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195299, 36.573357, 34.273174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025664, 0.684514, -0.728548,
		0.695382, 0.535799, 0.478919,
		0.718182, -0.494328, -0.489749,
		29.410753, 36.425056, 34.126251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434303, 37.269131, 34.251625>,  <28.908026, 36.771088, 34.469074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434303, 37.269131, 34.251625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.456125, 36.939461, 34.026142>,  <29.469219, 36.741661, 33.890854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.456125, 36.939461, 34.026142>,  <29.434303, 37.269131, 34.251625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456125, 36.939461, 34.026142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133564, 0.565499, -0.813862,
		0.989537, -0.030890, 0.140931,
		0.054556, -0.824170, -0.563708,
		29.472492, 36.692211, 33.857029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988894, 37.296860, 33.933693>,  <29.434303, 37.269131, 34.251625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988894, 37.296860, 33.933693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.780218, 37.044411, 33.704075>,  <29.655012, 36.892941, 33.566303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.780218, 37.044411, 33.704075>,  <29.988894, 37.296860, 33.933693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780218, 37.044411, 33.704075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325235, 0.474931, -0.817718,
		0.788710, -0.613295, -0.042504,
		-0.521688, -0.631118, -0.574048,
		29.623711, 36.855076, 33.531860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391417, 37.016045, 33.353642>,  <29.988894, 37.296860, 33.933693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391417, 37.016045, 33.353642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.019449, 36.974869, 33.212414>,  <29.796268, 36.950165, 33.127678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.019449, 36.974869, 33.212414>,  <30.391417, 37.016045, 33.353642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019449, 36.974869, 33.212414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245428, 0.541271, -0.804233,
		0.273891, -0.834523, -0.478074,
		-0.929919, -0.102939, -0.353065,
		29.740473, 36.943985, 33.106495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489771, 36.854286, 32.592968>,  <30.391417, 37.016045, 33.353642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489771, 36.854286, 32.592968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.097658, 36.933155, 32.598278>,  <29.862391, 36.980476, 32.601463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.097658, 36.933155, 32.598278>,  <30.489771, 36.854286, 32.592968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097658, 36.933155, 32.598278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065971, 0.389816, -0.918527,
		-0.186279, -0.899538, -0.395136,
		-0.980280, 0.197169, 0.013271,
		29.803574, 36.992306, 32.602261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156790, 36.521145, 31.990553>,  <30.489771, 36.854286, 32.592968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156790, 36.521145, 31.990553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.929575, 36.829048, 32.107040>,  <29.793247, 37.013790, 32.176933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.929575, 36.829048, 32.107040>,  <30.156790, 36.521145, 31.990553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929575, 36.829048, 32.107040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056681, 0.389599, -0.919239,
		-0.821050, -0.505653, -0.264937,
		-0.568035, 0.769758, 0.291220,
		29.759165, 37.059975, 32.194405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627251, 36.676987, 31.407570>,  <30.156790, 36.521145, 31.990553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627251, 36.676987, 31.407570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.646460, 37.016670, 31.617920>,  <29.657986, 37.220478, 31.744129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.646460, 37.016670, 31.617920>,  <29.627251, 36.676987, 31.407570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646460, 37.016670, 31.617920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094067, 0.520296, -0.848789,
		-0.994407, 0.090229, -0.054896,
		0.048023, 0.849206, 0.525874,
		29.660866, 37.271431, 31.775682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124001, 37.104683, 31.085369>,  <29.627251, 36.676987, 31.407570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124001, 37.104683, 31.085369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.387224, 37.341755, 31.271139>,  <29.545158, 37.483997, 31.382601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.387224, 37.341755, 31.271139>,  <29.124001, 37.104683, 31.085369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387224, 37.341755, 31.271139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003655, 0.614272, -0.789086,
		-0.752959, 0.520961, 0.402060,
		0.658057, 0.592679, 0.464426,
		29.584641, 37.519558, 31.410467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999687, 37.692768, 30.811052>,  <29.124001, 37.104683, 31.085369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999687, 37.692768, 30.811052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.353302, 37.761009, 30.985121>,  <29.565472, 37.801952, 31.089561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.353302, 37.761009, 30.985121>,  <28.999687, 37.692768, 30.811052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353302, 37.761009, 30.985121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239494, 0.634188, -0.735152,
		-0.401398, 0.754122, 0.519787,
		0.884038, 0.170603, 0.435169,
		29.618513, 37.812191, 31.115671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180498, 38.388874, 30.733158>,  <28.999687, 37.692768, 30.811052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180498, 38.388874, 30.733158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.531925, 38.208981, 30.797480>,  <29.742781, 38.101044, 30.836073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.531925, 38.208981, 30.797480>,  <29.180498, 38.388874, 30.733158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531925, 38.208981, 30.797480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412359, 0.544364, -0.730499,
		0.240994, 0.708102, 0.663712,
		0.878568, -0.449733, 0.160803,
		29.795496, 38.074062, 30.845720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661005, 38.912594, 30.755411>,  <29.180498, 38.388874, 30.733158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661005, 38.912594, 30.755411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892389, 38.597637, 30.670185>,  <30.031219, 38.408665, 30.619049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892389, 38.597637, 30.670185>,  <29.661005, 38.912594, 30.755411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892389, 38.597637, 30.670185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542954, 0.566601, -0.619810,
		0.608756, 0.242852, 0.755274,
		0.578461, -0.787392, -0.213064,
		30.065928, 38.361420, 30.606266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424431, 39.098305, 30.882914>,  <29.661005, 38.912594, 30.755411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424431, 39.098305, 30.882914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.422628, 38.776978, 30.644699>,  <30.421547, 38.584183, 30.501770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.422628, 38.776978, 30.644699>,  <30.424431, 39.098305, 30.882914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422628, 38.776978, 30.644699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516532, 0.508072, -0.689244,
		0.856256, -0.310719, 0.412649,
		-0.004505, -0.803316, -0.595536,
		30.421276, 38.535984, 30.466038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946905, 39.198242, 30.481707>,  <30.424431, 39.098305, 30.882914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946905, 39.198242, 30.481707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.799992, 38.894569, 30.266764>,  <30.711843, 38.712368, 30.137798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.799992, 38.894569, 30.266764>,  <30.946905, 39.198242, 30.481707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799992, 38.894569, 30.266764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476145, 0.342825, -0.809788,
		0.798993, -0.553280, 0.235566,
		-0.367282, -0.759178, -0.537356,
		30.689806, 38.666817, 30.105556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575159, 39.034416, 30.091753>,  <30.946905, 39.198242, 30.481707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575159, 39.034416, 30.091753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239016, 38.908245, 29.915432>,  <31.037331, 38.832542, 29.809639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239016, 38.908245, 29.915432>,  <31.575159, 39.034416, 30.091753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239016, 38.908245, 29.915432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358845, 0.285747, -0.888583,
		0.406240, -0.904906, -0.126941,
		-0.840357, -0.315426, -0.440803,
		30.986908, 38.813618, 29.783192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811787, 38.682167, 29.622692>,  <31.575159, 39.034416, 30.091753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811787, 38.682167, 29.622692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.448088, 38.774178, 29.483919>,  <31.229868, 38.829384, 29.400656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.448088, 38.774178, 29.483919>,  <31.811787, 38.682167, 29.622692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448088, 38.774178, 29.483919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402905, 0.276914, -0.872346,
		-0.104589, -0.932957, -0.344460,
		-0.909246, 0.230022, -0.346931,
		31.175314, 38.843185, 29.379841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764421, 38.311226, 28.970663>,  <31.811787, 38.682167, 29.622692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764421, 38.311226, 28.970663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.478563, 38.588421, 28.932610>,  <31.307049, 38.754738, 28.909777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.478563, 38.588421, 28.932610>,  <31.764421, 38.311226, 28.970663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478563, 38.588421, 28.932610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438202, 0.337528, -0.833099,
		-0.545216, -0.637059, -0.544881,
		-0.714646, 0.692987, -0.095135,
		31.264170, 38.796318, 28.904070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441410, 38.118443, 28.351379>,  <31.764421, 38.311226, 28.970663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441410, 38.118443, 28.351379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352711, 38.501373, 28.425508>,  <31.299490, 38.731133, 28.469986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352711, 38.501373, 28.425508>,  <31.441410, 38.118443, 28.351379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352711, 38.501373, 28.425508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317942, 0.250655, -0.914377,
		-0.921813, -0.143841, -0.359959,
		-0.221750, 0.957331, 0.185324,
		31.286186, 38.788574, 28.481106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137909, 38.384033, 27.686398>,  <31.441410, 38.118443, 28.351379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137909, 38.384033, 27.686398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.204367, 38.715874, 27.899624>,  <31.244242, 38.914978, 28.027559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.204367, 38.715874, 27.899624>,  <31.137909, 38.384033, 27.686398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204367, 38.715874, 27.899624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376993, 0.446079, -0.811720,
		-0.911193, 0.335825, -0.238640,
		0.166144, 0.829599, 0.533068,
		31.254210, 38.964752, 28.059544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835592, 38.985600, 27.350370>,  <31.137909, 38.384033, 27.686398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835592, 38.985600, 27.350370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.127899, 39.123695, 27.585924>,  <31.303284, 39.206554, 27.727257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.127899, 39.123695, 27.585924>,  <30.835592, 38.985600, 27.350370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127899, 39.123695, 27.585924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358146, 0.540499, -0.761309,
		-0.581130, 0.767247, 0.271331,
		0.730766, 0.345243, 0.588887,
		31.347130, 39.227268, 27.762590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793308, 39.706161, 27.196709>,  <30.835592, 38.985600, 27.350370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793308, 39.706161, 27.196709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128227, 39.668129, 27.412075>,  <31.329178, 39.645309, 27.541294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128227, 39.668129, 27.412075>,  <30.793308, 39.706161, 27.196709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128227, 39.668129, 27.412075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356644, 0.841391, -0.406038,
		-0.414412, 0.531998, 0.738404,
		0.837298, -0.095080, 0.538416,
		31.379417, 39.639606, 27.573601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718445, 40.225010, 27.542627>,  <30.793308, 39.706161, 27.196709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718445, 40.225010, 27.542627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.099606, 40.118149, 27.485207>,  <31.328302, 40.054031, 27.450754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.099606, 40.118149, 27.485207>,  <30.718445, 40.225010, 27.542627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099606, 40.118149, 27.485207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207503, 0.919515, -0.333819,
		0.221178, 0.288309, 0.931642,
		0.952902, -0.267152, -0.143551,
		31.385477, 40.038002, 27.442141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183683, 40.827736, 27.735912>,  <30.718445, 40.225010, 27.542627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183683, 40.827736, 27.735912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.395863, 40.581089, 27.503223>,  <31.523170, 40.433102, 27.363609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.395863, 40.581089, 27.503223>,  <31.183683, 40.827736, 27.735912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395863, 40.581089, 27.503223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219711, 0.762777, -0.608193,
		0.818749, 0.194805, 0.540094,
		0.530450, -0.616622, -0.581722,
		31.554998, 40.396103, 27.328707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713057, 41.216103, 27.560387>,  <31.183683, 40.827736, 27.735912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713057, 41.216103, 27.560387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742222, 40.921242, 27.291676>,  <31.759720, 40.744324, 27.130449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742222, 40.921242, 27.291676>,  <31.713057, 41.216103, 27.560387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742222, 40.921242, 27.291676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122176, 0.675101, -0.727539,
		0.989827, -0.029030, 0.139285,
		0.072912, -0.737154, -0.671779,
		31.764095, 40.700096, 27.090141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288002, 41.369301, 27.146601>,  <31.713057, 41.216103, 27.560387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288002, 41.369301, 27.146601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083054, 41.114452, 26.916279>,  <31.960083, 40.961544, 26.778086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083054, 41.114452, 26.916279>,  <32.288002, 41.369301, 27.146601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083054, 41.114452, 26.916279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093562, 0.625100, -0.774917,
		0.853650, -0.450921, -0.260676,
		-0.512375, -0.637118, -0.575806,
		31.929340, 40.923317, 26.743538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620659, 41.307739, 26.431530>,  <32.288002, 41.369301, 27.146601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620659, 41.307739, 26.431530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.246475, 41.191189, 26.351517>,  <32.021965, 41.121258, 26.303509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.246475, 41.191189, 26.351517>,  <32.620659, 41.307739, 26.431530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246475, 41.191189, 26.351517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047984, 0.456037, -0.888667,
		0.350153, -0.840913, -0.412624,
		-0.935463, -0.291370, -0.200033,
		31.965837, 41.103779, 26.291506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178024, 40.798199, 26.298027>,  <32.620659, 41.307739, 26.431530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178024, 40.798199, 26.298027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539684, 40.963440, 26.341585>,  <33.756680, 41.062584, 26.367720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539684, 40.963440, 26.341585>,  <33.178024, 40.798199, 26.298027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539684, 40.963440, 26.341585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033134, -0.321934, 0.946182,
		0.425932, -0.851881, -0.304764,
		0.904148, 0.413107, 0.108896,
		33.810928, 41.087372, 26.374254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529163, 40.308887, 26.575672>,  <33.178024, 40.798199, 26.298027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529163, 40.308887, 26.575672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.712585, 40.647747, 26.683046>,  <33.822639, 40.851063, 26.747471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.712585, 40.647747, 26.683046>,  <33.529163, 40.308887, 26.575672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712585, 40.647747, 26.683046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061442, -0.271122, 0.960582,
		0.886539, -0.456975, -0.072274,
		0.458557, 0.847152, 0.268437,
		33.850151, 40.901894, 26.763578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082661, 40.051128, 26.984221>,  <33.529163, 40.308887, 26.575672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082661, 40.051128, 26.984221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058857, 40.440086, 27.074463>,  <34.044575, 40.673462, 27.128609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058857, 40.440086, 27.074463>,  <34.082661, 40.051128, 26.984221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058857, 40.440086, 27.074463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127738, -0.216730, 0.967838,
		0.990021, 0.086414, -0.111315,
		-0.059510, 0.972399, 0.225606,
		34.041004, 40.731808, 27.142145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600254, 40.170071, 27.425270>,  <34.082661, 40.051128, 26.984221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600254, 40.170071, 27.425270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353119, 40.472279, 27.512419>,  <34.204838, 40.653603, 27.564707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353119, 40.472279, 27.512419>,  <34.600254, 40.170071, 27.425270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353119, 40.472279, 27.512419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043458, -0.243847, 0.968840,
		0.785105, 0.608053, 0.117824,
		-0.617837, 0.755520, 0.217870,
		34.167767, 40.698936, 27.577780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880268, 40.491562, 27.971603>,  <34.600254, 40.170071, 27.425270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880268, 40.491562, 27.971603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507938, 40.636288, 27.992241>,  <34.284542, 40.723125, 28.004623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507938, 40.636288, 27.992241>,  <34.880268, 40.491562, 27.971603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507938, 40.636288, 27.992241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062102, -0.295696, 0.953261,
		0.360162, 0.884111, 0.297709,
		-0.930820, 0.361817, 0.051594,
		34.228691, 40.744831, 28.007719>
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
