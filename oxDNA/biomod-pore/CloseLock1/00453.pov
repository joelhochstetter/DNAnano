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
	<24.279118, 34.568226, 34.901180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.113417, 34.906593, 35.035526>,  <24.013996, 35.109615, 35.116135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.113417, 34.906593, 35.035526>,  <24.279118, 34.568226, 34.901180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.113417, 34.906593, 35.035526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063003, -0.341484, 0.937773,
		0.907978, 0.409637, 0.088166,
		-0.414254, 0.845923, 0.335869,
		23.989141, 35.160370, 35.136288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898119, 34.142136, 34.783684>,  <24.279118, 34.568226, 34.901180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898119, 34.142136, 34.783684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.162443, 34.212307, 35.075588>,  <25.321037, 34.254410, 35.250732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.162443, 34.212307, 35.075588>,  <24.898119, 34.142136, 34.783684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.162443, 34.212307, 35.075588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067062, -0.954611, 0.290207,
		0.747552, -0.240711, -0.619051,
		0.660810, 0.175430, 0.729764,
		25.360685, 34.264935, 35.294518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543856, 33.710766, 34.784088>,  <24.898119, 34.142136, 34.783684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543856, 33.710766, 34.784088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490295, 33.811287, 35.167530>,  <25.458160, 33.871601, 35.397594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490295, 33.811287, 35.167530>,  <25.543856, 33.710766, 34.784088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490295, 33.811287, 35.167530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182752, -0.944459, 0.273126,
		0.973998, 0.211758, 0.080536,
		-0.133899, 0.251307, 0.958601,
		25.450125, 33.886681, 35.455109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060339, 33.177986, 34.842808>,  <25.543856, 33.710766, 34.784088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060339, 33.177986, 34.842808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154724, 32.864555, 35.072704>,  <26.211355, 32.676495, 35.210644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154724, 32.864555, 35.072704>,  <26.060339, 33.177986, 34.842808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154724, 32.864555, 35.072704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747404, -0.231652, -0.622676,
		0.621055, 0.576491, 0.530988,
		0.235963, -0.783579, 0.574740,
		26.225513, 32.629482, 35.245125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569929, 33.235237, 34.213940>,  <26.060339, 33.177986, 34.842808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569929, 33.235237, 34.213940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742327, 33.595318, 34.238884>,  <26.845766, 33.811367, 34.253849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742327, 33.595318, 34.238884>,  <26.569929, 33.235237, 34.213940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742327, 33.595318, 34.238884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765208, -0.327988, -0.553968,
		-0.478227, 0.286474, -0.830199,
		0.430993, 0.900198, 0.062360,
		26.871624, 33.865376, 34.257591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817924, 33.345490, 33.517498>,  <26.569929, 33.235237, 34.213940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817924, 33.345490, 33.517498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027653, 33.583149, 33.761490>,  <27.153490, 33.725742, 33.907887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027653, 33.583149, 33.761490>,  <26.817924, 33.345490, 33.517498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027653, 33.583149, 33.761490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832436, -0.206830, -0.514074,
		-0.179271, 0.777312, -0.603032,
		0.524321, 0.594144, 0.609984,
		27.184950, 33.761391, 33.944485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384392, 33.578182, 33.197216>,  <26.817924, 33.345490, 33.517498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384392, 33.578182, 33.197216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580784, 33.726585, 33.512505>,  <27.698620, 33.815628, 33.701679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580784, 33.726585, 33.512505>,  <27.384392, 33.578182, 33.197216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580784, 33.726585, 33.512505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871154, -0.214615, -0.441623,
		0.005319, 0.903490, -0.428575,
		0.490981, 0.371006, 0.788221,
		27.728079, 33.837887, 33.748970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659637, 34.285946, 32.953468>,  <27.384392, 33.578182, 33.197216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659637, 34.285946, 32.953468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867922, 34.150387, 33.266903>,  <27.992893, 34.069050, 33.454964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867922, 34.150387, 33.266903>,  <27.659637, 34.285946, 32.953468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867922, 34.150387, 33.266903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835527, 0.013765, -0.549276,
		0.175365, 0.940721, 0.290330,
		0.520712, -0.338902, 0.783584,
		28.024136, 34.048717, 33.501980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220123, 34.746166, 33.068592>,  <27.659637, 34.285946, 32.953468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220123, 34.746166, 33.068592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330063, 34.395863, 33.227341>,  <28.396027, 34.185680, 33.322590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330063, 34.395863, 33.227341>,  <28.220123, 34.746166, 33.068592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330063, 34.395863, 33.227341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842310, 0.020264, -0.538612,
		0.463651, 0.482327, 0.743229,
		0.274847, -0.875757, 0.396873,
		28.412518, 34.133137, 33.346401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894588, 34.867504, 33.024017>,  <28.220123, 34.746166, 33.068592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894588, 34.867504, 33.024017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853952, 34.480331, 33.115921>,  <28.829571, 34.248028, 33.171062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853952, 34.480331, 33.115921>,  <28.894588, 34.867504, 33.024017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853952, 34.480331, 33.115921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891255, -0.191157, -0.411246,
		0.441977, 0.162993, 0.882094,
		-0.101588, -0.967932, 0.229755,
		28.823477, 34.189953, 33.184849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475328, 34.588310, 33.428566>,  <28.894588, 34.867504, 33.024017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475328, 34.588310, 33.428566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335583, 34.255390, 33.256420>,  <29.251736, 34.055637, 33.153133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335583, 34.255390, 33.256420>,  <29.475328, 34.588310, 33.428566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335583, 34.255390, 33.256420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928590, -0.246201, -0.277680,
		0.125159, -0.496643, 0.858884,
		-0.349366, -0.832305, -0.430363,
		29.230774, 34.005699, 33.127312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949165, 34.182606, 33.455708>,  <29.475328, 34.588310, 33.428566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949165, 34.182606, 33.455708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730566, 34.016190, 33.164986>,  <29.599405, 33.916340, 32.990551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730566, 34.016190, 33.164986>,  <29.949165, 34.182606, 33.455708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730566, 34.016190, 33.164986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837379, -0.283484, -0.467368,
		-0.011593, -0.864028, 0.503310,
		-0.546499, -0.416043, -0.726806,
		29.566616, 33.891376, 32.946945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189005, 33.483150, 33.268078>,  <29.949165, 34.182606, 33.455708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189005, 33.483150, 33.268078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970194, 33.589180, 32.950462>,  <29.838907, 33.652798, 32.759892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970194, 33.589180, 32.950462>,  <30.189005, 33.483150, 33.268078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970194, 33.589180, 32.950462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705032, -0.365514, -0.607725,
		-0.451323, -0.892265, 0.013061,
		-0.547026, 0.265072, -0.794040,
		29.806086, 33.668701, 32.712250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127409, 32.867233, 32.863369>,  <30.189005, 33.483150, 33.268078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127409, 32.867233, 32.863369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077297, 33.168713, 32.605301>,  <30.047230, 33.349602, 32.450462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077297, 33.168713, 32.605301>,  <30.127409, 32.867233, 32.863369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077297, 33.168713, 32.605301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697274, -0.395713, -0.597679,
		-0.705772, -0.524736, -0.475960,
		-0.125280, 0.753700, -0.645168,
		30.039713, 33.394821, 32.411751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288900, 32.607132, 32.232735>,  <30.127409, 32.867233, 32.863369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288900, 32.607132, 32.232735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330822, 32.997986, 32.158741>,  <30.355976, 33.232498, 32.114346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330822, 32.997986, 32.158741>,  <30.288900, 32.607132, 32.232735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330822, 32.997986, 32.158741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658424, -0.207579, -0.723456,
		-0.745314, -0.045974, -0.665126,
		0.104806, 0.977137, -0.184982,
		30.362265, 33.291126, 32.103245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195986, 32.673634, 31.482149>,  <30.288900, 32.607132, 32.232735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195986, 32.673634, 31.482149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394020, 33.007954, 31.577084>,  <30.512840, 33.208546, 31.634045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394020, 33.007954, 31.577084>,  <30.195986, 32.673634, 31.482149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394020, 33.007954, 31.577084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737843, -0.260209, -0.622800,
		-0.458780, 0.483454, -0.745515,
		0.495085, 0.835801, 0.237334,
		30.542545, 33.258694, 31.648283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599869, 32.912907, 30.854513>,  <30.195986, 32.673634, 31.482149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599869, 32.912907, 30.854513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774483, 33.063042, 31.181574>,  <30.879251, 33.153122, 31.377811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774483, 33.063042, 31.181574>,  <30.599869, 32.912907, 30.854513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774483, 33.063042, 31.181574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899684, -0.179648, -0.397864,
		-0.002443, 0.909312, -0.416108,
		0.436536, 0.375338, 0.817654,
		30.905443, 33.175644, 31.426870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146814, 33.228230, 30.450296>,  <30.599869, 32.912907, 30.854513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146814, 33.228230, 30.450296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246721, 33.201572, 30.836700>,  <31.306665, 33.185577, 31.068542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246721, 33.201572, 30.836700>,  <31.146814, 33.228230, 30.450296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246721, 33.201572, 30.836700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890736, -0.375429, -0.256207,
		0.379743, 0.924452, -0.034406,
		0.249768, -0.066646, 0.966009,
		31.321651, 33.181580, 31.126503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709400, 33.621315, 30.515736>,  <31.146814, 33.228230, 30.450296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709400, 33.621315, 30.515736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703070, 33.359291, 30.817902>,  <31.699270, 33.202076, 30.999201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703070, 33.359291, 30.817902>,  <31.709400, 33.621315, 30.515736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703070, 33.359291, 30.817902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907387, -0.326762, -0.264339,
		0.419998, 0.681270, 0.599561,
		-0.015827, -0.655055, 0.755415,
		31.698322, 33.162773, 31.044527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300789, 33.565796, 30.724163>,  <31.709400, 33.621315, 30.515736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300789, 33.565796, 30.724163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162243, 33.234921, 30.901157>,  <32.079113, 33.036396, 31.007355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162243, 33.234921, 30.901157>,  <32.300789, 33.565796, 30.724163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162243, 33.234921, 30.901157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828371, -0.491060, -0.269558,
		0.440262, 0.273176, 0.855304,
		-0.346369, -0.827185, 0.442486,
		32.058331, 32.986767, 31.033903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884342, 33.409782, 31.194851>,  <32.300789, 33.565796, 30.724163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884342, 33.409782, 31.194851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655273, 33.082268, 31.178680>,  <32.517834, 32.885757, 31.168978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655273, 33.082268, 31.178680>,  <32.884342, 33.409782, 31.194851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655273, 33.082268, 31.178680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819635, -0.570926, -0.047354,
		0.015692, -0.060254, 0.998060,
		-0.572672, -0.818787, -0.040428,
		32.483471, 32.836632, 31.166552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254601, 32.948776, 31.620600>,  <32.884342, 33.409782, 31.194851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254601, 32.948776, 31.620600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012817, 32.716618, 31.402328>,  <32.867748, 32.577320, 31.271366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012817, 32.716618, 31.402328>,  <33.254601, 32.948776, 31.620600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012817, 32.716618, 31.402328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788888, -0.531398, -0.308661,
		-0.110823, -0.617051, 0.779081,
		-0.604461, -0.580401, -0.545676,
		32.831478, 32.542496, 31.238626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502853, 32.319660, 31.745209>,  <33.254601, 32.948776, 31.620600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502853, 32.319660, 31.745209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314690, 32.278183, 31.394674>,  <33.201790, 32.253296, 31.184353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314690, 32.278183, 31.394674>,  <33.502853, 32.319660, 31.745209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314690, 32.278183, 31.394674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836179, -0.369723, -0.405104,
		-0.281993, -0.923338, 0.260629,
		-0.470408, -0.103696, -0.876335,
		33.173569, 32.247074, 31.131773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580933, 31.663755, 31.655518>,  <33.502853, 32.319660, 31.745209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580933, 31.663755, 31.655518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497631, 31.806046, 31.291080>,  <33.447651, 31.891418, 31.072418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497631, 31.806046, 31.291080>,  <33.580933, 31.663755, 31.655518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497631, 31.806046, 31.291080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734671, -0.558044, -0.385806,
		-0.645671, -0.749699, -0.145127,
		-0.208251, 0.355724, -0.911094,
		33.435154, 31.912764, 31.017752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533844, 31.088028, 31.264179>,  <33.580933, 31.663755, 31.655518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533844, 31.088028, 31.264179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617638, 31.396532, 31.023754>,  <33.667915, 31.581635, 30.879499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617638, 31.396532, 31.023754>,  <33.533844, 31.088028, 31.264179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617638, 31.396532, 31.023754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732457, -0.531001, -0.426082,
		-0.647784, -0.350996, -0.676149,
		0.209483, 0.771259, -0.601063,
		33.680481, 31.627911, 30.843435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631874, 30.889328, 30.506147>,  <33.533844, 31.088028, 31.264179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631874, 30.889328, 30.506147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849403, 31.186911, 30.661472>,  <33.979919, 31.365459, 30.754667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849403, 31.186911, 30.661472>,  <33.631874, 30.889328, 30.506147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849403, 31.186911, 30.661472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836213, -0.519399, -0.175991,
		0.070759, 0.420419, -0.904567,
		0.543821, 0.743957, 0.388312,
		34.012550, 31.410097, 30.777966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118500, 31.237207, 30.041567>,  <33.631874, 30.889328, 30.506147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118500, 31.237207, 30.041567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251965, 31.224678, 30.418436>,  <34.332043, 31.217161, 30.644558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251965, 31.224678, 30.418436>,  <34.118500, 31.237207, 30.041567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251965, 31.224678, 30.418436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863787, -0.390123, -0.318867,
		0.377551, 0.920230, -0.103113,
		0.333658, -0.031321, 0.942174,
		34.352062, 31.215282, 30.701088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687428, 31.452831, 29.837292>,  <34.118500, 31.237207, 30.041567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687428, 31.452831, 29.837292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712002, 31.280489, 30.197422>,  <34.726746, 31.177084, 30.413500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712002, 31.280489, 30.197422>,  <34.687428, 31.452831, 29.837292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712002, 31.280489, 30.197422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867683, -0.422765, -0.261527,
		0.493307, 0.797266, 0.347873,
		0.061438, -0.430856, 0.900327,
		34.730434, 31.151232, 30.467520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896534, 30.843821, 30.018770>,  <34.687428, 31.452831, 29.837292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896534, 30.843821, 30.018770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239998, 30.641933, 30.054462>,  <35.446075, 30.520802, 30.075878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239998, 30.641933, 30.054462>,  <34.896534, 30.843821, 30.018770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239998, 30.641933, 30.054462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505645, -0.862635, -0.013538,
		0.083807, -0.033495, -0.995919,
		0.858662, -0.504716, 0.089232,
		35.497597, 30.490519, 30.081232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707130, 30.205482, 29.806963>,  <34.896534, 30.843821, 30.018770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707130, 30.205482, 29.806963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055035, 30.117195, 29.983511>,  <35.263775, 30.064222, 30.089439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055035, 30.117195, 29.983511>,  <34.707130, 30.205482, 29.806963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055035, 30.117195, 29.983511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257769, -0.965884, 0.024945,
		0.420807, -0.135468, -0.896978,
		0.869757, -0.220716, 0.441370,
		35.315960, 30.050980, 30.115923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997986, 29.777277, 29.363472>,  <34.707130, 30.205482, 29.806963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997986, 29.777277, 29.363472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184559, 29.685635, 29.705219>,  <35.296505, 29.630650, 29.910269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184559, 29.685635, 29.705219>,  <34.997986, 29.777277, 29.363472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184559, 29.685635, 29.705219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097247, -0.973303, -0.207906,
		0.879193, 0.013889, -0.476263,
		0.466435, -0.229104, 0.854371,
		35.324490, 29.616903, 29.961531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450260, 29.373835, 29.187910>,  <34.997986, 29.777277, 29.363472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450260, 29.373835, 29.187910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318432, 29.280247, 29.553783>,  <35.239334, 29.224094, 29.773308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318432, 29.280247, 29.553783>,  <35.450260, 29.373835, 29.187910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318432, 29.280247, 29.553783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366530, -0.861115, -0.352331,
		0.870080, -0.451376, 0.198042,
		-0.329570, -0.233968, 0.914681,
		35.219563, 29.210056, 29.828188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659515, 28.706110, 29.238403>,  <35.450260, 29.373835, 29.187910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659515, 28.706110, 29.238403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373810, 28.749331, 29.514996>,  <35.202385, 28.775263, 29.680950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373810, 28.749331, 29.514996>,  <35.659515, 28.706110, 29.238403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373810, 28.749331, 29.514996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368041, -0.898358, -0.239789,
		0.595287, -0.425767, 0.681437,
		-0.714269, 0.108053, 0.691480,
		35.159531, 28.781746, 29.722439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973656, 28.604994, 29.937138>,  <35.659515, 28.706110, 29.238403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973656, 28.604994, 29.937138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294281, 28.605328, 30.176304>,  <36.486656, 28.605528, 30.319803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294281, 28.605328, 30.176304>,  <35.973656, 28.604994, 29.937138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294281, 28.605328, 30.176304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243992, 0.913404, 0.325823,
		-0.545865, -0.407053, 0.732352,
		0.801560, 0.000832, 0.597913,
		36.534748, 28.605577, 30.355679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657192, 29.070530, 30.319368>,  <35.973656, 28.604994, 29.937138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657192, 29.070530, 30.319368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016266, 29.015024, 30.486660>,  <36.231709, 28.981722, 30.587034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016266, 29.015024, 30.486660>,  <35.657192, 29.070530, 30.319368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016266, 29.015024, 30.486660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258017, 0.603878, 0.754161,
		-0.357208, -0.784906, 0.506286,
		0.897680, -0.138762, 0.418229,
		36.285568, 28.973396, 30.612129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711819, 28.689240, 31.054934>,  <35.657192, 29.070530, 30.319368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711819, 28.689240, 31.054934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962467, 28.993162, 30.985598>,  <36.112854, 29.175516, 30.943996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962467, 28.993162, 30.985598>,  <35.711819, 28.689240, 31.054934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962467, 28.993162, 30.985598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394723, 0.501209, 0.770054,
		0.671970, -0.414108, 0.613979,
		0.626618, 0.759805, -0.173340,
		36.150452, 29.221104, 30.933596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003750, 28.974104, 31.696220>,  <35.711819, 28.689240, 31.054934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003750, 28.974104, 31.696220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063663, 29.279703, 31.445183>,  <36.099613, 29.463062, 31.294561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063663, 29.279703, 31.445183>,  <36.003750, 28.974104, 31.696220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063663, 29.279703, 31.445183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235647, 0.644047, 0.727787,
		0.960226, 0.038878, 0.276503,
		0.149786, 0.763997, -0.627593,
		36.108601, 29.508902, 31.256905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301235, 29.424948, 32.076859>,  <36.003750, 28.974104, 31.696220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301235, 29.424948, 32.076859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134449, 29.650709, 31.791876>,  <36.034378, 29.786165, 31.620888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134449, 29.650709, 31.791876>,  <36.301235, 29.424948, 32.076859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134449, 29.650709, 31.791876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454045, 0.549694, 0.701198,
		0.787390, 0.615861, 0.027062,
		-0.416965, 0.564404, -0.712452,
		36.009361, 29.820030, 31.578140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249634, 30.105307, 32.372799>,  <36.301235, 29.424948, 32.076859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249634, 30.105307, 32.372799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001694, 30.149467, 32.062035>,  <35.852928, 30.175964, 31.875576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001694, 30.149467, 32.062035>,  <36.249634, 30.105307, 32.372799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001694, 30.149467, 32.062035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575307, 0.609380, 0.545600,
		0.533670, 0.785154, -0.314211,
		-0.619853, 0.110403, -0.776912,
		35.815739, 30.182589, 31.828960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186607, 30.833981, 32.326817>,  <36.249634, 30.105307, 32.372799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186607, 30.833981, 32.326817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875671, 30.642744, 32.163269>,  <35.689110, 30.528002, 32.065140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875671, 30.642744, 32.163269>,  <36.186607, 30.833981, 32.326817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875671, 30.642744, 32.163269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628150, 0.554499, 0.545856,
		-0.034250, 0.681146, -0.731346,
		-0.777338, -0.478091, -0.408870,
		35.642471, 30.499317, 32.040607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737625, 31.376493, 32.174431>,  <36.186607, 30.833981, 32.326817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737625, 31.376493, 32.174431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535591, 31.031525, 32.187828>,  <35.414371, 30.824543, 32.195866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535591, 31.031525, 32.187828>,  <35.737625, 31.376493, 32.174431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535591, 31.031525, 32.187828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717936, 0.441366, 0.538298,
		-0.479022, 0.247838, -0.842089,
		-0.505080, -0.862422, 0.033492,
		35.384068, 30.772799, 32.197876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060326, 31.628748, 32.121239>,  <35.737625, 31.376493, 32.174431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060326, 31.628748, 32.121239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024986, 31.254318, 32.257450>,  <35.003784, 31.029659, 32.339176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024986, 31.254318, 32.257450>,  <35.060326, 31.628748, 32.121239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024986, 31.254318, 32.257450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767897, 0.281748, 0.575284,
		-0.634452, -0.210665, -0.743701,
		-0.088344, -0.936076, 0.340525,
		34.998482, 30.973495, 32.359608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378204, 31.475651, 32.077854>,  <35.060326, 31.628748, 32.121239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378204, 31.475651, 32.077854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499825, 31.211216, 32.352230>,  <34.572796, 31.052555, 32.516857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499825, 31.211216, 32.352230>,  <34.378204, 31.475651, 32.077854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499825, 31.211216, 32.352230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769433, 0.254142, 0.585990,
		-0.561718, -0.705957, -0.431391,
		0.304049, -0.661088, 0.685943,
		34.591038, 31.012890, 32.558014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804661, 31.235645, 32.375267>,  <34.378204, 31.475651, 32.077854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804661, 31.235645, 32.375267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055073, 31.099138, 32.655727>,  <34.205322, 31.017235, 32.824005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055073, 31.099138, 32.655727>,  <33.804661, 31.235645, 32.375267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055073, 31.099138, 32.655727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717720, 0.099395, 0.689202,
		-0.304894, -0.934696, -0.182709,
		0.626034, -0.341267, 0.701155,
		34.242882, 30.996758, 32.866074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447083, 30.668367, 32.741467>,  <33.804661, 31.235645, 32.375267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447083, 30.668367, 32.741467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724133, 30.836510, 32.975925>,  <33.890362, 30.937395, 33.116600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724133, 30.836510, 32.975925>,  <33.447083, 30.668367, 32.741467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724133, 30.836510, 32.975925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691288, 0.154877, 0.705787,
		0.205903, -0.894042, 0.397861,
		0.692622, 0.420359, 0.586151,
		33.931919, 30.962616, 33.151772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355682, 30.406685, 33.374825>,  <33.447083, 30.668367, 32.741467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355682, 30.406685, 33.374825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550228, 30.740971, 33.476830>,  <33.666958, 30.941542, 33.538033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550228, 30.740971, 33.476830>,  <33.355682, 30.406685, 33.374825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550228, 30.740971, 33.476830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653400, 0.154109, 0.741161,
		0.580098, -0.527100, 0.621008,
		0.486369, 0.835713, 0.255009,
		33.696140, 30.991684, 33.553333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459778, 30.390556, 34.083492>,  <33.355682, 30.406685, 33.374825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459778, 30.390556, 34.083492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435413, 30.772120, 33.965954>,  <33.420795, 31.001059, 33.895432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435413, 30.772120, 33.965954>,  <33.459778, 30.390556, 34.083492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435413, 30.772120, 33.965954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779860, 0.138267, 0.610493,
		0.622984, 0.266346, 0.735494,
		-0.060907, 0.953909, -0.293851,
		33.417141, 31.058292, 33.877800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054005, 30.791552, 34.592514>,  <33.459778, 30.390556, 34.083492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054005, 30.791552, 34.592514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091599, 31.086376, 34.324810>,  <33.114155, 31.263271, 34.164188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091599, 31.086376, 34.324810>,  <33.054005, 30.791552, 34.592514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091599, 31.086376, 34.324810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736842, 0.503561, 0.451098,
		0.669500, 0.450740, 0.590427,
		0.093988, 0.737061, -0.669258,
		33.119797, 31.307495, 34.124031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010006, 31.391199, 34.941025>,  <33.054005, 30.791552, 34.592514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010006, 31.391199, 34.941025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947510, 31.546324, 34.577663>,  <32.910011, 31.639399, 34.359646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947510, 31.546324, 34.577663>,  <33.010006, 31.391199, 34.941025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947510, 31.546324, 34.577663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599318, 0.693823, 0.399283,
		0.785116, 0.606805, 0.124018,
		-0.156240, 0.387809, -0.908401,
		32.900639, 31.662666, 34.305141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038559, 32.142437, 35.094200>,  <33.010006, 31.391199, 34.941025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038559, 32.142437, 35.094200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859215, 32.092506, 34.740162>,  <32.751610, 32.062550, 34.527740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859215, 32.092506, 34.740162>,  <33.038559, 32.142437, 35.094200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859215, 32.092506, 34.740162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762500, 0.570129, 0.305855,
		0.466441, 0.812017, -0.350801,
		-0.448361, -0.124823, -0.885094,
		32.724705, 32.055061, 34.474632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835896, 32.724895, 34.880760>,  <33.038559, 32.142437, 35.094200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835896, 32.724895, 34.880760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577515, 32.486336, 34.690159>,  <32.422485, 32.343201, 34.575798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577515, 32.486336, 34.690159>,  <32.835896, 32.724895, 34.880760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577515, 32.486336, 34.690159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752745, 0.601449, 0.267645,
		0.126972, 0.531574, -0.837441,
		-0.645951, -0.596397, -0.476507,
		32.383728, 32.307415, 34.547207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444069, 33.232315, 34.440662>,  <32.835896, 32.724895, 34.880760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444069, 33.232315, 34.440662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231251, 32.893696, 34.447392>,  <32.103558, 32.690525, 34.451427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231251, 32.893696, 34.447392>,  <32.444069, 33.232315, 34.440662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231251, 32.893696, 34.447392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843266, 0.531567, 0.079614,
		-0.076339, 0.028173, -0.996684,
		-0.532047, -0.846547, 0.016822,
		32.071636, 32.639732, 34.452438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830008, 33.272354, 33.934162>,  <32.444069, 33.232315, 34.440662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830008, 33.272354, 33.934162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731276, 33.006432, 34.216187>,  <31.672037, 32.846878, 34.385399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731276, 33.006432, 34.216187>,  <31.830008, 33.272354, 33.934162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731276, 33.006432, 34.216187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909176, 0.410667, 0.068931,
		-0.335370, -0.624009, -0.705790,
		-0.246831, -0.664805, 0.705059,
		31.657227, 32.806992, 34.427704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137472, 33.055943, 33.799313>,  <31.830008, 33.272354, 33.934162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137472, 33.055943, 33.799313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219601, 32.976540, 34.182652>,  <31.268877, 32.928898, 34.412655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219601, 32.976540, 34.182652>,  <31.137472, 33.055943, 33.799313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219601, 32.976540, 34.182652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925917, 0.277821, 0.255917,
		-0.317052, -0.939899, -0.126760,
		0.205319, -0.198509, 0.958352,
		31.281197, 32.916988, 34.470158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460533, 32.646698, 34.080517>,  <31.137472, 33.055943, 33.799313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460533, 32.646698, 34.080517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673122, 32.789062, 34.387985>,  <30.800676, 32.874481, 34.572468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673122, 32.789062, 34.387985>,  <30.460533, 32.646698, 34.080517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673122, 32.789062, 34.387985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845223, 0.162852, 0.508997,
		0.055980, -0.920220, 0.387379,
		0.531474, 0.355915, 0.768674,
		30.832565, 32.895836, 34.618587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057495, 32.454475, 34.630928>,  <30.460533, 32.646698, 34.080517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057495, 32.454475, 34.630928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306383, 32.717911, 34.800213>,  <30.455715, 32.875973, 34.901783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306383, 32.717911, 34.800213>,  <30.057495, 32.454475, 34.630928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306383, 32.717911, 34.800213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740558, 0.319917, 0.590955,
		0.253803, -0.681114, 0.686780,
		0.622221, 0.658587, 0.423208,
		30.493050, 32.915485, 34.927174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894110, 32.362709, 35.299435>,  <30.057495, 32.454475, 34.630928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894110, 32.362709, 35.299435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057301, 32.726227, 35.264473>,  <30.155214, 32.944340, 35.243496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057301, 32.726227, 35.264473>,  <29.894110, 32.362709, 35.299435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057301, 32.726227, 35.264473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778763, 0.396365, 0.486233,
		0.476534, -0.130302, 0.869447,
		0.407976, 0.908799, -0.087407,
		30.179693, 32.998867, 35.238251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883461, 32.654690, 35.984734>,  <29.894110, 32.362709, 35.299435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883461, 32.654690, 35.984734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903343, 32.943657, 35.708866>,  <29.915272, 33.117039, 35.543346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903343, 32.943657, 35.708866>,  <29.883461, 32.654690, 35.984734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903343, 32.943657, 35.708866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764090, 0.472191, 0.439547,
		0.643192, 0.505122, 0.575462,
		0.049704, 0.722418, -0.689668,
		29.918255, 33.160381, 35.501965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995266, 33.320736, 35.944405>,  <29.883461, 32.654690, 35.984734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995266, 33.320736, 35.944405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081654, 33.664825, 36.129173>,  <30.133486, 33.871281, 36.240036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081654, 33.664825, 36.129173>,  <29.995266, 33.320736, 35.944405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081654, 33.664825, 36.129173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728647, -0.456906, 0.510206,
		0.649946, 0.226388, -0.725478,
		0.215971, 0.860224, 0.461921,
		30.146444, 33.922894, 36.267750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763582, 33.194439, 36.108971>,  <29.995266, 33.320736, 35.944405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763582, 33.194439, 36.108971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598610, 33.473816, 36.342918>,  <30.499626, 33.641441, 36.483288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598610, 33.473816, 36.342918>,  <30.763582, 33.194439, 36.108971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598610, 33.473816, 36.342918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508219, -0.356424, 0.784013,
		0.756053, 0.620593, -0.207964,
		-0.412429, 0.698446, 0.584872,
		30.474882, 33.683350, 36.518379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273178, 33.600643, 36.604534>,  <30.763582, 33.194439, 36.108971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273178, 33.600643, 36.604534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917606, 33.575645, 36.786037>,  <30.704264, 33.560646, 36.894939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917606, 33.575645, 36.786037>,  <31.273178, 33.600643, 36.604534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917606, 33.575645, 36.786037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452163, 0.038516, 0.891103,
		-0.073168, 0.997302, -0.005979,
		-0.888929, -0.062497, 0.453761,
		30.650928, 33.556896, 36.922165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906839, 34.252899, 36.989609>,  <31.273178, 33.600643, 36.604534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906839, 34.252899, 36.989609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835024, 33.899929, 37.163548>,  <30.791935, 33.688148, 37.267910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835024, 33.899929, 37.163548>,  <30.906839, 34.252899, 36.989609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835024, 33.899929, 37.163548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556108, 0.273590, 0.784788,
		-0.811486, 0.382724, 0.441603,
		-0.179539, -0.882423, 0.434850,
		30.781162, 33.635201, 37.294003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701977, 34.418964, 37.657795>,  <30.906839, 34.252899, 36.989609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701977, 34.418964, 37.657795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830914, 34.041008, 37.634926>,  <30.908276, 33.814232, 37.621204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830914, 34.041008, 37.634926>,  <30.701977, 34.418964, 37.657795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830914, 34.041008, 37.634926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341007, 0.059562, 0.938172,
		-0.883069, -0.321910, 0.341415,
		0.322342, -0.944895, -0.057176,
		30.927616, 33.757538, 37.617771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996029, 34.124912, 38.225586>,  <30.701977, 34.418964, 37.657795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996029, 34.124912, 38.225586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055901, 33.760117, 38.072815>,  <31.091824, 33.541237, 37.981152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055901, 33.760117, 38.072815>,  <30.996029, 34.124912, 38.225586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055901, 33.760117, 38.072815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499302, -0.263685, 0.825329,
		-0.853401, -0.314232, 0.415891,
		0.149681, -0.911992, -0.381925,
		31.100805, 33.486519, 37.958237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802214, 33.747082, 38.799164>,  <30.996029, 34.124912, 38.225586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802214, 33.747082, 38.799164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049448, 33.560490, 38.546066>,  <31.197788, 33.448536, 38.394207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049448, 33.560490, 38.546066>,  <30.802214, 33.747082, 38.799164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049448, 33.560490, 38.546066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510006, -0.374573, 0.774331,
		-0.598218, -0.801308, 0.006388,
		0.618085, -0.466477, -0.632748,
		31.234873, 33.420547, 38.356243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940969, 32.948776, 39.106602>,  <30.802214, 33.747082, 38.799164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940969, 32.948776, 39.106602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219782, 33.112133, 38.870853>,  <31.387070, 33.210148, 38.729404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219782, 33.112133, 38.870853>,  <30.940969, 32.948776, 39.106602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219782, 33.112133, 38.870853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694166, -0.178370, 0.697365,
		0.179674, -0.895208, -0.407824,
		0.697030, 0.408395, -0.589375,
		31.428890, 33.234653, 38.694042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455975, 32.396568, 39.111107>,  <30.940969, 32.948776, 39.106602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455975, 32.396568, 39.111107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619381, 32.747437, 39.010162>,  <31.717424, 32.957958, 38.949596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619381, 32.747437, 39.010162>,  <31.455975, 32.396568, 39.111107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619381, 32.747437, 39.010162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656337, -0.090162, 0.749061,
		0.634300, -0.471639, -0.612552,
		0.408515, 0.877170, -0.252364,
		31.741936, 33.010586, 38.934452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209728, 32.331432, 39.007641>,  <31.455975, 32.396568, 39.111107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209728, 32.331432, 39.007641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120792, 32.702965, 39.126190>,  <32.067432, 32.925884, 39.197319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120792, 32.702965, 39.126190>,  <32.209728, 32.331432, 39.007641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120792, 32.702965, 39.126190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758540, -0.026184, 0.651100,
		0.612522, 0.369578, -0.698733,
		-0.222337, 0.928831, 0.296378,
		32.054092, 32.981613, 39.215103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827538, 32.524971, 39.143597>,  <32.209728, 32.331432, 39.007641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827538, 32.524971, 39.143597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619907, 32.835346, 39.286972>,  <32.495327, 33.021572, 39.372997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619907, 32.835346, 39.286972>,  <32.827538, 32.524971, 39.143597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619907, 32.835346, 39.286972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482433, -0.080201, 0.872254,
		0.705561, 0.625691, -0.332707,
		-0.519078, 0.775937, 0.358441,
		32.464184, 33.068127, 39.394505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292580, 33.073853, 39.359722>,  <32.827538, 32.524971, 39.143597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292580, 33.073853, 39.359722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957615, 33.114071, 39.574619>,  <32.756638, 33.138203, 39.703560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957615, 33.114071, 39.574619>,  <33.292580, 33.073853, 39.359722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957615, 33.114071, 39.574619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532845, -0.068739, 0.843417,
		0.121732, 0.992555, 0.003987,
		-0.837411, 0.100546, 0.537245,
		32.706390, 33.144234, 39.735794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463875, 33.559433, 39.880363>,  <33.292580, 33.073853, 39.359722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463875, 33.559433, 39.880363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145493, 33.373306, 40.035248>,  <32.954464, 33.261631, 40.128178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145493, 33.373306, 40.035248>,  <33.463875, 33.559433, 39.880363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145493, 33.373306, 40.035248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457767, -0.044122, 0.887977,
		-0.396107, 0.884043, 0.248126,
		-0.795958, -0.465318, 0.387209,
		32.906704, 33.233711, 40.151409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414696, 33.844883, 40.526207>,  <33.463875, 33.559433, 39.880363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414696, 33.844883, 40.526207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223125, 33.495712, 40.563370>,  <33.108185, 33.286209, 40.585667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223125, 33.495712, 40.563370>,  <33.414696, 33.844883, 40.526207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223125, 33.495712, 40.563370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381067, -0.111385, 0.917813,
		-0.790834, 0.474968, 0.385989,
		-0.478925, -0.872926, 0.092907,
		33.079449, 33.233833, 40.591244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376495, 33.723949, 41.241566>,  <33.414696, 33.844883, 40.526207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376495, 33.723949, 41.241566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290825, 33.352444, 41.120552>,  <33.239422, 33.129539, 41.047943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290825, 33.352444, 41.120552>,  <33.376495, 33.723949, 41.241566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290825, 33.352444, 41.120552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176748, -0.341454, 0.923130,
		-0.960672, 0.144237, 0.237287,
		-0.214172, -0.928765, -0.302532,
		33.226574, 33.073814, 41.029793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979675, 33.361191, 41.727657>,  <33.376495, 33.723949, 41.241566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979675, 33.361191, 41.727657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096851, 33.058552, 41.493820>,  <33.167156, 32.876968, 41.353519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096851, 33.058552, 41.493820>,  <32.979675, 33.361191, 41.727657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096851, 33.058552, 41.493820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074628, -0.591453, 0.802878,
		-0.953215, -0.278820, -0.116795,
		0.292938, -0.756599, -0.584590,
		33.184734, 32.831573, 41.318443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536613, 32.793430, 41.827160>,  <32.979675, 33.361191, 41.727657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536613, 32.793430, 41.827160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895695, 32.663368, 41.708237>,  <33.111145, 32.585331, 41.636883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895695, 32.663368, 41.708237>,  <32.536613, 32.793430, 41.827160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895695, 32.663368, 41.708237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072299, -0.556934, 0.827404,
		-0.434619, -0.764262, -0.476455,
		0.897708, -0.325159, -0.297309,
		33.165009, 32.565819, 41.619045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582890, 32.133804, 42.043922>,  <32.536613, 32.793430, 41.827160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582890, 32.133804, 42.043922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965672, 32.171288, 41.934044>,  <33.195339, 32.193779, 41.868118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965672, 32.171288, 41.934044>,  <32.582890, 32.133804, 42.043922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965672, 32.171288, 41.934044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272052, -0.619391, 0.736439,
		-0.101131, -0.779469, -0.618223,
		0.956954, 0.093713, -0.274696,
		33.252758, 32.199402, 41.851635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705486, 31.511557, 42.021671>,  <32.582890, 32.133804, 42.043922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705486, 31.511557, 42.021671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056042, 31.698650, 42.067574>,  <33.266376, 31.810907, 42.095116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056042, 31.698650, 42.067574>,  <32.705486, 31.511557, 42.021671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056042, 31.698650, 42.067574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277064, -0.684551, 0.674259,
		0.393928, -0.559119, -0.729525,
		0.876388, 0.467735, 0.114752,
		33.318958, 31.838970, 42.101997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200775, 30.997627, 42.173191>,  <32.705486, 31.511557, 42.021671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200775, 30.997627, 42.173191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369919, 31.337074, 42.300335>,  <33.471405, 31.540743, 42.376621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369919, 31.337074, 42.300335>,  <33.200775, 30.997627, 42.173191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369919, 31.337074, 42.300335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277686, -0.455237, 0.845961,
		0.862602, -0.269454, -0.428150,
		0.422857, 0.848619, 0.317865,
		33.496777, 31.591660, 42.395695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893589, 30.821207, 42.284351>,  <33.200775, 30.997627, 42.173191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893589, 30.821207, 42.284351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808525, 31.147654, 42.499287>,  <33.757488, 31.343521, 42.628250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808525, 31.147654, 42.499287>,  <33.893589, 30.821207, 42.284351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808525, 31.147654, 42.499287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313534, -0.463849, 0.828577,
		0.925459, 0.344677, -0.157240,
		-0.212656, 0.816114, 0.537341,
		33.744728, 31.392488, 42.660488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407265, 30.806747, 42.756638>,  <33.893589, 30.821207, 42.284351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407265, 30.806747, 42.756638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161713, 31.078161, 42.917999>,  <34.014381, 31.241011, 43.014816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161713, 31.078161, 42.917999>,  <34.407265, 30.806747, 42.756638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161713, 31.078161, 42.917999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004069, -0.508302, 0.861169,
		0.789386, 0.530299, 0.309278,
		-0.613884, 0.678537, 0.403404,
		33.977547, 31.281723, 43.039021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633652, 30.875925, 43.385891>,  <34.407265, 30.806747, 42.756638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633652, 30.875925, 43.385891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258343, 31.011560, 43.413189>,  <34.033157, 31.092941, 43.429565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258343, 31.011560, 43.413189>,  <34.633652, 30.875925, 43.385891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258343, 31.011560, 43.413189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086289, -0.420531, 0.903166,
		0.334950, 0.841531, 0.423833,
		-0.938276, 0.339087, 0.068242,
		33.976860, 31.113287, 43.433662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544754, 31.160517, 44.045551>,  <34.633652, 30.875925, 43.385891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544754, 31.160517, 44.045551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165070, 31.093245, 43.939186>,  <33.937260, 31.052881, 43.875366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165070, 31.093245, 43.939186>,  <34.544754, 31.160517, 44.045551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165070, 31.093245, 43.939186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209554, -0.292476, 0.933030,
		-0.234691, 0.941367, 0.242379,
		-0.949214, -0.168182, -0.265909,
		33.880306, 31.042789, 43.859413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227196, 31.268328, 44.712799>,  <34.544754, 31.160517, 44.045551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227196, 31.268328, 44.712799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970982, 31.059664, 44.487377>,  <33.817253, 30.934465, 44.352123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970982, 31.059664, 44.487377>,  <34.227196, 31.268328, 44.712799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970982, 31.059664, 44.487377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251110, -0.551232, 0.795668,
		-0.725713, 0.651166, 0.222090,
		-0.640535, -0.521657, -0.563550,
		33.778820, 30.903166, 44.318314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682301, 31.221209, 45.189480>,  <34.227196, 31.268328, 44.712799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682301, 31.221209, 45.189480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593204, 30.946751, 44.912472>,  <33.539745, 30.782076, 44.746265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593204, 30.946751, 44.912472>,  <33.682301, 31.221209, 45.189480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593204, 30.946751, 44.912472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410365, -0.578378, 0.705039,
		-0.884301, 0.441227, -0.152743,
		-0.222739, -0.686147, -0.692524,
		33.526382, 30.740906, 44.704716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933624, 31.124033, 45.111221>,  <33.682301, 31.221209, 45.189480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933624, 31.124033, 45.111221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108978, 30.786636, 44.987064>,  <33.214191, 30.584198, 44.912571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108978, 30.786636, 44.987064>,  <32.933624, 31.124033, 45.111221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108978, 30.786636, 44.987064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446015, -0.503983, 0.739643,
		-0.780316, -0.185804, -0.597146,
		0.438380, -0.843492, -0.310394,
		33.240494, 30.533588, 44.893948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489708, 30.546040, 45.199837>,  <32.933624, 31.124033, 45.111221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489708, 30.546040, 45.199837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851849, 30.379866, 45.164631>,  <33.069134, 30.280161, 45.143509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851849, 30.379866, 45.164631>,  <32.489708, 30.546040, 45.199837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851849, 30.379866, 45.164631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173486, -0.551015, 0.816263,
		-0.387600, -0.723738, -0.570937,
		0.905356, -0.415433, -0.088015,
		33.123455, 30.255236, 45.138226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414135, 29.737371, 45.172211>,  <32.489708, 30.546040, 45.199837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414135, 29.737371, 45.172211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795631, 29.809969, 45.268082>,  <33.024529, 29.853527, 45.325603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795631, 29.809969, 45.268082>,  <32.414135, 29.737371, 45.172211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795631, 29.809969, 45.268082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101615, -0.555699, 0.825150,
		0.282950, -0.811331, -0.511548,
		0.953737, 0.181496, 0.239678,
		33.081753, 29.864418, 45.339985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657642, 29.105257, 45.382130>,  <32.414135, 29.737371, 45.172211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657642, 29.105257, 45.382130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935364, 29.349743, 45.534111>,  <33.101997, 29.496435, 45.625298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935364, 29.349743, 45.534111>,  <32.657642, 29.105257, 45.382130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935364, 29.349743, 45.534111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011720, -0.518268, 0.855138,
		0.719591, -0.598175, -0.352670,
		0.694300, 0.611216, 0.379952,
		33.143654, 29.533108, 45.648098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192829, 28.661549, 45.672016>,  <32.657642, 29.105257, 45.382130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192829, 28.661549, 45.672016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264553, 29.011122, 45.852722>,  <33.307587, 29.220865, 45.961143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264553, 29.011122, 45.852722>,  <33.192829, 28.661549, 45.672016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264553, 29.011122, 45.852722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009826, -0.460774, 0.887463,
		0.983744, -0.154690, -0.091207,
		0.179308, 0.873933, 0.451763,
		33.318344, 29.273302, 45.988251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742107, 28.606882, 46.164417>,  <33.192829, 28.661549, 45.672016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742107, 28.606882, 46.164417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561619, 28.945274, 46.278061>,  <33.453323, 29.148310, 46.346249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561619, 28.945274, 46.278061>,  <33.742107, 28.606882, 46.164417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561619, 28.945274, 46.278061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147516, -0.243274, 0.958675,
		0.880134, 0.474487, -0.015025,
		-0.451224, 0.845979, 0.284108,
		33.426250, 29.199068, 46.363293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222717, 28.837612, 46.556252>,  <33.742107, 28.606882, 46.164417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222717, 28.837612, 46.556252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887058, 29.023916, 46.668606>,  <33.685661, 29.135698, 46.736019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887058, 29.023916, 46.668606>,  <34.222717, 28.837612, 46.556252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887058, 29.023916, 46.668606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168659, -0.268140, 0.948502,
		0.517093, 0.843307, 0.146455,
		-0.839148, 0.465762, 0.280884,
		33.635315, 29.163645, 46.752872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361084, 29.190590, 47.142738>,  <34.222717, 28.837612, 46.556252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361084, 29.190590, 47.142738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965046, 29.134796, 47.149124>,  <33.727425, 29.101320, 47.152954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965046, 29.134796, 47.149124>,  <34.361084, 29.190590, 47.142738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965046, 29.134796, 47.149124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035114, -0.135932, 0.990096,
		-0.135932, 0.980850, 0.139484,
		-0.990096, -0.139484, 0.015964,
		33.668018, 29.092951, 47.153912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271206, 29.546728, 47.752491>,  <34.361084, 29.190590, 47.142738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271206, 29.546728, 47.752491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935001, 29.335491, 47.704048>,  <33.733280, 29.208750, 47.674984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935001, 29.335491, 47.704048>,  <34.271206, 29.546728, 47.752491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935001, 29.335491, 47.704048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017559, -0.196863, 0.980274,
		-0.541515, 0.826054, 0.156192,
		-0.840508, -0.528091, -0.121108,
		33.682850, 29.177065, 47.667717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708931, 29.819496, 48.263844>,  <34.271206, 29.546728, 47.752491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708931, 29.819496, 48.263844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585567, 29.449057, 48.176922>,  <33.511551, 29.226793, 48.124767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585567, 29.449057, 48.176922>,  <33.708931, 29.819496, 48.263844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585567, 29.449057, 48.176922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111217, -0.191772, 0.975118,
		-0.944731, 0.324901, -0.043854,
		-0.308407, -0.926101, -0.217308,
		33.493046, 29.171227, 48.111729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024044, 29.687746, 48.608513>,  <33.708931, 29.819496, 48.263844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024044, 29.687746, 48.608513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162647, 29.321100, 48.528767>,  <33.245808, 29.101112, 48.480919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162647, 29.321100, 48.528767>,  <33.024044, 29.687746, 48.608513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162647, 29.321100, 48.528767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115319, -0.252542, 0.960689,
		-0.930931, -0.309897, -0.193211,
		0.346509, -0.916617, -0.199363,
		33.266602, 29.046116, 48.468956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542553, 29.278551, 49.039036>,  <33.024044, 29.687746, 48.608513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542553, 29.278551, 49.039036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858311, 29.046820, 48.957802>,  <33.047764, 28.907782, 48.909061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858311, 29.046820, 48.957802>,  <32.542553, 29.278551, 49.039036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858311, 29.046820, 48.957802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129244, -0.480234, 0.867566,
		-0.600134, -0.658599, -0.453966,
		0.789389, -0.579329, -0.203085,
		33.095127, 28.873022, 48.896877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382084, 28.556723, 49.196659>,  <32.542553, 29.278551, 49.039036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382084, 28.556723, 49.196659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781372, 28.555475, 49.220501>,  <33.020943, 28.554726, 49.234806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781372, 28.555475, 49.220501>,  <32.382084, 28.556723, 49.196659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781372, 28.555475, 49.220501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047753, -0.640771, 0.766246,
		0.035800, -0.767726, -0.639778,
		0.998217, -0.003120, 0.059601,
		33.080837, 28.554539, 49.238380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555164, 27.867075, 49.476124>,  <32.382084, 28.556723, 49.196659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555164, 27.867075, 49.476124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904953, 28.059399, 49.501835>,  <33.114826, 28.174793, 49.517262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904953, 28.059399, 49.501835>,  <32.555164, 27.867075, 49.476124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904953, 28.059399, 49.501835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234413, -0.534864, 0.811771,
		0.424686, -0.694799, -0.580428,
		0.874467, 0.480807, 0.064280,
		33.167294, 28.203640, 49.521118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046391, 27.407597, 49.335358>,  <32.555164, 27.867075, 49.476124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046391, 27.407597, 49.335358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213352, 27.678623, 49.577572>,  <33.313530, 27.841240, 49.722900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213352, 27.678623, 49.577572>,  <33.046391, 27.407597, 49.335358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213352, 27.678623, 49.577572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133862, -0.704940, 0.696520,
		0.898805, -0.209675, -0.384949,
		0.417409, 0.677566, 0.605536,
		33.338573, 27.881893, 49.759232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674114, 27.075371, 49.677502>,  <33.046391, 27.407597, 49.335358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674114, 27.075371, 49.677502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604248, 27.395151, 49.907413>,  <33.562328, 27.587019, 50.045361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604248, 27.395151, 49.907413>,  <33.674114, 27.075371, 49.677502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604248, 27.395151, 49.907413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349838, -0.495276, 0.795182,
		0.920384, 0.339969, -0.193172,
		-0.174664, 0.799451, 0.574778,
		33.551849, 27.634987, 50.079845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351234, 27.263998, 50.137886>,  <33.674114, 27.075371, 49.677502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351234, 27.263998, 50.137886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009773, 27.399433, 50.296192>,  <33.804897, 27.480694, 50.391174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009773, 27.399433, 50.296192>,  <34.351234, 27.263998, 50.137886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009773, 27.399433, 50.296192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206984, -0.476742, 0.854327,
		0.477944, 0.811218, 0.336890,
		-0.853655, 0.338589, 0.395765,
		33.753677, 27.501009, 50.414921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551506, 27.510220, 50.788963>,  <34.351234, 27.263998, 50.137886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551506, 27.510220, 50.788963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157970, 27.438776, 50.793964>,  <33.921848, 27.395910, 50.796963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157970, 27.438776, 50.793964>,  <34.551506, 27.510220, 50.788963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157970, 27.438776, 50.793964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074707, -0.346052, 0.935237,
		-0.162717, 0.921058, 0.353803,
		-0.983841, -0.178610, 0.012501,
		33.862820, 27.385193, 50.797714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408665, 27.821699, 51.365414>,  <34.551506, 27.510220, 50.788963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408665, 27.821699, 51.365414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100967, 27.583830, 51.271919>,  <33.916348, 27.441109, 51.215824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100967, 27.583830, 51.271919>,  <34.408665, 27.821699, 51.365414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100967, 27.583830, 51.271919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090195, -0.463202, 0.881651,
		-0.632559, 0.657122, 0.409951,
		-0.769243, -0.594672, -0.233733,
		33.870193, 27.405428, 51.201797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933651, 27.902639, 51.945030>,  <34.408665, 27.821699, 51.365414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933651, 27.902639, 51.945030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823978, 27.541451, 51.812687>,  <33.758175, 27.324738, 51.733280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823978, 27.541451, 51.812687>,  <33.933651, 27.902639, 51.945030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823978, 27.541451, 51.812687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280404, -0.404157, 0.870650,
		-0.919890, 0.145943, 0.364009,
		-0.274182, -0.902972, -0.330857,
		33.741722, 27.270559, 51.713428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448444, 27.670929, 52.434853>,  <33.933651, 27.902639, 51.945030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448444, 27.670929, 52.434853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607876, 27.363773, 52.234257>,  <33.703533, 27.179480, 52.113899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607876, 27.363773, 52.234257>,  <33.448444, 27.670929, 52.434853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607876, 27.363773, 52.234257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227127, -0.447119, 0.865158,
		-0.888568, -0.458730, -0.003802,
		0.398574, -0.767888, -0.501485,
		33.727448, 27.133408, 52.083813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112823, 27.059557, 52.685856>,  <33.448444, 27.670929, 52.434853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112823, 27.059557, 52.685856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492302, 27.035601, 52.561672>,  <33.719990, 27.021227, 52.487160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492302, 27.035601, 52.561672>,  <33.112823, 27.059557, 52.685856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492302, 27.035601, 52.561672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225301, -0.560864, 0.796662,
		-0.221841, -0.825739, -0.518596,
		0.948697, -0.059892, -0.310462,
		33.776913, 27.017633, 52.468533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779266, 26.450455, 52.862125>,  <33.112823, 27.059557, 52.685856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779266, 26.450455, 52.862125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611477, 26.147242, 52.662354>,  <32.510803, 25.965313, 52.542492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611477, 26.147242, 52.662354>,  <32.779266, 26.450455, 52.862125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611477, 26.147242, 52.662354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553136, -0.649676, 0.521500,
		-0.719781, -0.057498, 0.691816,
		-0.419471, -0.758034, -0.499429,
		32.485634, 25.919832, 52.512524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395874, 26.002909, 53.350548>,  <32.779266, 26.450455, 52.862125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395874, 26.002909, 53.350548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534580, 25.828197, 53.018528>,  <32.617805, 25.723372, 52.819317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534580, 25.828197, 53.018528>,  <32.395874, 26.002909, 53.350548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534580, 25.828197, 53.018528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499012, -0.663409, 0.557562,
		-0.794191, -0.607548, -0.012092,
		0.346768, -0.436776, -0.830048,
		32.638611, 25.697165, 52.769512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126369, 25.255550, 53.371643>,  <32.395874, 26.002909, 53.350548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126369, 25.255550, 53.371643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468796, 25.328936, 53.178356>,  <32.674252, 25.372967, 53.062386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468796, 25.328936, 53.178356>,  <32.126369, 25.255550, 53.371643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468796, 25.328936, 53.178356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499930, -0.531301, 0.683952,
		-0.131255, -0.827080, -0.546545,
		0.856062, 0.183461, -0.483218,
		32.725613, 25.383974, 53.033390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476818, 24.685125, 53.027000>,  <32.126369, 25.255550, 53.371643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476818, 24.685125, 53.027000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739002, 24.965683, 53.139011>,  <32.896313, 25.134018, 53.206219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739002, 24.965683, 53.139011>,  <32.476818, 24.685125, 53.027000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739002, 24.965683, 53.139011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497619, -0.680016, 0.538474,
		0.568109, -0.213599, -0.794750,
		0.655460, 0.701394, 0.280032,
		32.935642, 25.176102, 53.223022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089478, 24.248692, 52.981640>,  <32.476818, 24.685125, 53.027000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089478, 24.248692, 52.981640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097904, 24.581352, 53.203602>,  <33.102962, 24.780949, 53.336777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097904, 24.581352, 53.203602>,  <33.089478, 24.248692, 52.981640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097904, 24.581352, 53.203602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366097, -0.522892, 0.769777,
		0.930338, 0.186928, -0.315482,
		0.021070, 0.831650, 0.554900,
		33.104225, 24.830847, 53.370071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799572, 24.340237, 53.239552>,  <33.089478, 24.248692, 52.981640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799572, 24.340237, 53.239552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553799, 24.537306, 53.486046>,  <33.406334, 24.655548, 53.633942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553799, 24.537306, 53.486046>,  <33.799572, 24.340237, 53.239552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553799, 24.537306, 53.486046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365369, -0.514576, 0.775704,
		0.699267, 0.701772, 0.136165,
		-0.614435, 0.492674, 0.616232,
		33.369469, 24.685108, 53.670914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823689, 24.795418, 52.529320>,  <33.799572, 24.340237, 53.239552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823689, 24.795418, 52.529320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769527, 24.450459, 52.334206>,  <33.737030, 24.243483, 52.217136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769527, 24.450459, 52.334206>,  <33.823689, 24.795418, 52.529320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769527, 24.450459, 52.334206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700997, 0.264542, -0.662284,
		0.700193, -0.431612, 0.568719,
		-0.135400, -0.862397, -0.487790,
		33.728909, 24.191740, 52.187870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496269, 24.511808, 52.364311>,  <33.823689, 24.795418, 52.529320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496269, 24.511808, 52.364311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213951, 24.389318, 52.108784>,  <34.044559, 24.315825, 51.955467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213951, 24.389318, 52.108784>,  <34.496269, 24.511808, 52.364311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213951, 24.389318, 52.108784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604155, 0.210711, -0.768504,
		0.369939, -0.928347, 0.036288,
		-0.705792, -0.306223, -0.638816,
		34.002213, 24.297451, 51.917137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761703, 23.992239, 52.024338>,  <34.496269, 24.511808, 52.364311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761703, 23.992239, 52.024338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499138, 24.178513, 51.786930>,  <34.341599, 24.290276, 51.644485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499138, 24.178513, 51.786930>,  <34.761703, 23.992239, 52.024338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499138, 24.178513, 51.786930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716453, 0.138435, -0.683762,
		-0.236253, -0.874057, -0.424511,
		-0.656414, 0.465683, -0.593515,
		34.302212, 24.318218, 51.608875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045921, 23.784815, 51.408451>,  <34.761703, 23.992239, 52.024338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045921, 23.784815, 51.408451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803883, 24.096184, 51.341618>,  <34.658657, 24.283005, 51.301517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803883, 24.096184, 51.341618>,  <35.045921, 23.784815, 51.408451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803883, 24.096184, 51.341618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524944, 0.232307, -0.818821,
		-0.598573, -0.583176, -0.549195,
		-0.605099, 0.778421, -0.167082,
		34.622353, 24.329710, 51.291492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015041, 23.852510, 50.722485>,  <35.045921, 23.784815, 51.408451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015041, 23.852510, 50.722485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887390, 24.213978, 50.836708>,  <34.810799, 24.430859, 50.905243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887390, 24.213978, 50.836708>,  <35.015041, 23.852510, 50.722485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887390, 24.213978, 50.836708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325863, 0.387573, -0.862323,
		-0.889928, -0.182137, -0.418157,
		-0.319127, 0.903667, 0.285560,
		34.791653, 24.485077, 50.922375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553852, 24.090027, 50.218166>,  <35.015041, 23.852510, 50.722485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553852, 24.090027, 50.218166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687099, 24.422564, 50.396111>,  <34.767048, 24.622086, 50.502876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687099, 24.422564, 50.396111>,  <34.553852, 24.090027, 50.218166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687099, 24.422564, 50.396111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032544, 0.461394, -0.886599,
		-0.942322, 0.309822, 0.126645,
		0.333121, 0.831340, 0.444864,
		34.787037, 24.671965, 50.529572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200993, 24.714338, 49.918533>,  <34.553852, 24.090027, 50.218166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200993, 24.714338, 49.918533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536213, 24.863571, 50.077770>,  <34.737347, 24.953112, 50.173313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536213, 24.863571, 50.077770>,  <34.200993, 24.714338, 49.918533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536213, 24.863571, 50.077770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067306, 0.653389, -0.754024,
		-0.541426, 0.658704, 0.522462,
		0.838050, 0.373083, 0.398097,
		34.787628, 24.975496, 50.197201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109886, 25.402369, 49.957710>,  <34.200993, 24.714338, 49.918533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109886, 25.402369, 49.957710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505688, 25.358406, 49.995239>,  <34.743168, 25.332029, 50.017757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505688, 25.358406, 49.995239>,  <34.109886, 25.402369, 49.957710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505688, 25.358406, 49.995239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144503, 0.751748, -0.643423,
		0.000187, 0.650227, 0.759740,
		0.989504, -0.109905, 0.093819,
		34.802540, 25.325434, 50.023384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438198, 26.061167, 50.064320>,  <34.109886, 25.402369, 49.957710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438198, 26.061167, 50.064320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737732, 25.834387, 49.927025>,  <34.917454, 25.698318, 49.844646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737732, 25.834387, 49.927025>,  <34.438198, 26.061167, 50.064320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737732, 25.834387, 49.927025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166740, 0.662404, -0.730355,
		0.641437, 0.489684, 0.590566,
		0.748836, -0.566948, -0.343241,
		34.962383, 25.664303, 49.824051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857536, 26.510389, 49.863834>,  <34.438198, 26.061167, 50.064320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857536, 26.510389, 49.863834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991211, 26.182968, 49.676949>,  <35.071415, 25.986515, 49.564816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991211, 26.182968, 49.676949>,  <34.857536, 26.510389, 49.863834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991211, 26.182968, 49.676949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413678, 0.572806, -0.707646,
		0.846870, 0.043209, 0.530042,
		0.334188, -0.818551, -0.467218,
		35.091469, 25.937403, 49.536785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568516, 26.636711, 49.545757>,  <34.857536, 26.510389, 49.863834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568516, 26.636711, 49.545757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440651, 26.322880, 49.333248>,  <35.363934, 26.134581, 49.205742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440651, 26.322880, 49.333248>,  <35.568516, 26.636711, 49.545757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440651, 26.322880, 49.333248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394533, 0.399566, -0.827460,
		0.861488, -0.474111, 0.181818,
		-0.319660, -0.784580, -0.531273,
		35.344753, 26.087505, 49.173866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050426, 26.415861, 49.118534>,  <35.568516, 26.636711, 49.545757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050426, 26.415861, 49.118534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743111, 26.242989, 48.929661>,  <35.558723, 26.139265, 48.816338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743111, 26.242989, 48.929661>,  <36.050426, 26.415861, 49.118534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743111, 26.242989, 48.929661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243403, 0.485000, -0.839958,
		0.592024, -0.760258, -0.267424,
		-0.768286, -0.432184, -0.472181,
		35.512627, 26.113335, 48.788006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445431, 26.229422, 48.477970>,  <36.050426, 26.415861, 49.118534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445431, 26.229422, 48.477970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048782, 26.235985, 48.426723>,  <35.810791, 26.239922, 48.395977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048782, 26.235985, 48.426723>,  <36.445431, 26.229422, 48.477970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048782, 26.235985, 48.426723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118456, 0.510865, -0.851460,
		0.051479, -0.859504, -0.508529,
		-0.991624, 0.016406, -0.128113,
		35.751297, 26.240906, 48.388290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349728, 26.094275, 47.705311>,  <36.445431, 26.229422, 48.477970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349728, 26.094275, 47.705311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005074, 26.249691, 47.835922>,  <35.798283, 26.342941, 47.914291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005074, 26.249691, 47.835922>,  <36.349728, 26.094275, 47.705311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005074, 26.249691, 47.835922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153188, 0.414269, -0.897170,
		-0.483861, -0.823053, -0.297428,
		-0.861633, 0.388543, 0.326530,
		35.746582, 26.366253, 47.933880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886456, 25.877241, 47.238171>,  <36.349728, 26.094275, 47.705311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886456, 25.877241, 47.238171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756741, 26.219482, 47.399555>,  <35.678909, 26.424828, 47.496387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756741, 26.219482, 47.399555>,  <35.886456, 25.877241, 47.238171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756741, 26.219482, 47.399555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034472, 0.436919, -0.898840,
		-0.945329, -0.277577, -0.171183,
		-0.324291, 0.855601, 0.403463,
		35.659454, 26.476162, 47.520596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308468, 26.077366, 46.809944>,  <35.886456, 25.877241, 47.238171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308468, 26.077366, 46.809944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414406, 26.412008, 47.001755>,  <35.477970, 26.612793, 47.116840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414406, 26.412008, 47.001755>,  <35.308468, 26.077366, 46.809944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414406, 26.412008, 47.001755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183661, 0.531946, -0.826621,
		-0.946639, 0.130855, 0.294535,
		0.264844, 0.836606, 0.479528,
		35.493858, 26.662991, 47.145615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871849, 26.547256, 46.591881>,  <35.308468, 26.077366, 46.809944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871849, 26.547256, 46.591881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151756, 26.781052, 46.756168>,  <35.319702, 26.921329, 46.854740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151756, 26.781052, 46.756168>,  <34.871849, 26.547256, 46.591881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151756, 26.781052, 46.756168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038532, 0.543224, -0.838703,
		-0.713326, 0.602727, 0.357612,
		0.699772, 0.584489, 0.410720,
		35.361687, 26.956398, 46.879383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580921, 27.158442, 46.636002>,  <34.871849, 26.547256, 46.591881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580921, 27.158442, 46.636002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979504, 27.183535, 46.613617>,  <35.218655, 27.198589, 46.600185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979504, 27.183535, 46.613617>,  <34.580921, 27.158442, 46.636002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979504, 27.183535, 46.613617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084047, 0.729884, -0.678384,
		-0.001710, 0.680687, 0.732573,
		0.996460, 0.062730, -0.055962,
		35.278442, 27.202354, 46.596828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647633, 27.857908, 46.536865>,  <34.580921, 27.158442, 46.636002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647633, 27.857908, 46.536865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015057, 27.719826, 46.459846>,  <35.235512, 27.636976, 46.413635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015057, 27.719826, 46.459846>,  <34.647633, 27.857908, 46.536865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015057, 27.719826, 46.459846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070635, 0.622635, -0.779317,
		0.388912, 0.702251, 0.596313,
		0.918563, -0.345207, -0.192547,
		35.290627, 27.616264, 46.402081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015713, 28.500790, 46.492428>,  <34.647633, 27.857908, 46.536865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015713, 28.500790, 46.492428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211094, 28.217342, 46.288750>,  <35.328323, 28.047274, 46.166542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211094, 28.217342, 46.288750>,  <35.015713, 28.500790, 46.492428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211094, 28.217342, 46.288750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063663, 0.610924, -0.789125,
		0.870267, 0.353031, 0.343518,
		0.488449, -0.708619, -0.509192,
		35.357628, 28.004757, 46.135994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586937, 28.851114, 46.042206>,  <35.015713, 28.500790, 46.492428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586937, 28.851114, 46.042206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523609, 28.481298, 45.903549>,  <35.485611, 28.259409, 45.820354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523609, 28.481298, 45.903549>,  <35.586937, 28.851114, 46.042206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523609, 28.481298, 45.903549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098328, 0.364090, -0.926158,
		0.982479, -0.112547, -0.148552,
		-0.158323, -0.924538, -0.346645,
		35.476112, 28.203938, 45.799557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903805, 28.779827, 45.333401>,  <35.586937, 28.851114, 46.042206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903805, 28.779827, 45.333401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636250, 28.482513, 45.337685>,  <35.475716, 28.304125, 45.340256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636250, 28.482513, 45.337685>,  <35.903805, 28.779827, 45.333401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636250, 28.482513, 45.337685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167249, 0.136439, -0.976428,
		0.724302, -0.654916, -0.215576,
		-0.668891, -0.743284, 0.010711,
		35.435581, 28.259529, 45.340897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039505, 28.401031, 44.768799>,  <35.903805, 28.779827, 45.333401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039505, 28.401031, 44.768799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675694, 28.247087, 44.831593>,  <35.457409, 28.154720, 44.869267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675694, 28.247087, 44.831593>,  <36.039505, 28.401031, 44.768799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675694, 28.247087, 44.831593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142509, -0.066041, -0.987588,
		0.390452, -0.920608, 0.005220,
		-0.909527, -0.384862, 0.156981,
		35.402836, 28.131630, 44.878685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850498, 27.798586, 44.332619>,  <36.039505, 28.401031, 44.768799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850498, 27.798586, 44.332619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498768, 27.960714, 44.432617>,  <35.287731, 28.057991, 44.492619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498768, 27.960714, 44.432617>,  <35.850498, 27.798586, 44.332619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498768, 27.960714, 44.432617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387104, -0.302602, -0.870966,
		-0.277375, -0.862638, 0.422989,
		-0.879326, 0.405325, 0.249996,
		35.234970, 28.082312, 44.507618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349289, 27.371340, 43.946560>,  <35.850498, 27.798586, 44.332619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349289, 27.371340, 43.946560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160645, 27.709679, 44.046261>,  <35.047459, 27.912682, 44.106083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160645, 27.709679, 44.046261>,  <35.349289, 27.371340, 43.946560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160645, 27.709679, 44.046261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498119, -0.022296, -0.866822,
		-0.727643, -0.532956, 0.431848,
		-0.471607, 0.845849, 0.249253,
		35.019161, 27.963432, 44.121037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638721, 27.265383, 43.678879>,  <35.349289, 27.371340, 43.946560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638721, 27.265383, 43.678879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649151, 27.660017, 43.743340>,  <34.655407, 27.896797, 43.782017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649151, 27.660017, 43.743340>,  <34.638721, 27.265383, 43.678879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649151, 27.660017, 43.743340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428403, 0.156681, -0.889900,
		-0.903211, -0.045839, 0.426741,
		0.026070, 0.986585, 0.161154,
		34.656971, 27.955992, 43.791687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896862, 27.571434, 43.722408>,  <34.638721, 27.265383, 43.678879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896862, 27.571434, 43.722408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127800, 27.889555, 43.648472>,  <34.266365, 28.080427, 43.604111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127800, 27.889555, 43.648472>,  <33.896862, 27.571434, 43.722408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127800, 27.889555, 43.648472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588751, 0.248649, -0.769120,
		-0.565722, 0.552874, 0.611791,
		0.577348, 0.795301, -0.184839,
		34.301003, 28.128145, 43.593021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447578, 28.098869, 43.503857>,  <33.896862, 27.571434, 43.722408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447578, 28.098869, 43.503857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794342, 28.243065, 43.366154>,  <34.002399, 28.329582, 43.283531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794342, 28.243065, 43.366154>,  <33.447578, 28.098869, 43.503857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794342, 28.243065, 43.366154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489598, 0.486100, -0.723879,
		-0.093605, 0.796087, 0.597899,
		0.866909, 0.360489, -0.344261,
		34.054417, 28.351212, 43.262875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299915, 28.690100, 43.368935>,  <33.447578, 28.098869, 43.503857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299915, 28.690100, 43.368935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633457, 28.623785, 43.158333>,  <33.833580, 28.583996, 43.031971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633457, 28.623785, 43.158333>,  <33.299915, 28.690100, 43.368935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633457, 28.623785, 43.158333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456295, 0.329726, -0.826484,
		0.310623, 0.929406, 0.199295,
		0.833852, -0.165788, -0.526504,
		33.883614, 28.574049, 43.000381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552723, 29.317013, 42.994881>,  <33.299915, 28.690100, 43.368935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552723, 29.317013, 42.994881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666203, 28.979315, 42.812996>,  <33.734291, 28.776695, 42.703865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666203, 28.979315, 42.812996>,  <33.552723, 29.317013, 42.994881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666203, 28.979315, 42.812996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377024, 0.337802, -0.862405,
		0.881685, 0.416101, -0.222467,
		0.283698, -0.844245, -0.454715,
		33.751312, 28.726042, 42.676582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888466, 29.585693, 42.447617>,  <33.552723, 29.317013, 42.994881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888466, 29.585693, 42.447617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807545, 29.202751, 42.365116>,  <33.758991, 28.972986, 42.315617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807545, 29.202751, 42.365116>,  <33.888466, 29.585693, 42.447617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807545, 29.202751, 42.365116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336832, 0.265776, -0.903275,
		0.919574, -0.113267, -0.376237,
		-0.202306, -0.957358, -0.206248,
		33.746853, 28.915545, 42.303242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342480, 29.367468, 41.906158>,  <33.888466, 29.585693, 42.447617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342480, 29.367468, 41.906158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004436, 29.154863, 41.883205>,  <33.801613, 29.027300, 41.869434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004436, 29.154863, 41.883205>,  <34.342480, 29.367468, 41.906158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004436, 29.154863, 41.883205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170291, 0.369394, -0.913536,
		0.506755, -0.762261, -0.402688,
		-0.845104, -0.531513, -0.057386,
		33.750904, 28.995409, 41.865990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311752, 29.194057, 41.198074>,  <34.342480, 29.367468, 41.906158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311752, 29.194057, 41.198074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950653, 29.072325, 41.319683>,  <33.733994, 28.999285, 41.392647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950653, 29.072325, 41.319683>,  <34.311752, 29.194057, 41.198074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950653, 29.072325, 41.319683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378309, 0.225258, -0.897854,
		0.204759, -0.925550, -0.318481,
		-0.902749, -0.304328, 0.304020,
		33.679829, 28.981026, 41.410889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079494, 28.771639, 40.686184>,  <34.311752, 29.194057, 41.198074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079494, 28.771639, 40.686184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737057, 28.893526, 40.853161>,  <33.531593, 28.966660, 40.953346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737057, 28.893526, 40.853161>,  <34.079494, 28.771639, 40.686184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737057, 28.893526, 40.853161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373482, 0.193544, -0.907222,
		-0.357241, -0.932570, -0.051884,
		-0.856090, 0.304720, 0.417440,
		33.480228, 28.984941, 40.978394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468079, 28.573357, 40.292343>,  <34.079494, 28.771639, 40.686184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468079, 28.573357, 40.292343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333588, 28.892736, 40.492115>,  <33.252895, 29.084364, 40.611977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333588, 28.892736, 40.492115>,  <33.468079, 28.573357, 40.292343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333588, 28.892736, 40.492115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493369, 0.302382, -0.815569,
		-0.802210, -0.520617, 0.292263,
		-0.336224, 0.798451, 0.499430,
		33.232719, 29.132271, 40.641945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715061, 28.591393, 40.168961>,  <33.468079, 28.573357, 40.292343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715061, 28.591393, 40.168961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848377, 28.953135, 40.275589>,  <32.928368, 29.170179, 40.339565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848377, 28.953135, 40.275589>,  <32.715061, 28.591393, 40.168961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848377, 28.953135, 40.275589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387612, 0.389166, -0.835647,
		-0.859461, 0.175191, 0.480245,
		0.333293, 0.904355, 0.266567,
		32.948364, 29.224442, 40.355560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128880, 29.113802, 39.980446>,  <32.715061, 28.591393, 40.168961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128880, 29.113802, 39.980446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427628, 29.371426, 40.046619>,  <32.606876, 29.525999, 40.086323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427628, 29.371426, 40.046619>,  <32.128880, 29.113802, 39.980446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427628, 29.371426, 40.046619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475887, 0.691467, -0.543511,
		-0.464447, 0.327205, 0.822937,
		0.746874, 0.644057, 0.165437,
		32.651691, 29.564642, 40.096252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861847, 29.886007, 40.107441>,  <32.128880, 29.113802, 39.980446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861847, 29.886007, 40.107441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246613, 29.936678, 40.010551>,  <32.477470, 29.967081, 39.952415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246613, 29.936678, 40.010551>,  <31.861847, 29.886007, 40.107441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246613, 29.936678, 40.010551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260513, 0.693217, -0.672000,
		0.082790, 0.709510, 0.699816,
		0.961914, 0.126676, -0.242228,
		32.535187, 29.974680, 39.937881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792601, 30.526516, 39.863689>,  <31.861847, 29.886007, 40.107441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792601, 30.526516, 39.863689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157383, 30.409246, 39.748875>,  <32.376251, 30.338884, 39.679985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157383, 30.409246, 39.748875>,  <31.792601, 30.526516, 39.863689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157383, 30.409246, 39.748875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011434, 0.681156, -0.732049,
		0.410132, 0.670877, 0.617831,
		0.911954, -0.293172, -0.287035,
		32.430969, 30.321295, 39.662766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166000, 31.142651, 39.663834>,  <31.792601, 30.526516, 39.863689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166000, 31.142651, 39.663834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358391, 30.841082, 39.484829>,  <32.473824, 30.660141, 39.377426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358391, 30.841082, 39.484829>,  <32.166000, 31.142651, 39.663834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358391, 30.841082, 39.484829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012934, 0.516475, -0.856205,
		0.876637, 0.406027, 0.258164,
		0.480978, -0.753920, -0.447509,
		32.502686, 30.614906, 39.350574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799877, 31.449202, 39.326275>,  <32.166000, 31.142651, 39.663834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799877, 31.449202, 39.326275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719963, 31.103235, 39.142097>,  <32.672016, 30.895655, 39.031593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719963, 31.103235, 39.142097>,  <32.799877, 31.449202, 39.326275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719963, 31.103235, 39.142097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162379, 0.492643, -0.854948,
		0.966292, -0.096039, -0.238866,
		-0.199784, -0.864916, -0.460442,
		32.660027, 30.843760, 39.003963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342155, 31.304697, 38.778191>,  <32.799877, 31.449202, 39.326275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342155, 31.304697, 38.778191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006027, 31.113792, 38.675362>,  <32.804352, 30.999249, 38.613663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006027, 31.113792, 38.675362>,  <33.342155, 31.304697, 38.778191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006027, 31.113792, 38.675362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099348, 0.330604, -0.938526,
		0.532913, -0.814199, -0.230397,
		-0.840317, -0.477263, -0.257072,
		32.753933, 30.970613, 38.598240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550507, 31.010384, 38.202347>,  <33.342155, 31.304697, 38.778191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550507, 31.010384, 38.202347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151699, 30.980536, 38.194462>,  <32.912415, 30.962627, 38.189732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151699, 30.980536, 38.194462>,  <33.550507, 31.010384, 38.202347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151699, 30.980536, 38.194462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004424, 0.310278, -0.950636,
		0.077052, -0.947713, -0.309682,
		-0.997018, -0.074618, -0.019715,
		32.852592, 30.958149, 38.188549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726166, 30.465860, 38.710533>,  <33.550507, 31.010384, 38.202347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726166, 30.465860, 38.710533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038517, 30.676394, 38.575947>,  <34.225925, 30.802713, 38.495197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038517, 30.676394, 38.575947>,  <33.726166, 30.465860, 38.710533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038517, 30.676394, 38.575947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593697, -0.457748, 0.661808,
		0.194318, -0.716546, -0.669927,
		0.780874, 0.526335, -0.336462,
		34.272778, 30.834293, 38.475010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164803, 29.887152, 38.739422>,  <33.726166, 30.465860, 38.710533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164803, 29.887152, 38.739422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373039, 30.227674, 38.713299>,  <34.497982, 30.431988, 38.697624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373039, 30.227674, 38.713299>,  <34.164803, 29.887152, 38.739422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373039, 30.227674, 38.713299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709936, -0.389107, 0.587015,
		0.474316, -0.351960, -0.806937,
		0.520591, 0.851305, -0.065309,
		34.529217, 30.483067, 38.693707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790043, 29.733068, 38.516167>,  <34.164803, 29.887152, 38.739422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790043, 29.733068, 38.516167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831715, 30.089203, 38.693459>,  <34.856716, 30.302883, 38.799831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831715, 30.089203, 38.693459>,  <34.790043, 29.733068, 38.516167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831715, 30.089203, 38.693459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660612, -0.395085, 0.638357,
		0.743464, 0.226300, -0.629324,
		0.104176, 0.890335, 0.443228,
		34.862968, 30.356304, 38.826427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493099, 29.768614, 38.705971>,  <34.790043, 29.733068, 38.516167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493099, 29.768614, 38.705971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313400, 30.029039, 38.950691>,  <35.205582, 30.185295, 39.097523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313400, 30.029039, 38.950691>,  <35.493099, 29.768614, 38.705971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313400, 30.029039, 38.950691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587149, -0.300980, 0.751443,
		0.673376, 0.696798, -0.247058,
		-0.449245, 0.651063, 0.611797,
		35.178627, 30.224358, 39.134232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019520, 30.020218, 39.125401>,  <35.493099, 29.768614, 38.705971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019520, 30.020218, 39.125401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689358, 30.132183, 39.321503>,  <35.491261, 30.199362, 39.439163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689358, 30.132183, 39.321503>,  <36.019520, 30.020218, 39.125401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689358, 30.132183, 39.321503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487653, -0.084013, 0.868985,
		0.284430, 0.956342, -0.067156,
		-0.825405, 0.279914, 0.490259,
		35.441734, 30.216158, 39.468582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286240, 30.586012, 39.581638>,  <36.019520, 30.020218, 39.125401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286240, 30.586012, 39.581638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959007, 30.422386, 39.743336>,  <35.762669, 30.324211, 39.840355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959007, 30.422386, 39.743336>,  <36.286240, 30.586012, 39.581638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959007, 30.422386, 39.743336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501111, -0.162111, 0.850063,
		-0.282198, 0.897990, 0.337606,
		-0.818078, -0.409064, 0.404245,
		35.713585, 30.299667, 39.864609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432331, 30.762169, 40.245831>,  <36.286240, 30.586012, 39.581638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432331, 30.762169, 40.245831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104153, 30.543642, 40.313244>,  <35.907246, 30.412525, 40.353691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104153, 30.543642, 40.313244>,  <36.432331, 30.762169, 40.245831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104153, 30.543642, 40.313244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392386, -0.323671, 0.860971,
		-0.415813, 0.772512, 0.479922,
		-0.820447, -0.546317, 0.168536,
		35.858017, 30.379747, 40.363804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482845, 30.672384, 40.992035>,  <36.432331, 30.762169, 40.245831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482845, 30.672384, 40.992035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213207, 30.399609, 40.878506>,  <36.051426, 30.235943, 40.810387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213207, 30.399609, 40.878506>,  <36.482845, 30.672384, 40.992035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213207, 30.399609, 40.878506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106341, -0.469846, 0.876320,
		-0.730950, 0.560541, 0.389239,
		-0.674095, -0.681937, -0.283826,
		36.010979, 30.195028, 40.793358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040703, 30.621998, 41.506794>,  <36.482845, 30.672384, 40.992035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040703, 30.621998, 41.506794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026134, 30.272345, 41.313065>,  <36.017395, 30.062553, 41.196827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026134, 30.272345, 41.313065>,  <36.040703, 30.621998, 41.506794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026134, 30.272345, 41.313065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272186, -0.474997, 0.836835,
		-0.961555, -0.101351, 0.255225,
		-0.036417, -0.874131, -0.484322,
		36.015209, 30.010105, 41.167767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703785, 30.104784, 41.946571>,  <36.040703, 30.621998, 41.506794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703785, 30.104784, 41.946571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936157, 29.891518, 41.700562>,  <36.075581, 29.763557, 41.552956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936157, 29.891518, 41.700562>,  <35.703785, 30.104784, 41.946571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936157, 29.891518, 41.700562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254133, -0.599019, 0.759337,
		-0.773264, -0.597419, -0.212492,
		0.580929, -0.533167, -0.615024,
		36.110435, 29.731567, 41.516056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685223, 29.378345, 42.154961>,  <35.703785, 30.104784, 41.946571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685223, 29.378345, 42.154961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003025, 29.403109, 41.913326>,  <36.193707, 29.417967, 41.768345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003025, 29.403109, 41.913326>,  <35.685223, 29.378345, 42.154961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003025, 29.403109, 41.913326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549793, -0.495723, 0.672299,
		-0.257837, -0.866271, -0.427895,
		0.794511, 0.061910, -0.604086,
		36.241379, 29.421680, 41.732101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836811, 28.614031, 42.088158>,  <35.685223, 29.378345, 42.154961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836811, 28.614031, 42.088158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137886, 28.866201, 42.012234>,  <36.318531, 29.017504, 41.966679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137886, 28.866201, 42.012234>,  <35.836811, 28.614031, 42.088158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137886, 28.866201, 42.012234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618297, -0.577793, 0.532788,
		0.226213, -0.518381, -0.824687,
		0.752686, 0.630425, -0.189809,
		36.363693, 29.055328, 41.955292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363293, 28.304480, 41.924244>,  <35.836811, 28.614031, 42.088158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363293, 28.304480, 41.924244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555508, 28.645145, 42.007915>,  <36.670837, 28.849545, 42.058121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555508, 28.645145, 42.007915>,  <36.363293, 28.304480, 41.924244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555508, 28.645145, 42.007915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579824, -0.487494, 0.652804,
		0.657944, -0.192406, -0.728072,
		0.480534, 0.851663, 0.209182,
		36.699669, 28.900644, 42.070671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049026, 28.034206, 42.015526>,  <36.363293, 28.304480, 41.924244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049026, 28.034206, 42.015526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042660, 28.392389, 42.193470>,  <37.038837, 28.607300, 42.300236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042660, 28.392389, 42.193470>,  <37.049026, 28.034206, 42.015526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042660, 28.392389, 42.193470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608338, -0.344418, 0.715053,
		0.793518, 0.282009, -0.539258,
		-0.015921, 0.895459, 0.444859,
		37.037884, 28.661028, 42.326927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749989, 28.238443, 42.115578>,  <37.049026, 28.034206, 42.015526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749989, 28.238443, 42.115578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504078, 28.426735, 42.368710>,  <37.356533, 28.539709, 42.520588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504078, 28.426735, 42.368710>,  <37.749989, 28.238443, 42.115578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504078, 28.426735, 42.368710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442091, -0.458793, 0.770756,
		0.653153, 0.753607, 0.073949,
		-0.614774, 0.470729, 0.632825,
		37.319645, 28.567953, 42.558556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231316, 28.406944, 42.644451>,  <37.749989, 28.238443, 42.115578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231316, 28.406944, 42.644451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870750, 28.457928, 42.809959>,  <37.654411, 28.488518, 42.909264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870750, 28.457928, 42.809959>,  <38.231316, 28.406944, 42.644451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870750, 28.457928, 42.809959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352957, -0.337139, 0.872788,
		0.250741, 0.932787, 0.258915,
		-0.901416, 0.127458, 0.413768,
		37.600327, 28.496164, 42.934090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337620, 28.592197, 43.330990>,  <38.231316, 28.406944, 42.644451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337620, 28.592197, 43.330990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954845, 28.483267, 43.371220>,  <37.725182, 28.417908, 43.395359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954845, 28.483267, 43.371220>,  <38.337620, 28.592197, 43.330990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954845, 28.483267, 43.371220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136804, -0.117451, 0.983611,
		-0.256050, 0.955010, 0.149648,
		-0.956934, -0.272326, 0.100576,
		37.667767, 28.401569, 43.401394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196060, 28.772642, 44.022377>,  <38.337620, 28.592197, 43.330990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196060, 28.772642, 44.022377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902645, 28.518244, 43.926521>,  <37.726597, 28.365604, 43.869007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902645, 28.518244, 43.926521>,  <38.196060, 28.772642, 44.022377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902645, 28.518244, 43.926521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021143, -0.373774, 0.927279,
		-0.679316, 0.675130, 0.287625,
		-0.733541, -0.635997, -0.239637,
		37.682583, 28.327444, 43.854630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647255, 28.832247, 44.573315>,  <38.196060, 28.772642, 44.022377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647255, 28.832247, 44.573315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582718, 28.476561, 44.402077>,  <37.543995, 28.263149, 44.299335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582718, 28.476561, 44.402077>,  <37.647255, 28.832247, 44.573315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582718, 28.476561, 44.402077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038585, -0.427760, 0.903068,
		-0.986144, 0.162221, 0.034705,
		-0.161342, -0.889216, -0.428092,
		37.534317, 28.209795, 44.273647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096035, 28.586859, 44.931770>,  <37.647255, 28.832247, 44.573315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096035, 28.586859, 44.931770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307201, 28.285681, 44.774609>,  <37.433903, 28.104973, 44.680313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307201, 28.285681, 44.774609>,  <37.096035, 28.586859, 44.931770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307201, 28.285681, 44.774609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121988, -0.390601, 0.912442,
		-0.840488, -0.529625, -0.114355,
		0.527919, -0.752947, -0.392904,
		37.465576, 28.059797, 44.656738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994419, 28.174307, 45.354019>,  <37.096035, 28.586859, 44.931770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994419, 28.174307, 45.354019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294239, 27.985958, 45.167915>,  <37.474129, 27.872950, 45.056255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294239, 27.985958, 45.167915>,  <36.994419, 28.174307, 45.354019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294239, 27.985958, 45.167915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102866, -0.611460, 0.784561,
		-0.653915, -0.635921, -0.409879,
		0.749543, -0.470873, -0.465257,
		37.519104, 27.844696, 45.028339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849537, 27.439344, 45.450531>,  <36.994419, 28.174307, 45.354019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849537, 27.439344, 45.450531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241379, 27.480762, 45.381660>,  <37.476486, 27.505613, 45.340340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241379, 27.480762, 45.381660>,  <36.849537, 27.439344, 45.450531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241379, 27.480762, 45.381660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200775, -0.536191, 0.819871,
		-0.007426, -0.837722, -0.546047,
		0.979609, 0.103544, -0.172175,
		37.535263, 27.511826, 45.330009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123753, 26.755831, 45.660076>,  <36.849537, 27.439344, 45.450531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123753, 26.755831, 45.660076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424042, 27.020075, 45.659019>,  <37.604218, 27.178621, 45.658386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424042, 27.020075, 45.659019>,  <37.123753, 26.755831, 45.660076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424042, 27.020075, 45.659019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316457, -0.356110, 0.879227,
		0.579885, -0.660894, -0.476395,
		0.750725, 0.660610, -0.002642,
		37.649258, 27.218258, 45.658226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724491, 26.422977, 45.795479>,  <37.123753, 26.755831, 45.660076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724491, 26.422977, 45.795479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797348, 26.805130, 45.888493>,  <37.841061, 27.034422, 45.944302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797348, 26.805130, 45.888493>,  <37.724491, 26.422977, 45.795479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797348, 26.805130, 45.888493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344214, -0.283479, 0.895074,
		0.921055, -0.082987, -0.380488,
		0.182139, 0.955381, 0.232535,
		37.851990, 27.091743, 45.958252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260258, 26.276075, 46.246151>,  <37.724491, 26.422977, 45.795479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260258, 26.276075, 46.246151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140923, 26.654341, 46.297874>,  <38.069321, 26.881300, 46.328907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140923, 26.654341, 46.297874>,  <38.260258, 26.276075, 46.246151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140923, 26.654341, 46.297874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140444, -0.090510, 0.985943,
		0.944072, 0.312302, -0.105810,
		-0.298335, 0.945661, 0.129309,
		38.051422, 26.938040, 46.336666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723461, 26.552094, 46.719803>,  <38.260258, 26.276075, 46.246151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723461, 26.552094, 46.719803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422604, 26.812260, 46.762222>,  <38.242088, 26.968359, 46.787674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422604, 26.812260, 46.762222>,  <38.723461, 26.552094, 46.719803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422604, 26.812260, 46.762222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285804, 0.176938, 0.941812,
		0.593802, 0.738685, -0.318973,
		-0.752140, 0.650414, 0.106053,
		38.196960, 27.007383, 46.794037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949661, 27.150337, 47.075436>,  <38.723461, 26.552094, 46.719803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949661, 27.150337, 47.075436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553955, 27.169228, 47.130764>,  <38.316532, 27.180561, 47.163960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553955, 27.169228, 47.130764>,  <38.949661, 27.150337, 47.075436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553955, 27.169228, 47.130764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146155, 0.315984, 0.937440,
		0.000564, 0.947589, -0.319493,
		-0.989262, 0.047225, 0.138317,
		38.257175, 27.183395, 47.172260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880447, 27.712591, 47.551113>,  <38.949661, 27.150337, 47.075436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880447, 27.712591, 47.551113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545258, 27.496716, 47.583435>,  <38.344143, 27.367189, 47.602829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545258, 27.496716, 47.583435>,  <38.880447, 27.712591, 47.551113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545258, 27.496716, 47.583435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015017, 0.170819, 0.985188,
		-0.545499, 0.824351, -0.151247,
		-0.837977, -0.539691, 0.080802,
		38.293865, 27.334808, 47.607677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535488, 28.168995, 48.070782>,  <38.880447, 27.712591, 47.551113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535488, 28.168995, 48.070782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378902, 27.800993, 48.063309>,  <38.284950, 27.580193, 48.058826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378902, 27.800993, 48.063309>,  <38.535488, 28.168995, 48.070782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378902, 27.800993, 48.063309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015094, -0.013878, 0.999790,
		-0.920070, 0.391664, -0.008453,
		-0.391464, -0.920004, -0.018681,
		38.261463, 27.524992, 48.057705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071510, 28.139400, 48.682652>,  <38.535488, 28.168995, 48.070782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071510, 28.139400, 48.682652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135773, 27.757511, 48.582497>,  <38.174332, 27.528378, 48.522404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135773, 27.757511, 48.582497>,  <38.071510, 28.139400, 48.682652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135773, 27.757511, 48.582497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201214, -0.216675, 0.955282,
		-0.966283, -0.203854, 0.157294,
		0.160657, -0.954723, -0.250388,
		38.183971, 27.471094, 48.507381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467827, 27.768799, 49.020859>,  <38.071510, 28.139400, 48.682652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467827, 27.768799, 49.020859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769184, 27.514437, 48.953899>,  <37.949997, 27.361818, 48.913723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769184, 27.514437, 48.953899>,  <37.467827, 27.768799, 49.020859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769184, 27.514437, 48.953899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066049, -0.180102, 0.981428,
		-0.654245, -0.750457, -0.093687,
		0.753392, -0.635907, -0.167398,
		37.995201, 27.323666, 48.903679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313137, 27.171291, 49.305866>,  <37.467827, 27.768799, 49.020859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313137, 27.171291, 49.305866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712151, 27.143719, 49.300529>,  <37.951557, 27.127174, 49.297325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712151, 27.143719, 49.300529>,  <37.313137, 27.171291, 49.305866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712151, 27.143719, 49.300529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000045, -0.189439, 0.981892,
		-0.070211, -0.979470, -0.188968,
		0.997532, -0.068931, -0.013345,
		38.011410, 27.123039, 49.296528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478508, 26.680462, 49.722450>,  <37.313137, 27.171291, 49.305866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478508, 26.680462, 49.722450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839035, 26.853565, 49.715046>,  <38.055351, 26.957428, 49.710602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839035, 26.853565, 49.715046>,  <37.478508, 26.680462, 49.722450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839035, 26.853565, 49.715046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147350, -0.266138, 0.952606,
		0.407322, -0.861331, -0.303642,
		0.901320, 0.432759, -0.018513,
		38.109432, 26.983393, 49.709492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932587, 26.176693, 50.128139>,  <37.478508, 26.680462, 49.722450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932587, 26.176693, 50.128139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105049, 26.536396, 50.098618>,  <38.208527, 26.752218, 50.080902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105049, 26.536396, 50.098618>,  <37.932587, 26.176693, 50.128139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105049, 26.536396, 50.098618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285908, -0.058575, 0.956465,
		0.855783, -0.433484, -0.282359,
		0.431152, 0.899255, -0.073809,
		38.234394, 26.806173, 50.076473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717468, 26.203432, 50.348457>,  <37.932587, 26.176693, 50.128139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717468, 26.203432, 50.348457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573963, 26.574974, 50.385384>,  <38.487862, 26.797899, 50.407539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573963, 26.574974, 50.385384>,  <38.717468, 26.203432, 50.348457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573963, 26.574974, 50.385384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426380, 0.075096, 0.901422,
		0.830356, 0.362756, -0.422986,
		-0.358761, 0.928853, 0.092315,
		38.466335, 26.853630, 50.413078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144932, 26.459049, 50.912388>,  <38.717468, 26.203432, 50.348457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144932, 26.459049, 50.912388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832516, 26.708290, 50.895802>,  <38.645065, 26.857834, 50.885849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832516, 26.708290, 50.895802>,  <39.144932, 26.459049, 50.912388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832516, 26.708290, 50.895802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105234, 0.196774, 0.974785,
		0.615550, 0.756983, -0.219260,
		-0.781040, 0.623103, -0.041464,
		38.598202, 26.895222, 50.883362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413891, 27.023848, 51.188538>,  <39.144932, 26.459049, 50.912388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413891, 27.023848, 51.188538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016537, 27.031864, 51.233749>,  <38.778122, 27.036674, 51.260876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016537, 27.031864, 51.233749>,  <39.413891, 27.023848, 51.188538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016537, 27.031864, 51.233749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114508, 0.241877, 0.963526,
		-0.008027, 0.970100, -0.242573,
		-0.993390, 0.020042, 0.113026,
		38.718521, 27.037876, 51.267658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280926, 27.395086, 51.818985>,  <39.413891, 27.023848, 51.188538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280926, 27.395086, 51.818985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917229, 27.236036, 51.769711>,  <38.699009, 27.140606, 51.740147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917229, 27.236036, 51.769711>,  <39.280926, 27.395086, 51.818985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917229, 27.236036, 51.769711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149940, 0.036779, 0.988011,
		-0.388325, 0.916811, -0.093060,
		-0.909242, -0.397623, -0.123184,
		38.644455, 27.116749, 51.732754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790092, 27.753719, 51.397400>,  <39.280926, 27.395086, 51.818985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790092, 27.753719, 51.397400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053986, 28.027840, 51.520763>,  <39.212322, 28.192312, 51.594780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053986, 28.027840, 51.520763>,  <38.790092, 27.753719, 51.397400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053986, 28.027840, 51.520763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191592, 0.243449, -0.950802,
		-0.726667, 0.686364, 0.029313,
		0.659733, 0.685300, 0.308409,
		39.251904, 28.233429, 51.613285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620625, 28.450300, 51.180233>,  <38.790092, 27.753719, 51.397400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620625, 28.450300, 51.180233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009018, 28.520479, 51.245247>,  <39.242054, 28.562588, 51.284256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009018, 28.520479, 51.245247>,  <38.620625, 28.450300, 51.180233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009018, 28.520479, 51.245247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045956, 0.530052, -0.846719,
		-0.234707, 0.829616, 0.506607,
		0.970979, 0.175449, 0.162533,
		39.300312, 28.573114, 51.294006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764965, 29.192051, 51.076107>,  <38.620625, 28.450300, 51.180233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764965, 29.192051, 51.076107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103931, 28.994473, 50.998241>,  <39.307312, 28.875925, 50.951523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103931, 28.994473, 50.998241>,  <38.764965, 29.192051, 51.076107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103931, 28.994473, 50.998241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100286, 0.508979, -0.854917,
		0.521367, 0.704951, 0.480855,
		0.847419, -0.493948, -0.194668,
		39.358158, 28.846289, 50.939842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991310, 29.649305, 50.681759>,  <38.764965, 29.192051, 51.076107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991310, 29.649305, 50.681759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265682, 29.361229, 50.640148>,  <39.430305, 29.188383, 50.615181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265682, 29.361229, 50.640148>,  <38.991310, 29.649305, 50.681759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265682, 29.361229, 50.640148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345675, 0.448297, -0.824342,
		0.640318, 0.529483, 0.556453,
		0.685931, -0.720193, -0.104023,
		39.471462, 29.145170, 50.608940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659389, 29.875092, 50.575756>,  <38.991310, 29.649305, 50.681759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659389, 29.875092, 50.575756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634518, 29.527884, 50.378708>,  <39.619595, 29.319559, 50.260479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634518, 29.527884, 50.378708>,  <39.659389, 29.875092, 50.575756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634518, 29.527884, 50.378708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345027, 0.444453, -0.826691,
		0.936531, -0.221368, 0.271856,
		-0.062176, -0.868019, -0.492622,
		39.615864, 29.267477, 50.230923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164543, 29.857306, 50.132896>,  <39.659389, 29.875092, 50.575756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164543, 29.857306, 50.132896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995190, 29.532160, 49.972900>,  <39.893578, 29.337072, 49.876904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995190, 29.532160, 49.972900>,  <40.164543, 29.857306, 50.132896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995190, 29.532160, 49.972900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183399, 0.355474, -0.916517,
		0.887191, -0.461400, -0.001424,
		-0.423387, -0.812865, -0.399993,
		39.868172, 29.288300, 49.852901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640385, 29.651028, 49.567062>,  <40.164543, 29.857306, 50.132896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640385, 29.651028, 49.567062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283825, 29.488892, 49.485958>,  <40.069889, 29.391609, 49.437294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283825, 29.488892, 49.485958>,  <40.640385, 29.651028, 49.567062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283825, 29.488892, 49.485958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063229, 0.331786, -0.941233,
		0.448796, -0.851831, -0.270123,
		-0.891395, -0.405342, -0.202765,
		40.016407, 29.367289, 49.425129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732143, 29.325436, 48.908024>,  <40.640385, 29.651028, 49.567062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732143, 29.325436, 48.908024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332443, 29.310989, 48.913486>,  <40.092621, 29.302322, 48.916763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332443, 29.310989, 48.913486>,  <40.732143, 29.325436, 48.908024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332443, 29.310989, 48.913486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019889, 0.178389, -0.983759,
		0.033090, -0.983297, -0.178974,
		-0.999254, -0.036112, 0.013654,
		40.032665, 29.300156, 48.917583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457523, 28.920376, 48.289562>,  <40.732143, 29.325436, 48.908024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457523, 28.920376, 48.289562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149719, 29.144211, 48.412666>,  <39.965038, 29.278513, 48.486526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149719, 29.144211, 48.412666>,  <40.457523, 28.920376, 48.289562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149719, 29.144211, 48.412666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294355, 0.116881, -0.948522,
		-0.566754, -0.820487, 0.074777,
		-0.769510, 0.559589, 0.307757,
		39.918865, 29.312088, 48.504993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892677, 28.726521, 47.865047>,  <40.457523, 28.920376, 48.289562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892677, 28.726521, 47.865047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815876, 29.092672, 48.006588>,  <39.769794, 29.312363, 48.091515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815876, 29.092672, 48.006588>,  <39.892677, 28.726521, 47.865047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815876, 29.092672, 48.006588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330285, 0.279258, -0.901625,
		-0.924146, -0.289991, 0.248717,
		-0.192007, 0.915380, 0.353854,
		39.758274, 29.367287, 48.112743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233463, 28.855661, 47.580585>,  <39.892677, 28.726521, 47.865047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233463, 28.855661, 47.580585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393089, 29.204567, 47.693657>,  <39.488865, 29.413910, 47.761501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393089, 29.204567, 47.693657>,  <39.233463, 28.855661, 47.580585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393089, 29.204567, 47.693657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294931, 0.414014, -0.861167,
		-0.868196, 0.260289, 0.422475,
		0.399063, 0.872262, 0.282678,
		39.512810, 29.466246, 47.778461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730446, 29.359709, 47.512974>,  <39.233463, 28.855661, 47.580585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730446, 29.359709, 47.512974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085857, 29.543158, 47.507553>,  <39.299103, 29.653227, 47.504299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085857, 29.543158, 47.507553>,  <38.730446, 29.359709, 47.512974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085857, 29.543158, 47.507553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265115, 0.489075, -0.830975,
		-0.374478, 0.741937, 0.556145,
		0.888527, 0.458624, -0.013551,
		39.352417, 29.680744, 47.503487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618736, 29.966162, 47.315620>,  <38.730446, 29.359709, 47.512974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618736, 29.966162, 47.315620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005630, 29.917046, 47.226730>,  <39.237766, 29.887577, 47.173397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005630, 29.917046, 47.226730>,  <38.618736, 29.966162, 47.315620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005630, 29.917046, 47.226730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131647, 0.505871, -0.852504,
		0.217095, 0.853825, 0.473130,
		0.967232, -0.122788, -0.222226,
		39.295799, 29.880209, 47.160061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883327, 30.551796, 47.149155>,  <38.618736, 29.966162, 47.315620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883327, 30.551796, 47.149155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143570, 30.301270, 46.977371>,  <39.299717, 30.150953, 46.874302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143570, 30.301270, 46.977371>,  <38.883327, 30.551796, 47.149155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143570, 30.301270, 46.977371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121308, 0.472540, -0.872921,
		0.749661, 0.620027, 0.231462,
		0.650609, -0.626317, -0.429459,
		39.338753, 30.113375, 46.848534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257397, 30.951302, 46.802032>,  <38.883327, 30.551796, 47.149155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257397, 30.951302, 46.802032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350990, 30.596981, 46.641727>,  <39.407146, 30.384388, 46.545544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350990, 30.596981, 46.641727>,  <39.257397, 30.951302, 46.802032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350990, 30.596981, 46.641727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000932, 0.411998, -0.911184,
		0.972241, 0.213573, 0.095574,
		0.233981, -0.885801, -0.400760,
		39.421185, 30.331242, 46.521500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633377, 31.160116, 46.224407>,  <39.257397, 30.951302, 46.802032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633377, 31.160116, 46.224407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530434, 30.778101, 46.165531>,  <39.468670, 30.548891, 46.130203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530434, 30.778101, 46.165531>,  <39.633377, 31.160116, 46.224407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530434, 30.778101, 46.165531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237113, 0.210081, -0.948495,
		0.936774, -0.209199, -0.280518,
		-0.257356, -0.955040, -0.147194,
		39.453228, 30.491589, 46.121372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997437, 31.034023, 45.621689>,  <39.633377, 31.160116, 46.224407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997437, 31.034023, 45.621689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718700, 30.748697, 45.651611>,  <39.551460, 30.577501, 45.669563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718700, 30.748697, 45.651611>,  <39.997437, 31.034023, 45.621689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718700, 30.748697, 45.651611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301721, 0.196924, -0.932837,
		0.650676, -0.672608, -0.352447,
		-0.696839, -0.713315, 0.074806,
		39.509647, 30.534702, 45.674053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081017, 30.527655, 45.075596>,  <39.997437, 31.034023, 45.621689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081017, 30.527655, 45.075596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697166, 30.495195, 45.183327>,  <39.466858, 30.475719, 45.247963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697166, 30.495195, 45.183327>,  <40.081017, 30.527655, 45.075596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697166, 30.495195, 45.183327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274879, 0.067365, -0.959116,
		0.059637, -0.994427, -0.086937,
		-0.959627, -0.081096, 0.269330,
		39.409279, 30.470852, 45.264126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946251, 30.095123, 44.646328>,  <40.081017, 30.527655, 45.075596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946251, 30.095123, 44.646328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587559, 30.227634, 44.763718>,  <39.372341, 30.307142, 44.834152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587559, 30.227634, 44.763718>,  <39.946251, 30.095123, 44.646328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587559, 30.227634, 44.763718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320538, -0.028920, -0.946794,
		-0.305166, -0.943089, 0.132121,
		-0.896733, 0.331279, 0.293471,
		39.318539, 30.327019, 44.851757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492908, 29.670620, 44.241135>,  <39.946251, 30.095123, 44.646328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492908, 29.670620, 44.241135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274998, 29.986656, 44.353546>,  <39.144253, 30.176277, 44.420994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274998, 29.986656, 44.353546>,  <39.492908, 29.670620, 44.241135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274998, 29.986656, 44.353546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383865, 0.063002, -0.921237,
		-0.745565, -0.609747, 0.268965,
		-0.544776, 0.790088, 0.281033,
		39.111565, 30.223682, 44.437855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791779, 29.613518, 43.992340>,  <39.492908, 29.670620, 44.241135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791779, 29.613518, 43.992340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817623, 30.007221, 44.058144>,  <38.833130, 30.243443, 44.097626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817623, 30.007221, 44.058144>,  <38.791779, 29.613518, 43.992340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817623, 30.007221, 44.058144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325476, 0.176622, -0.928908,
		-0.943340, 0.006478, 0.331765,
		0.064614, 0.984258, 0.164506,
		38.837006, 30.302498, 44.107494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133648, 29.943386, 43.869270>,  <38.791779, 29.613518, 43.992340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133648, 29.943386, 43.869270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391438, 30.246733, 43.830227>,  <38.546112, 30.428741, 43.806801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391438, 30.246733, 43.830227>,  <38.133648, 29.943386, 43.869270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391438, 30.246733, 43.830227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405821, 0.231060, -0.884263,
		-0.648042, 0.609500, 0.456675,
		0.644477, 0.758368, -0.097611,
		38.584782, 30.474243, 43.800945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633911, 30.565668, 43.708569>,  <38.133648, 29.943386, 43.869270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633911, 30.565668, 43.708569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003082, 30.675409, 43.600548>,  <38.224586, 30.741255, 43.535736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003082, 30.675409, 43.600548>,  <37.633911, 30.565668, 43.708569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003082, 30.675409, 43.600548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359277, 0.361920, -0.860194,
		-0.138263, 0.890923, 0.432597,
		0.922932, 0.274354, -0.270048,
		38.279961, 30.757715, 43.519535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558365, 31.295744, 43.463158>,  <37.633911, 30.565668, 43.708569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558365, 31.295744, 43.463158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896358, 31.147646, 43.308792>,  <38.099155, 31.058788, 43.216171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896358, 31.147646, 43.308792>,  <37.558365, 31.295744, 43.463158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896358, 31.147646, 43.308792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213712, 0.427717, -0.878285,
		0.490240, 0.824608, 0.282287,
		0.844980, -0.370243, -0.385913,
		38.149853, 31.036573, 43.193020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685318, 31.741106, 42.987720>,  <37.558365, 31.295744, 43.463158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685318, 31.741106, 42.987720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930542, 31.457066, 42.849205>,  <38.077675, 31.286640, 42.766098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930542, 31.457066, 42.849205>,  <37.685318, 31.741106, 42.987720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930542, 31.457066, 42.849205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060878, 0.394550, -0.916855,
		0.787688, 0.583168, 0.198653,
		0.613059, -0.710102, -0.346284,
		38.114460, 31.244036, 42.745319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085045, 32.051498, 42.446133>,  <37.685318, 31.741106, 42.987720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085045, 32.051498, 42.446133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181816, 31.664610, 42.415249>,  <38.239880, 31.432478, 42.396717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181816, 31.664610, 42.415249>,  <38.085045, 32.051498, 42.446133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181816, 31.664610, 42.415249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211292, 0.130177, -0.968715,
		0.947010, 0.218044, 0.235858,
		0.241926, -0.967218, -0.077208,
		38.254395, 31.374445, 42.392086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771042, 31.892937, 42.222672>,  <38.085045, 32.051498, 42.446133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771042, 31.892937, 42.222672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529030, 31.596714, 42.105698>,  <38.383823, 31.418982, 42.035515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529030, 31.596714, 42.105698>,  <38.771042, 31.892937, 42.222672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529030, 31.596714, 42.105698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192132, 0.220638, -0.956245,
		0.772675, -0.634741, 0.008792,
		-0.605027, -0.740556, -0.292436,
		38.347523, 31.374548, 42.017967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108879, 31.648188, 41.749878>,  <38.771042, 31.892937, 42.222672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108879, 31.648188, 41.749878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741787, 31.510693, 41.670258>,  <38.521534, 31.428196, 41.622486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741787, 31.510693, 41.670258>,  <39.108879, 31.648188, 41.749878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741787, 31.510693, 41.670258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123876, 0.228451, -0.965642,
		0.377401, -0.910854, -0.167074,
		-0.917727, -0.343738, -0.199051,
		38.466469, 31.407572, 41.610542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202156, 31.161772, 41.339092>,  <39.108879, 31.648188, 41.749878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202156, 31.161772, 41.339092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827652, 31.274639, 41.255371>,  <38.602951, 31.342360, 41.205139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827652, 31.274639, 41.255371>,  <39.202156, 31.161772, 41.339092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827652, 31.274639, 41.255371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258225, 0.148756, -0.954564,
		-0.238212, -0.947762, -0.212136,
		-0.936256, 0.282168, -0.209301,
		38.546776, 31.359289, 41.192581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036808, 30.847618, 40.731632>,  <39.202156, 31.161772, 41.339092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036808, 30.847618, 40.731632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782372, 31.153547, 40.772491>,  <38.629707, 31.337105, 40.797009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782372, 31.153547, 40.772491>,  <39.036808, 30.847618, 40.731632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782372, 31.153547, 40.772491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159490, 0.259851, -0.952387,
		-0.754950, -0.589514, -0.287271,
		-0.636093, 0.764821, 0.102152,
		38.591545, 31.382994, 40.803139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749111, 30.973484, 40.069969>,  <39.036808, 30.847618, 40.731632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749111, 30.973484, 40.069969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667706, 31.312584, 40.265888>,  <38.618862, 31.516043, 40.383438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667706, 31.312584, 40.265888>,  <38.749111, 30.973484, 40.069969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667706, 31.312584, 40.265888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006668, 0.501458, -0.865157,
		-0.979049, -0.172809, -0.107708,
		-0.203518, 0.847748, 0.489799,
		38.606651, 31.566908, 40.412827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374611, 31.372248, 39.640316>,  <38.749111, 30.973484, 40.069969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374611, 31.372248, 39.640316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450085, 31.665468, 39.901707>,  <38.495369, 31.841400, 40.058540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450085, 31.665468, 39.901707>,  <38.374611, 31.372248, 39.640316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450085, 31.665468, 39.901707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091946, 0.675693, -0.731427,
		-0.977723, 0.077928, 0.194897,
		0.188689, 0.733053, 0.653475,
		38.506691, 31.885384, 40.097748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995785, 31.979607, 39.431190>,  <38.374611, 31.372248, 39.640316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995785, 31.979607, 39.431190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328419, 32.098774, 39.618679>,  <38.528000, 32.170273, 39.731174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328419, 32.098774, 39.618679>,  <37.995785, 31.979607, 39.431190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328419, 32.098774, 39.618679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102242, 0.747414, -0.656444,
		-0.545900, 0.593815, 0.591081,
		0.831589, 0.297919, 0.468726,
		38.577896, 32.188148, 39.759296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963451, 32.629478, 39.271435>,  <37.995785, 31.979607, 39.431190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963451, 32.629478, 39.271435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340824, 32.592442, 39.398785>,  <38.567249, 32.570221, 39.475197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340824, 32.592442, 39.398785>,  <37.963451, 32.629478, 39.271435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340824, 32.592442, 39.398785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297800, 0.658808, -0.690859,
		-0.145785, 0.746591, 0.649113,
		0.943431, -0.092589, 0.318379,
		38.623852, 32.564663, 39.494297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284595, 33.333885, 39.078281>,  <37.963451, 32.629478, 39.271435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284595, 33.333885, 39.078281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602219, 33.120102, 39.194092>,  <38.792793, 32.991833, 39.263580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602219, 33.120102, 39.194092>,  <38.284595, 33.333885, 39.078281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602219, 33.120102, 39.194092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592055, 0.572209, -0.567492,
		0.137630, 0.622038, 0.770796,
		0.794058, -0.534458, 0.289528,
		38.840435, 32.959766, 39.280949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688511, 33.797695, 39.494991>,  <38.284595, 33.333885, 39.078281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688511, 33.797695, 39.494991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909176, 33.520687, 39.309052>,  <39.041576, 33.354485, 39.197487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909176, 33.520687, 39.309052>,  <38.688511, 33.797695, 39.494991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909176, 33.520687, 39.309052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510674, 0.721098, -0.468219,
		0.659453, 0.020913, 0.751455,
		0.551665, -0.692517, -0.464851,
		39.074677, 33.312931, 39.169598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311176, 34.135231, 39.459698>,  <38.688511, 33.797695, 39.494991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311176, 34.135231, 39.459698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347092, 33.851791, 39.179749>,  <39.368641, 33.681728, 39.011780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347092, 33.851791, 39.179749>,  <39.311176, 34.135231, 39.459698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347092, 33.851791, 39.179749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535728, 0.626754, -0.565839,
		0.839603, -0.324134, 0.435895,
		0.089791, -0.708601, -0.699873,
		39.374027, 33.639210, 38.969788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009975, 34.007996, 39.377071>,  <39.311176, 34.135231, 39.459698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009975, 34.007996, 39.377071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843201, 33.913105, 39.026100>,  <39.743134, 33.856171, 38.815517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843201, 33.913105, 39.026100>,  <40.009975, 34.007996, 39.377071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843201, 33.913105, 39.026100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521785, 0.727965, -0.444756,
		0.744246, -0.643267, -0.179739,
		-0.416940, -0.237223, -0.877432,
		39.718121, 33.841938, 38.762871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599197, 34.118507, 38.880501>,  <40.009975, 34.007996, 39.377071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599197, 34.118507, 38.880501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293369, 34.080814, 38.625458>,  <40.109871, 34.058201, 38.472431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293369, 34.080814, 38.625458>,  <40.599197, 34.118507, 38.880501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293369, 34.080814, 38.625458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549371, 0.422074, -0.721141,
		0.337070, -0.901651, -0.270941,
		-0.764575, -0.094228, -0.637610,
		40.063995, 34.052547, 38.434174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874229, 33.772396, 38.206085>,  <40.599197, 34.118507, 38.880501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874229, 33.772396, 38.206085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532860, 33.964928, 38.126102>,  <40.328037, 34.080448, 38.078114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532860, 33.964928, 38.126102>,  <40.874229, 33.772396, 38.206085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532860, 33.964928, 38.126102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461424, 0.519322, -0.719300,
		-0.242381, -0.706135, -0.665301,
		-0.853428, 0.481330, -0.199954,
		40.276833, 34.109325, 38.066116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951435, 33.852280, 37.480923>,  <40.874229, 33.772396, 38.206085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951435, 33.852280, 37.480923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701447, 34.130924, 37.621857>,  <40.551453, 34.298111, 37.706417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701447, 34.130924, 37.621857>,  <40.951435, 33.852280, 37.480923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701447, 34.130924, 37.621857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486813, 0.700615, -0.521682,
		-0.610262, -0.154515, -0.776985,
		-0.624974, 0.696609, 0.352339,
		40.513954, 34.339909, 37.727558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813469, 34.373390, 36.910221>,  <40.951435, 33.852280, 37.480923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813469, 34.373390, 36.910221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750984, 34.542866, 37.267117>,  <40.713493, 34.644550, 37.481255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750984, 34.542866, 37.267117>,  <40.813469, 34.373390, 36.910221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750984, 34.542866, 37.267117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601764, 0.757147, -0.254181,
		-0.783247, 0.497208, -0.373239,
		-0.156216, 0.423689, 0.892236,
		40.704121, 34.669971, 37.534786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776875, 35.172001, 36.857548>,  <40.813469, 34.373390, 36.910221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776875, 35.172001, 36.857548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951736, 35.111237, 37.212135>,  <41.056652, 35.074780, 37.424889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951736, 35.111237, 37.212135>,  <40.776875, 35.172001, 36.857548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951736, 35.111237, 37.212135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510667, 0.853267, -0.105614,
		-0.740348, 0.498858, 0.450584,
		0.437155, -0.151907, 0.886465,
		41.082882, 35.065666, 37.478073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817154, 35.656464, 37.428432>,  <40.776875, 35.172001, 36.857548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817154, 35.656464, 37.428432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182465, 35.496845, 37.395725>,  <41.401649, 35.401073, 37.376099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182465, 35.496845, 37.395725>,  <40.817154, 35.656464, 37.428432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182465, 35.496845, 37.395725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325429, 0.835513, -0.442735,
		0.244994, 0.377729, 0.892916,
		0.913277, -0.399048, -0.081772,
		41.456448, 35.377132, 37.371193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362652, 36.267178, 37.596386>,  <40.817154, 35.656464, 37.428432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362652, 36.267178, 37.596386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500065, 35.969341, 37.367451>,  <41.582512, 35.790638, 37.230091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500065, 35.969341, 37.367451>,  <41.362652, 36.267178, 37.596386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500065, 35.969341, 37.367451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568034, 0.650050, -0.504749,
		0.747880, -0.151711, 0.646266,
		0.343529, -0.744593, -0.572337,
		41.603123, 35.745964, 37.195751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072552, 36.324200, 37.546112>,  <41.362652, 36.267178, 37.596386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072552, 36.324200, 37.546112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930504, 36.133419, 37.224514>,  <41.845276, 36.018951, 37.031555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930504, 36.133419, 37.224514>,  <42.072552, 36.324200, 37.546112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930504, 36.133419, 37.224514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423091, 0.684924, -0.593188,
		0.833596, -0.550818, -0.041440,
		-0.355122, -0.476947, -0.803996,
		41.823967, 35.990334, 36.983315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685589, 36.281040, 37.096725>,  <42.072552, 36.324200, 37.546112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685589, 36.281040, 37.096725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342556, 36.263294, 36.891754>,  <42.136734, 36.252647, 36.768772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342556, 36.263294, 36.891754>,  <42.685589, 36.281040, 37.096725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342556, 36.263294, 36.891754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459091, 0.383190, -0.801499,
		0.231914, -0.922603, -0.308251,
		-0.857584, -0.044363, -0.512426,
		42.085281, 36.249985, 36.738026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866570, 35.774792, 37.598991>,  <42.685589, 36.281040, 37.096725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866570, 35.774792, 37.598991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188347, 36.002316, 37.530495>,  <43.381413, 36.138828, 37.489395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188347, 36.002316, 37.530495>,  <42.866570, 35.774792, 37.598991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188347, 36.002316, 37.530495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129875, 0.449715, 0.883679,
		0.579657, -0.688630, 0.435645,
		0.804444, 0.568810, -0.171244,
		43.429680, 36.172958, 37.479122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174103, 35.837170, 38.194180>,  <42.866570, 35.774792, 37.598991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174103, 35.837170, 38.194180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324436, 36.152260, 37.998947>,  <43.414639, 36.341316, 37.881805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324436, 36.152260, 37.998947>,  <43.174103, 35.837170, 38.194180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324436, 36.152260, 37.998947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281987, 0.598940, 0.749503,
		0.882740, -0.144058, 0.447234,
		0.375838, 0.787730, -0.488085,
		43.437187, 36.388580, 37.852520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421211, 36.141975, 38.749187>,  <43.174103, 35.837170, 38.194180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421211, 36.141975, 38.749187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413853, 36.429977, 38.471699>,  <43.409439, 36.602779, 38.305206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413853, 36.429977, 38.471699>,  <43.421211, 36.141975, 38.749187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413853, 36.429977, 38.471699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288057, 0.660606, 0.693269,
		0.957437, 0.212586, 0.195250,
		-0.018396, 0.720005, -0.693725,
		43.408333, 36.645977, 38.263580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758213, 36.690399, 39.086784>,  <43.421211, 36.141975, 38.749187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758213, 36.690399, 39.086784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531464, 36.848843, 38.797855>,  <43.395412, 36.943909, 38.624496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531464, 36.848843, 38.797855>,  <43.758213, 36.690399, 39.086784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531464, 36.848843, 38.797855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345191, 0.681918, 0.644849,
		0.747994, 0.614889, -0.249830,
		-0.566875, 0.396104, -0.722326,
		43.361401, 36.967674, 38.581158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915642, 37.333832, 39.045719>,  <43.758213, 36.690399, 39.086784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915642, 37.333832, 39.045719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546581, 37.308765, 38.893517>,  <43.325146, 37.293728, 38.802193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546581, 37.308765, 38.893517>,  <43.915642, 37.333832, 39.045719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546581, 37.308765, 38.893517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328703, 0.643785, 0.691010,
		0.201665, 0.762636, -0.614587,
		-0.922651, -0.062664, -0.380510,
		43.269787, 37.289967, 38.779362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756699, 37.978844, 38.839550>,  <43.915642, 37.333832, 39.045719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756699, 37.978844, 38.839550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403713, 37.793335, 38.870972>,  <43.191921, 37.682030, 38.889824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403713, 37.793335, 38.870972>,  <43.756699, 37.978844, 38.839550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403713, 37.793335, 38.870972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312674, 0.703133, 0.638623,
		-0.351409, 0.539001, -0.765500,
		-0.882466, -0.463770, 0.078556,
		43.138973, 37.654205, 38.894539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155293, 38.440247, 38.894402>,  <43.756699, 37.978844, 38.839550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155293, 38.440247, 38.894402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985817, 38.119457, 39.062840>,  <42.884132, 37.926983, 39.163902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985817, 38.119457, 39.062840>,  <43.155293, 38.440247, 38.894402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985817, 38.119457, 39.062840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446099, 0.589339, 0.673554,
		-0.788342, 0.097528, -0.607458,
		-0.423689, -0.801978, 0.421094,
		42.858711, 37.878864, 39.189167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448036, 38.684978, 38.944386>,  <43.155293, 38.440247, 38.894402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448036, 38.684978, 38.944386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515137, 38.376266, 39.189728>,  <42.555397, 38.191040, 39.336933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515137, 38.376266, 39.189728>,  <42.448036, 38.684978, 38.944386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515137, 38.376266, 39.189728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360148, 0.531190, 0.766896,
		-0.917688, -0.349551, -0.188846,
		0.167756, -0.771784, 0.613357,
		42.565464, 38.144730, 39.373734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952126, 38.720276, 39.421841>,  <42.448036, 38.684978, 38.944386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952126, 38.720276, 39.421841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205139, 38.480419, 39.617935>,  <42.356945, 38.336506, 39.735592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205139, 38.480419, 39.617935>,  <41.952126, 38.720276, 39.421841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205139, 38.480419, 39.617935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215455, 0.471736, 0.855012,
		-0.743965, -0.646445, 0.169190,
		0.632530, -0.599646, 0.490235,
		42.394897, 38.300526, 39.765007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536461, 38.435806, 39.980679>,  <41.952126, 38.720276, 39.421841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536461, 38.435806, 39.980679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919895, 38.402020, 40.089474>,  <42.149956, 38.381748, 40.154751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919895, 38.402020, 40.089474>,  <41.536461, 38.435806, 39.980679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919895, 38.402020, 40.089474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260744, 0.123868, 0.957429,
		-0.114561, -0.988697, 0.096714,
		0.958587, -0.084466, 0.271987,
		42.207470, 38.376678, 40.171070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522186, 38.040703, 40.641472>,  <41.536461, 38.435806, 39.980679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522186, 38.040703, 40.641472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877632, 38.224072, 40.635494>,  <42.090900, 38.334091, 40.631908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877632, 38.224072, 40.635494>,  <41.522186, 38.040703, 40.641472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877632, 38.224072, 40.635494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074828, 0.177044, 0.981354,
		0.452518, -0.870923, 0.191625,
		0.888610, 0.458420, -0.014946,
		42.144215, 38.361599, 40.631012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860088, 37.807690, 41.262814>,  <41.522186, 38.040703, 40.641472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860088, 37.807690, 41.262814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063793, 38.135529, 41.157810>,  <42.186016, 38.332233, 41.094810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063793, 38.135529, 41.157810>,  <41.860088, 37.807690, 41.262814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063793, 38.135529, 41.157810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171484, 0.202266, 0.964200,
		0.843351, -0.536050, -0.037541,
		0.509266, 0.819597, -0.262505,
		42.216572, 38.381409, 41.079060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488636, 37.806942, 41.589565>,  <41.860088, 37.807690, 41.262814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488636, 37.806942, 41.589565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417603, 38.191856, 41.507133>,  <42.374981, 38.422806, 41.457672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417603, 38.191856, 41.507133>,  <42.488636, 37.806942, 41.589565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417603, 38.191856, 41.507133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355761, 0.258024, 0.898253,
		0.917550, 0.086197, -0.388164,
		-0.177583, 0.962286, -0.206084,
		42.364326, 38.480541, 41.445309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998646, 38.155502, 41.761929>,  <42.488636, 37.806942, 41.589565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998646, 38.155502, 41.761929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726940, 38.448593, 41.778435>,  <42.563915, 38.624447, 41.788338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726940, 38.448593, 41.778435>,  <42.998646, 38.155502, 41.761929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726940, 38.448593, 41.778435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418859, 0.340897, 0.841633,
		0.602624, 0.588977, -0.538471,
		-0.679265, 0.732732, 0.041266,
		42.523159, 38.668411, 41.790813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381741, 38.528000, 42.150646>,  <42.998646, 38.155502, 41.761929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381741, 38.528000, 42.150646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033859, 38.723080, 42.120281>,  <42.825130, 38.840126, 42.102062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033859, 38.723080, 42.120281>,  <43.381741, 38.528000, 42.150646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033859, 38.723080, 42.120281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118857, 0.356226, 0.926809,
		0.479043, 0.797030, -0.367779,
		-0.869707, 0.487695, -0.075915,
		42.772945, 38.869389, 42.097507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480213, 39.213184, 42.292053>,  <43.381741, 38.528000, 42.150646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480213, 39.213184, 42.292053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107025, 39.117130, 42.399311>,  <42.883114, 39.059498, 42.463665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107025, 39.117130, 42.399311>,  <43.480213, 39.213184, 42.292053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107025, 39.117130, 42.399311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180754, 0.331655, 0.925923,
		-0.311276, 0.912327, -0.266019,
		-0.932971, -0.240134, 0.268143,
		42.827133, 39.045090, 42.479755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390095, 39.442841, 42.960770>,  <43.480213, 39.213184, 42.292053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390095, 39.442841, 42.960770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040981, 39.248013, 42.973438>,  <42.831512, 39.131115, 42.981037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040981, 39.248013, 42.973438>,  <43.390095, 39.442841, 42.960770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040981, 39.248013, 42.973438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026118, 0.018186, 0.999494,
		-0.487401, 0.873173, -0.003151,
		-0.872788, -0.487072, 0.031669,
		42.779144, 39.101891, 42.982941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931168, 39.822853, 43.382114>,  <43.390095, 39.442841, 42.960770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931168, 39.822853, 43.382114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790806, 39.448357, 43.374908>,  <42.706589, 39.223660, 43.370586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790806, 39.448357, 43.374908>,  <42.931168, 39.822853, 43.382114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790806, 39.448357, 43.374908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073092, -0.046563, 0.996238,
		-0.933553, 0.348271, 0.084771,
		-0.350908, -0.936237, -0.018013,
		42.685532, 39.167484, 43.369503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331612, 39.906193, 43.843151>,  <42.931168, 39.822853, 43.382114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331612, 39.906193, 43.843151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478546, 39.535233, 43.814903>,  <42.566708, 39.312656, 43.797955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478546, 39.535233, 43.814903>,  <42.331612, 39.906193, 43.843151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478546, 39.535233, 43.814903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006450, -0.078467, 0.996896,
		-0.930066, -0.365740, -0.034806,
		0.367336, -0.927404, -0.070620,
		42.588749, 39.257011, 43.793716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920483, 39.442310, 44.381065>,  <42.331612, 39.906193, 43.843151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920483, 39.442310, 44.381065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267910, 39.259045, 44.305523>,  <42.476368, 39.149086, 44.260197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267910, 39.259045, 44.305523>,  <41.920483, 39.442310, 44.381065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267910, 39.259045, 44.305523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037823, -0.318684, 0.947106,
		-0.494120, -0.829772, -0.259470,
		0.868571, -0.458170, -0.188852,
		42.528481, 39.121593, 44.248867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851257, 38.965549, 44.968353>,  <41.920483, 39.442310, 44.381065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851257, 38.965549, 44.968353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217316, 38.956745, 44.807343>,  <42.436951, 38.951462, 44.710735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217316, 38.956745, 44.807343>,  <41.851257, 38.965549, 44.968353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217316, 38.956745, 44.807343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376495, -0.310243, 0.872927,
		-0.144091, -0.950403, -0.275631,
		0.915145, -0.022007, -0.402525,
		42.491859, 38.950142, 44.686584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243809, 38.328796, 45.109234>,  <41.851257, 38.965549, 44.968353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243809, 38.328796, 45.109234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521664, 38.610039, 45.048412>,  <42.688377, 38.778786, 45.011921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521664, 38.610039, 45.048412>,  <42.243809, 38.328796, 45.109234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521664, 38.610039, 45.048412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540274, -0.370360, 0.755604,
		0.474959, -0.607018, -0.637137,
		0.694635, 0.703109, -0.152050,
		42.730053, 38.820972, 45.002796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458973, 37.625648, 45.150112>,  <42.243809, 38.328796, 45.109234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458973, 37.625648, 45.150112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143059, 37.536633, 45.378750>,  <41.953510, 37.483223, 45.515930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143059, 37.536633, 45.378750>,  <42.458973, 37.625648, 45.150112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143059, 37.536633, 45.378750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540464, -0.188197, -0.820049,
		0.290061, -0.956588, 0.028363,
		-0.789787, -0.222536, 0.571590,
		41.906124, 37.469872, 45.550228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250740, 36.818581, 45.192352>,  <42.458973, 37.625648, 45.150112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250740, 36.818581, 45.192352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869720, 36.866108, 45.304455>,  <41.641109, 36.894627, 45.371716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869720, 36.866108, 45.304455>,  <42.250740, 36.818581, 45.192352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869720, 36.866108, 45.304455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296302, 0.572873, 0.764213,
		-0.069745, 0.810986, -0.580894,
		-0.952544, 0.118820, 0.280252,
		41.583958, 36.901752, 45.388531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245647, 36.928295, 44.414810>,  <42.250740, 36.818581, 45.192352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245647, 36.928295, 44.414810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172127, 36.631153, 44.672298>,  <42.128014, 36.452866, 44.826790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172127, 36.631153, 44.672298>,  <42.245647, 36.928295, 44.414810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172127, 36.631153, 44.672298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106022, -0.666042, -0.738341,
		0.977228, -0.067463, 0.201181,
		-0.183806, -0.742858, 0.643722,
		42.116985, 36.408295, 44.865414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472481, 36.244713, 44.425587>,  <42.245647, 36.928295, 44.414810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472481, 36.244713, 44.425587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507439, 36.232685, 44.823875>,  <42.528412, 36.225468, 45.062847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507439, 36.232685, 44.823875>,  <42.472481, 36.244713, 44.425587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507439, 36.232685, 44.823875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972359, -0.214678, -0.091826,
		0.216520, 0.976222, 0.010472,
		0.087394, -0.030065, 0.995720,
		42.533657, 36.223667, 45.122593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973644, 36.770710, 44.621742>,  <42.472481, 36.244713, 44.425587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973644, 36.770710, 44.621742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945580, 36.469288, 44.883194>,  <42.928741, 36.288433, 45.040066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945580, 36.469288, 44.883194>,  <42.973644, 36.770710, 44.621742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945580, 36.469288, 44.883194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997513, -0.048561, 0.051083,
		-0.006753, 0.655587, 0.755089,
		-0.070157, -0.753557, 0.653629,
		42.924534, 36.243221, 45.079281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427784, 36.860847, 45.220627>,  <42.973644, 36.770710, 44.621742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427784, 36.860847, 45.220627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337761, 36.476337, 45.157005>,  <43.283749, 36.245632, 45.118832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337761, 36.476337, 45.157005>,  <43.427784, 36.860847, 45.220627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337761, 36.476337, 45.157005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972117, -0.210490, -0.103358,
		0.065876, -0.177882, 0.981844,
		-0.225054, -0.961276, -0.159056,
		43.270245, 36.187954, 45.109287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826958, 36.558315, 45.666443>,  <43.427784, 36.860847, 45.220627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826958, 36.558315, 45.666443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728107, 36.329575, 45.353542>,  <43.668797, 36.192329, 45.165802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728107, 36.329575, 45.353542>,  <43.826958, 36.558315, 45.666443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728107, 36.329575, 45.353542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960847, -0.249014, -0.121507,
		-0.125309, -0.781654, 0.610995,
		-0.247123, -0.571847, -0.782254,
		43.653969, 36.158020, 45.118866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866390, 35.797760, 45.705910>,  <43.826958, 36.558315, 45.666443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866390, 35.797760, 45.705910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964874, 35.958107, 45.352936>,  <44.023964, 36.054317, 45.141151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964874, 35.958107, 45.352936>,  <43.866390, 35.797760, 45.705910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964874, 35.958107, 45.352936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957419, -0.242217, 0.157099,
		-0.150763, -0.883535, -0.443437,
		0.246211, 0.400870, -0.882430,
		44.038738, 36.078369, 45.088207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055424, 35.253067, 45.161800>,  <43.866390, 35.797760, 45.705910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055424, 35.253067, 45.161800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901470, 35.105446, 44.823414>,  <43.809097, 35.016872, 44.620380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901470, 35.105446, 44.823414>,  <44.055424, 35.253067, 45.161800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901470, 35.105446, 44.823414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823588, 0.276397, -0.495286,
		0.416611, -0.887356, 0.197570,
		-0.384888, -0.369058, -0.845966,
		43.786003, 34.994728, 44.569626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576622, 34.840336, 44.725567>,  <44.055424, 35.253067, 45.161800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576622, 34.840336, 44.725567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290405, 34.971989, 44.479095>,  <44.118675, 35.050980, 44.331211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290405, 34.971989, 44.479095>,  <44.576622, 34.840336, 44.725567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290405, 34.971989, 44.479095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697844, 0.296435, -0.652028,
		-0.031947, -0.896547, -0.441795,
		-0.715537, 0.329135, -0.616179,
		44.075745, 35.070728, 44.294243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685074, 34.449776, 44.105789>,  <44.576622, 34.840336, 44.725567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685074, 34.449776, 44.105789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501621, 34.791985, 44.009666>,  <44.391552, 34.997311, 43.951992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501621, 34.791985, 44.009666>,  <44.685074, 34.449776, 44.105789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501621, 34.791985, 44.009666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542243, 0.055183, -0.838408,
		-0.704012, -0.514824, -0.489207,
		-0.458628, 0.855518, -0.240310,
		44.364033, 35.048641, 43.937572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557610, 34.392574, 43.416035>,  <44.685074, 34.449776, 44.105789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557610, 34.392574, 43.416035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491993, 34.783405, 43.470306>,  <44.452621, 35.017902, 43.502869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491993, 34.783405, 43.470306>,  <44.557610, 34.392574, 43.416035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491993, 34.783405, 43.470306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305148, 0.181056, -0.934935,
		-0.938069, -0.111971, -0.327855,
		-0.164046, 0.977078, 0.135676,
		44.442780, 35.076530, 43.511009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070305, 34.667740, 42.897949>,  <44.557610, 34.392574, 43.416035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070305, 34.667740, 42.897949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276459, 34.994663, 43.000999>,  <44.400150, 35.190819, 43.062832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276459, 34.994663, 43.000999>,  <44.070305, 34.667740, 42.897949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276459, 34.994663, 43.000999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056609, 0.267507, -0.961892,
		-0.855084, 0.510333, 0.091603,
		0.515389, 0.817313, 0.257630,
		44.431076, 35.239857, 43.078289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848576, 35.280090, 42.411419>,  <44.070305, 34.667740, 42.897949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848576, 35.280090, 42.411419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195568, 35.381527, 42.582615>,  <44.403763, 35.442387, 42.685333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195568, 35.381527, 42.582615>,  <43.848576, 35.280090, 42.411419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195568, 35.381527, 42.582615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285585, 0.450581, -0.845824,
		-0.407333, 0.855962, 0.318449,
		0.867480, 0.253587, 0.427987,
		44.455811, 35.457603, 42.711010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023766, 35.986267, 42.228752>,  <43.848576, 35.280090, 42.411419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023766, 35.986267, 42.228752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392746, 35.884258, 42.344719>,  <44.614136, 35.823055, 42.414299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392746, 35.884258, 42.344719>,  <44.023766, 35.986267, 42.228752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392746, 35.884258, 42.344719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377725, 0.440307, -0.814526,
		0.080066, 0.860869, 0.502488,
		0.922450, -0.255018, 0.289918,
		44.669479, 35.807755, 42.431694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510056, 36.591736, 42.122139>,  <44.023766, 35.986267, 42.228752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510056, 36.591736, 42.122139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.728889, 36.256908, 42.123455>,  <44.860191, 36.056011, 42.124245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.728889, 36.256908, 42.123455>,  <44.510056, 36.591736, 42.122139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728889, 36.256908, 42.123455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450854, 0.291352, -0.843709,
		0.705283, 0.463068, 0.536790,
		0.547089, -0.837068, 0.003290,
		44.893017, 36.005787, 42.124443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.174770, 36.758816, 42.039288>,  <44.510056, 36.591736, 42.122139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.174770, 36.758816, 42.039288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202084, 36.374729, 41.930981>,  <45.218472, 36.144276, 41.865997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202084, 36.374729, 41.930981>,  <45.174770, 36.758816, 42.039288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202084, 36.374729, 41.930981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451844, 0.271736, -0.849703,
		0.889479, -0.064323, 0.452425,
		0.068285, -0.960220, -0.270768,
		45.222569, 36.086662, 41.849751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904488, 36.654675, 41.876015>,  <45.174770, 36.758816, 42.039288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904488, 36.654675, 41.876015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683105, 36.375824, 41.693718>,  <45.550274, 36.208515, 41.584339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683105, 36.375824, 41.693718>,  <45.904488, 36.654675, 41.876015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683105, 36.375824, 41.693718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454234, 0.205996, -0.866740,
		0.698107, -0.686717, 0.202648,
		-0.553460, -0.697127, -0.455737,
		45.517067, 36.166687, 41.556995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328045, 36.208817, 41.462414>,  <45.904488, 36.654675, 41.876015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328045, 36.208817, 41.462414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957348, 36.216820, 41.312347>,  <45.734928, 36.221622, 41.222309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957348, 36.216820, 41.312347>,  <46.328045, 36.208817, 41.462414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.957348, 36.216820, 41.312347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373039, 0.167637, -0.912546,
		0.044631, -0.985646, -0.162822,
		-0.926742, 0.020011, -0.375166,
		45.679325, 36.222824, 41.199799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.389393, 35.760754, 40.865528>,  <46.328045, 36.208817, 41.462414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.389393, 35.760754, 40.865528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016605, 35.881180, 40.784733>,  <45.792934, 35.953434, 40.736256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016605, 35.881180, 40.784733>,  <46.389393, 35.760754, 40.865528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016605, 35.881180, 40.784733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213031, 0.003957, -0.977037,
		-0.293354, -0.953595, -0.067824,
		-0.931966, 0.301067, -0.201984,
		45.737015, 35.971500, 40.724136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083950, 35.299046, 40.338135>,  <46.389393, 35.760754, 40.865528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083950, 35.299046, 40.338135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886982, 35.644630, 40.296001>,  <45.768803, 35.851982, 40.270721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886982, 35.644630, 40.296001>,  <46.083950, 35.299046, 40.338135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886982, 35.644630, 40.296001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058291, -0.088014, -0.994412,
		-0.868405, -0.495806, -0.007022,
		-0.492418, 0.863961, -0.105333,
		45.739258, 35.903820, 40.264400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607269, 35.178139, 39.800091>,  <46.083950, 35.299046, 40.338135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607269, 35.178139, 39.800091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633621, 35.576237, 39.828804>,  <45.649433, 35.815094, 39.846031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633621, 35.576237, 39.828804>,  <45.607269, 35.178139, 39.800091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633621, 35.576237, 39.828804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066925, 0.067371, -0.995481,
		-0.995581, 0.070388, -0.062168,
		0.065882, 0.995242, 0.071784,
		45.653385, 35.874809, 39.850338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028557, 35.472878, 39.435001>,  <45.607269, 35.178139, 39.800091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028557, 35.472878, 39.435001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296272, 35.770077, 39.434597>,  <45.456902, 35.948399, 39.434353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296272, 35.770077, 39.434597>,  <45.028557, 35.472878, 39.435001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296272, 35.770077, 39.434597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075373, 0.066541, -0.994933,
		-0.739170, 0.665972, 0.100537,
		0.669288, 0.743003, -0.001011,
		45.497059, 35.992977, 39.434296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.760078, 35.909672, 38.878971>,  <45.028557, 35.472878, 39.435001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.760078, 35.909672, 38.878971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.125725, 36.049404, 38.961292>,  <45.345112, 36.133244, 39.010685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.125725, 36.049404, 38.961292>,  <44.760078, 35.909672, 38.878971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125725, 36.049404, 38.961292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114801, 0.263827, -0.957714,
		-0.388857, 0.899090, 0.201066,
		0.914117, 0.349332, 0.205807,
		45.399960, 36.154205, 39.023033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783016, 36.491447, 38.574047>,  <44.760078, 35.909672, 38.878971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783016, 36.491447, 38.574047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161926, 36.370037, 38.615131>,  <45.389271, 36.297192, 38.639782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161926, 36.370037, 38.615131>,  <44.783016, 36.491447, 38.574047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161926, 36.370037, 38.615131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167165, 0.194626, -0.966528,
		0.273373, 0.932735, 0.235102,
		0.947271, -0.303523, 0.102715,
		45.446106, 36.278980, 38.645947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150627, 36.954216, 38.298046>,  <44.783016, 36.491447, 38.574047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150627, 36.954216, 38.298046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378197, 36.625305, 38.292591>,  <45.514740, 36.427959, 38.289318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378197, 36.625305, 38.292591>,  <45.150627, 36.954216, 38.298046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378197, 36.625305, 38.292591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216578, 0.165803, -0.962083,
		0.793359, 0.544400, 0.272416,
		0.568925, -0.822276, -0.013636,
		45.548874, 36.378624, 38.288502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620258, 37.159924, 37.832695>,  <45.150627, 36.954216, 38.298046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620258, 37.159924, 37.832695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644806, 36.761787, 37.862438>,  <45.659534, 36.522907, 37.880283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644806, 36.761787, 37.862438>,  <45.620258, 37.159924, 37.832695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644806, 36.761787, 37.862438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102683, -0.067808, -0.992400,
		0.992819, 0.068538, 0.098043,
		0.061369, -0.995342, 0.074358,
		45.663216, 36.463184, 37.884747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139954, 37.084991, 37.404140>,  <45.620258, 37.159924, 37.832695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139954, 37.084991, 37.404140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963303, 36.727547, 37.436195>,  <45.857311, 36.513081, 37.455429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963303, 36.727547, 37.436195>,  <46.139954, 37.084991, 37.404140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963303, 36.727547, 37.436195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160039, -0.166344, -0.972994,
		0.882809, -0.416879, 0.216475,
		-0.441630, -0.893612, 0.080133,
		45.830814, 36.459465, 37.460236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.619068, 36.595711, 37.134983>,  <46.139954, 37.084991, 37.404140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.619068, 36.595711, 37.134983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270901, 36.399059, 37.124611>,  <46.062000, 36.281067, 37.118385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270901, 36.399059, 37.124611>,  <46.619068, 36.595711, 37.134983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.270901, 36.399059, 37.124611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236386, -0.371141, -0.897984,
		0.431854, -0.787750, 0.439263,
		-0.870416, -0.491633, -0.025935,
		46.009777, 36.251568, 37.116829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.734909, 35.810749, 36.944153>,  <46.619068, 36.595711, 37.134983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.734909, 35.810749, 36.944153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.367123, 35.935593, 36.848515>,  <46.146450, 36.010498, 36.791130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.367123, 35.935593, 36.848515>,  <46.734909, 35.810749, 36.944153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.367123, 35.935593, 36.848515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167549, -0.239089, -0.956433,
		-0.355674, -0.919471, 0.167541,
		-0.919469, 0.312106, -0.239094,
		46.091282, 36.029224, 36.776787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.442287, 35.301151, 36.457951>,  <46.734909, 35.810749, 36.944153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.442287, 35.301151, 36.457951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254513, 35.651237, 36.411247>,  <46.141846, 35.861290, 36.383224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254513, 35.651237, 36.411247>,  <46.442287, 35.301151, 36.457951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254513, 35.651237, 36.411247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056454, -0.161712, -0.985222,
		-0.881158, -0.455910, 0.125324,
		-0.469438, 0.875212, -0.116756,
		46.113682, 35.913799, 36.376221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426922, 35.039497, 35.829048>,  <46.442287, 35.301151, 36.457951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426922, 35.039497, 35.829048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638939, 34.704250, 35.880596>,  <46.766151, 34.503101, 35.911526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638939, 34.704250, 35.880596>,  <46.426922, 35.039497, 35.829048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.638939, 34.704250, 35.880596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554687, -0.457649, -0.694896,
		0.641383, 0.296843, -0.707468,
		0.530047, -0.838118, 0.128874,
		46.797955, 34.452816, 35.919258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.106216, 35.186028, 35.530720>,  <46.426922, 35.039497, 35.829048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.106216, 35.186028, 35.530720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331669, 35.455193, 35.339092>,  <47.466942, 35.616692, 35.224117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331669, 35.455193, 35.339092>,  <47.106216, 35.186028, 35.530720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.331669, 35.455193, 35.339092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360323, -0.722172, -0.590454,
		-0.743292, 0.160182, -0.649507,
		0.563636, 0.672911, -0.479067,
		47.500759, 35.657066, 35.195374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021015, 34.976414, 34.798679>,  <47.106216, 35.186028, 35.530720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021015, 34.976414, 34.798679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365341, 35.179909, 34.804153>,  <47.571938, 35.302006, 34.807438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365341, 35.179909, 34.804153>,  <47.021015, 34.976414, 34.798679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365341, 35.179909, 34.804153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432065, -0.716339, -0.547886,
		-0.268924, 0.477541, -0.836441,
		0.860813, 0.508737, 0.013688,
		47.623585, 35.332531, 34.808258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.108627, 32.887619, 46.690300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728130, 32.781082, 46.628075>,  <35.499832, 32.717159, 46.590740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728130, 32.781082, 46.628075>,  <36.108627, 32.887619, 46.690300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728130, 32.781082, 46.628075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030702, 0.420079, -0.906968,
		0.306908, -0.867523, -0.391421,
		-0.951244, -0.266338, -0.155561,
		35.442757, 32.701180, 46.581406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067917, 32.714935, 45.963825>,  <36.108627, 32.887619, 46.690300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067917, 32.714935, 45.963825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.683376, 32.758091, 46.065155>,  <35.452652, 32.783985, 46.125954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.683376, 32.758091, 46.065155>,  <36.067917, 32.714935, 45.963825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683376, 32.758091, 46.065155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176966, 0.462751, -0.868646,
		-0.210940, -0.879899, -0.425772,
		-0.961347, 0.107885, 0.253325,
		35.394974, 32.790455, 46.141151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695820, 32.647305, 45.363987>,  <36.067917, 32.714935, 45.963825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695820, 32.647305, 45.363987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400494, 32.805958, 45.582188>,  <35.223297, 32.901150, 45.713108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400494, 32.805958, 45.582188>,  <35.695820, 32.647305, 45.363987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400494, 32.805958, 45.582188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344633, 0.473383, -0.810640,
		-0.579760, -0.786505, -0.212811,
		-0.738313, 0.396635, 0.545504,
		35.179001, 32.924950, 45.745838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172585, 32.498482, 45.015625>,  <35.695820, 32.647305, 45.363987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172585, 32.498482, 45.015625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.060898, 32.815323, 45.232735>,  <34.993885, 33.005428, 45.363003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.060898, 32.815323, 45.232735>,  <35.172585, 32.498482, 45.015625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060898, 32.815323, 45.232735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367802, 0.433925, -0.822454,
		-0.886996, -0.429274, 0.170182,
		-0.279212, 0.792107, 0.542777,
		34.977135, 33.052956, 45.395569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464958, 32.606380, 44.884796>,  <35.172585, 32.498482, 45.015625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464958, 32.606380, 44.884796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.623024, 32.947662, 45.020966>,  <34.717861, 33.152431, 45.102669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.623024, 32.947662, 45.020966>,  <34.464958, 32.606380, 44.884796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623024, 32.947662, 45.020966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345856, 0.481504, -0.805318,
		-0.851018, 0.200491, 0.485357,
		0.395161, 0.853204, 0.340428,
		34.741573, 33.203625, 45.123093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941906, 33.057648, 44.705864>,  <34.464958, 32.606380, 44.884796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941906, 33.057648, 44.705864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.274708, 33.272488, 44.761410>,  <34.474388, 33.401394, 44.794739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.274708, 33.272488, 44.761410>,  <33.941906, 33.057648, 44.705864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274708, 33.272488, 44.761410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082080, 0.366746, -0.926693,
		-0.548659, 0.759617, 0.349221,
		0.832008, 0.537102, 0.138869,
		34.524311, 33.433617, 44.803070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821560, 33.496605, 44.219250>,  <33.941906, 33.057648, 44.705864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821560, 33.496605, 44.219250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205624, 33.558895, 44.312061>,  <34.436062, 33.596268, 44.367748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205624, 33.558895, 44.312061>,  <33.821560, 33.496605, 44.219250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205624, 33.558895, 44.312061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189070, 0.249375, -0.949771,
		-0.205763, 0.955805, 0.209998,
		0.960164, 0.155724, 0.232026,
		34.493671, 33.605614, 44.381668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934696, 34.094234, 43.868237>,  <33.821560, 33.496605, 44.219250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934696, 34.094234, 43.868237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311794, 33.996239, 43.958759>,  <34.538052, 33.937443, 44.013073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311794, 33.996239, 43.958759>,  <33.934696, 34.094234, 43.868237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311794, 33.996239, 43.958759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293985, 0.289985, -0.910759,
		0.157501, 0.925143, 0.345405,
		0.942744, -0.244989, 0.226305,
		34.594616, 33.922741, 44.026649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410706, 34.556370, 43.623047>,  <33.934696, 34.094234, 43.868237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410706, 34.556370, 43.623047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.655178, 34.240082, 43.637009>,  <34.801861, 34.050308, 43.645386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.655178, 34.240082, 43.637009>,  <34.410706, 34.556370, 43.623047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655178, 34.240082, 43.637009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455047, 0.314954, -0.832908,
		0.647604, 0.524942, 0.552309,
		0.611180, -0.790721, 0.034908,
		34.838531, 34.002865, 43.647480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023731, 34.819263, 43.457409>,  <34.410706, 34.556370, 43.623047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023731, 34.819263, 43.457409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039799, 34.426346, 43.384212>,  <35.049438, 34.190594, 43.340294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039799, 34.426346, 43.384212>,  <35.023731, 34.819263, 43.457409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039799, 34.426346, 43.384212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341980, 0.185599, -0.921197,
		0.938848, -0.025575, 0.343380,
		0.040171, -0.982293, -0.182995,
		35.051849, 34.131657, 43.329315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712517, 34.630817, 43.202885>,  <35.023731, 34.819263, 43.457409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712517, 34.630817, 43.202885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.431049, 34.377399, 43.074219>,  <35.262169, 34.225349, 42.997021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.431049, 34.377399, 43.074219>,  <35.712517, 34.630817, 43.202885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431049, 34.377399, 43.074219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405696, 0.013411, -0.913910,
		0.583317, -0.773590, 0.247589,
		-0.703671, -0.633545, -0.321665,
		35.219948, 34.187336, 42.977718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062412, 34.253658, 42.655376>,  <35.712517, 34.630817, 43.202885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062412, 34.253658, 42.655376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687656, 34.130814, 42.588543>,  <35.462803, 34.057106, 42.548443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687656, 34.130814, 42.588543>,  <36.062412, 34.253658, 42.655376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687656, 34.130814, 42.588543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158090, 0.054130, -0.985940,
		0.311840, -0.950132, -0.002163,
		-0.936890, -0.307114, -0.167086,
		35.406590, 34.038681, 42.538418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095974, 33.624413, 42.181114>,  <36.062412, 34.253658, 42.655376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095974, 33.624413, 42.181114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726372, 33.767357, 42.126694>,  <35.504612, 33.853123, 42.094040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726372, 33.767357, 42.126694>,  <36.095974, 33.624413, 42.181114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726372, 33.767357, 42.126694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212102, 0.182948, -0.959970,
		-0.318165, -0.915874, -0.244841,
		-0.924004, 0.357360, -0.136051,
		35.449169, 33.874565, 42.085880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902523, 33.254238, 41.626755>,  <36.095974, 33.624413, 42.181114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902523, 33.254238, 41.626755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.661469, 33.572556, 41.650581>,  <35.516834, 33.763546, 41.664879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.661469, 33.572556, 41.650581>,  <35.902523, 33.254238, 41.626755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661469, 33.572556, 41.650581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149534, 0.185928, -0.971118,
		-0.783880, -0.576324, -0.231045,
		-0.602637, 0.795789, 0.059566,
		35.480679, 33.811291, 41.668449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516048, 33.273624, 41.001354>,  <35.902523, 33.254238, 41.626755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516048, 33.273624, 41.001354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.485329, 33.642445, 41.153103>,  <35.466896, 33.863735, 41.244152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.485329, 33.642445, 41.153103>,  <35.516048, 33.273624, 41.001354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485329, 33.642445, 41.153103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190399, 0.387057, -0.902184,
		-0.978698, 0.002943, -0.205284,
		-0.076801, 0.922051, 0.379372,
		35.462288, 33.919060, 41.266914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075394, 33.690136, 40.508549>,  <35.516048, 33.273624, 41.001354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075394, 33.690136, 40.508549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301186, 33.954056, 40.706955>,  <35.436661, 34.112408, 40.825996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301186, 33.954056, 40.706955>,  <35.075394, 33.690136, 40.508549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301186, 33.954056, 40.706955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098649, 0.542672, -0.834131,
		-0.819530, 0.519782, 0.241240,
		0.564481, 0.659798, 0.496012,
		35.470531, 34.151997, 40.855759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972897, 34.268429, 40.211395>,  <35.075394, 33.690136, 40.508549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972897, 34.268429, 40.211395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324223, 34.361347, 40.378536>,  <35.535019, 34.417099, 40.478821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324223, 34.361347, 40.378536>,  <34.972897, 34.268429, 40.211395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324223, 34.361347, 40.378536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257774, 0.505972, -0.823131,
		-0.402634, 0.830680, 0.384522,
		0.878316, 0.232301, 0.417849,
		35.587719, 34.431038, 40.503891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079552, 35.017029, 40.049561>,  <34.972897, 34.268429, 40.211395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079552, 35.017029, 40.049561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442410, 34.894733, 40.165218>,  <35.660126, 34.821358, 40.234615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442410, 34.894733, 40.165218>,  <35.079552, 35.017029, 40.049561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442410, 34.894733, 40.165218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392583, 0.367446, -0.843126,
		0.151530, 0.878355, 0.453355,
		0.907148, -0.305738, 0.289148,
		35.714554, 34.803013, 40.251965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535576, 35.624489, 40.055901>,  <35.079552, 35.017029, 40.049561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535576, 35.624489, 40.055901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744892, 35.285442, 40.020790>,  <35.870483, 35.082012, 39.999725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744892, 35.285442, 40.020790>,  <35.535576, 35.624489, 40.055901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744892, 35.285442, 40.020790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374250, 0.321137, -0.869947,
		0.765572, 0.422388, 0.485270,
		0.523293, -0.847620, -0.087775,
		35.901878, 35.031155, 39.994457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025867, 35.871452, 39.661526>,  <35.535576, 35.624489, 40.055901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025867, 35.871452, 39.661526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060192, 35.474373, 39.627636>,  <36.080788, 35.236126, 39.607304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060192, 35.474373, 39.627636>,  <36.025867, 35.871452, 39.661526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060192, 35.474373, 39.627636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287519, 0.106090, -0.951881,
		0.953923, 0.057322, 0.294525,
		0.085809, -0.992703, -0.084721,
		36.085934, 35.176563, 39.602219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676193, 35.797371, 39.337234>,  <36.025867, 35.871452, 39.661526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676193, 35.797371, 39.337234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.455601, 35.472103, 39.262802>,  <36.323246, 35.276943, 39.218143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.455601, 35.472103, 39.262802>,  <36.676193, 35.797371, 39.337234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455601, 35.472103, 39.262802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187405, 0.096593, -0.977522,
		0.812864, -0.573957, 0.099123,
		-0.551481, -0.813169, -0.186079,
		36.290157, 35.228153, 39.206978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115986, 35.349110, 39.067459>,  <36.676193, 35.797371, 39.337234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115986, 35.349110, 39.067459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727638, 35.334774, 38.972698>,  <36.494629, 35.326172, 38.915844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727638, 35.334774, 38.972698>,  <37.115986, 35.349110, 39.067459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727638, 35.334774, 38.972698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227305, 0.174815, -0.958004,
		0.075748, -0.983949, -0.161577,
		-0.970873, -0.035840, -0.236898,
		36.436375, 35.324020, 38.901630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433056, 35.263920, 38.521412>,  <37.115986, 35.349110, 39.067459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433056, 35.263920, 38.521412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.780487, 35.461693, 38.534775>,  <37.988945, 35.580357, 38.542793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.780487, 35.461693, 38.534775>,  <37.433056, 35.263920, 38.521412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780487, 35.461693, 38.534775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127859, -0.288723, 0.948837,
		0.478779, -0.819865, -0.313995,
		0.868575, 0.494430, 0.033407,
		38.041061, 35.610023, 38.544796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893459, 34.829617, 38.844078>,  <37.433056, 35.263920, 38.521412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893459, 34.829617, 38.844078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055901, 35.189632, 38.907341>,  <38.153366, 35.405640, 38.945297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055901, 35.189632, 38.907341>,  <37.893459, 34.829617, 38.844078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055901, 35.189632, 38.907341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018590, -0.164898, 0.986136,
		0.913636, -0.403417, -0.050234,
		0.406107, 0.900035, 0.158156,
		38.177734, 35.459644, 38.954788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324112, 34.766689, 39.486233>,  <37.893459, 34.829617, 38.844078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324112, 34.766689, 39.486233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291389, 35.164806, 39.465450>,  <38.271755, 35.403675, 39.452980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291389, 35.164806, 39.465450>,  <38.324112, 34.766689, 39.486233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291389, 35.164806, 39.465450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138537, 0.040273, 0.989538,
		0.986973, 0.088150, 0.134590,
		-0.081807, 0.995293, -0.051960,
		38.266846, 35.463394, 39.449863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814068, 35.000999, 39.847801>,  <38.324112, 34.766689, 39.486233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814068, 35.000999, 39.847801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541595, 35.293682, 39.837944>,  <38.378113, 35.469292, 39.832027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541595, 35.293682, 39.837944>,  <38.814068, 35.000999, 39.847801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541595, 35.293682, 39.837944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025074, 0.056959, 0.998062,
		0.731689, 0.679239, -0.057146,
		-0.681178, 0.731703, -0.024645,
		38.337242, 35.513191, 39.830551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134861, 35.543186, 40.148518>,  <38.814068, 35.000999, 39.847801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134861, 35.543186, 40.148518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737148, 35.582687, 40.164780>,  <38.498520, 35.606388, 40.174538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737148, 35.582687, 40.164780>,  <39.134861, 35.543186, 40.148518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737148, 35.582687, 40.164780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038718, -0.021476, 0.999019,
		0.099529, 0.994880, 0.017529,
		-0.994281, 0.098753, 0.040657,
		38.438866, 35.612312, 40.176975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999489, 35.996761, 40.766525>,  <39.134861, 35.543186, 40.148518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999489, 35.996761, 40.766525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649498, 35.830921, 40.666508>,  <38.439503, 35.731415, 40.606499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649498, 35.830921, 40.666508>,  <38.999489, 35.996761, 40.766525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649498, 35.830921, 40.666508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196928, -0.167036, 0.966084,
		-0.442309, 0.894540, 0.064505,
		-0.874975, -0.414605, -0.250042,
		38.387005, 35.706539, 40.591496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472553, 36.391373, 41.140484>,  <38.999489, 35.996761, 40.766525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472553, 36.391373, 41.140484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.324207, 36.028072, 41.062988>,  <38.235199, 35.810089, 41.016491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.324207, 36.028072, 41.062988>,  <38.472553, 36.391373, 41.140484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324207, 36.028072, 41.062988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386513, -0.038735, 0.921470,
		-0.844435, 0.416619, -0.336688,
		-0.370860, -0.908255, -0.193738,
		38.212948, 35.755596, 41.004868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736050, 36.376652, 41.528858>,  <38.472553, 36.391373, 41.140484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736050, 36.376652, 41.528858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848206, 36.006100, 41.428299>,  <37.915501, 35.783768, 41.367962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848206, 36.006100, 41.428299>,  <37.736050, 36.376652, 41.528858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848206, 36.006100, 41.428299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218657, -0.316661, 0.922992,
		-0.934650, -0.203827, -0.291348,
		0.280389, -0.926381, -0.251399,
		37.932323, 35.728184, 41.352879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111057, 36.041862, 41.759460>,  <37.736050, 36.376652, 41.528858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111057, 36.041862, 41.759460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402317, 35.768467, 41.738930>,  <37.577072, 35.604431, 41.726612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402317, 35.768467, 41.738930>,  <37.111057, 36.041862, 41.759460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402317, 35.768467, 41.738930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280054, -0.365025, 0.887878,
		-0.625590, -0.632138, -0.457208,
		0.728153, -0.683490, -0.051323,
		37.620762, 35.563419, 41.723534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837372, 35.488979, 41.999336>,  <37.111057, 36.041862, 41.759460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837372, 35.488979, 41.999336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223667, 35.403130, 42.057701>,  <37.455444, 35.351620, 42.092720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223667, 35.403130, 42.057701>,  <36.837372, 35.488979, 41.999336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223667, 35.403130, 42.057701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221335, -0.387516, 0.894898,
		-0.135524, -0.896530, -0.421742,
		0.965735, -0.214627, 0.145916,
		37.513386, 35.338741, 42.101475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816113, 34.836483, 42.352772>,  <36.837372, 35.488979, 41.999336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816113, 34.836483, 42.352772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182907, 34.989510, 42.397995>,  <37.402985, 35.081326, 42.425129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182907, 34.989510, 42.397995>,  <36.816113, 34.836483, 42.352772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182907, 34.989510, 42.397995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034005, -0.357345, 0.933353,
		0.397467, -0.852027, -0.340689,
		0.916986, 0.382562, 0.113060,
		37.458004, 35.104279, 42.431911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170914, 34.292320, 42.584972>,  <36.816113, 34.836483, 42.352772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170914, 34.292320, 42.584972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352573, 34.622810, 42.718296>,  <37.461571, 34.821106, 42.798290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352573, 34.622810, 42.718296>,  <37.170914, 34.292320, 42.584972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352573, 34.622810, 42.718296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115775, -0.425673, 0.897440,
		0.883371, -0.368984, -0.288976,
		0.454150, 0.826229, 0.333308,
		37.488819, 34.870678, 42.818287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589344, 34.027187, 43.069405>,  <37.170914, 34.292320, 42.584972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589344, 34.027187, 43.069405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591228, 34.420246, 43.143581>,  <37.592358, 34.656082, 43.188087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591228, 34.420246, 43.143581>,  <37.589344, 34.027187, 43.069405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591228, 34.420246, 43.143581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117402, -0.184703, 0.975757,
		0.993073, 0.017179, -0.116234,
		0.004706, 0.982644, 0.185440,
		37.592640, 34.715038, 43.199215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130466, 34.185753, 43.585918>,  <37.589344, 34.027187, 43.069405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130466, 34.185753, 43.585918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860088, 34.477573, 43.627609>,  <37.697861, 34.652664, 43.652622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860088, 34.477573, 43.627609>,  <38.130466, 34.185753, 43.585918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860088, 34.477573, 43.627609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041876, -0.103174, 0.993781,
		0.735764, 0.676103, 0.039189,
		-0.675942, 0.729547, 0.104224,
		37.657307, 34.696438, 43.658878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452755, 34.789196, 44.147018>,  <38.130466, 34.185753, 43.585918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452755, 34.789196, 44.147018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053547, 34.787727, 44.121880>,  <37.814022, 34.786846, 44.106796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053547, 34.787727, 44.121880>,  <38.452755, 34.789196, 44.147018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053547, 34.787727, 44.121880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058934, -0.296668, 0.953160,
		-0.022149, 0.954974, 0.295863,
		-0.998016, -0.003675, -0.062852,
		37.754143, 34.786625, 44.103024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242702, 35.233135, 44.666618>,  <38.452755, 34.789196, 44.147018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242702, 35.233135, 44.666618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937824, 34.987648, 44.584248>,  <37.754898, 34.840355, 44.534824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937824, 34.987648, 44.584248>,  <38.242702, 35.233135, 44.666618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937824, 34.987648, 44.584248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014184, -0.302204, 0.953138,
		-0.647192, 0.729398, 0.221633,
		-0.762195, -0.613720, -0.205930,
		37.709167, 34.803532, 44.522469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827484, 35.324657, 45.268459>,  <38.242702, 35.233135, 44.666618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827484, 35.324657, 45.268459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675327, 34.997318, 45.096127>,  <37.584034, 34.800915, 44.992729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675327, 34.997318, 45.096127>,  <37.827484, 35.324657, 45.268459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675327, 34.997318, 45.096127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265354, -0.349686, 0.898503,
		-0.885941, 0.456103, -0.084135,
		-0.380389, -0.818346, -0.430829,
		37.561211, 34.751816, 44.966877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208157, 35.229523, 45.679268>,  <37.827484, 35.324657, 45.268459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208157, 35.229523, 45.679268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295361, 34.883698, 45.498158>,  <37.347683, 34.676205, 45.389492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295361, 34.883698, 45.498158>,  <37.208157, 35.229523, 45.679268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295361, 34.883698, 45.498158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178548, -0.491441, 0.852412,
		-0.959475, -0.104991, -0.261504,
		0.218010, -0.864559, -0.452779,
		37.360764, 34.624329, 45.362324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.561733, 34.750168, 45.849701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890469, 34.534843, 45.775085>,  <37.087711, 34.405647, 45.730316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890469, 34.534843, 45.775085>,  <36.561733, 34.750168, 45.849701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890469, 34.534843, 45.775085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212237, -0.593141, 0.776620,
		-0.528708, -0.598668, -0.601718,
		0.821841, -0.538313, -0.186539,
		37.137020, 34.373348, 45.719124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356266, 34.077564, 45.952351>,  <36.561733, 34.750168, 45.849701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356266, 34.077564, 45.952351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752605, 34.028515, 45.974899>,  <36.990410, 33.999084, 45.988430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752605, 34.028515, 45.974899>,  <36.356266, 34.077564, 45.952351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752605, 34.028515, 45.974899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131086, -0.775076, 0.618122,
		-0.032101, -0.619856, -0.784059,
		0.990851, -0.122621, 0.056374,
		37.049862, 33.991730, 45.991810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424156, 33.378845, 46.008316>,  <36.356266, 34.077564, 45.952351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424156, 33.378845, 46.008316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775177, 33.521275, 46.136761>,  <36.985790, 33.606731, 46.213829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775177, 33.521275, 46.136761>,  <36.424156, 33.378845, 46.008316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775177, 33.521275, 46.136761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000212, -0.669426, 0.742879,
		0.479483, -0.651982, -0.587380,
		0.877551, 0.356074, 0.321116,
		37.038441, 33.628098, 46.233097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801220, 32.850292, 46.222843>,  <36.424156, 33.378845, 46.008316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801220, 32.850292, 46.222843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044231, 33.109783, 46.406174>,  <37.190041, 33.265476, 46.516171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044231, 33.109783, 46.406174>,  <36.801220, 32.850292, 46.222843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044231, 33.109783, 46.406174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224915, -0.693905, 0.684038,
		0.761786, -0.312492, -0.567478,
		0.607532, 0.648725, 0.458323,
		37.226490, 33.304401, 46.543671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496708, 32.407471, 46.467823>,  <36.801220, 32.850292, 46.222843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496708, 32.407471, 46.467823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436497, 32.741459, 46.679550>,  <37.400372, 32.941853, 46.806587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436497, 32.741459, 46.679550>,  <37.496708, 32.407471, 46.467823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436497, 32.741459, 46.679550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120238, -0.515977, 0.848122,
		0.981267, 0.191307, -0.022728,
		-0.150524, 0.834967, 0.529313,
		37.391338, 32.991947, 46.838345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084564, 32.425442, 46.923954>,  <37.496708, 32.407471, 46.467823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084564, 32.425442, 46.923954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.798218, 32.665775, 47.066238>,  <37.626408, 32.809975, 47.151608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.798218, 32.665775, 47.066238>,  <38.084564, 32.425442, 46.923954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798218, 32.665775, 47.066238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050008, -0.464017, 0.884413,
		0.696440, 0.650914, 0.302130,
		-0.715871, 0.600832, 0.355711,
		37.583458, 32.846024, 47.172951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315186, 32.543095, 47.550179>,  <38.084564, 32.425442, 46.923954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315186, 32.543095, 47.550179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.923866, 32.622242, 47.574772>,  <37.689075, 32.669731, 47.589527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.923866, 32.622242, 47.574772>,  <38.315186, 32.543095, 47.550179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923866, 32.622242, 47.574772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029736, -0.427737, 0.903414,
		0.205053, 0.881981, 0.424338,
		-0.978299, 0.197866, 0.061483,
		37.630375, 32.681602, 47.593216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225613, 32.827591, 48.210117>,  <38.315186, 32.543095, 47.550179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225613, 32.827591, 48.210117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.856815, 32.717796, 48.100880>,  <37.635536, 32.651920, 48.035336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.856815, 32.717796, 48.100880>,  <38.225613, 32.827591, 48.210117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856815, 32.717796, 48.100880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164920, -0.359737, 0.918363,
		-0.350320, 0.891766, 0.286408,
		-0.921996, -0.274486, -0.273093,
		37.580215, 32.635452, 48.018951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779686, 33.141533, 48.696732>,  <38.225613, 32.827591, 48.210117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779686, 33.141533, 48.696732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597126, 32.828819, 48.526783>,  <37.487591, 32.641193, 48.424812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597126, 32.828819, 48.526783>,  <37.779686, 33.141533, 48.696732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597126, 32.828819, 48.526783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183328, -0.384635, 0.904680,
		-0.870682, 0.490789, 0.032226,
		-0.456402, -0.781781, -0.424871,
		37.460205, 32.594284, 48.399323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324585, 33.027580, 49.199898>,  <37.779686, 33.141533, 48.696732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324585, 33.027580, 49.199898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335026, 32.690247, 48.985195>,  <37.341290, 32.487846, 48.856373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335026, 32.690247, 48.985195>,  <37.324585, 33.027580, 49.199898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335026, 32.690247, 48.985195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238636, -0.526674, 0.815884,
		-0.970758, 0.106793, -0.214996,
		0.026102, -0.843332, -0.536758,
		37.342857, 32.437248, 48.824169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692364, 32.626072, 49.248528>,  <37.324585, 33.027580, 49.199898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692364, 32.626072, 49.248528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999016, 32.386154, 49.156860>,  <37.183006, 32.242203, 49.101860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999016, 32.386154, 49.156860>,  <36.692364, 32.626072, 49.248528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999016, 32.386154, 49.156860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137320, -0.501812, 0.854007,
		-0.627229, -0.623241, -0.467070,
		0.766634, -0.599796, -0.229167,
		37.229008, 32.206215, 49.088112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455528, 31.918573, 49.226654>,  <36.692364, 32.626072, 49.248528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455528, 31.918573, 49.226654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850357, 31.915874, 49.290707>,  <37.087254, 31.914255, 49.329140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850357, 31.915874, 49.290707>,  <36.455528, 31.918573, 49.226654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850357, 31.915874, 49.290707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137101, -0.553062, 0.821782,
		0.083019, -0.833113, -0.546837,
		0.987072, -0.006748, 0.160135,
		37.146481, 31.913851, 49.338749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538589, 31.274851, 49.550362>,  <36.455528, 31.918573, 49.226654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538589, 31.274851, 49.550362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879078, 31.461405, 49.646614>,  <37.083370, 31.573338, 49.704365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879078, 31.461405, 49.646614>,  <36.538589, 31.274851, 49.550362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879078, 31.461405, 49.646614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054344, -0.534382, 0.843494,
		0.521981, -0.704926, -0.480224,
		0.851225, 0.466385, 0.240629,
		37.134445, 31.601320, 49.718803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985638, 30.784140, 49.994595>,  <36.538589, 31.274851, 49.550362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985638, 30.784140, 49.994595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209892, 31.107746, 50.065231>,  <37.344444, 31.301910, 50.107613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209892, 31.107746, 50.065231>,  <36.985638, 30.784140, 49.994595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209892, 31.107746, 50.065231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207052, -0.343439, 0.916067,
		0.801758, -0.477018, -0.360052,
		0.560636, 0.809014, 0.176588,
		37.378082, 31.350451, 50.118206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619038, 30.513695, 50.293461>,  <36.985638, 30.784140, 49.994595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619038, 30.513695, 50.293461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.609154, 30.891859, 50.423439>,  <37.603222, 31.118757, 50.501427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.609154, 30.891859, 50.423439>,  <37.619038, 30.513695, 50.293461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609154, 30.891859, 50.423439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077178, -0.322274, 0.943495,
		0.996711, 0.048392, -0.065002,
		-0.024709, 0.945409, 0.324949,
		37.601742, 31.175482, 50.520924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106365, 30.559664, 50.733440>,  <37.619038, 30.513695, 50.293461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106365, 30.559664, 50.733440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867718, 30.862652, 50.839481>,  <37.724529, 31.044445, 50.903107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867718, 30.862652, 50.839481>,  <38.106365, 30.559664, 50.733440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867718, 30.862652, 50.839481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133728, -0.231881, 0.963508,
		0.791302, 0.610302, 0.037050,
		-0.596623, 0.757471, 0.265103,
		37.688732, 31.089893, 50.919014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521286, 31.030878, 51.067596>,  <38.106365, 30.559664, 50.733440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521286, 31.030878, 51.067596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.139790, 31.054907, 51.185421>,  <37.910892, 31.069324, 51.256115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.139790, 31.054907, 51.185421>,  <38.521286, 31.030878, 51.067596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139790, 31.054907, 51.185421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282636, -0.154634, 0.946681,
		0.102416, 0.986144, 0.130503,
		-0.953744, 0.060070, 0.294557,
		37.853668, 31.072927, 51.273788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595947, 31.234936, 51.762886>,  <38.521286, 31.030878, 51.067596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595947, 31.234936, 51.762886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211987, 31.125858, 51.736874>,  <37.981609, 31.060411, 51.721264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211987, 31.125858, 51.736874>,  <38.595947, 31.234936, 51.762886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211987, 31.125858, 51.736874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066411, -0.446568, 0.892282,
		-0.272360, 0.852183, 0.446771,
		-0.959901, -0.272692, -0.065033,
		37.924015, 31.044050, 51.717365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340137, 31.367405, 52.375473>,  <38.595947, 31.234936, 51.762886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340137, 31.367405, 52.375473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100384, 31.086576, 52.221672>,  <37.956532, 30.918079, 52.129391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100384, 31.086576, 52.221672>,  <38.340137, 31.367405, 52.375473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100384, 31.086576, 52.221672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181296, -0.586929, 0.789079,
		-0.779661, 0.403253, 0.479078,
		-0.599383, -0.702069, -0.384498,
		37.920570, 30.875956, 52.106323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204365, 31.031395, 52.887264>,  <38.340137, 31.367405, 52.375473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204365, 31.031395, 52.887264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068012, 30.750504, 52.637249>,  <37.986202, 30.581968, 52.487240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068012, 30.750504, 52.637249>,  <38.204365, 31.031395, 52.887264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068012, 30.750504, 52.637249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109219, -0.689939, 0.715580,
		-0.933740, 0.175663, 0.311885,
		-0.340882, -0.702230, -0.625038,
		37.965748, 30.539835, 52.449738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636707, 30.602079, 53.236126>,  <38.204365, 31.031395, 52.887264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636707, 30.602079, 53.236126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823578, 30.392813, 52.951019>,  <37.935699, 30.267252, 52.779953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823578, 30.392813, 52.951019>,  <37.636707, 30.602079, 53.236126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823578, 30.392813, 52.951019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064489, -0.783842, 0.617603,
		-0.881808, -0.334496, -0.332455,
		0.467178, -0.523168, -0.712769,
		37.963730, 30.235863, 52.737190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225574, 29.939276, 53.102093>,  <37.636707, 30.602079, 53.236126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225574, 29.939276, 53.102093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622040, 29.909000, 53.058529>,  <37.859921, 29.890835, 53.032391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622040, 29.909000, 53.058529>,  <37.225574, 29.939276, 53.102093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622040, 29.909000, 53.058529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014385, -0.754969, 0.655602,
		-0.131845, -0.651377, -0.747211,
		0.991166, -0.075690, -0.108909,
		37.919388, 29.886293, 53.025856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778469, 29.421761, 53.268883>,  <37.225574, 29.939276, 53.102093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778469, 29.421761, 53.268883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489902, 29.688711, 53.194950>,  <36.316761, 29.848881, 53.150589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489902, 29.688711, 53.194950>,  <36.778469, 29.421761, 53.268883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489902, 29.688711, 53.194950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317600, -0.081677, 0.944701,
		0.615372, 0.740230, 0.270881,
		-0.721421, 0.667374, -0.184835,
		36.273476, 29.888924, 53.139500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583469, 29.612307, 53.869030>,  <36.778469, 29.421761, 53.268883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583469, 29.612307, 53.869030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274925, 29.729837, 53.643227>,  <36.089798, 29.800356, 53.507744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274925, 29.729837, 53.643227>,  <36.583469, 29.612307, 53.869030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274925, 29.729837, 53.643227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600078, -0.040447, 0.798918,
		0.211912, 0.955002, 0.207520,
		-0.771362, 0.293828, -0.564504,
		36.043518, 29.817986, 53.473877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000977, 29.033064, 53.590462>,  <36.583469, 29.612307, 53.869030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000977, 29.033064, 53.590462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602291, 29.036438, 53.558250>,  <35.363079, 29.038464, 53.538925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602291, 29.036438, 53.558250>,  <36.000977, 29.033064, 53.590462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602291, 29.036438, 53.558250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080873, 0.151859, -0.985088,
		0.003918, -0.988366, -0.152043,
		-0.996717, 0.008437, -0.080527,
		35.303276, 29.038969, 53.534092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778267, 28.551798, 53.028751>,  <36.000977, 29.033064, 53.590462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778267, 28.551798, 53.028751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472553, 28.806911, 53.066925>,  <35.289127, 28.959980, 53.089828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472553, 28.806911, 53.066925>,  <35.778267, 28.551798, 53.028751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472553, 28.806911, 53.066925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096378, 0.033356, -0.994786,
		-0.637643, -0.769491, 0.035975,
		-0.764279, 0.637785, 0.095431,
		35.243271, 28.998247, 53.095554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139668, 28.250580, 52.643719>,  <35.778267, 28.551798, 53.028751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139668, 28.250580, 52.643719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138519, 28.648157, 52.687656>,  <35.137829, 28.886703, 52.714020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138519, 28.648157, 52.687656>,  <35.139668, 28.250580, 52.643719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138519, 28.648157, 52.687656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187305, 0.107369, -0.976416,
		-0.982298, -0.023382, 0.185862,
		-0.002875, 0.993944, 0.109848,
		35.137657, 28.946341, 52.720612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962189, 28.442616, 52.063103>,  <35.139668, 28.250580, 52.643719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962189, 28.442616, 52.063103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012650, 28.816116, 52.197083>,  <35.042927, 29.040216, 52.277470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012650, 28.816116, 52.197083>,  <34.962189, 28.442616, 52.063103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012650, 28.816116, 52.197083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140994, 0.351092, -0.925665,
		-0.981940, 0.069552, 0.175946,
		0.126155, 0.933754, 0.334945,
		35.050495, 29.096243, 52.297565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413105, 28.789070, 51.802265>,  <34.962189, 28.442616, 52.063103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413105, 28.789070, 51.802265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662086, 29.086531, 51.899860>,  <34.811478, 29.265007, 51.958416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662086, 29.086531, 51.899860>,  <34.413105, 28.789070, 51.802265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662086, 29.086531, 51.899860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082962, 0.372678, -0.924245,
		-0.778243, 0.555062, 0.293671,
		0.622458, 0.743651, 0.243985,
		34.848824, 29.309626, 51.973057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118538, 29.386787, 51.667953>,  <34.413105, 28.789070, 51.802265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118538, 29.386787, 51.667953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509411, 29.463245, 51.630894>,  <34.743935, 29.509121, 51.608658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509411, 29.463245, 51.630894>,  <34.118538, 29.386787, 51.667953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509411, 29.463245, 51.630894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181923, 0.527896, -0.829596,
		-0.109663, 0.827519, 0.550623,
		0.977179, 0.191147, -0.092654,
		34.802563, 29.520590, 51.603096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249901, 30.178812, 51.517853>,  <34.118538, 29.386787, 51.667953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249901, 30.178812, 51.517853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595291, 30.004303, 51.416595>,  <34.802525, 29.899597, 51.355839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595291, 30.004303, 51.416595>,  <34.249901, 30.178812, 51.517853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595291, 30.004303, 51.416595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043711, 0.435269, -0.899239,
		0.502500, 0.787532, 0.356773,
		0.863472, -0.436272, -0.253147,
		34.854332, 29.873421, 51.340652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524467, 30.643766, 51.215771>,  <34.249901, 30.178812, 51.517853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524467, 30.643766, 51.215771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732006, 30.341970, 51.055000>,  <34.856529, 30.160892, 50.958538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732006, 30.341970, 51.055000>,  <34.524467, 30.643766, 51.215771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732006, 30.341970, 51.055000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165165, 0.549776, -0.818820,
		0.838763, 0.358454, 0.409863,
		0.518842, -0.754491, -0.401928,
		34.887657, 30.115623, 50.934422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088478, 30.874056, 50.801891>,  <34.524467, 30.643766, 51.215771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088478, 30.874056, 50.801891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094967, 30.489117, 50.693356>,  <35.098862, 30.258154, 50.628235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094967, 30.489117, 50.693356>,  <35.088478, 30.874056, 50.801891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094967, 30.489117, 50.693356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399000, 0.255060, -0.880763,
		0.916807, -0.093972, 0.388115,
		0.016226, -0.962348, -0.271336,
		35.099834, 30.200413, 50.611954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648621, 30.796305, 50.436337>,  <35.088478, 30.874056, 50.801891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648621, 30.796305, 50.436337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383533, 30.523035, 50.313648>,  <35.224480, 30.359074, 50.240036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383533, 30.523035, 50.313648>,  <35.648621, 30.796305, 50.436337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383533, 30.523035, 50.313648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126832, 0.301271, -0.945066,
		0.738050, -0.665214, -0.113010,
		-0.662718, -0.683173, -0.306724,
		35.184719, 30.318083, 50.221630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951431, 30.447762, 49.915829>,  <35.648621, 30.796305, 50.436337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951431, 30.447762, 49.915829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558277, 30.396799, 49.862606>,  <35.322384, 30.366222, 49.830673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558277, 30.396799, 49.862606>,  <35.951431, 30.447762, 49.915829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558277, 30.396799, 49.862606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080141, 0.354610, -0.931574,
		0.165869, -0.926294, -0.338330,
		-0.982886, -0.127405, -0.133053,
		35.263412, 30.358578, 49.822689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868721, 30.077219, 49.276237>,  <35.951431, 30.447762, 49.915829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868721, 30.077219, 49.276237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519062, 30.253790, 49.357235>,  <35.309265, 30.359734, 49.405834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519062, 30.253790, 49.357235>,  <35.868721, 30.077219, 49.276237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519062, 30.253790, 49.357235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071891, 0.294744, -0.952868,
		-0.480308, -0.847506, -0.225915,
		-0.874148, 0.441429, 0.202496,
		35.256817, 30.386219, 49.417984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578838, 30.007309, 48.684364>,  <35.868721, 30.077219, 49.276237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578838, 30.007309, 48.684364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366253, 30.295830, 48.862026>,  <35.238701, 30.468943, 48.968624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366253, 30.295830, 48.862026>,  <35.578838, 30.007309, 48.684364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366253, 30.295830, 48.862026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041008, 0.501812, -0.864004,
		-0.846090, -0.477397, -0.237114,
		-0.531460, 0.721302, 0.444156,
		35.206814, 30.512220, 48.995274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034657, 30.079924, 48.280136>,  <35.578838, 30.007309, 48.684364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034657, 30.079924, 48.280136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090916, 30.423843, 48.476490>,  <35.124672, 30.630196, 48.594303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090916, 30.423843, 48.476490>,  <35.034657, 30.079924, 48.280136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090916, 30.423843, 48.476490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113490, 0.506545, -0.854711,
		-0.983534, 0.064499, 0.168821,
		0.140643, 0.859797, 0.490885,
		35.133110, 30.681782, 48.623756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560162, 30.492069, 48.041615>,  <35.034657, 30.079924, 48.280136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560162, 30.492069, 48.041615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815598, 30.752184, 48.206211>,  <34.968861, 30.908253, 48.304970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815598, 30.752184, 48.206211>,  <34.560162, 30.492069, 48.041615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815598, 30.752184, 48.206211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040980, 0.562701, -0.825644,
		-0.768454, 0.510386, 0.385984,
		0.638591, 0.650288, 0.411494,
		35.007175, 30.947269, 48.329659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323112, 31.148348, 47.926594>,  <34.560162, 30.492069, 48.041615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323112, 31.148348, 47.926594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704685, 31.244480, 47.998440>,  <34.933628, 31.302158, 48.041550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704685, 31.244480, 47.998440>,  <34.323112, 31.148348, 47.926594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704685, 31.244480, 47.998440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055875, 0.730480, -0.680645,
		-0.294786, 0.639250, 0.710253,
		0.953928, 0.240330, 0.179617,
		34.990864, 31.316580, 48.052326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335743, 31.891956, 48.030731>,  <34.323112, 31.148348, 47.926594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335743, 31.891956, 48.030731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.710300, 31.778450, 47.948124>,  <34.935036, 31.710346, 47.898560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.710300, 31.778450, 47.948124>,  <34.335743, 31.891956, 48.030731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710300, 31.778450, 47.948124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077746, 0.741527, -0.666403,
		0.342239, 0.607958, 0.716421,
		0.936391, -0.283768, -0.206514,
		34.991219, 31.693319, 47.886169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790924, 32.357002, 48.149189>,  <34.335743, 31.891956, 48.030731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790924, 32.357002, 48.149189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984211, 32.145206, 47.870293>,  <35.100182, 32.018131, 47.702953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984211, 32.145206, 47.870293>,  <34.790924, 32.357002, 48.149189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984211, 32.145206, 47.870293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125654, 0.830090, -0.543288,
		0.866436, 0.174915, 0.467646,
		0.483217, -0.529486, -0.697241,
		35.129177, 31.986361, 47.661121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061611, 32.933460, 47.716885>,  <34.790924, 32.357002, 48.149189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061611, 32.933460, 47.716885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162220, 32.597591, 47.524349>,  <35.222584, 32.396069, 47.408829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162220, 32.597591, 47.524349>,  <35.061611, 32.933460, 47.716885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162220, 32.597591, 47.524349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263840, 0.537977, -0.800606,
		0.931196, 0.074374, 0.356852,
		0.251522, -0.839672, -0.481339,
		35.237679, 32.345688, 47.379948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716537, 33.040516, 47.387547>,  <35.061611, 32.933460, 47.716885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716537, 33.040516, 47.387547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.532024, 32.748158, 47.186348>,  <35.421318, 32.572742, 47.065628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.532024, 32.748158, 47.186348>,  <35.716537, 33.040516, 47.387547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532024, 32.748158, 47.186348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390962, 0.341467, -0.854722,
		0.796471, -0.590921, 0.128241,
		-0.461284, -0.730898, -0.502996,
		35.393639, 32.528889, 47.035450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.873741, 38.971958, 44.310070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.483894, 38.931919, 44.390175>,  <43.249989, 38.907894, 44.438240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.483894, 38.931919, 44.390175>,  <43.873741, 38.971958, 44.310070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483894, 38.931919, 44.390175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198174, -0.030515, -0.979692,
		0.104181, -0.994509, 0.009902,
		-0.974615, -0.100103, 0.200265,
		43.191509, 38.901890, 44.450256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550766, 38.416393, 43.989918>,  <43.873741, 38.971958, 44.310070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550766, 38.416393, 43.989918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.213825, 38.617085, 44.068626>,  <43.011662, 38.737499, 44.115852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.213825, 38.617085, 44.068626>,  <43.550766, 38.416393, 43.989918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213825, 38.617085, 44.068626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272944, -0.082340, -0.958500,
		-0.464705, -0.861097, 0.206303,
		-0.842348, 0.501729, 0.196767,
		42.961121, 38.767605, 44.127655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928745, 37.978779, 43.726830>,  <43.550766, 38.416393, 43.989918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928745, 37.978779, 43.726830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863091, 38.373158, 43.739285>,  <42.823700, 38.609783, 43.746758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863091, 38.373158, 43.739285>,  <42.928745, 37.978779, 43.726830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863091, 38.373158, 43.739285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478864, -0.052045, -0.876345,
		-0.862409, -0.158746, 0.480677,
		-0.164134, 0.985947, 0.031134,
		42.813850, 38.668941, 43.748623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249050, 37.981541, 43.461040>,  <42.928745, 37.978779, 43.726830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249050, 37.981541, 43.461040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.393711, 38.352367, 43.421528>,  <42.480507, 38.574863, 43.397820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.393711, 38.352367, 43.421528>,  <42.249050, 37.981541, 43.461040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393711, 38.352367, 43.421528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492931, 0.100206, -0.864279,
		-0.791345, 0.361259, 0.493219,
		0.361651, 0.927066, -0.098779,
		42.502205, 38.630486, 43.391895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721207, 38.327969, 43.114880>,  <42.249050, 37.981541, 43.461040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721207, 38.327969, 43.114880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036018, 38.569408, 43.063881>,  <42.224903, 38.714272, 43.033283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036018, 38.569408, 43.063881>,  <41.721207, 38.327969, 43.114880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036018, 38.569408, 43.063881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365647, 0.289944, -0.884440,
		-0.496880, 0.742698, 0.448898,
		0.787028, 0.603599, -0.127498,
		42.272125, 38.750488, 43.025631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520184, 38.971062, 42.737354>,  <41.721207, 38.327969, 43.114880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520184, 38.971062, 42.737354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.908360, 38.941143, 42.645569>,  <42.141266, 38.923191, 42.590496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.908360, 38.941143, 42.645569>,  <41.520184, 38.971062, 42.737354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908360, 38.941143, 42.645569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226948, 0.040683, -0.973057,
		0.082117, 0.996369, 0.022505,
		0.970439, -0.074797, -0.229464,
		42.199490, 38.918705, 42.576729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395134, 39.106358, 42.038475>,  <41.520184, 38.971062, 42.737354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395134, 39.106358, 42.038475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.792850, 39.069954, 42.060780>,  <42.031479, 39.048111, 42.074162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.792850, 39.069954, 42.060780>,  <41.395134, 39.106358, 42.038475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792850, 39.069954, 42.060780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073280, 0.202226, -0.976593,
		0.077601, 0.975101, 0.207740,
		0.994288, -0.091008, 0.055763,
		42.091137, 39.042652, 42.077507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741657, 39.654297, 41.573250>,  <41.395134, 39.106358, 42.038475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741657, 39.654297, 41.573250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986897, 39.346348, 41.644135>,  <42.134041, 39.161579, 41.686665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986897, 39.346348, 41.644135>,  <41.741657, 39.654297, 41.573250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986897, 39.346348, 41.644135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194571, -0.070253, -0.978369,
		0.765671, 0.634317, 0.106724,
		0.613099, -0.769875, 0.177210,
		42.170826, 39.115387, 41.697296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179710, 39.730652, 41.076077>,  <41.741657, 39.654297, 41.573250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179710, 39.730652, 41.076077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.262798, 39.359585, 41.200203>,  <42.312649, 39.136944, 41.274677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.262798, 39.359585, 41.200203>,  <42.179710, 39.730652, 41.076077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262798, 39.359585, 41.200203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137326, -0.286435, -0.948207,
		0.968502, 0.239572, 0.067895,
		0.207716, -0.927664, 0.310312,
		42.325111, 39.081287, 41.293297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786896, 39.512268, 40.772125>,  <42.179710, 39.730652, 41.076077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786896, 39.512268, 40.772125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.595734, 39.169350, 40.848701>,  <42.481037, 38.963600, 40.894650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.595734, 39.169350, 40.848701>,  <42.786896, 39.512268, 40.772125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595734, 39.169350, 40.848701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146735, -0.292793, -0.944850,
		0.866070, -0.423455, 0.265722,
		-0.477903, -0.857297, 0.191443,
		42.452362, 38.912159, 40.906136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224709, 39.066513, 40.588039>,  <42.786896, 39.512268, 40.772125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224709, 39.066513, 40.588039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886154, 38.854633, 40.610096>,  <42.683022, 38.727505, 40.623329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886154, 38.854633, 40.610096>,  <43.224709, 39.066513, 40.588039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886154, 38.854633, 40.610096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337069, -0.612974, -0.714596,
		0.412323, -0.586241, 0.697361,
		-0.846389, -0.529703, 0.055139,
		42.632236, 38.695721, 40.626637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472729, 38.333073, 40.479660>,  <43.224709, 39.066513, 40.588039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472729, 38.333073, 40.479660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080292, 38.311275, 40.405373>,  <42.844830, 38.298199, 40.360802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080292, 38.311275, 40.405373>,  <43.472729, 38.333073, 40.479660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080292, 38.311275, 40.405373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170477, -0.697622, -0.695889,
		-0.091638, -0.714391, 0.693720,
		-0.981091, -0.054493, -0.185716,
		42.785965, 38.294930, 40.349659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179211, 37.565269, 40.429005>,  <43.472729, 38.333073, 40.479660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179211, 37.565269, 40.429005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927105, 37.797955, 40.223335>,  <42.775841, 37.937565, 40.099934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927105, 37.797955, 40.223335>,  <43.179211, 37.565269, 40.429005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927105, 37.797955, 40.223335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114200, -0.585605, -0.802512,
		-0.767939, -0.564510, 0.302651,
		-0.630260, 0.581718, -0.514176,
		42.738026, 37.972469, 40.069084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743328, 37.142540, 40.177952>,  <43.179211, 37.565269, 40.429005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743328, 37.142540, 40.177952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.713390, 37.453072, 39.927605>,  <42.695427, 37.639389, 39.777397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.713390, 37.453072, 39.927605>,  <42.743328, 37.142540, 40.177952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713390, 37.453072, 39.927605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020592, -0.628698, -0.777377,
		-0.996983, -0.045295, 0.063041,
		-0.074846, 0.776329, -0.625868,
		42.690937, 37.685970, 39.739845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334366, 36.832359, 39.618637>,  <42.743328, 37.142540, 40.177952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334366, 36.832359, 39.618637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517021, 37.158577, 39.476448>,  <42.626614, 37.354309, 39.391136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517021, 37.158577, 39.476448>,  <42.334366, 36.832359, 39.618637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517021, 37.158577, 39.476448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054284, -0.424358, -0.903866,
		-0.887992, 0.393448, -0.238051,
		0.456643, 0.815548, -0.355469,
		42.654015, 37.403240, 39.369808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004871, 36.957691, 38.967262>,  <42.334366, 36.832359, 39.618637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004871, 36.957691, 38.967262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350224, 37.159481, 38.963631>,  <42.557434, 37.280556, 38.961452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350224, 37.159481, 38.963631>,  <42.004871, 36.957691, 38.967262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350224, 37.159481, 38.963631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225201, -0.401388, -0.887791,
		-0.451513, 0.764454, -0.460158,
		0.863377, 0.504477, -0.009076,
		42.609238, 37.310825, 38.960907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078842, 37.212158, 38.285271>,  <42.004871, 36.957691, 38.967262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078842, 37.212158, 38.285271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448486, 37.233158, 38.436672>,  <42.670273, 37.245758, 38.527515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448486, 37.233158, 38.436672>,  <42.078842, 37.212158, 38.285271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448486, 37.233158, 38.436672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371812, -0.352154, -0.858920,
		0.088199, 0.934468, -0.344948,
		0.924108, 0.052500, 0.378507,
		42.725719, 37.248909, 38.550224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532791, 37.424969, 37.653843>,  <42.078842, 37.212158, 38.285271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532791, 37.424969, 37.653843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.777744, 37.295193, 37.942211>,  <42.924717, 37.217327, 38.115234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.777744, 37.295193, 37.942211>,  <42.532791, 37.424969, 37.653843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777744, 37.295193, 37.942211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598532, -0.405485, -0.690899,
		0.516477, 0.854589, -0.054124,
		0.612381, -0.324439, 0.720922,
		42.961460, 37.197861, 38.158489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259628, 37.641224, 37.517540>,  <42.532791, 37.424969, 37.653843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259628, 37.641224, 37.517540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304920, 37.317532, 37.748131>,  <43.332096, 37.123318, 37.886486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304920, 37.317532, 37.748131>,  <43.259628, 37.641224, 37.517540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304920, 37.317532, 37.748131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740828, -0.317871, -0.591720,
		0.662083, 0.494069, 0.563509,
		0.113227, -0.809230, 0.576477,
		43.338890, 37.074764, 37.921074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019989, 37.445312, 37.355686>,  <43.259628, 37.641224, 37.517540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019989, 37.445312, 37.355686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809326, 37.133675, 37.491718>,  <43.682930, 36.946693, 37.573338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809326, 37.133675, 37.491718>,  <44.019989, 37.445312, 37.355686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809326, 37.133675, 37.491718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276334, -0.535228, -0.798230,
		0.803912, -0.326416, 0.497169,
		-0.526654, -0.779092, 0.340076,
		43.651329, 36.899948, 37.593742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461533, 36.955471, 37.151100>,  <44.019989, 37.445312, 37.355686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461533, 36.955471, 37.151100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.131569, 36.747868, 37.240677>,  <43.933590, 36.623306, 37.294422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.131569, 36.747868, 37.240677>,  <44.461533, 36.955471, 37.151100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131569, 36.747868, 37.240677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285983, -0.724927, -0.626654,
		0.487577, -0.452893, 0.746430,
		-0.824914, -0.519008, 0.223938,
		43.884094, 36.592167, 37.307858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589329, 36.318295, 37.255486>,  <44.461533, 36.955471, 37.151100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589329, 36.318295, 37.255486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214249, 36.298328, 37.117943>,  <43.989201, 36.286350, 37.035419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214249, 36.298328, 37.117943>,  <44.589329, 36.318295, 37.255486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.214249, 36.298328, 37.117943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267784, -0.734409, -0.623647,
		-0.221400, -0.676870, 0.702018,
		-0.937696, -0.049914, -0.343853,
		43.932941, 36.283356, 37.014786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840714, 35.688984, 37.134033>,  <44.589329, 36.318295, 37.255486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840714, 35.688984, 37.134033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.187256, 35.886623, 37.104946>,  <45.395184, 36.005207, 37.087494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.187256, 35.886623, 37.104946>,  <44.840714, 35.688984, 37.134033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187256, 35.886623, 37.104946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027224, 0.098663, 0.994748,
		0.498678, -0.863789, 0.072026,
		0.866359, 0.494099, -0.072717,
		45.447163, 36.034851, 37.083130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279419, 35.250874, 37.530739>,  <44.840714, 35.688984, 37.134033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279419, 35.250874, 37.530739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.478138, 35.597054, 37.504864>,  <45.597370, 35.804764, 37.489338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.478138, 35.597054, 37.504864>,  <45.279419, 35.250874, 37.530739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478138, 35.597054, 37.504864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064604, 0.037456, 0.997208,
		0.865459, -0.499588, -0.037303,
		0.496796, 0.865453, -0.064692,
		45.627178, 35.856689, 37.485455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879295, 35.179234, 37.865963>,  <45.279419, 35.250874, 37.530739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879295, 35.179234, 37.865963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.825462, 35.575439, 37.877083>,  <45.793163, 35.813164, 37.883755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.825462, 35.575439, 37.877083>,  <45.879295, 35.179234, 37.865963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825462, 35.575439, 37.877083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025685, -0.024556, 0.999368,
		0.990570, 0.135209, -0.022137,
		-0.134580, 0.990513, 0.027797,
		45.785088, 35.872593, 37.885422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268932, 35.314056, 38.362240>,  <45.879295, 35.179234, 37.865963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268932, 35.314056, 38.362240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.057766, 35.652519, 38.333057>,  <45.931065, 35.855598, 38.315548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.057766, 35.652519, 38.333057>,  <46.268932, 35.314056, 38.362240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057766, 35.652519, 38.333057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157017, 0.181663, 0.970744,
		0.834655, 0.501017, -0.228764,
		-0.527918, 0.846156, -0.072957,
		45.899391, 35.906364, 38.311169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.664612, 35.878006, 38.695049>,  <46.268932, 35.314056, 38.362240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.664612, 35.878006, 38.695049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.287613, 36.011215, 38.683720>,  <46.061413, 36.091141, 38.676922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.287613, 36.011215, 38.683720>,  <46.664612, 35.878006, 38.695049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287613, 36.011215, 38.683720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004522, 0.072030, 0.997392,
		0.334192, 0.940165, -0.066382,
		-0.942494, 0.333021, -0.028323,
		46.004864, 36.111122, 38.675224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622303, 36.331837, 39.215855>,  <46.664612, 35.878006, 38.695049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622303, 36.331837, 39.215855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.229889, 36.276749, 39.161304>,  <45.994442, 36.243694, 39.128574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.229889, 36.276749, 39.161304>,  <46.622303, 36.331837, 39.215855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.229889, 36.276749, 39.161304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159259, 0.171750, 0.972182,
		-0.110470, 0.975466, -0.190427,
		-0.981037, -0.137725, -0.136379,
		45.935577, 36.235432, 39.120392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414547, 36.881893, 39.511036>,  <46.622303, 36.331837, 39.215855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.414547, 36.881893, 39.511036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.123894, 36.608421, 39.483948>,  <45.949501, 36.444340, 39.467693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.123894, 36.608421, 39.483948>,  <46.414547, 36.881893, 39.511036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123894, 36.608421, 39.483948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293909, 0.220247, 0.930112,
		-0.620983, 0.695755, -0.360978,
		-0.726634, -0.683679, -0.067719,
		45.905903, 36.403316, 39.463631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796959, 37.195045, 39.846466>,  <46.414547, 36.881893, 39.511036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796959, 37.195045, 39.846466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.733875, 36.801338, 39.878342>,  <45.696026, 36.565113, 39.897465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.733875, 36.801338, 39.878342>,  <45.796959, 37.195045, 39.846466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.733875, 36.801338, 39.878342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306241, 0.125466, 0.943650,
		-0.938800, 0.124417, -0.321209,
		-0.157707, -0.984266, 0.079686,
		45.686562, 36.506058, 39.902248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123241, 37.042450, 40.233276>,  <45.796959, 37.195045, 39.846466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.123241, 37.042450, 40.233276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.329739, 36.700691, 40.256962>,  <45.453636, 36.495636, 40.271175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.329739, 36.700691, 40.256962>,  <45.123241, 37.042450, 40.233276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329739, 36.700691, 40.256962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308743, -0.121163, 0.943397,
		-0.798859, -0.505300, -0.326337,
		0.516239, -0.854396, 0.059215,
		45.484612, 36.444374, 40.274727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587387, 36.495842, 40.482861>,  <45.123241, 37.042450, 40.233276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587387, 36.495842, 40.482861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947582, 36.332962, 40.543930>,  <45.163700, 36.235233, 40.580570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947582, 36.332962, 40.543930>,  <44.587387, 36.495842, 40.482861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947582, 36.332962, 40.543930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311159, -0.358039, 0.880334,
		-0.303802, -0.840239, -0.449113,
		0.900491, -0.407193, 0.152675,
		45.217728, 36.210804, 40.589733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546116, 35.796158, 40.713070>,  <44.587387, 36.495842, 40.482861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546116, 35.796158, 40.713070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.894867, 35.931618, 40.854572>,  <45.104118, 36.012894, 40.939472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.894867, 35.931618, 40.854572>,  <44.546116, 35.796158, 40.713070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894867, 35.931618, 40.854572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188419, -0.434784, 0.880603,
		0.452027, -0.834432, -0.315269,
		0.871877, 0.338653, 0.353757,
		45.156429, 36.033215, 40.960701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908943, 35.201061, 40.945366>,  <44.546116, 35.796158, 40.713070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908943, 35.201061, 40.945366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.076725, 35.495117, 41.158394>,  <45.177395, 35.671551, 41.286209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.076725, 35.495117, 41.158394>,  <44.908943, 35.201061, 40.945366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076725, 35.495117, 41.158394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110210, -0.541093, 0.833710,
		0.901060, -0.408401, -0.145946,
		0.419458, 0.735138, 0.532567,
		45.202564, 35.715660, 41.318165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340813, 34.854332, 41.457600>,  <44.908943, 35.201061, 40.945366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340813, 34.854332, 41.457600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.262386, 35.229084, 41.573406>,  <45.215332, 35.453934, 41.642891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.262386, 35.229084, 41.573406>,  <45.340813, 34.854332, 41.457600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262386, 35.229084, 41.573406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141082, -0.319124, 0.937153,
		0.970389, 0.142898, 0.194745,
		-0.196065, 0.936878, 0.289514,
		45.203568, 35.510147, 41.660259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625702, 34.937160, 42.196060>,  <45.340813, 34.854332, 41.457600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625702, 34.937160, 42.196060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.392006, 35.260796, 42.170650>,  <45.251789, 35.454979, 42.155407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.392006, 35.260796, 42.170650>,  <45.625702, 34.937160, 42.196060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392006, 35.260796, 42.170650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155309, -0.034640, 0.987258,
		0.796583, 0.586660, 0.145898,
		-0.584239, 0.809092, -0.063520,
		45.216736, 35.503525, 42.151596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672321, 35.180923, 42.845043>,  <45.625702, 34.937160, 42.196060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672321, 35.180923, 42.845043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.359695, 35.382156, 42.697495>,  <45.172119, 35.502895, 42.608967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.359695, 35.382156, 42.697495>,  <45.672321, 35.180923, 42.845043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359695, 35.382156, 42.697495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398889, 0.051594, 0.915546,
		0.479624, 0.862698, 0.160349,
		-0.781567, 0.503080, -0.368867,
		45.125225, 35.533081, 42.586834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577904, 35.816902, 43.203392>,  <45.672321, 35.180923, 42.845043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577904, 35.816902, 43.203392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240162, 35.666664, 43.050552>,  <45.037518, 35.576523, 42.958847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240162, 35.666664, 43.050552>,  <45.577904, 35.816902, 43.203392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240162, 35.666664, 43.050552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443813, 0.090764, 0.891511,
		-0.300162, 0.922330, -0.243329,
		-0.844353, -0.375590, -0.382098,
		44.986855, 35.553986, 42.935925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088696, 36.218857, 43.565479>,  <45.577904, 35.816902, 43.203392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088696, 36.218857, 43.565479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.889488, 35.908012, 43.411552>,  <44.769966, 35.721508, 43.319195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.889488, 35.908012, 43.411552>,  <45.088696, 36.218857, 43.565479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889488, 35.908012, 43.411552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527422, -0.080806, 0.845752,
		-0.688335, 0.624159, -0.369621,
		-0.498016, -0.777107, -0.384817,
		44.740082, 35.674881, 43.296108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352676, 36.375820, 43.598854>,  <45.088696, 36.218857, 43.565479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352676, 36.375820, 43.598854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369053, 35.978474, 43.555855>,  <44.378880, 35.740067, 43.530056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369053, 35.978474, 43.555855>,  <44.352676, 36.375820, 43.598854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369053, 35.978474, 43.555855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666808, -0.107289, 0.737466,
		-0.744104, 0.041482, -0.666775,
		0.040946, -0.993362, -0.107495,
		44.381336, 35.680466, 43.523605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645309, 36.090107, 43.623497>,  <44.352676, 36.375820, 43.598854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645309, 36.090107, 43.623497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874245, 35.780914, 43.732986>,  <44.011604, 35.595398, 43.798679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874245, 35.780914, 43.732986>,  <43.645309, 36.090107, 43.623497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874245, 35.780914, 43.732986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709293, -0.299151, 0.638288,
		-0.411503, -0.559466, -0.719488,
		0.572336, -0.772985, 0.273724,
		44.045944, 35.549019, 43.815105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167564, 35.570370, 43.563026>,  <43.645309, 36.090107, 43.623497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167564, 35.570370, 43.563026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461914, 35.431767, 43.795719>,  <43.638523, 35.348602, 43.935333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461914, 35.431767, 43.795719>,  <43.167564, 35.570370, 43.563026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461914, 35.431767, 43.795719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675834, -0.428675, 0.599571,
		0.041616, -0.834366, -0.549637,
		0.735878, -0.346512, 0.581733,
		43.682678, 35.327812, 43.970238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.117214, 35.960228, 43.208740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914097, 35.636852, 43.089699>,  <37.792225, 35.442825, 43.018272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914097, 35.636852, 43.089699>,  <38.117214, 35.960228, 43.208740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914097, 35.636852, 43.089699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203259, 0.223270, -0.953329,
		0.837156, -0.544585, 0.050948,
		-0.507794, -0.808441, -0.297604,
		37.761757, 35.394321, 43.000416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577507, 35.654915, 42.718601>,  <38.117214, 35.960228, 43.208740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577507, 35.654915, 42.718601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230900, 35.479923, 42.622471>,  <38.022934, 35.374928, 42.564793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230900, 35.479923, 42.622471>,  <38.577507, 35.654915, 42.718601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230900, 35.479923, 42.622471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170670, 0.192770, -0.966288,
		0.469062, -0.878321, -0.092373,
		-0.866517, -0.437484, -0.240324,
		37.970943, 35.348679, 42.550373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773922, 35.075199, 42.292126>,  <38.577507, 35.654915, 42.718601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773922, 35.075199, 42.292126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388577, 35.150627, 42.215836>,  <38.157372, 35.195885, 42.170059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388577, 35.150627, 42.215836>,  <38.773922, 35.075199, 42.292126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388577, 35.150627, 42.215836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211753, 0.098306, -0.972367,
		-0.164611, -0.977127, -0.134634,
		-0.963361, 0.188572, -0.190727,
		38.099567, 35.207199, 42.158619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752998, 34.861740, 41.622147>,  <38.773922, 35.075199, 42.292126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752998, 34.861740, 41.622147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390244, 35.022549, 41.672646>,  <38.172592, 35.119034, 41.702946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390244, 35.022549, 41.672646>,  <38.752998, 34.861740, 41.622147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390244, 35.022549, 41.672646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103427, 0.078077, -0.991568,
		-0.408491, -0.912294, -0.029227,
		-0.906884, 0.402023, 0.126249,
		38.118179, 35.143154, 41.710522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316875, 34.523441, 41.173729>,  <38.752998, 34.861740, 41.622147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316875, 34.523441, 41.173729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166893, 34.891113, 41.221928>,  <38.076904, 35.111717, 41.250847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166893, 34.891113, 41.221928>,  <38.316875, 34.523441, 41.173729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166893, 34.891113, 41.221928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100039, 0.089098, -0.990986,
		-0.921631, -0.383627, 0.058546,
		-0.374953, 0.919180, 0.120493,
		38.054409, 35.166866, 41.258076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628445, 34.596935, 40.773396>,  <38.316875, 34.523441, 41.173729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628445, 34.596935, 40.773396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830223, 34.935726, 40.840527>,  <37.951290, 35.139000, 40.880806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830223, 34.935726, 40.840527>,  <37.628445, 34.596935, 40.773396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830223, 34.935726, 40.840527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023290, 0.207644, -0.977927,
		-0.863129, 0.489403, 0.124471,
		0.504446, 0.846976, 0.167825,
		37.981556, 35.189819, 40.890873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214546, 35.199917, 40.521587>,  <37.628445, 34.596935, 40.773396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214546, 35.199917, 40.521587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594593, 35.323639, 40.537598>,  <37.822620, 35.397873, 40.547203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594593, 35.323639, 40.537598>,  <37.214546, 35.199917, 40.521587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594593, 35.323639, 40.537598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036188, 0.236797, -0.970885,
		-0.309779, 0.921009, 0.236178,
		0.950120, 0.309306, 0.040025,
		37.879627, 35.416431, 40.549606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108852, 35.879120, 40.164543>,  <37.214546, 35.199917, 40.521587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108852, 35.879120, 40.164543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493565, 35.769604, 40.166092>,  <37.724392, 35.703892, 40.167023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493565, 35.769604, 40.166092>,  <37.108852, 35.879120, 40.164543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493565, 35.769604, 40.166092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096949, 0.327260, -0.939948,
		0.256085, 0.904399, 0.341296,
		0.961780, -0.273795, 0.003875,
		37.782097, 35.687466, 40.167255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413136, 36.419376, 39.785969>,  <37.108852, 35.879120, 40.164543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413136, 36.419376, 39.785969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697365, 36.139286, 39.813614>,  <37.867901, 35.971233, 39.830200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697365, 36.139286, 39.813614>,  <37.413136, 36.419376, 39.785969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697365, 36.139286, 39.813614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356315, 0.273390, -0.893475,
		0.606735, 0.659505, 0.443763,
		0.710572, -0.700221, 0.069116,
		37.910538, 35.929218, 39.834347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004581, 36.735989, 39.420689>,  <37.413136, 36.419376, 39.785969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004581, 36.735989, 39.420689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097485, 36.346973, 39.426716>,  <38.153225, 36.113564, 39.430332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097485, 36.346973, 39.426716>,  <38.004581, 36.735989, 39.420689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097485, 36.346973, 39.426716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304043, 0.057874, -0.950899,
		0.923913, 0.225432, 0.309135,
		0.232253, -0.972538, 0.015071,
		38.167160, 36.055210, 39.431236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573891, 36.684227, 39.134022>,  <38.004581, 36.735989, 39.420689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573891, 36.684227, 39.134022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435333, 36.312630, 39.081898>,  <38.352200, 36.089672, 39.050625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435333, 36.312630, 39.081898>,  <38.573891, 36.684227, 39.134022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435333, 36.312630, 39.081898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293264, 0.024711, -0.955712,
		0.891072, -0.369266, 0.263881,
		-0.346391, -0.928995, -0.130312,
		38.331417, 36.033932, 39.042805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126553, 36.250046, 38.922226>,  <38.573891, 36.684227, 39.134022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126553, 36.250046, 38.922226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791691, 36.082333, 38.781731>,  <38.590775, 35.981705, 38.697433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791691, 36.082333, 38.781731>,  <39.126553, 36.250046, 38.922226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791691, 36.082333, 38.781731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452756, -0.170904, -0.875102,
		0.306890, -0.891623, 0.332907,
		-0.837156, -0.419286, -0.351239,
		38.540543, 35.956547, 38.676357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255375, 35.602787, 38.718437>,  <39.126553, 36.250046, 38.922226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255375, 35.602787, 38.718437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963676, 35.772644, 38.503822>,  <38.788658, 35.874557, 38.375053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963676, 35.772644, 38.503822>,  <39.255375, 35.602787, 38.718437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963676, 35.772644, 38.503822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518124, -0.169465, -0.838349,
		-0.446924, -0.889359, -0.096436,
		-0.729251, 0.424644, -0.536536,
		38.744900, 35.900036, 38.342861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918900, 35.214867, 38.155727>,  <39.255375, 35.602787, 38.718437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918900, 35.214867, 38.155727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895432, 35.605331, 38.072136>,  <38.881351, 35.839611, 38.021980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895432, 35.605331, 38.072136>,  <38.918900, 35.214867, 38.155727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895432, 35.605331, 38.072136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484940, -0.155108, -0.860683,
		-0.872577, -0.151837, -0.464278,
		-0.058670, 0.976159, -0.208976,
		38.877831, 35.898178, 38.009441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191265, 34.700748, 37.659565>,  <38.918900, 35.214867, 38.155727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191265, 34.700748, 37.659565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529346, 34.514893, 37.765202>,  <39.732193, 34.403378, 37.828583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529346, 34.514893, 37.765202>,  <39.191265, 34.700748, 37.659565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529346, 34.514893, 37.765202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509487, -0.551234, 0.660731,
		-0.161428, -0.693000, -0.702632,
		0.845201, -0.464642, 0.264090,
		39.782906, 34.375500, 37.844429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017906, 34.038200, 37.602757>,  <39.191265, 34.700748, 37.659565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017906, 34.038200, 37.602757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339382, 34.034485, 37.840748>,  <39.532269, 34.032257, 37.983543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339382, 34.034485, 37.840748>,  <39.017906, 34.038200, 37.602757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339382, 34.034485, 37.840748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437965, -0.686119, 0.580884,
		0.402833, -0.727430, -0.555492,
		0.803686, -0.009287, 0.594981,
		39.580486, 34.031700, 38.019241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214439, 33.397198, 37.637360>,  <39.017906, 34.038200, 37.602757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214439, 33.397198, 37.637360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355904, 33.549812, 37.978970>,  <39.440781, 33.641380, 38.183937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355904, 33.549812, 37.978970>,  <39.214439, 33.397198, 37.637360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355904, 33.549812, 37.978970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229020, -0.849918, 0.474540,
		0.906904, -0.363414, -0.213201,
		0.353658, 0.381535, 0.854024,
		39.462002, 33.664272, 38.235176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597321, 32.732704, 38.031750>,  <39.214439, 33.397198, 37.637360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597321, 32.732704, 38.031750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529560, 33.005817, 38.316036>,  <39.488903, 33.169685, 38.486607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529560, 33.005817, 38.316036>,  <39.597321, 32.732704, 38.031750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529560, 33.005817, 38.316036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305631, -0.721979, 0.620755,
		0.936959, -0.112056, 0.330986,
		-0.169406, 0.682781, 0.710712,
		39.478737, 33.210651, 38.529251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691032, 32.358910, 38.610138>,  <39.597321, 32.732704, 38.031750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691032, 32.358910, 38.610138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500385, 32.667244, 38.779209>,  <39.385998, 32.852245, 38.880653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500385, 32.667244, 38.779209>,  <39.691032, 32.358910, 38.610138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500385, 32.667244, 38.779209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356180, -0.608891, 0.708793,
		0.803725, 0.187271, 0.564762,
		-0.476615, 0.770831, 0.422679,
		39.357399, 32.898495, 38.906013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885281, 32.229462, 39.329990>,  <39.691032, 32.358910, 38.610138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885281, 32.229462, 39.329990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567741, 32.472702, 39.331985>,  <39.377220, 32.618645, 39.333183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567741, 32.472702, 39.331985>,  <39.885281, 32.229462, 39.329990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567741, 32.472702, 39.331985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291756, -0.388040, 0.874245,
		0.533562, 0.692560, 0.485460,
		-0.793845, 0.608100, 0.004985,
		39.329586, 32.655132, 39.333481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835682, 32.470825, 40.015480>,  <39.885281, 32.229462, 39.329990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835682, 32.470825, 40.015480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474442, 32.494343, 39.845329>,  <39.257698, 32.508453, 39.743237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474442, 32.494343, 39.845329>,  <39.835682, 32.470825, 40.015480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474442, 32.494343, 39.845329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403693, -0.453986, 0.794310,
		-0.146414, 0.889067, 0.433731,
		-0.903103, 0.058796, -0.425380,
		39.203510, 32.511982, 39.717716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451832, 32.755146, 40.508659>,  <39.835682, 32.470825, 40.015480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451832, 32.755146, 40.508659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198471, 32.569824, 40.260742>,  <39.046455, 32.458630, 40.111992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198471, 32.569824, 40.260742>,  <39.451832, 32.755146, 40.508659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198471, 32.569824, 40.260742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415860, -0.471655, 0.777561,
		-0.652581, 0.750258, 0.106076,
		-0.633403, -0.463309, -0.619795,
		39.008450, 32.430832, 40.074802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944958, 32.868244, 40.930183>,  <39.451832, 32.755146, 40.508659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944958, 32.868244, 40.930183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841564, 32.574158, 40.679539>,  <38.779526, 32.397705, 40.529152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841564, 32.574158, 40.679539>,  <38.944958, 32.868244, 40.930183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841564, 32.574158, 40.679539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619479, -0.371563, 0.691511,
		-0.741236, 0.566917, -0.359408,
		-0.258487, -0.735218, -0.626609,
		38.764019, 32.353592, 40.491554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306496, 32.640057, 41.133953>,  <38.944958, 32.868244, 40.930183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306496, 32.640057, 41.133953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402920, 32.322823, 40.910202>,  <38.460773, 32.132481, 40.775951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402920, 32.322823, 40.910202>,  <38.306496, 32.640057, 41.133953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402920, 32.322823, 40.910202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709265, -0.537384, 0.456248,
		-0.662446, 0.286769, -0.692047,
		0.241058, -0.793084, -0.559383,
		38.475239, 32.084896, 40.742386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694992, 32.319511, 40.965019>,  <38.306496, 32.640057, 41.133953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694992, 32.319511, 40.965019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969681, 32.029732, 40.941074>,  <38.134495, 31.855864, 40.926708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969681, 32.029732, 40.941074>,  <37.694992, 32.319511, 40.965019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969681, 32.029732, 40.941074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450749, -0.488985, 0.746806,
		-0.570297, -0.485864, -0.662342,
		0.686722, -0.724452, -0.059864,
		38.175697, 31.812397, 40.923115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349319, 31.846310, 41.166325>,  <37.694992, 32.319511, 40.965019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349319, 31.846310, 41.166325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710812, 31.675081, 41.164585>,  <37.927708, 31.572344, 41.163540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710812, 31.675081, 41.164585>,  <37.349319, 31.846310, 41.166325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710812, 31.675081, 41.164585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292056, -0.623946, 0.724841,
		-0.312998, -0.653794, -0.688902,
		0.903734, -0.428072, -0.004349,
		37.981934, 31.546659, 41.163280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243271, 31.112103, 41.393318>,  <37.349319, 31.846310, 41.166325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243271, 31.112103, 41.393318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630466, 31.198927, 41.443729>,  <37.862785, 31.251022, 41.473976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630466, 31.198927, 41.443729>,  <37.243271, 31.112103, 41.393318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630466, 31.198927, 41.443729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002519, -0.493688, 0.869636,
		0.250985, -0.842114, -0.477337,
		0.967988, 0.217064, 0.126029,
		37.920864, 31.264046, 41.481537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448120, 30.503351, 41.747639>,  <37.243271, 31.112103, 41.393318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448120, 30.503351, 41.747639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724350, 30.781752, 41.826313>,  <37.890087, 30.948792, 41.873516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724350, 30.781752, 41.826313>,  <37.448120, 30.503351, 41.747639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724350, 30.781752, 41.826313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155250, -0.408252, 0.899571,
		0.706399, -0.590689, -0.389984,
		0.690578, 0.696001, 0.196684,
		37.931522, 30.990551, 41.885319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477741, 29.721752, 41.545170>,  <37.448120, 30.503351, 41.747639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477741, 29.721752, 41.545170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146881, 29.530716, 41.663643>,  <36.948364, 29.416094, 41.734726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146881, 29.530716, 41.663643>,  <37.477741, 29.721752, 41.545170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146881, 29.530716, 41.663643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457229, 0.265494, -0.848796,
		0.326743, -0.837507, -0.437973,
		-0.827152, -0.477592, 0.296185,
		36.898735, 29.387440, 41.752499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307087, 29.226366, 41.121578>,  <37.477741, 29.721752, 41.545170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307087, 29.226366, 41.121578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946781, 29.288359, 41.283867>,  <36.730598, 29.325554, 41.381241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946781, 29.288359, 41.283867>,  <37.307087, 29.226366, 41.121578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946781, 29.288359, 41.283867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371661, 0.208282, -0.904702,
		-0.224718, -0.965712, -0.130011,
		-0.900761, 0.154983, 0.405722,
		36.676552, 29.334854, 41.405582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800323, 29.007677, 40.655361>,  <37.307087, 29.226366, 41.121578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800323, 29.007677, 40.655361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571262, 29.224794, 40.901104>,  <36.433826, 29.355064, 41.048550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571262, 29.224794, 40.901104>,  <36.800323, 29.007677, 40.655361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571262, 29.224794, 40.901104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447789, 0.420629, -0.789023,
		-0.686695, -0.726943, 0.002181,
		-0.572657, 0.542794, 0.614360,
		36.399464, 29.387632, 41.085411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193932, 28.939360, 40.378395>,  <36.800323, 29.007677, 40.655361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193932, 28.939360, 40.378395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114643, 29.237854, 40.632587>,  <36.067070, 29.416950, 40.785103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114643, 29.237854, 40.632587>,  <36.193932, 28.939360, 40.378395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114643, 29.237854, 40.632587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567693, 0.441124, -0.695078,
		-0.799020, -0.498540, 0.336192,
		-0.198222, 0.746235, 0.635485,
		36.055176, 29.461725, 40.823235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542542, 29.041733, 40.369076>,  <36.193932, 28.939360, 40.378395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542542, 29.041733, 40.369076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653034, 29.406233, 40.491268>,  <35.719330, 29.624933, 40.564583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653034, 29.406233, 40.491268>,  <35.542542, 29.041733, 40.369076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653034, 29.406233, 40.491268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525823, 0.409351, -0.745615,
		-0.804492, 0.045329, 0.592231,
		0.276229, 0.911250, 0.305484,
		35.735905, 29.679607, 40.582912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910957, 29.367018, 40.576469>,  <35.542542, 29.041733, 40.369076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910957, 29.367018, 40.576469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188000, 29.644777, 40.498394>,  <35.354225, 29.811434, 40.451550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188000, 29.644777, 40.498394>,  <34.910957, 29.367018, 40.576469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188000, 29.644777, 40.498394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634100, 0.457166, -0.623631,
		-0.343815, 0.555704, 0.756957,
		0.692610, 0.694400, -0.195192,
		35.395782, 29.853098, 40.439838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495884, 29.937408, 40.273468>,  <34.910957, 29.367018, 40.576469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495884, 29.937408, 40.273468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863808, 30.053291, 40.167622>,  <35.084560, 30.122822, 40.104115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863808, 30.053291, 40.167622>,  <34.495884, 29.937408, 40.273468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863808, 30.053291, 40.167622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365938, 0.390075, -0.844944,
		-0.141567, 0.874020, 0.464809,
		0.919809, 0.289708, -0.264615,
		35.139751, 30.140203, 40.088238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366825, 30.587029, 40.100655>,  <34.495884, 29.937408, 40.273468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366825, 30.587029, 40.100655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702362, 30.485323, 39.908115>,  <34.903683, 30.424299, 39.792591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702362, 30.485323, 39.908115>,  <34.366825, 30.587029, 40.100655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702362, 30.485323, 39.908115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372124, 0.377542, -0.847930,
		0.397324, 0.890400, 0.222082,
		0.838843, -0.254261, -0.481346,
		34.954014, 30.409044, 39.763710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584175, 31.167309, 39.804779>,  <34.366825, 30.587029, 40.100655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584175, 31.167309, 39.804779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796078, 30.905918, 39.588512>,  <34.923222, 30.749083, 39.458752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796078, 30.905918, 39.588512>,  <34.584175, 31.167309, 39.804779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796078, 30.905918, 39.588512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392470, 0.376239, -0.839292,
		0.751880, 0.656818, -0.057154,
		0.529758, -0.653478, -0.540668,
		34.955006, 30.709875, 39.426311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132599, 31.481043, 39.321541>,  <34.584175, 31.167309, 39.804779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132599, 31.481043, 39.321541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028282, 31.127008, 39.167343>,  <34.965691, 30.914587, 39.074825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028282, 31.127008, 39.167343>,  <35.132599, 31.481043, 39.321541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028282, 31.127008, 39.167343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180500, 0.436977, -0.881176,
		0.948371, -0.160223, -0.273719,
		-0.260793, -0.885087, -0.385496,
		34.950043, 30.861483, 39.051693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199715, 31.722374, 38.727993>,  <35.132599, 31.481043, 39.321541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199715, 31.722374, 38.727993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032726, 31.359587, 38.705620>,  <34.932533, 31.141914, 38.692196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032726, 31.359587, 38.705620>,  <35.199715, 31.722374, 38.727993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032726, 31.359587, 38.705620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341747, 0.213737, -0.915164,
		0.841979, -0.362940, -0.399183,
		-0.417470, -0.906968, -0.055929,
		34.907486, 31.087496, 38.688843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424423, 31.345877, 38.089870>,  <35.199715, 31.722374, 38.727993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424423, 31.345877, 38.089870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061661, 31.214041, 38.194862>,  <34.844002, 31.134939, 38.257858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061661, 31.214041, 38.194862>,  <35.424423, 31.345877, 38.089870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061661, 31.214041, 38.194862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279682, 0.004991, -0.960080,
		0.315121, -0.944112, -0.096706,
		-0.906905, -0.329588, 0.262478,
		34.789589, 31.115164, 38.273605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.554192, 27.221617, 44.558174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240162, 27.429611, 44.692802>,  <38.051746, 27.554407, 44.773579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240162, 27.429611, 44.692802>,  <38.554192, 27.221617, 44.558174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240162, 27.429611, 44.692802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347717, 0.079707, -0.934205,
		-0.512599, -0.850449, 0.118232,
		-0.785070, 0.519984, 0.336574,
		38.004642, 27.585606, 44.793774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058590, 26.999599, 44.059757>,  <38.554192, 27.221617, 44.558174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058590, 26.999599, 44.059757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.886185, 27.313189, 44.238468>,  <37.782742, 27.501343, 44.345695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.886185, 27.313189, 44.238468>,  <38.058590, 26.999599, 44.059757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886185, 27.313189, 44.238468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411886, 0.269609, -0.870437,
		-0.802855, -0.559194, 0.206702,
		-0.431015, 0.783973, 0.446781,
		37.756882, 27.548380, 44.372501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425640, 26.965837, 43.813660>,  <38.058590, 26.999599, 44.059757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425640, 26.965837, 43.813660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482552, 27.341454, 43.938850>,  <37.516701, 27.566824, 44.013966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482552, 27.341454, 43.938850>,  <37.425640, 26.965837, 43.813660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482552, 27.341454, 43.938850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288778, 0.341820, -0.894297,
		-0.946764, 0.036862, 0.319810,
		0.142283, 0.939042, 0.312978,
		37.525238, 27.623167, 44.032745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876270, 27.418028, 43.481892>,  <37.425640, 26.965837, 43.813660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876270, 27.418028, 43.481892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.103924, 27.717222, 43.618481>,  <37.240517, 27.896738, 43.700436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.103924, 27.717222, 43.618481>,  <36.876270, 27.418028, 43.481892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103924, 27.717222, 43.618481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257928, 0.556739, -0.789629,
		-0.780741, 0.361331, 0.509787,
		0.569136, 0.747985, 0.341472,
		37.274666, 27.941618, 43.720921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474575, 27.976145, 43.490753>,  <36.876270, 27.418028, 43.481892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474575, 27.976145, 43.490753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838093, 28.143000, 43.494671>,  <37.056202, 28.243113, 43.497021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838093, 28.143000, 43.494671>,  <36.474575, 27.976145, 43.490753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838093, 28.143000, 43.494671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264171, 0.593380, -0.760338,
		-0.322977, 0.688401, 0.649454,
		0.908790, 0.417139, 0.009793,
		37.110729, 28.268141, 43.497608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404022, 28.696909, 43.490440>,  <36.474575, 27.976145, 43.490753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404022, 28.696909, 43.490440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.760937, 28.640476, 43.318897>,  <36.975086, 28.606617, 43.215973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.760937, 28.640476, 43.318897>,  <36.404022, 28.696909, 43.490440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760937, 28.640476, 43.318897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216247, 0.700301, -0.680305,
		0.396307, 0.699767, 0.594362,
		0.892288, -0.141081, -0.428857,
		37.028622, 28.598152, 43.190239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725121, 29.384922, 43.415863>,  <36.404022, 28.696909, 43.490440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725121, 29.384922, 43.415863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.887714, 29.121101, 43.162956>,  <36.985271, 28.962809, 43.011211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.887714, 29.121101, 43.162956>,  <36.725121, 29.384922, 43.415863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887714, 29.121101, 43.162956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167232, 0.626620, -0.761171,
		0.898224, 0.415137, 0.144411,
		0.406481, -0.659552, -0.632269,
		37.009659, 28.923235, 42.973274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083973, 29.828701, 42.872131>,  <36.725121, 29.384922, 43.415863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083973, 29.828701, 42.872131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.071640, 29.467667, 42.700371>,  <37.064240, 29.251047, 42.597313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.071640, 29.467667, 42.700371>,  <37.083973, 29.828701, 42.872131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071640, 29.467667, 42.700371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240440, 0.423693, -0.873311,
		0.970174, 0.076317, -0.230083,
		-0.030836, -0.902585, -0.429406,
		37.062389, 29.196892, 42.571548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505119, 29.930607, 42.246048>,  <37.083973, 29.828701, 42.872131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505119, 29.930607, 42.246048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.270172, 29.609434, 42.205448>,  <37.129204, 29.416731, 42.181087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.270172, 29.609434, 42.205448>,  <37.505119, 29.930607, 42.246048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270172, 29.609434, 42.205448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386258, 0.388324, -0.836666,
		0.711203, -0.452220, -0.538227,
		-0.587363, -0.802933, -0.101503,
		37.093964, 29.368555, 42.174995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188271, 30.115797, 42.076305>,  <37.505119, 29.930607, 42.246048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188271, 30.115797, 42.076305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197483, 30.506582, 42.161171>,  <38.203011, 30.741053, 42.212090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197483, 30.506582, 42.161171>,  <38.188271, 30.115797, 42.076305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197483, 30.506582, 42.161171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361520, -0.206002, 0.909322,
		0.932080, 0.055760, -0.357936,
		0.023032, 0.976962, 0.212168,
		38.204391, 30.799671, 42.224823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658745, 30.129969, 42.458099>,  <38.188271, 30.115797, 42.076305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658745, 30.129969, 42.458099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.502769, 30.487692, 42.545883>,  <38.409184, 30.702326, 42.598553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.502769, 30.487692, 42.545883>,  <38.658745, 30.129969, 42.458099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502769, 30.487692, 42.545883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326950, -0.088338, 0.940904,
		0.860844, 0.438645, -0.257948,
		-0.389936, 0.894308, 0.219461,
		38.385788, 30.755985, 42.611721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233463, 30.675644, 42.563103>,  <38.658745, 30.129969, 42.458099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233463, 30.675644, 42.563103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.897259, 30.787373, 42.748798>,  <38.695534, 30.854410, 42.860214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.897259, 30.787373, 42.748798>,  <39.233463, 30.675644, 42.563103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897259, 30.787373, 42.748798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475315, -0.031076, 0.879267,
		0.260024, 0.959695, -0.106645,
		-0.840514, 0.279321, 0.464237,
		38.645103, 30.871168, 42.888069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512337, 31.144550, 43.179630>,  <39.233463, 30.675644, 42.563103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512337, 31.144550, 43.179630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.142250, 31.027496, 43.276245>,  <38.920200, 30.957264, 43.334213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.142250, 31.027496, 43.276245>,  <39.512337, 31.144550, 43.179630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142250, 31.027496, 43.276245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255421, -0.009577, 0.966783,
		-0.280602, 0.956176, 0.083606,
		-0.925215, -0.292636, 0.241540,
		38.864685, 30.939705, 43.348705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329582, 31.534290, 43.790535>,  <39.512337, 31.144550, 43.179630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329582, 31.534290, 43.790535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.104633, 31.203564, 43.786270>,  <38.969666, 31.005127, 43.783710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.104633, 31.203564, 43.786270>,  <39.329582, 31.534290, 43.790535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104633, 31.203564, 43.786270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333824, -0.238814, 0.911882,
		-0.756506, 0.509256, 0.410313,
		-0.562370, -0.826817, -0.010663,
		38.935921, 30.955519, 43.783070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988377, 31.538279, 44.393982>,  <39.329582, 31.534290, 43.790535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988377, 31.538279, 44.393982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903683, 31.156254, 44.311008>,  <38.852867, 30.927040, 44.261227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903683, 31.156254, 44.311008>,  <38.988377, 31.538279, 44.393982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903683, 31.156254, 44.311008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111546, -0.234472, 0.965702,
		-0.970941, 0.181334, 0.156179,
		-0.211734, -0.955061, -0.207432,
		38.840164, 30.869736, 44.248779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489830, 31.273716, 44.780617>,  <38.988377, 31.538279, 44.393982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489830, 31.273716, 44.780617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705662, 30.950527, 44.685932>,  <38.835163, 30.756615, 44.629120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705662, 30.950527, 44.685932>,  <38.489830, 31.273716, 44.780617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705662, 30.950527, 44.685932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036689, -0.303449, 0.952141,
		-0.841133, -0.505074, -0.193379,
		0.539582, -0.807972, -0.236710,
		38.867535, 30.708136, 44.614918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170952, 30.829983, 45.286068>,  <38.489830, 31.273716, 44.780617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170952, 30.829983, 45.286068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510586, 30.671181, 45.146675>,  <38.714367, 30.575899, 45.063042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510586, 30.671181, 45.146675>,  <38.170952, 30.829983, 45.286068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510586, 30.671181, 45.146675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220577, -0.332965, 0.916777,
		-0.479998, -0.855290, -0.195145,
		0.849086, -0.397006, -0.348480,
		38.765312, 30.552078, 45.042130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207119, 30.242462, 45.666489>,  <38.170952, 30.829983, 45.286068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207119, 30.242462, 45.666489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576630, 30.319798, 45.534271>,  <38.798336, 30.366199, 45.454941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576630, 30.319798, 45.534271>,  <38.207119, 30.242462, 45.666489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576630, 30.319798, 45.534271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382555, -0.427670, 0.818993,
		0.016981, -0.883017, -0.469035,
		0.923777, 0.193339, -0.330541,
		38.853764, 30.377798, 45.435108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624336, 29.622849, 45.637459>,  <38.207119, 30.242462, 45.666489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624336, 29.622849, 45.637459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898338, 29.913548, 45.657879>,  <39.062740, 30.087967, 45.670132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898338, 29.913548, 45.657879>,  <38.624336, 29.622849, 45.637459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898338, 29.913548, 45.657879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505149, -0.524293, 0.685523,
		0.524966, -0.443799, -0.726259,
		0.685007, 0.726746, 0.051051,
		39.103840, 30.131571, 45.673195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231014, 29.277901, 45.751080>,  <38.624336, 29.622849, 45.637459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231014, 29.277901, 45.751080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298706, 29.653372, 45.871243>,  <39.339321, 29.878654, 45.943340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298706, 29.653372, 45.871243>,  <39.231014, 29.277901, 45.751080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298706, 29.653372, 45.871243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333125, -0.341347, 0.878925,
		0.927571, -0.048668, -0.370464,
		0.169233, 0.938676, 0.300411,
		39.349476, 29.934975, 45.961365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961288, 29.258739, 45.990097>,  <39.231014, 29.277901, 45.751080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961288, 29.258739, 45.990097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.783871, 29.586760, 46.134758>,  <39.677422, 29.783571, 46.221554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.783871, 29.586760, 46.134758>,  <39.961288, 29.258739, 45.990097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783871, 29.586760, 46.134758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312173, -0.236888, 0.920017,
		0.840128, 0.520966, -0.150927,
		-0.443545, 0.820048, 0.361648,
		39.650806, 29.832773, 46.243252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383133, 29.445017, 46.428093>,  <39.961288, 29.258739, 45.990097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383133, 29.445017, 46.428093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.051247, 29.645803, 46.525749>,  <39.852116, 29.766275, 46.584343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.051247, 29.645803, 46.525749>,  <40.383133, 29.445017, 46.428093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051247, 29.645803, 46.525749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172877, -0.184790, 0.967454,
		0.530742, 0.844917, 0.066545,
		-0.829715, 0.501964, 0.244142,
		39.802334, 29.796392, 46.598991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603825, 29.738985, 47.008255>,  <40.383133, 29.445017, 46.428093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603825, 29.738985, 47.008255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.204670, 29.756294, 47.027626>,  <39.965176, 29.766680, 47.039249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.204670, 29.756294, 47.027626>,  <40.603825, 29.738985, 47.008255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204670, 29.756294, 47.027626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025091, -0.430857, 0.902071,
		0.059898, 0.901382, 0.428862,
		-0.997889, 0.043272, 0.048424,
		39.905304, 29.769276, 47.042152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.486099, 29.684475, 47.009541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855320, 29.539114, 46.959080>,  <33.076851, 29.451899, 46.928802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855320, 29.539114, 46.959080>,  <32.486099, 29.684475, 47.009541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855320, 29.539114, 46.959080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054555, 0.448292, -0.892221,
		0.380785, 0.816685, 0.433622,
		0.923053, -0.363401, -0.126148,
		33.132236, 29.430094, 46.921234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849697, 30.286722, 46.795185>,  <32.486099, 29.684475, 47.009541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849697, 30.286722, 46.795185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044868, 29.963223, 46.663826>,  <33.161972, 29.769123, 46.585011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044868, 29.963223, 46.663826>,  <32.849697, 30.286722, 46.795185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044868, 29.963223, 46.663826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062153, 0.407456, -0.911107,
		0.870667, 0.424147, 0.249077,
		0.487931, -0.808752, -0.328396,
		33.191246, 29.720596, 46.565308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482933, 30.473679, 46.432716>,  <32.849697, 30.286722, 46.795185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482933, 30.473679, 46.432716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.444775, 30.093493, 46.314381>,  <33.421879, 29.865381, 46.243382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.444775, 30.093493, 46.314381>,  <33.482933, 30.473679, 46.432716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444775, 30.093493, 46.314381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312444, 0.253584, -0.915464,
		0.945135, -0.179761, 0.272776,
		-0.095393, -0.950464, -0.295836,
		33.416157, 29.808353, 46.225632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121239, 30.295675, 46.117035>,  <33.482933, 30.473679, 46.432716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121239, 30.295675, 46.117035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829155, 30.056797, 45.984280>,  <33.653904, 29.913471, 45.904625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829155, 30.056797, 45.984280>,  <34.121239, 30.295675, 46.117035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829155, 30.056797, 45.984280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273621, 0.189499, -0.942986,
		0.626039, -0.779390, 0.025032,
		-0.730210, -0.597195, -0.331891,
		33.610092, 29.877638, 45.884712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361980, 29.881220, 45.512375>,  <34.121239, 30.295675, 46.117035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361980, 29.881220, 45.512375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965828, 29.924252, 45.477573>,  <33.728138, 29.950071, 45.456692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965828, 29.924252, 45.477573>,  <34.361980, 29.881220, 45.512375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965828, 29.924252, 45.477573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116833, 0.313380, -0.942414,
		-0.074120, -0.943514, -0.322935,
		-0.990382, 0.107581, -0.087006,
		33.668713, 29.956526, 45.451473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221981, 29.631006, 44.903645>,  <34.361980, 29.881220, 45.512375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221981, 29.631006, 44.903645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.875172, 29.816988, 44.975288>,  <33.667084, 29.928577, 45.018272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.875172, 29.816988, 44.975288>,  <34.221981, 29.631006, 44.903645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875172, 29.816988, 44.975288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044451, 0.430210, -0.901634,
		-0.496274, -0.773779, -0.393672,
		-0.867027, 0.464957, 0.179107,
		33.615063, 29.956474, 45.029022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907230, 29.564634, 44.351562>,  <34.221981, 29.631006, 44.903645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907230, 29.564634, 44.351562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730778, 29.874622, 44.532593>,  <33.624905, 30.060616, 44.641209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730778, 29.874622, 44.532593>,  <33.907230, 29.564634, 44.351562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730778, 29.874622, 44.532593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144649, 0.559097, -0.816387,
		-0.885709, -0.294669, -0.358734,
		-0.441131, 0.774972, 0.452573,
		33.598438, 30.107113, 44.668365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469536, 29.761034, 43.836514>,  <33.907230, 29.564634, 44.351562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469536, 29.761034, 43.836514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474670, 30.063459, 44.098263>,  <33.477753, 30.244915, 44.255310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474670, 30.063459, 44.098263>,  <33.469536, 29.761034, 43.836514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474670, 30.063459, 44.098263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065170, 0.653665, -0.753973,
		-0.997792, -0.032965, 0.057665,
		0.012838, 0.756066, 0.654370,
		33.478523, 30.290279, 44.294575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907246, 30.152245, 43.642239>,  <33.469536, 29.761034, 43.836514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907246, 30.152245, 43.642239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167812, 30.388487, 43.832748>,  <33.324154, 30.530233, 43.947052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167812, 30.388487, 43.832748>,  <32.907246, 30.152245, 43.642239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167812, 30.388487, 43.832748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051281, 0.592024, -0.804287,
		-0.756982, 0.548352, 0.355369,
		0.651420, 0.590608, 0.476271,
		33.363239, 30.565670, 43.975632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603668, 30.886293, 43.670132>,  <32.907246, 30.152245, 43.642239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603668, 30.886293, 43.670132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.000042, 30.914520, 43.715851>,  <33.237865, 30.931456, 43.743282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.000042, 30.914520, 43.715851>,  <32.603668, 30.886293, 43.670132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000042, 30.914520, 43.715851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041360, 0.649281, -0.759423,
		-0.127803, 0.757268, 0.640478,
		0.990937, 0.070567, 0.114301,
		33.297321, 30.935690, 43.750141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715122, 31.464350, 43.399864>,  <32.603668, 30.886293, 43.670132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715122, 31.464350, 43.399864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104233, 31.390001, 43.455235>,  <33.337700, 31.345392, 43.488457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104233, 31.390001, 43.455235>,  <32.715122, 31.464350, 43.399864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104233, 31.390001, 43.455235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222784, 0.585415, -0.779524,
		0.063852, 0.789140, 0.610885,
		0.972775, -0.185869, 0.138428,
		33.396065, 31.334240, 43.496761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070747, 32.078876, 43.474167>,  <32.715122, 31.464350, 43.399864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070747, 32.078876, 43.474167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.348541, 31.827404, 43.334190>,  <33.515217, 31.676521, 43.250206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.348541, 31.827404, 43.334190>,  <33.070747, 32.078876, 43.474167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348541, 31.827404, 43.334190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149143, 0.601577, -0.784769,
		0.703881, 0.492819, 0.511548,
		0.694484, -0.628677, -0.349938,
		33.556885, 31.638802, 43.229210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558586, 32.485626, 43.298340>,  <33.070747, 32.078876, 43.474167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558586, 32.485626, 43.298340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624397, 32.142204, 43.104095>,  <33.663883, 31.936152, 42.987549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624397, 32.142204, 43.104095>,  <33.558586, 32.485626, 43.298340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624397, 32.142204, 43.104095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154530, 0.508677, -0.846976,
		0.974192, 0.064311, 0.216365,
		0.164530, -0.858552, -0.485611,
		33.673756, 31.884638, 42.958412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161858, 32.543812, 42.829556>,  <33.558586, 32.485626, 43.298340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161858, 32.543812, 42.829556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947266, 32.250278, 42.662861>,  <33.818508, 32.074158, 42.562843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947266, 32.250278, 42.662861>,  <34.161858, 32.543812, 42.829556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947266, 32.250278, 42.662861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017916, 0.483805, -0.874992,
		0.843721, -0.476885, -0.246406,
		-0.536483, -0.733835, -0.416741,
		33.786320, 32.030128, 42.537838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865257, 32.877659, 43.180569>,  <34.161858, 32.543812, 42.829556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865257, 32.877659, 43.180569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934196, 33.270500, 43.210926>,  <34.975559, 33.506207, 43.229141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934196, 33.270500, 43.210926>,  <34.865257, 32.877659, 43.180569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934196, 33.270500, 43.210926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038103, -0.070343, 0.996795,
		0.984299, -0.174689, 0.025297,
		0.172350, 0.982108, 0.075895,
		34.985901, 33.565132, 43.233696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523762, 32.995266, 43.418953>,  <34.865257, 32.877659, 43.180569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523762, 32.995266, 43.418953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.281258, 33.298019, 43.516582>,  <35.135754, 33.479671, 43.575161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.281258, 33.298019, 43.516582>,  <35.523762, 32.995266, 43.418953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281258, 33.298019, 43.516582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089548, -0.239983, 0.966638,
		0.790208, 0.607891, 0.077715,
		-0.606260, 0.756886, 0.244072,
		35.099380, 33.525085, 43.589806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709877, 33.182686, 44.107609>,  <35.523762, 32.995266, 43.418953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709877, 33.182686, 44.107609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.370140, 33.392193, 44.081425>,  <35.166298, 33.517899, 44.065712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.370140, 33.392193, 44.081425>,  <35.709877, 33.182686, 44.107609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370140, 33.392193, 44.081425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071012, 0.009508, 0.997430,
		0.523048, 0.851806, 0.029118,
		-0.849340, 0.523771, -0.065462,
		35.115337, 33.549324, 44.061787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766682, 33.712494, 44.597137>,  <35.709877, 33.182686, 44.107609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766682, 33.712494, 44.597137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.374622, 33.721634, 44.518360>,  <35.139385, 33.727116, 44.471092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.374622, 33.721634, 44.518360>,  <35.766682, 33.712494, 44.597137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374622, 33.721634, 44.518360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197221, -0.010496, 0.980303,
		0.020331, 0.999684, 0.014794,
		-0.980148, 0.022848, -0.196946,
		35.080578, 33.728489, 44.459278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462097, 34.327770, 44.943211>,  <35.766682, 33.712494, 44.597137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462097, 34.327770, 44.943211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.180466, 34.045227, 44.913982>,  <35.011486, 33.875702, 44.896446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.180466, 34.045227, 44.913982>,  <35.462097, 34.327770, 44.943211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180466, 34.045227, 44.913982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032089, -0.071151, 0.996949,
		-0.709398, 0.704274, 0.027429,
		-0.704077, -0.706354, -0.073074,
		34.969242, 33.833321, 44.892059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118473, 34.392017, 45.551445>,  <35.462097, 34.327770, 44.943211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118473, 34.392017, 45.551445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004532, 34.030685, 45.423164>,  <34.936165, 33.813885, 45.346195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004532, 34.030685, 45.423164>,  <35.118473, 34.392017, 45.551445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004532, 34.030685, 45.423164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054019, -0.349163, 0.935504,
		-0.957047, 0.249159, 0.148258,
		-0.284856, -0.903330, -0.320706,
		34.919075, 33.759686, 45.326954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540020, 34.101685, 46.054070>,  <35.118473, 34.392017, 45.551445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540020, 34.101685, 46.054070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.680454, 33.781353, 45.859993>,  <34.764713, 33.589153, 45.743549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.680454, 33.781353, 45.859993>,  <34.540020, 34.101685, 46.054070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680454, 33.781353, 45.859993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021494, -0.524929, 0.850875,
		-0.936098, -0.288299, -0.201507,
		0.351083, -0.800833, -0.485188,
		34.785778, 33.541103, 45.714436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403214, 33.597172, 46.541973>,  <34.540020, 34.101685, 46.054070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403214, 33.597172, 46.541973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630272, 33.393761, 46.282997>,  <34.766506, 33.271713, 46.127613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630272, 33.393761, 46.282997>,  <34.403214, 33.597172, 46.541973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630272, 33.393761, 46.282997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087226, -0.744846, 0.661511,
		-0.818639, -0.431978, -0.378452,
		0.567646, -0.508528, -0.647439,
		34.800568, 33.241203, 46.088764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139709, 32.865353, 46.445412>,  <34.403214, 33.597172, 46.541973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139709, 32.865353, 46.445412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530910, 32.851513, 46.363132>,  <34.765633, 32.843208, 46.313766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530910, 32.851513, 46.363132>,  <34.139709, 32.865353, 46.445412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530910, 32.851513, 46.363132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124325, -0.695139, 0.708043,
		-0.167484, -0.718042, -0.675547,
		0.978004, -0.034598, -0.205695,
		34.824310, 32.841133, 46.301422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222256, 32.225281, 46.266335>,  <34.139709, 32.865353, 46.445412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222256, 32.225281, 46.266335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.580173, 32.365963, 46.376343>,  <34.794926, 32.450375, 46.442348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.580173, 32.365963, 46.376343>,  <34.222256, 32.225281, 46.266335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580173, 32.365963, 46.376343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022870, -0.651288, 0.758486,
		0.445884, -0.672403, -0.590815,
		0.894799, 0.351709, 0.275021,
		34.848614, 32.471474, 46.458851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703178, 31.685831, 46.350613>,  <34.222256, 32.225281, 46.266335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703178, 31.685831, 46.350613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.931511, 31.945683, 46.551468>,  <35.068508, 32.101593, 46.671982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.931511, 31.945683, 46.551468>,  <34.703178, 31.685831, 46.350613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931511, 31.945683, 46.551468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042343, -0.634039, 0.772141,
		0.819977, -0.419498, -0.389434,
		0.570828, 0.649627, 0.502135,
		35.102760, 32.140572, 46.702106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355137, 31.411797, 46.447067>,  <34.703178, 31.685831, 46.350613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355137, 31.411797, 46.447067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.310726, 31.680731, 46.739819>,  <35.284081, 31.842091, 46.915470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.310726, 31.680731, 46.739819>,  <35.355137, 31.411797, 46.447067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310726, 31.680731, 46.739819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258897, -0.691432, 0.674458,
		0.959503, 0.264362, -0.097299,
		-0.111026, 0.672335, 0.731874,
		35.277420, 31.882431, 46.959381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902313, 31.300945, 46.898750>,  <35.355137, 31.411797, 46.447067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902313, 31.300945, 46.898750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.628582, 31.487963, 47.122574>,  <35.464344, 31.600172, 47.256866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.628582, 31.487963, 47.122574>,  <35.902313, 31.300945, 46.898750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628582, 31.487963, 47.122574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114952, -0.688613, 0.715960,
		0.720059, 0.554272, 0.417490,
		-0.684326, 0.467542, 0.559556,
		35.423283, 31.628225, 47.290440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208115, 31.325447, 47.518589>,  <35.902313, 31.300945, 46.898750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208115, 31.325447, 47.518589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830486, 31.425245, 47.604836>,  <35.603909, 31.485125, 47.656582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830486, 31.425245, 47.604836>,  <36.208115, 31.325447, 47.518589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830486, 31.425245, 47.604836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108625, -0.382078, 0.917724,
		0.311348, 0.889814, 0.333606,
		-0.944067, 0.249493, 0.215615,
		35.547268, 31.500093, 47.669521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470081, 32.062202, 47.651348>,  <36.208115, 31.325447, 47.518589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470081, 32.062202, 47.651348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810753, 32.240383, 47.761776>,  <37.015156, 32.347290, 47.828033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810753, 32.240383, 47.761776>,  <36.470081, 32.062202, 47.651348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810753, 32.240383, 47.761776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039396, 0.579715, -0.813866,
		-0.522577, 0.682279, 0.511282,
		0.851682, 0.445450, 0.276066,
		37.066257, 32.374020, 47.844597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380383, 32.827579, 47.649891>,  <36.470081, 32.062202, 47.651348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380383, 32.827579, 47.649891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.774811, 32.770046, 47.616459>,  <37.011467, 32.735527, 47.596401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.774811, 32.770046, 47.616459>,  <36.380383, 32.827579, 47.649891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774811, 32.770046, 47.616459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066108, 0.799843, -0.596558,
		0.152655, 0.582720, 0.798207,
		0.986066, -0.143835, -0.083577,
		37.070629, 32.726894, 47.591385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693459, 33.558514, 47.776535>,  <36.380383, 32.827579, 47.649891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693459, 33.558514, 47.776535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985031, 33.352417, 47.596237>,  <37.159977, 33.228760, 47.488056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985031, 33.352417, 47.596237>,  <36.693459, 33.558514, 47.776535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985031, 33.352417, 47.596237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154292, 0.765138, -0.625106,
		0.666968, 0.386116, 0.637235,
		0.728936, -0.515246, -0.450749,
		37.203712, 33.197842, 47.461014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198696, 34.009369, 47.644184>,  <36.693459, 33.558514, 47.776535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198696, 34.009369, 47.644184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.258446, 33.710941, 47.384624>,  <37.294296, 33.531883, 47.228889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.258446, 33.710941, 47.384624>,  <37.198696, 34.009369, 47.644184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258446, 33.710941, 47.384624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251556, 0.663339, -0.704771,
		0.956246, -0.057957, 0.286766,
		0.149376, -0.746072, -0.648894,
		37.303257, 33.487122, 47.189957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617413, 34.346157, 47.128403>,  <37.198696, 34.009369, 47.644184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617413, 34.346157, 47.128403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.525536, 34.005539, 46.939888>,  <37.470409, 33.801167, 46.826778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.525536, 34.005539, 46.939888>,  <37.617413, 34.346157, 47.128403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525536, 34.005539, 46.939888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283094, 0.404840, -0.869461,
		0.931183, -0.333123, 0.148082,
		-0.229688, -0.851548, -0.471285,
		37.456631, 33.750076, 46.798504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119827, 34.169220, 46.681107>,  <37.617413, 34.346157, 47.128403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119827, 34.169220, 46.681107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792446, 33.977886, 46.553776>,  <37.596016, 33.863087, 46.477379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792446, 33.977886, 46.553776>,  <38.119827, 34.169220, 46.681107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792446, 33.977886, 46.553776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145587, 0.363288, -0.920231,
		0.555825, -0.799508, -0.227694,
		-0.818451, -0.478339, -0.318323,
		37.546909, 33.834385, 46.458279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316647, 33.812462, 46.040878>,  <38.119827, 34.169220, 46.681107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316647, 33.812462, 46.040878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922413, 33.878326, 46.025341>,  <37.685871, 33.917847, 46.016018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922413, 33.878326, 46.025341>,  <38.316647, 33.812462, 46.040878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922413, 33.878326, 46.025341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086280, 0.291730, -0.952601,
		-0.145529, -0.942220, -0.301732,
		-0.985585, 0.164665, -0.038839,
		37.626736, 33.927727, 46.013691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164169, 33.549881, 45.448563>,  <38.316647, 33.812462, 46.040878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164169, 33.549881, 45.448563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839645, 33.778774, 45.496437>,  <37.644932, 33.916111, 45.525162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839645, 33.778774, 45.496437>,  <38.164169, 33.549881, 45.448563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839645, 33.778774, 45.496437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046015, 0.266592, -0.962711,
		-0.582799, -0.775552, -0.242620,
		-0.811312, 0.572231, 0.119682,
		37.596252, 33.950443, 45.532341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618469, 33.440525, 44.891632>,  <38.164169, 33.549881, 45.448563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618469, 33.440525, 44.891632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.556660, 33.809883, 45.032181>,  <37.519573, 34.031498, 45.116508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.556660, 33.809883, 45.032181>,  <37.618469, 33.440525, 44.891632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556660, 33.809883, 45.032181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166411, 0.326236, -0.930525,
		-0.973873, -0.202261, 0.103252,
		-0.154524, 0.923396, 0.351371,
		37.510303, 34.086903, 45.137592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015469, 33.658009, 44.592365>,  <37.618469, 33.440525, 44.891632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015469, 33.658009, 44.592365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.209614, 33.994907, 44.686207>,  <37.326103, 34.197048, 44.742512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.209614, 33.994907, 44.686207>,  <37.015469, 33.658009, 44.592365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209614, 33.994907, 44.686207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188295, 0.362730, -0.912673,
		-0.853795, 0.398804, 0.334648,
		0.485365, 0.842248, 0.234604,
		37.355225, 34.247581, 44.756588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615273, 34.147266, 44.254627>,  <37.015469, 33.658009, 44.592365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615273, 34.147266, 44.254627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958214, 34.333164, 44.343136>,  <37.163979, 34.444702, 44.396240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958214, 34.333164, 44.343136>,  <36.615273, 34.147266, 44.254627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958214, 34.333164, 44.343136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120515, 0.599169, -0.791501,
		-0.500427, 0.651926, 0.569706,
		0.857350, 0.464746, 0.221273,
		37.215420, 34.472588, 44.409519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479469, 34.786232, 44.018333>,  <36.615273, 34.147266, 44.254627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479469, 34.786232, 44.018333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.878220, 34.773140, 44.047108>,  <37.117470, 34.765285, 44.064373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.878220, 34.773140, 44.047108>,  <36.479469, 34.786232, 44.018333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878220, 34.773140, 44.047108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078311, 0.531877, -0.843193,
		-0.010666, 0.846189, 0.532776,
		0.996872, -0.032729, 0.071939,
		37.177280, 34.763321, 44.068691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731956, 35.571995, 43.920086>,  <36.479469, 34.786232, 44.018333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731956, 35.571995, 43.920086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.019081, 35.309532, 43.826954>,  <37.191357, 35.152054, 43.771076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.019081, 35.309532, 43.826954>,  <36.731956, 35.571995, 43.920086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019081, 35.309532, 43.826954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036156, 0.369088, -0.928691,
		0.695300, 0.658206, 0.288659,
		0.717810, -0.656155, -0.232828,
		37.234425, 35.112686, 43.757107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236534, 35.922573, 43.559074>,  <36.731956, 35.571995, 43.920086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236534, 35.922573, 43.559074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.372700, 35.565598, 43.440636>,  <37.454399, 35.351414, 43.369572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.372700, 35.565598, 43.440636>,  <37.236534, 35.922573, 43.559074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372700, 35.565598, 43.440636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235443, 0.385778, -0.892044,
		0.910322, 0.233948, 0.341442,
		0.340412, -0.892437, -0.296100,
		37.474823, 35.297867, 43.351807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.907059, 32.691940, 30.040453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.853245, 32.387123, 30.293810>,  <33.820957, 32.204231, 30.445824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.853245, 32.387123, 30.293810>,  <33.907059, 32.691940, 30.040453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853245, 32.387123, 30.293810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914472, 0.341659, 0.216819,
		-0.381631, -0.550049, -0.742836,
		-0.134536, -0.762046, 0.633392,
		33.812885, 32.158508, 30.483828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254101, 32.398819, 29.797781>,  <33.907059, 32.691940, 30.040453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254101, 32.398819, 29.797781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.307541, 32.261665, 30.169712>,  <33.339603, 32.179375, 30.392872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.307541, 32.261665, 30.169712>,  <33.254101, 32.398819, 29.797781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307541, 32.261665, 30.169712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935079, 0.267194, 0.232885,
		-0.328297, -0.900577, -0.284925,
		0.133601, -0.342882, 0.929829,
		33.347622, 32.158802, 30.448662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654564, 32.011398, 30.000717>,  <33.254101, 32.398819, 29.797781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654564, 32.011398, 30.000717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.822842, 32.097530, 30.353228>,  <32.923809, 32.149208, 30.564734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.822842, 32.097530, 30.353228>,  <32.654564, 32.011398, 30.000717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822842, 32.097530, 30.353228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852839, 0.425092, 0.303253,
		-0.309324, -0.879164, 0.362476,
		0.420695, 0.215330, 0.881277,
		32.949051, 32.162128, 30.617611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107655, 31.857977, 30.377642>,  <32.654564, 32.011398, 30.000717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107655, 31.857977, 30.377642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.336937, 32.080921, 30.617905>,  <32.474506, 32.214687, 30.762062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.336937, 32.080921, 30.617905>,  <32.107655, 31.857977, 30.377642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336937, 32.080921, 30.617905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817764, 0.342633, 0.462454,
		0.051949, -0.756276, 0.652187,
		0.573204, 0.557360, 0.600656,
		32.508900, 32.248131, 30.798101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712803, 31.823895, 30.959156>,  <32.107655, 31.857977, 30.377642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712803, 31.823895, 30.959156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.963207, 32.127419, 31.031067>,  <32.113449, 32.309532, 31.074213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.963207, 32.127419, 31.031067>,  <31.712803, 31.823895, 30.959156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963207, 32.127419, 31.031067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738517, 0.502859, 0.449139,
		0.250406, -0.413936, 0.875188,
		0.626010, 0.758808, 0.179780,
		32.151009, 32.355061, 31.085001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594242, 31.902552, 31.592934>,  <31.712803, 31.823895, 30.959156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594242, 31.902552, 31.592934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.755020, 32.235249, 31.439756>,  <31.851486, 32.434868, 31.347851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.755020, 32.235249, 31.439756>,  <31.594242, 31.902552, 31.592934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755020, 32.235249, 31.439756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657362, 0.553246, 0.511658,
		0.637430, 0.046075, 0.769130,
		0.401943, 0.831743, -0.382943,
		31.875603, 32.484772, 31.324875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775986, 32.402527, 32.096462>,  <31.594242, 31.902552, 31.592934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775986, 32.402527, 32.096462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.750616, 32.638985, 31.774834>,  <31.735394, 32.780861, 31.581858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.750616, 32.638985, 31.774834>,  <31.775986, 32.402527, 32.096462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750616, 32.638985, 31.774834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661591, 0.578303, 0.477350,
		0.747178, 0.562239, 0.354418,
		-0.063424, 0.591145, -0.804068,
		31.731588, 32.816330, 31.533613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788322, 33.113892, 32.354527>,  <31.775986, 32.402527, 32.096462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788322, 33.113892, 32.354527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.620173, 33.119259, 31.991627>,  <31.519283, 33.122478, 31.773886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.620173, 33.119259, 31.991627>,  <31.788322, 33.113892, 32.354527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620173, 33.119259, 31.991627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777076, 0.510895, 0.367613,
		0.468443, 0.859538, -0.204339,
		-0.420374, 0.013419, -0.907252,
		31.494061, 33.123283, 31.719452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529638, 33.780586, 32.352043>,  <31.788322, 33.113892, 32.354527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529638, 33.780586, 32.352043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331142, 33.600292, 32.055237>,  <31.212046, 33.492115, 31.877153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331142, 33.600292, 32.055237>,  <31.529638, 33.780586, 32.352043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331142, 33.600292, 32.055237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849251, 0.429542, 0.307028,
		0.180336, 0.782514, -0.595945,
		-0.496237, -0.450739, -0.742013,
		31.182272, 33.465069, 31.832632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075502, 34.353230, 32.090088>,  <31.529638, 33.780586, 32.352043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075502, 34.353230, 32.090088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928438, 33.997528, 31.981241>,  <30.840200, 33.784107, 31.915932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928438, 33.997528, 31.981241>,  <31.075502, 34.353230, 32.090088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928438, 33.997528, 31.981241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923488, 0.314656, 0.219455,
		-0.109528, 0.331985, -0.936904,
		-0.367658, -0.889257, -0.272120,
		30.818140, 33.730751, 31.899605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484528, 34.516464, 31.737568>,  <31.075502, 34.353230, 32.090088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484528, 34.516464, 31.737568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440365, 34.132549, 31.840807>,  <30.413868, 33.902199, 31.902750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440365, 34.132549, 31.840807>,  <30.484528, 34.516464, 31.737568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440365, 34.132549, 31.840807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899095, 0.207130, 0.385649,
		-0.423602, -0.189475, -0.885811,
		-0.110408, -0.959790, 0.258096,
		30.407242, 33.844612, 31.918236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773602, 34.356407, 31.586218>,  <30.484528, 34.516464, 31.737568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773602, 34.356407, 31.586218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857500, 34.057396, 31.838318>,  <29.907839, 33.877991, 31.989578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857500, 34.057396, 31.838318>,  <29.773602, 34.356407, 31.586218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857500, 34.057396, 31.838318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788242, 0.252112, 0.561350,
		-0.578516, -0.614530, -0.536350,
		0.209746, -0.747524, 0.630249,
		29.920424, 33.833138, 32.027393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149841, 33.940102, 31.662033>,  <29.773602, 34.356407, 31.586218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149841, 33.940102, 31.662033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.378023, 33.870911, 31.983196>,  <29.514933, 33.829395, 32.175896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.378023, 33.870911, 31.983196>,  <29.149841, 33.940102, 31.662033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378023, 33.870911, 31.983196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799366, 0.107630, 0.591126,
		-0.188670, -0.979027, -0.076876,
		0.570454, -0.172980, 0.802907,
		29.549160, 33.819016, 32.224068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923897, 33.299240, 32.011806>,  <29.149841, 33.940102, 31.662033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923897, 33.299240, 32.011806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.141193, 33.493019, 32.286091>,  <29.271572, 33.609287, 32.450661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.141193, 33.493019, 32.286091>,  <28.923897, 33.299240, 32.011806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141193, 33.493019, 32.286091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806530, 0.074237, 0.586513,
		0.233230, -0.871665, 0.431051,
		0.543243, 0.484448, 0.685709,
		29.304167, 33.638351, 32.491802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795048, 32.913528, 32.623196>,  <28.923897, 33.299240, 32.011806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795048, 32.913528, 32.623196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.933464, 33.251976, 32.785351>,  <29.016514, 33.455044, 32.882645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.933464, 33.251976, 32.785351>,  <28.795048, 32.913528, 32.623196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933464, 33.251976, 32.785351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794974, 0.034958, 0.605635,
		0.498268, -0.531845, 0.684740,
		0.346041, 0.846120, 0.405385,
		29.037277, 33.505814, 32.906967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676693, 32.862682, 33.300255>,  <28.795048, 32.913528, 32.623196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676693, 32.862682, 33.300255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.747957, 33.256279, 33.302078>,  <28.790716, 33.492435, 33.303173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.747957, 33.256279, 33.302078>,  <28.676693, 32.862682, 33.300255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747957, 33.256279, 33.302078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734524, 0.129910, 0.666031,
		0.654777, -0.122006, 0.745910,
		0.178162, 0.983991, 0.004554,
		28.801405, 33.551476, 33.303444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819490, 33.055416, 33.935963>,  <28.676693, 32.862682, 33.300255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819490, 33.055416, 33.935963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683010, 33.393944, 33.772343>,  <28.601122, 33.597061, 33.674171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683010, 33.393944, 33.772343>,  <28.819490, 33.055416, 33.935963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683010, 33.393944, 33.772343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748250, 0.018856, 0.663149,
		0.568951, 0.532336, 0.626827,
		-0.341199, 0.846323, -0.409049,
		28.580650, 33.647842, 33.649628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695417, 33.523731, 34.498577>,  <28.819490, 33.055416, 33.935963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695417, 33.523731, 34.498577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.471657, 33.631687, 34.185085>,  <28.337400, 33.696461, 33.996990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.471657, 33.631687, 34.185085>,  <28.695417, 33.523731, 34.498577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471657, 33.631687, 34.185085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781036, 0.145008, 0.607418,
		0.277581, 0.951911, 0.129673,
		-0.559404, 0.269886, -0.783728,
		28.303835, 33.712654, 33.949966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406822, 33.743813, 34.635895>,  <28.695417, 33.523731, 34.498577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406822, 33.743813, 34.635895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557737, 33.799191, 35.002171>,  <29.648287, 33.832417, 35.221935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557737, 33.799191, 35.002171>,  <29.406822, 33.743813, 34.635895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557737, 33.799191, 35.002171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820233, -0.509014, -0.261001,
		0.429966, 0.849552, -0.305599,
		0.377288, 0.138440, 0.915690,
		29.670923, 33.840721, 35.276878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992733, 34.203617, 34.793392>,  <29.406822, 33.743813, 34.635895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992733, 34.203617, 34.793392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.981630, 33.878796, 35.026558>,  <29.974968, 33.683903, 35.166458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.981630, 33.878796, 35.026558>,  <29.992733, 34.203617, 34.793392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981630, 33.878796, 35.026558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899358, -0.274828, -0.340037,
		0.436332, 0.514813, 0.737958,
		-0.027757, -0.812057, 0.582917,
		29.973303, 33.635178, 35.201431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643377, 34.239456, 35.110950>,  <29.992733, 34.203617, 34.793392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643377, 34.239456, 35.110950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.496080, 33.868984, 35.143414>,  <30.407703, 33.646702, 35.162891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.496080, 33.868984, 35.143414>,  <30.643377, 34.239456, 35.110950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496080, 33.868984, 35.143414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888466, -0.376272, -0.262771,
		0.273912, -0.024653, 0.961439,
		-0.368241, -0.926181, 0.081162,
		30.385609, 33.591129, 35.167763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156822, 33.844322, 35.479244>,  <30.643377, 34.239456, 35.110950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156822, 33.844322, 35.479244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947803, 33.559673, 35.291397>,  <30.822393, 33.388885, 35.178688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947803, 33.559673, 35.291397>,  <31.156822, 33.844322, 35.479244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947803, 33.559673, 35.291397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850878, -0.400139, -0.340435,
		0.054346, -0.577483, 0.814592,
		-0.522545, -0.711619, -0.469621,
		30.791040, 33.346188, 35.150509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596142, 33.262768, 35.598206>,  <31.156822, 33.844322, 35.479244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596142, 33.262768, 35.598206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.355278, 33.168179, 35.293186>,  <31.210760, 33.111423, 35.110176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.355278, 33.168179, 35.293186>,  <31.596142, 33.262768, 35.598206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355278, 33.168179, 35.293186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704117, -0.607514, -0.367623,
		-0.376325, -0.758292, 0.532328,
		-0.602162, -0.236475, -0.762549,
		31.174629, 33.097237, 35.064423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608835, 32.516865, 35.595520>,  <31.596142, 33.262768, 35.598206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608835, 32.516865, 35.595520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.487608, 32.626972, 35.230579>,  <31.414871, 32.693035, 35.011616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.487608, 32.626972, 35.230579>,  <31.608835, 32.516865, 35.595520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487608, 32.626972, 35.230579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586014, -0.701131, -0.406205,
		-0.751490, -0.657756, 0.051179,
		-0.303067, 0.275268, -0.912347,
		31.396688, 32.709553, 34.956875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298212, 31.871572, 35.253876>,  <31.608835, 32.516865, 35.595520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298212, 31.871572, 35.253876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.407660, 32.157814, 34.996803>,  <31.473328, 32.329559, 34.842560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.407660, 32.157814, 34.996803>,  <31.298212, 31.871572, 35.253876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407660, 32.157814, 34.996803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565326, -0.660235, -0.494466,
		-0.778165, -0.228031, -0.585202,
		0.273617, 0.715606, -0.642684,
		31.489744, 32.372498, 34.803997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376755, 31.498774, 34.561584>,  <31.298212, 31.871572, 35.253876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376755, 31.498774, 34.561584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.580818, 31.842007, 34.538158>,  <31.703257, 32.047947, 34.524101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.580818, 31.842007, 34.538158>,  <31.376755, 31.498774, 34.561584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580818, 31.842007, 34.538158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700724, -0.454154, -0.550209,
		-0.498723, 0.239656, -0.832971,
		0.510158, 0.858085, -0.058564,
		31.733866, 32.099434, 34.520588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583496, 31.590326, 33.840157>,  <31.376755, 31.498774, 34.561584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583496, 31.590326, 33.840157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.847666, 31.813953, 34.040668>,  <32.006168, 31.948130, 34.160976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.847666, 31.813953, 34.040668>,  <31.583496, 31.590326, 33.840157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847666, 31.813953, 34.040668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746396, -0.415814, -0.519608,
		-0.082056, 0.717317, -0.691899,
		0.660424, 0.559067, 0.501282,
		32.045792, 31.981674, 34.191051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059765, 31.931850, 33.341785>,  <31.583496, 31.590326, 33.840157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059765, 31.931850, 33.341785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.260181, 31.964991, 33.686363>,  <32.380432, 31.984875, 33.893112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.260181, 31.964991, 33.686363>,  <32.059765, 31.931850, 33.341785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260181, 31.964991, 33.686363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815033, -0.379877, -0.437510,
		0.290997, 0.921320, -0.257858,
		0.501041, 0.082849, 0.861449,
		32.410492, 31.989845, 33.944798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695824, 32.319359, 33.162148>,  <32.059765, 31.931850, 33.341785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695824, 32.319359, 33.162148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.756474, 32.114094, 33.500065>,  <32.792862, 31.990936, 33.702816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.756474, 32.114094, 33.500065>,  <32.695824, 32.319359, 33.162148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756474, 32.114094, 33.500065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861402, -0.350562, -0.367549,
		0.484764, 0.783437, 0.388883,
		0.151624, -0.513159, 0.844795,
		32.801960, 31.960146, 33.753502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265087, 32.090546, 33.039902>,  <32.695824, 32.319359, 33.162148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265087, 32.090546, 33.039902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.225544, 31.896542, 33.387463>,  <33.201820, 31.780140, 33.596001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.225544, 31.896542, 33.387463>,  <33.265087, 32.090546, 33.039902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225544, 31.896542, 33.387463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906246, -0.404550, -0.122711,
		0.411031, 0.775311, 0.479528,
		-0.098854, -0.485008, 0.868905,
		33.195889, 31.751040, 33.648132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760899, 32.284145, 33.571327>,  <33.265087, 32.090546, 33.039902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760899, 32.284145, 33.571327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.669529, 31.907913, 33.671833>,  <33.614708, 31.682175, 33.732136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.669529, 31.907913, 33.671833>,  <33.760899, 32.284145, 33.571327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669529, 31.907913, 33.671833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916157, -0.294985, -0.271367,
		0.329362, 0.168213, 0.929099,
		-0.228423, -0.940579, 0.251267,
		33.601002, 31.625740, 33.747211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400539, 32.063271, 33.746830>,  <33.760899, 32.284145, 33.571327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400539, 32.063271, 33.746830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.176086, 31.733875, 33.713383>,  <34.041416, 31.536238, 33.693314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.176086, 31.733875, 33.713383>,  <34.400539, 32.063271, 33.746830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176086, 31.733875, 33.713383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785279, -0.497696, -0.368288,
		0.261663, -0.272326, 0.925943,
		-0.561133, -0.823491, -0.083623,
		34.007748, 31.486828, 33.688297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812897, 31.409908, 33.914864>,  <34.400539, 32.063271, 33.746830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812897, 31.409908, 33.914864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.516701, 31.271881, 33.684177>,  <34.338982, 31.189064, 33.545765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.516701, 31.271881, 33.684177>,  <34.812897, 31.409908, 33.914864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516701, 31.271881, 33.684177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613564, -0.697281, -0.370592,
		-0.274254, -0.628273, 0.728051,
		-0.740489, -0.345070, -0.576717,
		34.294556, 31.168360, 33.511162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067169, 30.684830, 33.778015>,  <34.812897, 31.409908, 33.914864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067169, 30.684830, 33.778015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.803932, 30.787840, 33.495007>,  <34.645988, 30.849646, 33.325199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.803932, 30.787840, 33.495007>,  <35.067169, 30.684830, 33.778015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803932, 30.787840, 33.495007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568748, -0.445743, -0.691259,
		-0.493391, -0.857317, 0.146874,
		-0.658096, 0.257527, -0.707523,
		34.606503, 30.865099, 33.282749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953278, 30.129124, 33.417339>,  <35.067169, 30.684830, 33.778015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953278, 30.129124, 33.417339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.861736, 30.410332, 33.148003>,  <34.806812, 30.579058, 32.986401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.861736, 30.410332, 33.148003>,  <34.953278, 30.129124, 33.417339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861736, 30.410332, 33.148003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511599, -0.501614, -0.697603,
		-0.828187, -0.504127, -0.244871,
		-0.228850, 0.703022, -0.673342,
		34.793083, 30.621239, 32.945999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907063, 29.744740, 32.860394>,  <34.953278, 30.129124, 33.417339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907063, 29.744740, 32.860394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.912914, 30.109938, 32.697311>,  <34.916428, 30.329056, 32.599461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.912914, 30.109938, 32.697311>,  <34.907063, 29.744740, 32.860394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912914, 30.109938, 32.697311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435767, -0.372814, -0.819217,
		-0.899940, -0.165677, -0.403309,
		0.014634, 0.912996, -0.407707,
		34.917305, 30.383837, 32.575001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531101, 29.760786, 32.244293>,  <34.907063, 29.744740, 32.860394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531101, 29.760786, 32.244293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.802628, 30.053596, 32.221153>,  <34.965546, 30.229282, 32.207268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.802628, 30.053596, 32.221153>,  <34.531101, 29.760786, 32.244293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802628, 30.053596, 32.221153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353348, -0.394696, -0.848151,
		-0.643701, 0.555298, -0.526586,
		0.678818, 0.732024, -0.057853,
		35.006271, 30.273203, 32.203796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526718, 29.963156, 31.535408>,  <34.531101, 29.760786, 32.244293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526718, 29.963156, 31.535408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.861458, 30.107115, 31.700409>,  <35.062302, 30.193491, 31.799410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.861458, 30.107115, 31.700409>,  <34.526718, 29.963156, 31.535408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861458, 30.107115, 31.700409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497521, -0.185648, -0.847353,
		-0.228380, 0.914335, -0.334416,
		0.836849, 0.359897, 0.412502,
		35.112511, 30.215084, 31.824160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920887, 30.267906, 30.905430>,  <34.526718, 29.963156, 31.535408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920887, 30.267906, 30.905430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.203388, 30.232500, 31.186392>,  <35.372890, 30.211256, 31.354969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.203388, 30.232500, 31.186392>,  <34.920887, 30.267906, 30.905430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203388, 30.232500, 31.186392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650123, -0.311676, -0.692963,
		0.280259, 0.946057, -0.162578,
		0.706254, -0.088513, 0.702404,
		35.415264, 30.205946, 31.397114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460403, 30.610640, 30.692192>,  <34.920887, 30.267906, 30.905430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460403, 30.610640, 30.692192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.627918, 30.349461, 30.944630>,  <35.728428, 30.192753, 31.096092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.627918, 30.349461, 30.944630>,  <35.460403, 30.610640, 30.692192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627918, 30.349461, 30.944630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588191, -0.334436, -0.736331,
		0.691847, 0.679566, 0.244003,
		0.418782, -0.652949, 0.631094,
		35.753551, 30.153576, 31.133957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149654, 30.534529, 30.433517>,  <35.460403, 30.610640, 30.692192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149654, 30.534529, 30.433517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.156631, 30.224829, 30.686573>,  <36.160820, 30.039009, 30.838406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.156631, 30.224829, 30.686573>,  <36.149654, 30.534529, 30.433517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156631, 30.224829, 30.686573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756687, -0.403360, -0.514516,
		0.653545, 0.487685, 0.578829,
		0.017445, -0.774251, 0.632638,
		36.161865, 29.992554, 30.876364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873802, 30.229675, 30.587313>,  <36.149654, 30.534529, 30.433517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873802, 30.229675, 30.587313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.624546, 29.928345, 30.671402>,  <36.474991, 29.747547, 30.721855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.624546, 29.928345, 30.671402>,  <36.873802, 30.229675, 30.587313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624546, 29.928345, 30.671402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555246, -0.615409, -0.559440,
		0.550815, -0.231884, 0.801769,
		-0.623141, -0.753327, 0.210224,
		36.437603, 29.702347, 30.734468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.438744, 30.320635, 47.679478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.091896, 30.132622, 47.613537>,  <39.883789, 30.019814, 47.573975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.091896, 30.132622, 47.613537>,  <40.438744, 30.320635, 47.679478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091896, 30.132622, 47.613537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149111, -0.070826, 0.986281,
		-0.475259, 0.879803, -0.008673,
		-0.867119, -0.470032, -0.164849,
		39.831760, 29.991611, 47.564083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020401, 30.661383, 48.086384>,  <40.438744, 30.320635, 47.679478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020401, 30.661383, 48.086384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.864010, 30.304628, 47.995453>,  <39.770176, 30.090576, 47.940895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.864010, 30.304628, 47.995453>,  <40.020401, 30.661383, 48.086384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864010, 30.304628, 47.995453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329974, -0.094742, 0.939224,
		-0.859216, 0.442229, -0.257256,
		-0.390979, -0.891884, -0.227328,
		39.746716, 30.037064, 47.927254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403671, 30.500744, 48.490231>,  <40.020401, 30.661383, 48.086384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403671, 30.500744, 48.490231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.517895, 30.134584, 48.376736>,  <39.586430, 29.914888, 48.308640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.517895, 30.134584, 48.376736>,  <39.403671, 30.500744, 48.490231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517895, 30.134584, 48.376736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169410, -0.339614, 0.925182,
		-0.943269, -0.216125, -0.252057,
		0.285557, -0.915397, -0.283733,
		39.603561, 29.859964, 48.291615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979675, 30.082268, 48.893150>,  <39.403671, 30.500744, 48.490231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979675, 30.082268, 48.893150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257469, 29.828718, 48.756981>,  <39.424145, 29.676588, 48.675278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257469, 29.828718, 48.756981>,  <38.979675, 30.082268, 48.893150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257469, 29.828718, 48.756981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070000, -0.530421, 0.844839,
		-0.716093, -0.562898, -0.412742,
		0.694485, -0.633876, -0.340428,
		39.465816, 29.638556, 48.654854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733322, 29.350386, 48.953583>,  <38.979675, 30.082268, 48.893150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733322, 29.350386, 48.953583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.133221, 29.351982, 48.944687>,  <39.373158, 29.352940, 48.939350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.133221, 29.351982, 48.944687>,  <38.733322, 29.350386, 48.953583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133221, 29.351982, 48.944687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020854, -0.541998, 0.840121,
		-0.008704, -0.840370, -0.541943,
		0.999745, 0.003989, -0.022243,
		39.433144, 29.353178, 48.938015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905136, 28.711287, 49.075787>,  <38.733322, 29.350386, 48.953583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905136, 28.711287, 49.075787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244667, 28.902386, 49.166336>,  <39.448387, 29.017046, 49.220665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244667, 28.902386, 49.166336>,  <38.905136, 28.711287, 49.075787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244667, 28.902386, 49.166336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052462, -0.502201, 0.863158,
		0.526057, -0.720798, -0.451346,
		0.848829, 0.477749, 0.226372,
		39.499317, 29.045710, 49.234249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440052, 28.252644, 49.176868>,  <38.905136, 28.711287, 49.075787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440052, 28.252644, 49.176868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532207, 28.571217, 49.400517>,  <39.587502, 28.762360, 49.534706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532207, 28.571217, 49.400517>,  <39.440052, 28.252644, 49.176868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532207, 28.571217, 49.400517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152661, -0.597045, 0.787548,
		0.961049, -0.096085, -0.259137,
		0.230388, 0.796433, 0.559121,
		39.601322, 28.810146, 49.568253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778633, 28.038572, 49.754314>,  <39.440052, 28.252644, 49.176868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778633, 28.038572, 49.754314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724373, 28.399946, 49.916992>,  <39.691814, 28.616772, 50.014599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724373, 28.399946, 49.916992>,  <39.778633, 28.038572, 49.754314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724373, 28.399946, 49.916992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073052, -0.400251, 0.913489,
		0.988059, 0.153628, -0.011702,
		-0.135654, 0.903437, 0.406694,
		39.683678, 28.670977, 50.039001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185650, 28.008699, 50.367863>,  <39.778633, 28.038572, 49.754314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185650, 28.008699, 50.367863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.986637, 28.349682, 50.432095>,  <39.867229, 28.554272, 50.470634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.986637, 28.349682, 50.432095>,  <40.185650, 28.008699, 50.367863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986637, 28.349682, 50.432095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091683, -0.132405, 0.986946,
		0.862589, 0.505757, -0.012280,
		-0.497529, 0.852455, 0.160581,
		39.837379, 28.605419, 50.480270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531094, 28.370443, 50.900669>,  <40.185650, 28.008699, 50.367863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531094, 28.370443, 50.900669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.150822, 28.494345, 50.894291>,  <39.922657, 28.568686, 50.890465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.150822, 28.494345, 50.894291>,  <40.531094, 28.370443, 50.900669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150822, 28.494345, 50.894291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086899, -0.216647, 0.972375,
		0.297743, 0.925806, 0.232879,
		-0.950683, 0.309755, -0.015946,
		39.865616, 28.587271, 50.889507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501896, 28.627237, 51.589634>,  <40.531094, 28.370443, 50.900669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501896, 28.627237, 51.589634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.125504, 28.595211, 51.458092>,  <39.899670, 28.575994, 51.379166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.125504, 28.595211, 51.458092>,  <40.501896, 28.627237, 51.589634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125504, 28.595211, 51.458092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314105, -0.155342, 0.936593,
		-0.126075, 0.984610, 0.121024,
		-0.940980, -0.080067, -0.328856,
		39.843208, 28.571192, 51.359436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129299, 29.144440, 51.980019>,  <40.501896, 28.627237, 51.589634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129299, 29.144440, 51.980019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.875092, 28.855709, 51.870415>,  <39.722569, 28.682470, 51.804653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.875092, 28.855709, 51.870415>,  <40.129299, 29.144440, 51.980019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875092, 28.855709, 51.870415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272943, -0.121933, 0.954271,
		-0.722231, 0.681246, -0.119527,
		-0.635519, -0.721829, -0.274006,
		39.684437, 28.639160, 51.788212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566658, 29.329857, 52.366421>,  <40.129299, 29.144440, 51.980019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566658, 29.329857, 52.366421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.555630, 28.944893, 52.258339>,  <39.549015, 28.713915, 52.193489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.555630, 28.944893, 52.258339>,  <39.566658, 29.329857, 52.366421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555630, 28.944893, 52.258339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252130, -0.254874, 0.933526,
		-0.967301, 0.093863, -0.235625,
		-0.027569, -0.962408, -0.270206,
		39.547359, 28.656170, 52.177277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091011, 29.686590, 52.808311>,  <39.566658, 29.329857, 52.366421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091011, 29.686590, 52.808311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721485, 29.537004, 52.841106>,  <38.499771, 29.447252, 52.860783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721485, 29.537004, 52.841106>,  <39.091011, 29.686590, 52.808311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721485, 29.537004, 52.841106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298503, 0.569494, -0.765880,
		0.239721, -0.732002, -0.637735,
		-0.923812, -0.373963, 0.081986,
		38.444340, 29.424816, 52.865704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825516, 29.556314, 52.087620>,  <39.091011, 29.686590, 52.808311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825516, 29.556314, 52.087620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.519283, 29.603550, 52.340584>,  <38.335545, 29.631891, 52.492363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.519283, 29.603550, 52.340584>,  <38.825516, 29.556314, 52.087620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519283, 29.603550, 52.340584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456246, 0.593390, -0.663120,
		-0.453576, -0.796205, -0.400407,
		-0.765577, 0.118091, 0.632413,
		38.289612, 29.638977, 52.530308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301834, 29.522741, 51.701328>,  <38.825516, 29.556314, 52.087620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301834, 29.522741, 51.701328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.194675, 29.738880, 52.020390>,  <38.130379, 29.868563, 52.211826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.194675, 29.738880, 52.020390>,  <38.301834, 29.522741, 51.701328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194675, 29.738880, 52.020390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351294, 0.716138, -0.603108,
		-0.897119, -0.441783, -0.002031,
		-0.267897, 0.540346, 0.797657,
		38.114307, 29.900984, 52.259686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616650, 29.685118, 51.591331>,  <38.301834, 29.522741, 51.701328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616650, 29.685118, 51.591331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675083, 29.955564, 51.880199>,  <37.710144, 30.117832, 52.053520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675083, 29.955564, 51.880199>,  <37.616650, 29.685118, 51.591331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675083, 29.955564, 51.880199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519288, 0.673749, -0.525740,
		-0.842022, -0.298214, 0.449520,
		0.146080, 0.676115, 0.722170,
		37.718906, 30.158400, 52.096851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993176, 30.056261, 51.778580>,  <37.616650, 29.685118, 51.591331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993176, 30.056261, 51.778580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.312550, 30.289665, 51.837933>,  <37.504173, 30.429708, 51.873543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.312550, 30.289665, 51.837933>,  <36.993176, 30.056261, 51.778580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312550, 30.289665, 51.837933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368484, 0.668483, -0.646026,
		-0.476153, 0.461134, 0.748755,
		0.798434, 0.583512, 0.148380,
		37.552078, 30.464718, 51.882446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751534, 30.601952, 51.313232>,  <36.993176, 30.056261, 51.778580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751534, 30.601952, 51.313232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094360, 30.745373, 51.461216>,  <37.300056, 30.831425, 51.550007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094360, 30.745373, 51.461216>,  <36.751534, 30.601952, 51.313232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094360, 30.745373, 51.461216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053753, 0.651943, -0.756360,
		-0.512389, 0.668140, 0.539487,
		0.857070, 0.358552, 0.369963,
		37.351482, 30.852938, 51.572205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593117, 31.346382, 51.476738>,  <36.751534, 30.601952, 51.313232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593117, 31.346382, 51.476738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990574, 31.328875, 51.435261>,  <37.229050, 31.318371, 51.410374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990574, 31.328875, 51.435261>,  <36.593117, 31.346382, 51.476738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990574, 31.328875, 51.435261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055754, 0.608894, -0.791290,
		0.097772, 0.792043, 0.602584,
		0.993646, -0.043769, -0.103693,
		37.288666, 31.315744, 51.404152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877327, 32.029099, 51.205238>,  <36.593117, 31.346382, 51.476738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877327, 32.029099, 51.205238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128510, 31.730946, 51.115723>,  <37.279217, 31.552053, 51.062016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128510, 31.730946, 51.115723>,  <36.877327, 32.029099, 51.205238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128510, 31.730946, 51.115723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032912, 0.261858, -0.964545,
		0.777555, 0.613054, 0.139902,
		0.627953, -0.745383, -0.223786,
		37.316895, 31.507330, 51.048588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450199, 32.425041, 50.876377>,  <36.877327, 32.029099, 51.205238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450199, 32.425041, 50.876377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.467773, 32.036324, 50.783703>,  <37.478317, 31.803093, 50.728096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.467773, 32.036324, 50.783703>,  <37.450199, 32.425041, 50.876377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467773, 32.036324, 50.783703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215353, 0.235674, -0.947671,
		0.975548, -0.008261, 0.219633,
		0.043933, -0.971797, -0.231690,
		37.480953, 31.744785, 50.714195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072861, 32.405418, 50.451931>,  <37.450199, 32.425041, 50.876377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072861, 32.405418, 50.451931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.841061, 32.089813, 50.370312>,  <37.701981, 31.900450, 50.321339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.841061, 32.089813, 50.370312>,  <38.072861, 32.405418, 50.451931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841061, 32.089813, 50.370312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001773, 0.251594, -0.967831,
		0.814971, -0.560495, -0.147198,
		-0.579499, -0.789016, -0.204048,
		37.667210, 31.853109, 50.309097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336300, 32.126839, 49.872921>,  <38.072861, 32.405418, 50.451931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336300, 32.126839, 49.872921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.958965, 31.998598, 49.838654>,  <37.732567, 31.921654, 49.818092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.958965, 31.998598, 49.838654>,  <38.336300, 32.126839, 49.872921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958965, 31.998598, 49.838654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043862, 0.376360, -0.925435,
		0.328931, -0.869237, -0.369095,
		-0.943334, -0.320594, -0.085670,
		37.675964, 31.902418, 49.812950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385784, 31.753386, 49.229721>,  <38.336300, 32.126839, 49.872921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385784, 31.753386, 49.229721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.987732, 31.731665, 49.262619>,  <37.748901, 31.718632, 49.282356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.987732, 31.731665, 49.262619>,  <38.385784, 31.753386, 49.229721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987732, 31.731665, 49.262619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096802, 0.381961, -0.919095,
		0.018494, -0.922582, -0.385358,
		-0.995132, -0.054301, 0.082243,
		37.689194, 31.715374, 49.287292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132763, 31.333721, 48.684361>,  <38.385784, 31.753386, 49.229721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132763, 31.333721, 48.684361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832211, 31.572176, 48.797535>,  <37.651878, 31.715248, 48.865440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832211, 31.572176, 48.797535>,  <38.132763, 31.333721, 48.684361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832211, 31.572176, 48.797535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157799, 0.254012, -0.954242,
		-0.640729, -0.761642, -0.096789,
		-0.751376, 0.596137, 0.282939,
		37.606796, 31.751017, 48.882416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511253, 31.275978, 48.182537>,  <38.132763, 31.333721, 48.684361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511253, 31.275978, 48.182537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.476444, 31.630178, 48.365105>,  <37.455559, 31.842699, 48.474644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.476444, 31.630178, 48.365105>,  <37.511253, 31.275978, 48.182537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476444, 31.630178, 48.365105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068432, 0.451758, -0.889512,
		-0.993853, -0.108639, 0.021285,
		-0.087020, 0.885502, 0.456415,
		37.450336, 31.895828, 48.502029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925137, 31.479002, 47.934341>,  <37.511253, 31.275978, 48.182537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925137, 31.479002, 47.934341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085312, 31.822935, 48.061047>,  <37.181419, 32.029293, 48.137070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085312, 31.822935, 48.061047>,  <36.925137, 31.479002, 47.934341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085312, 31.822935, 48.061047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218961, 0.425462, -0.878088,
		-0.889776, 0.282265, 0.358643,
		0.400442, 0.859830, 0.316761,
		37.205444, 32.080883, 48.156075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226559, 31.540091, 48.357796>,  <36.925137, 31.479002, 47.934341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226559, 31.540091, 48.357796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839725, 31.493298, 48.267399>,  <35.607628, 31.465221, 48.213161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839725, 31.493298, 48.267399>,  <36.226559, 31.540091, 48.357796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839725, 31.493298, 48.267399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183378, -0.295351, 0.937625,
		-0.176431, 0.948200, 0.264176,
		-0.967081, -0.116982, -0.225988,
		35.549603, 31.458202, 48.199604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763802, 31.790234, 48.859158>,  <36.226559, 31.540091, 48.357796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763802, 31.790234, 48.859158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524700, 31.519964, 48.686573>,  <35.381241, 31.357803, 48.583023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524700, 31.519964, 48.686573>,  <35.763802, 31.790234, 48.859158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524700, 31.519964, 48.686573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164421, -0.423424, 0.890886,
		-0.784638, 0.603470, 0.142008,
		-0.597753, -0.675674, -0.431458,
		35.345375, 31.317263, 48.557137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096336, 31.802568, 49.266201>,  <35.763802, 31.790234, 48.859158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096336, 31.802568, 49.266201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126801, 31.459574, 49.062664>,  <35.145081, 31.253777, 48.940544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126801, 31.459574, 49.062664>,  <35.096336, 31.802568, 49.266201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126801, 31.459574, 49.062664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238381, -0.511182, 0.825753,
		-0.968181, 0.058406, -0.243341,
		0.076163, -0.857486, -0.508840,
		35.149651, 31.202328, 48.910011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487740, 31.438423, 49.502934>,  <35.096336, 31.802568, 49.266201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487740, 31.438423, 49.502934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739941, 31.168938, 49.348755>,  <34.891262, 31.007246, 49.256248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739941, 31.168938, 49.348755>,  <34.487740, 31.438423, 49.502934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739941, 31.168938, 49.348755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155939, -0.596418, 0.787381,
		-0.760359, -0.436342, -0.481103,
		0.630506, -0.673715, -0.385449,
		34.929092, 30.966824, 49.233120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097397, 30.881161, 49.398094>,  <34.487740, 31.438423, 49.502934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097397, 30.881161, 49.398094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477741, 30.763172, 49.435738>,  <34.705948, 30.692379, 49.458324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477741, 30.763172, 49.435738>,  <34.097397, 30.881161, 49.398094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477741, 30.763172, 49.435738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270952, -0.645662, 0.713937,
		-0.149832, -0.704352, -0.693858,
		0.950860, -0.294973, 0.094105,
		34.763000, 30.674681, 49.463970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955715, 30.161182, 49.536137>,  <34.097397, 30.881161, 49.398094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955715, 30.161182, 49.536137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338627, 30.246534, 49.614204>,  <34.568375, 30.297747, 49.661045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338627, 30.246534, 49.614204>,  <33.955715, 30.161182, 49.536137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338627, 30.246534, 49.614204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005895, -0.660369, 0.750918,
		0.289113, -0.719987, -0.630898,
		0.957277, 0.213381, 0.195165,
		34.625809, 30.310549, 49.672752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303165, 29.565718, 49.671379>,  <33.955715, 30.161182, 49.536137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303165, 29.565718, 49.671379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.579563, 29.802164, 49.837803>,  <34.745403, 29.944033, 49.937656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.579563, 29.802164, 49.837803>,  <34.303165, 29.565718, 49.671379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579563, 29.802164, 49.837803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027558, -0.596698, 0.801993,
		0.722331, -0.542710, -0.428607,
		0.690998, 0.591116, 0.416058,
		34.786861, 29.979498, 49.962620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263809, 28.852589, 49.737797>,  <34.303165, 29.565718, 49.671379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263809, 28.852589, 49.737797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921692, 28.655357, 49.674114>,  <33.716423, 28.537018, 49.635902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921692, 28.655357, 49.674114>,  <34.263809, 28.852589, 49.737797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921692, 28.655357, 49.674114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029135, 0.352545, -0.935341,
		0.517328, -0.795351, -0.315895,
		-0.855291, -0.493081, -0.159209,
		33.665104, 28.507433, 49.626350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375168, 28.569317, 49.115410>,  <34.263809, 28.852589, 49.737797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375168, 28.569317, 49.115410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978069, 28.566860, 49.163429>,  <33.739811, 28.565386, 49.192242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978069, 28.566860, 49.163429>,  <34.375168, 28.569317, 49.115410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978069, 28.566860, 49.163429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119277, 0.174536, -0.977400,
		-0.014951, -0.984632, -0.174003,
		-0.992748, -0.006141, 0.120054,
		33.680244, 28.565018, 49.199444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131565, 28.038927, 48.675415>,  <34.375168, 28.569317, 49.115410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131565, 28.038927, 48.675415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832413, 28.295183, 48.744991>,  <33.652920, 28.448936, 48.786736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832413, 28.295183, 48.744991>,  <34.131565, 28.038927, 48.675415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832413, 28.295183, 48.744991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063797, 0.330169, -0.941763,
		-0.660761, -0.693229, -0.287797,
		-0.747880, 0.640641, 0.173937,
		33.608047, 28.487375, 48.797173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716415, 27.850330, 48.192425>,  <34.131565, 28.038927, 48.675415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716415, 27.850330, 48.192425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571327, 28.211756, 48.283646>,  <33.484276, 28.428612, 48.338379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571327, 28.211756, 48.283646>,  <33.716415, 27.850330, 48.192425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571327, 28.211756, 48.283646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296221, 0.120237, -0.947521,
		-0.883567, -0.411236, 0.224043,
		-0.362716, 0.903564, 0.228054,
		33.462513, 28.482824, 48.352062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168404, 27.955257, 47.736797>,  <33.716415, 27.850330, 48.192425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168404, 27.955257, 47.736797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.220444, 28.338123, 47.840267>,  <33.251667, 28.567842, 47.902348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.220444, 28.338123, 47.840267>,  <33.168404, 27.955257, 47.736797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220444, 28.338123, 47.840267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234774, 0.283208, -0.929879,
		-0.963304, 0.060248, 0.261562,
		0.130100, 0.957164, 0.258670,
		33.259472, 28.625273, 47.917870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605717, 28.386074, 47.465607>,  <33.168404, 27.955257, 47.736797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605717, 28.386074, 47.465607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927631, 28.615204, 47.527817>,  <33.120781, 28.752682, 47.565144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927631, 28.615204, 47.527817>,  <32.605717, 28.386074, 47.465607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927631, 28.615204, 47.527817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168977, 0.472289, -0.865095,
		-0.569000, 0.669939, 0.476887,
		0.804789, 0.572822, 0.155528,
		33.169067, 28.787050, 47.574474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446587, 28.958736, 47.211376>,  <32.605717, 28.386074, 47.465607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446587, 28.958736, 47.211376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840855, 29.023417, 47.230618>,  <33.077415, 29.062223, 47.242161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840855, 29.023417, 47.230618>,  <32.446587, 28.958736, 47.211376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840855, 29.023417, 47.230618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046830, 0.536169, -0.842811,
		-0.162071, 0.828478, 0.536056,
		0.985667, 0.161699, 0.048100,
		33.136555, 29.071926, 47.245049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.482651, 26.609879, 51.540997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.819744, 26.812033, 51.615177>,  <38.021999, 26.933325, 51.659687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.819744, 26.812033, 51.615177>,  <37.482651, 26.609879, 51.540997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819744, 26.812033, 51.615177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177676, 0.064075, -0.982001,
		-0.508173, 0.860511, -0.035797,
		0.842729, 0.505386, 0.185454,
		38.072563, 26.963648, 51.670815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413429, 27.148607, 51.115894>,  <37.482651, 26.609879, 51.540997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413429, 27.148607, 51.115894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.806145, 27.143391, 51.191708>,  <38.041775, 27.140261, 51.237194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.806145, 27.143391, 51.191708>,  <37.413429, 27.148607, 51.115894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806145, 27.143391, 51.191708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189345, 0.148649, -0.970594,
		-0.015514, 0.988804, 0.148411,
		0.981788, -0.013043, 0.189531,
		38.100681, 27.139479, 51.248566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628216, 27.809937, 50.871037>,  <37.413429, 27.148607, 51.115894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628216, 27.809937, 50.871037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.911949, 27.528025, 50.875687>,  <38.082188, 27.358877, 50.878475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.911949, 27.528025, 50.875687>,  <37.628216, 27.809937, 50.871037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911949, 27.528025, 50.875687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129768, 0.114360, -0.984927,
		0.692825, 0.700150, 0.172577,
		0.709333, -0.704778, 0.011625,
		38.124748, 27.316591, 50.879173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255325, 28.081728, 50.470654>,  <37.628216, 27.809937, 50.871037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255325, 28.081728, 50.470654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.265015, 27.681850, 50.472717>,  <38.270828, 27.441923, 50.473957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.265015, 27.681850, 50.472717>,  <38.255325, 28.081728, 50.470654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265015, 27.681850, 50.472717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234619, 0.000666, -0.972087,
		0.971786, 0.024759, 0.234563,
		0.024225, -0.999693, 0.005162,
		38.272282, 27.381943, 50.474266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972416, 27.866917, 50.291519>,  <38.255325, 28.081728, 50.470654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972416, 27.866917, 50.291519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.704029, 27.580469, 50.214607>,  <38.542995, 27.408600, 50.168461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.704029, 27.580469, 50.214607>,  <38.972416, 27.866917, 50.291519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704029, 27.580469, 50.214607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231915, 0.043629, -0.971757,
		0.704282, -0.696614, 0.136805,
		-0.670971, -0.716119, -0.192282,
		38.502739, 27.365633, 50.156921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272415, 27.448257, 49.768406>,  <38.972416, 27.866917, 50.291519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272415, 27.448257, 49.768406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.899273, 27.306034, 49.745228>,  <38.675388, 27.220699, 49.731319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.899273, 27.306034, 49.745228>,  <39.272415, 27.448257, 49.768406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899273, 27.306034, 49.745228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141096, -0.212601, -0.966899,
		0.331470, -0.910153, 0.248494,
		-0.932856, -0.355560, -0.057948,
		38.619415, 27.199366, 49.727844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320744, 27.050976, 49.105194>,  <39.272415, 27.448257, 49.768406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320744, 27.050976, 49.105194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.927078, 27.071754, 49.172977>,  <38.690880, 27.084223, 49.213646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.927078, 27.071754, 49.172977>,  <39.320744, 27.050976, 49.105194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927078, 27.071754, 49.172977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173447, -0.085491, -0.981125,
		-0.036477, -0.994984, 0.093148,
		-0.984167, 0.051945, 0.169459,
		38.631828, 27.087339, 49.223816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000061, 26.503422, 48.715015>,  <39.320744, 27.050976, 49.105194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000061, 26.503422, 48.715015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.702023, 26.767685, 48.751598>,  <38.523201, 26.926243, 48.773548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.702023, 26.767685, 48.751598>,  <39.000061, 26.503422, 48.715015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702023, 26.767685, 48.751598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198821, -0.089120, -0.975975,
		-0.636635, -0.745379, 0.197755,
		-0.745095, 0.660658, 0.091460,
		38.478493, 26.965881, 48.779037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499966, 26.214560, 48.277489>,  <39.000061, 26.503422, 48.715015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499966, 26.214560, 48.277489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.369537, 26.585594, 48.350441>,  <38.291283, 26.808214, 48.394211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.369537, 26.585594, 48.350441>,  <38.499966, 26.214560, 48.277489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369537, 26.585594, 48.350441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359980, 0.056559, -0.931244,
		-0.874125, -0.369302, 0.315470,
		-0.326068, 0.927587, 0.182381,
		38.271717, 26.863871, 48.405155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749287, 26.280048, 47.961876>,  <38.499966, 26.214560, 48.277489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749287, 26.280048, 47.961876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.911972, 26.642859, 48.005486>,  <38.009583, 26.860544, 48.031651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.911972, 26.642859, 48.005486>,  <37.749287, 26.280048, 47.961876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911972, 26.642859, 48.005486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301942, 0.246095, -0.921015,
		-0.862215, 0.341671, 0.373960,
		0.406713, 0.907027, 0.109022,
		38.033985, 26.914967, 48.038193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225136, 26.721109, 47.865517>,  <37.749287, 26.280048, 47.961876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225136, 26.721109, 47.865517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.575069, 26.892515, 47.775150>,  <37.785030, 26.995359, 47.720932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.575069, 26.892515, 47.775150>,  <37.225136, 26.721109, 47.865517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575069, 26.892515, 47.775150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324452, 0.172021, -0.930129,
		-0.359711, 0.887009, 0.289522,
		0.874836, 0.428514, -0.225914,
		37.837521, 27.021069, 47.707375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037479, 27.206894, 47.494297>,  <37.225136, 26.721109, 47.865517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037479, 27.206894, 47.494297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.418533, 27.196775, 47.373070>,  <37.647163, 27.190704, 47.300335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.418533, 27.196775, 47.373070>,  <37.037479, 27.206894, 47.494297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418533, 27.196775, 47.373070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297988, 0.121514, -0.946804,
		0.060780, 0.992268, 0.108220,
		0.952633, -0.025298, -0.303069,
		37.704323, 27.189186, 47.282150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399006, 27.705957, 47.320465>,  <37.037479, 27.206894, 47.494297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399006, 27.705957, 47.320465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.083118, 27.488628, 47.206516>,  <35.893585, 27.358231, 47.138149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.083118, 27.488628, 47.206516>,  <36.399006, 27.705957, 47.320465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083118, 27.488628, 47.206516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103719, -0.339422, 0.934899,
		-0.604641, 0.767851, 0.211694,
		-0.789716, -0.543321, -0.284869,
		35.846203, 27.325632, 47.121056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907806, 27.712406, 47.803341>,  <36.399006, 27.705957, 47.320465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907806, 27.712406, 47.803341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.757687, 27.395515, 47.610874>,  <35.667614, 27.205381, 47.495396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.757687, 27.395515, 47.610874>,  <35.907806, 27.712406, 47.803341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757687, 27.395515, 47.610874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229295, -0.423627, 0.876335,
		-0.898094, 0.439219, -0.022667,
		-0.375301, -0.792229, -0.481168,
		35.645096, 27.157846, 47.466522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243000, 27.571106, 48.085876>,  <35.907806, 27.712406, 47.803341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243000, 27.571106, 48.085876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.368427, 27.234865, 47.909214>,  <35.443684, 27.033121, 47.803215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.368427, 27.234865, 47.909214>,  <35.243000, 27.571106, 48.085876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368427, 27.234865, 47.909214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351401, -0.534819, 0.768431,
		-0.882153, -0.085754, -0.463090,
		0.313565, -0.840604, -0.441658,
		35.462498, 26.982683, 47.776718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632523, 26.992779, 48.126183>,  <35.243000, 27.571106, 48.085876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632523, 26.992779, 48.126183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.988335, 26.814091, 48.087849>,  <35.201820, 26.706877, 48.064850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.988335, 26.814091, 48.087849>,  <34.632523, 26.992779, 48.126183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988335, 26.814091, 48.087849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322616, -0.762662, 0.560594,
		-0.323516, -0.467746, -0.822527,
		0.889526, -0.446722, -0.095831,
		35.255192, 26.680075, 48.059101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420074, 26.319847, 48.115334>,  <34.632523, 26.992779, 48.126183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420074, 26.319847, 48.115334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.810184, 26.284130, 48.196186>,  <35.044250, 26.262699, 48.244698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.810184, 26.284130, 48.196186>,  <34.420074, 26.319847, 48.115334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810184, 26.284130, 48.196186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193516, -0.786752, 0.586151,
		0.106692, -0.610777, -0.784582,
		0.975278, -0.089292, 0.202135,
		35.102768, 26.257343, 48.256828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512924, 25.593908, 48.135426>,  <34.420074, 26.319847, 48.115334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512924, 25.593908, 48.135426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.807850, 25.776758, 48.334385>,  <34.984806, 25.886467, 48.453762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.807850, 25.776758, 48.334385>,  <34.512924, 25.593908, 48.135426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807850, 25.776758, 48.334385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168755, -0.588313, 0.790828,
		0.654132, -0.667028, -0.356630,
		0.737315, 0.457123, 0.497399,
		35.029045, 25.913895, 48.483604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887463, 25.078152, 48.436726>,  <34.512924, 25.593908, 48.135426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887463, 25.078152, 48.436726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010788, 25.377876, 48.671154>,  <35.084782, 25.557711, 48.811810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010788, 25.377876, 48.671154>,  <34.887463, 25.078152, 48.436726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010788, 25.377876, 48.671154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010256, -0.618666, 0.785587,
		0.951231, -0.236194, -0.198426,
		0.308310, 0.749310, 0.586071,
		35.103283, 25.602669, 48.846977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486694, 24.878550, 48.910522>,  <34.887463, 25.078152, 48.436726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486694, 24.878550, 48.910522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361504, 25.209646, 49.096809>,  <35.286388, 25.408304, 49.208580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361504, 25.209646, 49.096809>,  <35.486694, 24.878550, 48.910522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361504, 25.209646, 49.096809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137496, -0.445699, 0.884560,
		0.939756, 0.340879, 0.025681,
		-0.312974, 0.827740, 0.465718,
		35.267612, 25.457968, 49.236526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942032, 24.926191, 49.504326>,  <35.486694, 24.878550, 48.910522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942032, 24.926191, 49.504326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.638611, 25.168818, 49.599556>,  <35.456558, 25.314394, 49.656693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.638611, 25.168818, 49.599556>,  <35.942032, 24.926191, 49.504326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638611, 25.168818, 49.599556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023667, -0.390769, 0.920185,
		0.651185, 0.692372, 0.310773,
		-0.758550, 0.606565, 0.238076,
		35.411045, 25.350786, 49.670979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074959, 25.294477, 50.102009>,  <35.942032, 24.926191, 49.504326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074959, 25.294477, 50.102009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.677223, 25.327036, 50.074699>,  <35.438580, 25.346571, 50.058315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.677223, 25.327036, 50.074699>,  <36.074959, 25.294477, 50.102009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677223, 25.327036, 50.074699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088678, -0.282041, 0.955295,
		0.058500, 0.955944, 0.287663,
		-0.994341, 0.081394, -0.068272,
		35.378922, 25.351454, 50.054218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800011, 25.622679, 50.700577>,  <36.074959, 25.294477, 50.102009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800011, 25.622679, 50.700577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.481182, 25.427830, 50.557808>,  <35.289886, 25.310921, 50.472145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.481182, 25.427830, 50.557808>,  <35.800011, 25.622679, 50.700577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481182, 25.427830, 50.557808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292792, -0.205194, 0.933899,
		-0.528162, 0.848886, 0.020929,
		-0.797068, -0.487122, -0.356923,
		35.242062, 25.281693, 50.450729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249763, 25.767548, 51.051414>,  <35.800011, 25.622679, 50.700577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249763, 25.767548, 51.051414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.103855, 25.423988, 50.907612>,  <35.016312, 25.217854, 50.821331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.103855, 25.423988, 50.907612>,  <35.249763, 25.767548, 51.051414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103855, 25.423988, 50.907612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302853, -0.255665, 0.918104,
		-0.880468, 0.443771, -0.166861,
		-0.364768, -0.858896, -0.359502,
		34.994427, 25.166319, 50.799763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735992, 25.655714, 51.450035>,  <35.249763, 25.767548, 51.051414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735992, 25.655714, 51.450035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724339, 25.298410, 51.270596>,  <34.717346, 25.084028, 51.162930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724339, 25.298410, 51.270596>,  <34.735992, 25.655714, 51.450035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724339, 25.298410, 51.270596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380811, -0.405026, 0.831226,
		-0.924194, 0.195053, -0.328360,
		-0.029139, -0.893257, -0.448601,
		34.715595, 25.030434, 51.136017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118767, 25.253847, 51.475071>,  <34.735992, 25.655714, 51.450035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118767, 25.253847, 51.475071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.410412, 24.980387, 51.462303>,  <34.585400, 24.816311, 51.454643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.410412, 24.980387, 51.462303>,  <34.118767, 25.253847, 51.475071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410412, 24.980387, 51.462303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291568, -0.352477, 0.889240,
		-0.619183, -0.639046, -0.456326,
		0.729110, -0.683652, -0.031922,
		34.629147, 24.775291, 51.452728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932373, 26.065060, 51.417793>,  <34.118767, 25.253847, 51.475071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932373, 26.065060, 51.417793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863846, 26.400196, 51.625130>,  <33.822727, 26.601278, 51.749531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863846, 26.400196, 51.625130>,  <33.932373, 26.065060, 51.417793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863846, 26.400196, 51.625130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335074, 0.445204, -0.830373,
		-0.926485, -0.315941, 0.204465,
		-0.171321, 0.837839, 0.518339,
		33.812450, 26.651548, 51.780632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303242, 26.132399, 51.266369>,  <33.932373, 26.065060, 51.417793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303242, 26.132399, 51.266369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.450317, 26.485664, 51.382870>,  <33.538563, 26.697624, 51.452770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.450317, 26.485664, 51.382870>,  <33.303242, 26.132399, 51.266369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450317, 26.485664, 51.382870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462321, 0.445347, -0.766763,
		-0.806886, 0.147277, 0.572053,
		0.367689, 0.883162, 0.291255,
		33.560623, 26.750612, 51.470245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793179, 26.738544, 51.176033>,  <33.303242, 26.132399, 51.266369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793179, 26.738544, 51.176033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131176, 26.952143, 51.187576>,  <33.333977, 27.080301, 51.194504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131176, 26.952143, 51.187576>,  <32.793179, 26.738544, 51.176033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131176, 26.952143, 51.187576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387013, 0.647874, -0.656109,
		-0.369058, 0.543239, 0.754114,
		0.844995, 0.533995, 0.028863,
		33.384674, 27.112341, 51.196236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635975, 27.493286, 51.101055>,  <32.793179, 26.738544, 51.176033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635975, 27.493286, 51.101055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.018047, 27.488100, 50.982765>,  <33.247292, 27.484987, 50.911793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.018047, 27.488100, 50.982765>,  <32.635975, 27.493286, 51.101055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018047, 27.488100, 50.982765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178500, 0.771726, -0.610390,
		0.236132, 0.635823, 0.734827,
		0.955185, -0.012966, -0.295724,
		33.304604, 27.484211, 50.894047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923233, 28.234745, 51.166241>,  <32.635975, 27.493286, 51.101055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923233, 28.234745, 51.166241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.167458, 28.019876, 50.933464>,  <33.313995, 27.890955, 50.793797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.167458, 28.019876, 50.933464>,  <32.923233, 28.234745, 51.166241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167458, 28.019876, 50.933464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082624, 0.687591, -0.721382,
		0.787643, 0.488533, 0.375437,
		0.610566, -0.537172, -0.581941,
		33.350628, 27.858725, 50.758881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297520, 28.690521, 50.846863>,  <32.923233, 28.234745, 51.166241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297520, 28.690521, 50.846863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.358845, 28.368103, 50.618202>,  <33.395641, 28.174652, 50.481007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.358845, 28.368103, 50.618202>,  <33.297520, 28.690521, 50.846863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358845, 28.368103, 50.618202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060936, 0.569680, -0.819605,
		0.986296, 0.160494, 0.038225,
		0.153317, -0.806044, -0.571653,
		33.404839, 28.126289, 50.446705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934227, 28.870918, 50.372402>,  <33.297520, 28.690521, 50.846863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934227, 28.870918, 50.372402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.738422, 28.568525, 50.198566>,  <33.620937, 28.387091, 50.094265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.738422, 28.568525, 50.198566>,  <33.934227, 28.870918, 50.372402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738422, 28.568525, 50.198566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054701, 0.470783, -0.880551,
		0.870278, -0.454814, -0.189102,
		-0.489514, -0.755981, -0.434591,
		33.591568, 28.341732, 50.068188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780949, 28.968122, 50.227245>,  <33.934227, 28.870918, 50.372402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780949, 28.968122, 50.227245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.884357, 29.341694, 50.325989>,  <34.946404, 29.565838, 50.385235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.884357, 29.341694, 50.325989>,  <34.780949, 28.968122, 50.227245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884357, 29.341694, 50.325989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176741, -0.296961, 0.938390,
		0.949698, -0.198969, -0.241836,
		0.258527, 0.933930, 0.246858,
		34.961914, 29.621872, 50.400047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465790, 29.081842, 50.439671>,  <34.780949, 28.968122, 50.227245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465790, 29.081842, 50.439671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.269363, 29.383673, 50.613781>,  <35.151508, 29.564770, 50.718246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.269363, 29.383673, 50.613781>,  <35.465790, 29.081842, 50.439671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269363, 29.383673, 50.613781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321717, -0.307259, 0.895595,
		0.809537, 0.579836, -0.091873,
		-0.491069, 0.754574, 0.435281,
		35.122044, 29.610044, 50.744366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963478, 29.351864, 50.976849>,  <35.465790, 29.081842, 50.439671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963478, 29.351864, 50.976849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.609127, 29.506050, 51.080112>,  <35.396519, 29.598562, 51.142071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.609127, 29.506050, 51.080112>,  <35.963478, 29.351864, 50.976849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609127, 29.506050, 51.080112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156120, -0.276317, 0.948301,
		0.436869, 0.880379, 0.184604,
		-0.885874, 0.385463, 0.258159,
		35.343365, 29.621689, 51.157558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127731, 29.580406, 51.599941>,  <35.963478, 29.351864, 50.976849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127731, 29.580406, 51.599941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.728477, 29.604668, 51.597321>,  <35.488926, 29.619225, 51.595749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.728477, 29.604668, 51.597321>,  <36.127731, 29.580406, 51.599941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728477, 29.604668, 51.597321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013686, -0.117896, 0.992932,
		0.059452, 0.991172, 0.118506,
		-0.998137, 0.060653, -0.006556,
		35.429035, 29.622864, 51.595352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966774, 30.036905, 52.158615>,  <36.127731, 29.580406, 51.599941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966774, 30.036905, 52.158615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.636547, 29.818443, 52.101833>,  <35.438412, 29.687366, 52.067764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.636547, 29.818443, 52.101833>,  <35.966774, 30.036905, 52.158615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636547, 29.818443, 52.101833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078468, -0.138006, 0.987318,
		-0.558820, 0.826238, 0.071078,
		-0.825568, -0.546156, -0.141954,
		35.388878, 29.654596, 52.059246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539803, 30.270821, 52.637959>,  <35.966774, 30.036905, 52.158615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539803, 30.270821, 52.637959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.411816, 29.904911, 52.539322>,  <35.335022, 29.685366, 52.480141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.411816, 29.904911, 52.539322>,  <35.539803, 30.270821, 52.637959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411816, 29.904911, 52.539322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140250, -0.211677, 0.967224,
		-0.936989, 0.344068, -0.060567,
		-0.319971, -0.914773, -0.246594,
		35.315823, 29.630480, 52.465343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950546, 30.223269, 52.987415>,  <35.539803, 30.270821, 52.637959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950546, 30.223269, 52.987415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.024925, 29.835751, 52.921864>,  <35.069553, 29.603239, 52.882530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.024925, 29.835751, 52.921864>,  <34.950546, 30.223269, 52.987415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024925, 29.835751, 52.921864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167361, -0.195584, 0.966301,
		-0.968202, -0.152251, -0.198507,
		0.185946, -0.968796, -0.163884,
		35.080708, 29.545113, 52.872700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299908, 29.873053, 53.276192>,  <34.950546, 30.223269, 52.987415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299908, 29.873053, 53.276192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.592636, 29.604198, 53.231178>,  <34.768272, 29.442886, 53.204170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.592636, 29.604198, 53.231178>,  <34.299908, 29.873053, 53.276192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592636, 29.604198, 53.231178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113569, -0.283097, 0.952343,
		-0.671963, -0.684169, -0.283512,
		0.731825, -0.672138, -0.112530,
		34.812183, 29.402557, 53.197418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996311, 29.155993, 53.467712>,  <34.299908, 29.873053, 53.276192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996311, 29.155993, 53.467712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395363, 29.152481, 53.495018>,  <34.634792, 29.150373, 53.511402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395363, 29.152481, 53.495018>,  <33.996311, 29.155993, 53.467712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395363, 29.152481, 53.495018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067565, -0.314178, 0.946957,
		0.013136, -0.949323, -0.314026,
		0.997628, -0.008778, 0.068268,
		34.694653, 29.149847, 53.515499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.449730, 34.961605, 38.523663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790554, 34.782024, 38.631313>,  <35.995049, 34.674274, 38.695904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790554, 34.782024, 38.631313>,  <35.449730, 34.961605, 38.523663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790554, 34.782024, 38.631313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129682, 0.317066, 0.939495,
		-0.507120, -0.835411, 0.211939,
		0.852063, -0.448953, 0.269128,
		36.046173, 34.647339, 38.712051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521599, 34.311382, 39.073654>,  <35.449730, 34.961605, 38.523663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521599, 34.311382, 39.073654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847740, 34.538773, 39.117542>,  <36.043423, 34.675205, 39.143875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847740, 34.538773, 39.117542>,  <35.521599, 34.311382, 39.073654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847740, 34.538773, 39.117542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159659, 0.038606, 0.986417,
		0.556517, -0.821795, 0.122240,
		0.815351, 0.568474, 0.109722,
		36.092346, 34.709316, 39.150459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125233, 33.920990, 39.425655>,  <35.521599, 34.311382, 39.073654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125233, 33.920990, 39.425655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136211, 34.315113, 39.493080>,  <36.142799, 34.551586, 39.533535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136211, 34.315113, 39.493080>,  <36.125233, 33.920990, 39.425655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136211, 34.315113, 39.493080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085558, -0.170321, 0.981667,
		0.995955, -0.012523, -0.088976,
		0.027448, 0.985309, 0.168561,
		36.144447, 34.610706, 39.543648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699436, 34.030003, 39.858818>,  <36.125233, 33.920990, 39.425655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699436, 34.030003, 39.858818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432426, 34.326393, 39.888115>,  <36.272221, 34.504227, 39.905693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432426, 34.326393, 39.888115>,  <36.699436, 34.030003, 39.858818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432426, 34.326393, 39.888115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018989, -0.115278, 0.993152,
		0.744348, 0.661559, 0.091021,
		-0.667522, 0.740979, 0.073245,
		36.232170, 34.548687, 39.910088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863552, 34.342651, 40.487514>,  <36.699436, 34.030003, 39.858818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863552, 34.342651, 40.487514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497604, 34.475231, 40.395298>,  <36.278034, 34.554779, 40.339970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497604, 34.475231, 40.395298>,  <36.863552, 34.342651, 40.487514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497604, 34.475231, 40.395298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277652, -0.101956, 0.955256,
		0.293119, 0.937946, 0.185306,
		-0.914872, 0.331454, -0.230537,
		36.223145, 34.574669, 40.326138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699699, 34.746151, 41.113049>,  <36.863552, 34.342651, 40.487514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699699, 34.746151, 41.113049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363148, 34.643948, 40.922554>,  <36.161217, 34.582626, 40.808258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363148, 34.643948, 40.922554>,  <36.699699, 34.746151, 41.113049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363148, 34.643948, 40.922554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421801, -0.240464, 0.874220,
		-0.337886, 0.936426, 0.094548,
		-0.841378, -0.255507, -0.476235,
		36.110733, 34.567295, 40.779682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169945, 34.903801, 41.638271>,  <36.699699, 34.746151, 41.113049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169945, 34.903801, 41.638271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944378, 34.711288, 41.369835>,  <35.809036, 34.595779, 41.208775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944378, 34.711288, 41.369835>,  <36.169945, 34.903801, 41.638271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944378, 34.711288, 41.369835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599748, -0.319963, 0.733435,
		-0.567714, 0.816083, -0.108216,
		-0.563918, -0.481283, -0.671091,
		35.775204, 34.566902, 41.168507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486198, 35.115986, 41.738285>,  <36.169945, 34.903801, 41.638271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486198, 35.115986, 41.738285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450047, 34.749775, 41.581497>,  <35.428356, 34.530048, 41.487423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450047, 34.749775, 41.581497>,  <35.486198, 35.115986, 41.738285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450047, 34.749775, 41.581497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447955, -0.314151, 0.837046,
		-0.889476, 0.251240, -0.381721,
		-0.090381, -0.915526, -0.391974,
		35.422932, 34.475117, 41.463905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775776, 34.921288, 41.816437>,  <35.486198, 35.115986, 41.738285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775776, 34.921288, 41.816437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992702, 34.589336, 41.763977>,  <35.122860, 34.390167, 41.732502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992702, 34.589336, 41.763977>,  <34.775776, 34.921288, 41.816437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992702, 34.589336, 41.763977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414934, -0.400286, 0.817068,
		-0.730563, -0.388690, -0.561425,
		0.542317, -0.829874, -0.131153,
		35.155399, 34.340374, 41.724632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275078, 34.398903, 41.940186>,  <34.775776, 34.921288, 41.816437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275078, 34.398903, 41.940186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636768, 34.237682, 41.996639>,  <34.853783, 34.140949, 42.030510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636768, 34.237682, 41.996639>,  <34.275078, 34.398903, 41.940186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636768, 34.237682, 41.996639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309881, -0.391875, 0.866260,
		-0.293836, -0.827035, -0.479242,
		0.904231, -0.403047, 0.141136,
		34.908039, 34.116768, 42.038979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143345, 33.796783, 42.338226>,  <34.275078, 34.398903, 41.940186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143345, 33.796783, 42.338226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533131, 33.865757, 42.395763>,  <34.767002, 33.907139, 42.430286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533131, 33.865757, 42.395763>,  <34.143345, 33.796783, 42.338226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533131, 33.865757, 42.395763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078540, -0.338404, 0.937717,
		0.210370, -0.925067, -0.316219,
		0.974462, 0.172432, 0.143845,
		34.825470, 33.917488, 42.438915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449677, 33.194336, 42.699707>,  <34.143345, 33.796783, 42.338226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449677, 33.194336, 42.699707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690632, 33.500908, 42.788895>,  <34.835205, 33.684853, 42.842407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690632, 33.500908, 42.788895>,  <34.449677, 33.194336, 42.699707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690632, 33.500908, 42.788895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110420, -0.196637, 0.974239,
		0.790531, -0.611488, -0.033822,
		0.602386, 0.766431, 0.222968,
		34.871349, 33.730839, 42.855785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347359, 32.682091, 42.116096>,  <34.449677, 33.194336, 42.699707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347359, 32.682091, 42.116096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075497, 32.388695, 42.112793>,  <33.912380, 32.212658, 42.110813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075497, 32.388695, 42.112793>,  <34.347359, 32.682091, 42.116096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075497, 32.388695, 42.112793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263648, 0.254769, -0.930367,
		0.684516, -0.630150, -0.366536,
		-0.679653, -0.733487, -0.008256,
		33.871601, 32.168648, 42.110317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501022, 32.312031, 41.581615>,  <34.347359, 32.682091, 42.116096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501022, 32.312031, 41.581615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108288, 32.297997, 41.656200>,  <33.872646, 32.289577, 41.700951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108288, 32.297997, 41.656200>,  <34.501022, 32.312031, 41.581615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108288, 32.297997, 41.656200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189681, 0.204585, -0.960295,
		-0.004457, -0.978220, -0.207523,
		-0.981836, -0.035084, 0.186461,
		33.813736, 32.287472, 41.712139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253475, 32.129696, 41.013821>,  <34.501022, 32.312031, 41.581615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253475, 32.129696, 41.013821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922661, 32.249352, 41.204201>,  <33.724171, 32.321144, 41.318428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922661, 32.249352, 41.204201>,  <34.253475, 32.129696, 41.013821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922661, 32.249352, 41.204201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357084, 0.374361, -0.855772,
		-0.434172, -0.877707, -0.202792,
		-0.827034, 0.299138, 0.475952,
		33.674549, 32.339092, 41.346985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713516, 31.906311, 40.643867>,  <34.253475, 32.129696, 41.013821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713516, 31.906311, 40.643867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544136, 32.192848, 40.865692>,  <33.442509, 32.364769, 40.998787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544136, 32.192848, 40.865692>,  <33.713516, 31.906311, 40.643867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544136, 32.192848, 40.865692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458884, 0.358201, -0.813092,
		-0.781098, -0.598785, 0.177038,
		-0.423452, 0.716344, 0.554563,
		33.417099, 32.407753, 41.032063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039005, 31.927410, 40.472683>,  <33.713516, 31.906311, 40.643867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039005, 31.927410, 40.472683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057701, 32.278900, 40.662697>,  <33.068920, 32.489792, 40.776707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057701, 32.278900, 40.662697>,  <33.039005, 31.927410, 40.472683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057701, 32.278900, 40.662697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639468, 0.391661, -0.661575,
		-0.767395, -0.272850, 0.580222,
		0.046739, 0.878723, 0.475038,
		33.071724, 32.542519, 40.805206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372673, 32.144012, 40.601688>,  <33.039005, 31.927410, 40.472683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372673, 32.144012, 40.601688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605537, 32.468998, 40.589085>,  <32.745255, 32.663990, 40.581520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605537, 32.468998, 40.589085>,  <32.372673, 32.144012, 40.601688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605537, 32.468998, 40.589085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614999, 0.414657, -0.670699,
		-0.531851, 0.409834, 0.741061,
		0.582161, 0.812463, -0.031511,
		32.780186, 32.712738, 40.579632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903088, 32.621384, 40.637089>,  <32.372673, 32.144012, 40.601688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903088, 32.621384, 40.637089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222980, 32.807541, 40.485382>,  <32.414917, 32.919235, 40.394360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222980, 32.807541, 40.485382>,  <31.903088, 32.621384, 40.637089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222980, 32.807541, 40.485382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563220, 0.362854, -0.742374,
		-0.207879, 0.807308, 0.552304,
		0.799731, 0.465393, -0.379262,
		32.462898, 32.947159, 40.371605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582151, 33.282684, 40.322014>,  <31.903088, 32.621384, 40.637089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582151, 33.282684, 40.322014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938717, 33.229195, 40.148808>,  <32.152657, 33.197102, 40.044884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938717, 33.229195, 40.148808>,  <31.582151, 33.282684, 40.322014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938717, 33.229195, 40.148808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390412, 0.258606, -0.883573,
		0.230134, 0.956682, 0.178318,
		0.891413, -0.133723, -0.433014,
		32.206142, 33.189079, 40.018902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603380, 33.872955, 39.857162>,  <31.582151, 33.282684, 40.322014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603380, 33.872955, 39.857162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873234, 33.616631, 39.710613>,  <32.035145, 33.462837, 39.622684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873234, 33.616631, 39.710613>,  <31.603380, 33.872955, 39.857162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873234, 33.616631, 39.710613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235093, 0.283968, -0.929566,
		0.699713, 0.713251, 0.040926,
		0.674636, -0.640808, -0.366377,
		32.075626, 33.424389, 39.600700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945660, 34.251518, 39.320244>,  <31.603380, 33.872955, 39.857162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945660, 34.251518, 39.320244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006073, 33.859840, 39.266026>,  <32.042320, 33.624836, 39.233494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006073, 33.859840, 39.266026>,  <31.945660, 34.251518, 39.320244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006073, 33.859840, 39.266026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403242, 0.064164, -0.912841,
		0.902543, 0.192529, -0.385160,
		0.151035, -0.979191, -0.135547,
		32.051384, 33.566082, 39.225361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303905, 34.140217, 38.612991>,  <31.945660, 34.251518, 39.320244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303905, 34.140217, 38.612991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141514, 33.784683, 38.697998>,  <32.044079, 33.571365, 38.749001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141514, 33.784683, 38.697998>,  <32.303905, 34.140217, 38.612991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141514, 33.784683, 38.697998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603000, 0.085798, -0.793114,
		0.686710, -0.450134, -0.570797,
		-0.405981, -0.888830, 0.212513,
		32.019718, 33.518036, 38.761753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332588, 33.772778, 37.948559>,  <32.303905, 34.140217, 38.612991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332588, 33.772778, 37.948559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058628, 33.608246, 38.189129>,  <31.894251, 33.509525, 38.333469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058628, 33.608246, 38.189129>,  <32.332588, 33.772778, 37.948559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058628, 33.608246, 38.189129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585000, -0.181644, -0.790431,
		0.434374, -0.893203, -0.116220,
		-0.684905, -0.411331, 0.601425,
		31.853157, 33.484848, 38.369556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221485, 33.096424, 37.607704>,  <32.332588, 33.772778, 37.948559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221485, 33.096424, 37.607704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924391, 33.217079, 37.846825>,  <31.746136, 33.289471, 37.990295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924391, 33.217079, 37.846825>,  <32.221485, 33.096424, 37.607704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924391, 33.217079, 37.846825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669513, -0.348043, -0.656215,
		0.010124, -0.887628, 0.460450,
		-0.742732, 0.301634, 0.597802,
		31.701571, 33.307568, 38.026165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717880, 32.514832, 37.712997>,  <32.221485, 33.096424, 37.607704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717880, 32.514832, 37.712997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571846, 32.886600, 37.734497>,  <31.484224, 33.109661, 37.747398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571846, 32.886600, 37.734497>,  <31.717880, 32.514832, 37.712997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571846, 32.886600, 37.734497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655854, -0.215791, -0.723388,
		-0.660732, -0.299352, 0.688347,
		-0.365087, 0.929421, 0.053752,
		31.462320, 33.165428, 37.750622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190821, 32.144089, 38.115356>,  <31.717880, 32.514832, 37.712997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190821, 32.144089, 38.115356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318031, 32.408894, 38.386826>,  <31.394358, 32.567776, 38.549706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318031, 32.408894, 38.386826>,  <31.190821, 32.144089, 38.115356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318031, 32.408894, 38.386826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752758, -0.611506, 0.243755,
		0.576380, 0.433354, -0.692813,
		0.318027, 0.662016, 0.678671,
		31.413439, 32.607498, 38.590427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711664, 31.541046, 38.089935>,  <31.190821, 32.144089, 38.115356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711664, 31.541046, 38.089935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973394, 31.280918, 37.935562>,  <32.130432, 31.124842, 37.842937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973394, 31.280918, 37.935562>,  <31.711664, 31.541046, 38.089935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973394, 31.280918, 37.935562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179982, -0.361754, 0.914735,
		-0.734484, -0.667993, -0.119658,
		0.654324, -0.650322, -0.385929,
		32.169693, 31.085821, 37.819782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516188, 30.751316, 38.223724>,  <31.711664, 31.541046, 38.089935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516188, 30.751316, 38.223724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913240, 30.791759, 38.197018>,  <32.151474, 30.816025, 38.180992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913240, 30.791759, 38.197018>,  <31.516188, 30.751316, 38.223724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913240, 30.791759, 38.197018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108950, -0.503708, 0.856976,
		0.053015, -0.857937, -0.511012,
		0.992633, 0.101107, -0.066768,
		32.211029, 30.822092, 38.176987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790953, 30.142578, 38.405369>,  <31.516188, 30.751316, 38.223724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790953, 30.142578, 38.405369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104641, 30.388138, 38.441433>,  <32.292854, 30.535473, 38.463070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104641, 30.388138, 38.441433>,  <31.790953, 30.142578, 38.405369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104641, 30.388138, 38.441433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287228, -0.487966, 0.824251,
		0.550001, -0.620497, -0.559001,
		0.784218, 0.613899, 0.090158,
		32.339905, 30.572308, 38.468479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394302, 29.764515, 38.309860>,  <31.790953, 30.142578, 38.405369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394302, 29.764515, 38.309860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478069, 30.086792, 38.531494>,  <32.528328, 30.280157, 38.664474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478069, 30.086792, 38.531494>,  <32.394302, 29.764515, 38.309860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478069, 30.086792, 38.531494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295380, -0.592297, 0.749623,
		0.932146, 0.006682, -0.362022,
		0.209416, 0.805692, 0.554081,
		32.540894, 30.328499, 38.697720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050655, 29.665407, 38.623535>,  <32.394302, 29.764515, 38.309860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050655, 29.665407, 38.623535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893143, 29.954353, 38.850910>,  <32.798637, 30.127722, 38.987335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893143, 29.954353, 38.850910>,  <33.050655, 29.665407, 38.623535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893143, 29.954353, 38.850910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407177, -0.417345, 0.812422,
		0.824102, 0.551371, -0.129790,
		-0.393779, 0.722367, 0.568441,
		32.775009, 30.171062, 39.021442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551495, 29.805534, 39.167389>,  <33.050655, 29.665407, 38.623535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551495, 29.805534, 39.167389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210854, 29.962938, 39.305904>,  <33.006470, 30.057381, 39.389015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210854, 29.962938, 39.305904>,  <33.551495, 29.805534, 39.167389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210854, 29.962938, 39.305904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215683, -0.339064, 0.915705,
		0.477757, 0.854508, 0.203874,
		-0.851604, 0.393512, 0.346293,
		32.955372, 30.080992, 39.409794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821770, 30.003668, 39.729805>,  <33.551495, 29.805534, 39.167389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821770, 30.003668, 39.729805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424580, 30.016310, 39.775421>,  <33.186268, 30.023895, 39.802792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424580, 30.016310, 39.775421>,  <33.821770, 30.003668, 39.729805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424580, 30.016310, 39.775421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085156, -0.478368, 0.874021,
		0.082180, 0.877590, 0.472315,
		-0.992973, 0.031607, 0.114044,
		33.126686, 30.025791, 39.809635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589710, 30.406466, 40.372589>,  <33.821770, 30.003668, 39.729805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589710, 30.406466, 40.372589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309887, 30.133013, 40.289387>,  <33.141994, 29.968941, 40.239468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309887, 30.133013, 40.289387>,  <33.589710, 30.406466, 40.372589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309887, 30.133013, 40.289387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142632, -0.418817, 0.896799,
		-0.700195, 0.597696, 0.390495,
		-0.699559, -0.683632, -0.208003,
		33.100018, 29.927923, 40.226986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089600, 30.391819, 40.876907>,  <33.589710, 30.406466, 40.372589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089600, 30.391819, 40.876907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069458, 30.033758, 40.699745>,  <33.057373, 29.818920, 40.593449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069458, 30.033758, 40.699745>,  <33.089600, 30.391819, 40.876907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069458, 30.033758, 40.699745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096122, -0.445751, 0.889982,
		-0.994095, 0.002241, 0.108489,
		-0.050353, -0.895154, -0.442903,
		33.054352, 29.765211, 40.566875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663311, 30.087831, 41.312660>,  <33.089600, 30.391819, 40.876907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663311, 30.087831, 41.312660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848053, 29.800003, 41.105232>,  <32.958897, 29.627306, 40.980778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848053, 29.800003, 41.105232>,  <32.663311, 30.087831, 41.312660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848053, 29.800003, 41.105232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109621, -0.533868, 0.838432,
		-0.880157, -0.444078, -0.167688,
		0.461852, -0.719569, -0.518568,
		32.986610, 29.584133, 40.949661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385017, 29.422276, 41.618076>,  <32.663311, 30.087831, 41.312660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385017, 29.422276, 41.618076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702579, 29.279285, 41.421333>,  <32.893116, 29.193491, 41.303288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702579, 29.279285, 41.421333>,  <32.385017, 29.422276, 41.618076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702579, 29.279285, 41.421333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193579, -0.618241, 0.761777,
		-0.576399, -0.699995, -0.421628,
		0.793909, -0.357469, -0.491859,
		32.940750, 29.172043, 41.273773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401573, 28.829067, 41.814396>,  <32.385017, 29.422276, 41.618076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401573, 28.829067, 41.814396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781048, 28.859959, 41.691738>,  <33.008732, 28.878492, 41.618141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781048, 28.859959, 41.691738>,  <32.401573, 28.829067, 41.814396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781048, 28.859959, 41.691738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306845, -0.459232, 0.833638,
		-0.076443, -0.884953, -0.459363,
		0.948685, 0.077228, -0.306649,
		33.065655, 28.883127, 41.599743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733089, 28.123131, 41.901024>,  <32.401573, 28.829067, 41.814396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733089, 28.123131, 41.901024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016811, 28.405041, 41.906338>,  <33.187046, 28.574186, 41.909527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016811, 28.405041, 41.906338>,  <32.733089, 28.123131, 41.901024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016811, 28.405041, 41.906338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437623, -0.455056, 0.775506,
		0.552606, -0.544254, -0.631200,
		0.709304, 0.704777, 0.013288,
		33.229603, 28.616474, 41.910324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498329, 27.740332, 41.993359>,  <32.733089, 28.123131, 41.901024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498329, 27.740332, 41.993359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578140, 28.121288, 42.085564>,  <33.626026, 28.349863, 42.140884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578140, 28.121288, 42.085564>,  <33.498329, 27.740332, 41.993359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578140, 28.121288, 42.085564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555562, -0.303729, 0.774015,
		0.807179, -0.026377, -0.589717,
		0.199530, 0.952393, 0.230510,
		33.638000, 28.407005, 42.154716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264957, 27.796343, 41.985661>,  <33.498329, 27.740332, 41.993359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264957, 27.796343, 41.985661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134792, 28.104250, 42.205322>,  <34.056694, 28.288994, 42.337120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134792, 28.104250, 42.205322>,  <34.264957, 27.796343, 41.985661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134792, 28.104250, 42.205322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708682, -0.185939, 0.680586,
		0.626000, 0.610645, -0.485012,
		-0.325414, 0.769766, 0.549150,
		34.037167, 28.335180, 42.370068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850559, 28.124937, 42.281414>,  <34.264957, 27.796343, 41.985661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850559, 28.124937, 42.281414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556377, 28.265373, 42.513222>,  <34.379868, 28.349636, 42.652306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556377, 28.265373, 42.513222>,  <34.850559, 28.124937, 42.281414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556377, 28.265373, 42.513222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603893, -0.048227, 0.795605,
		0.307279, 0.935098, -0.176554,
		-0.735454, 0.351092, 0.579518,
		34.335743, 28.370701, 42.687077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206097, 28.605686, 42.707855>,  <34.850559, 28.124937, 42.281414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206097, 28.605686, 42.707855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855160, 28.526182, 42.882565>,  <34.644600, 28.478479, 42.987389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855160, 28.526182, 42.882565>,  <35.206097, 28.605686, 42.707855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855160, 28.526182, 42.882565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463649, -0.116456, 0.878332,
		-0.123713, 0.973104, 0.194327,
		-0.877340, -0.198761, 0.436772,
		34.591957, 28.466555, 43.013596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052368, 29.147091, 43.274681>,  <35.206097, 28.605686, 42.707855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052368, 29.147091, 43.274681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834499, 28.824919, 43.368160>,  <34.703777, 28.631615, 43.424248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834499, 28.824919, 43.368160>,  <35.052368, 29.147091, 43.274681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834499, 28.824919, 43.368160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289804, 0.080735, 0.953675,
		-0.786987, 0.587165, 0.189443,
		-0.544669, -0.805431, 0.233700,
		34.671097, 28.583290, 43.438271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735962, 29.224297, 43.993534>,  <35.052368, 29.147091, 43.274681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735962, 29.224297, 43.993534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710197, 28.832003, 43.919765>,  <34.694740, 28.596626, 43.875504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710197, 28.832003, 43.919765>,  <34.735962, 29.224297, 43.993534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710197, 28.832003, 43.919765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218232, -0.194173, 0.956385,
		-0.973769, 0.021353, 0.226534,
		-0.064409, -0.980735, -0.184420,
		34.690876, 28.537783, 43.864441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354183, 29.003901, 44.457016>,  <34.735962, 29.224297, 43.993534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354183, 29.003901, 44.457016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568008, 28.691055, 44.328926>,  <34.696304, 28.503349, 44.252071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568008, 28.691055, 44.328926>,  <34.354183, 29.003901, 44.457016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568008, 28.691055, 44.328926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230244, -0.229796, 0.945612,
		-0.813160, -0.579220, 0.057235,
		0.534564, -0.782112, -0.320223,
		34.728378, 28.456421, 44.232861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079494, 28.529615, 44.819321>,  <34.354183, 29.003901, 44.457016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079494, 28.529615, 44.819321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441509, 28.389242, 44.723186>,  <34.658718, 28.305019, 44.665504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441509, 28.389242, 44.723186>,  <34.079494, 28.529615, 44.819321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441509, 28.389242, 44.723186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126670, -0.317032, 0.939918,
		-0.406043, -0.881100, -0.242471,
		0.905033, -0.350933, -0.240338,
		34.713020, 28.283962, 44.651085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171719, 27.796219, 45.174248>,  <34.079494, 28.529615, 44.819321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171719, 27.796219, 45.174248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552837, 27.876356, 45.082993>,  <34.781509, 27.924438, 45.028240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552837, 27.876356, 45.082993>,  <34.171719, 27.796219, 45.174248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552837, 27.876356, 45.082993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290956, -0.387722, 0.874652,
		0.086778, -0.899741, -0.427711,
		0.952793, 0.200346, -0.228140,
		34.838676, 27.936460, 45.014549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660755, 27.212162, 45.254707>,  <34.171719, 27.796219, 45.174248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660755, 27.212162, 45.254707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881413, 27.541809, 45.306114>,  <35.013805, 27.739597, 45.336956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881413, 27.541809, 45.306114>,  <34.660755, 27.212162, 45.254707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881413, 27.541809, 45.306114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348329, -0.367627, 0.862274,
		0.757863, -0.430903, -0.489864,
		0.551644, 0.824119, 0.128515,
		35.046906, 27.789045, 45.344669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323742, 26.971817, 45.394985>,  <34.660755, 27.212162, 45.254707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323742, 26.971817, 45.394985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358879, 27.345196, 45.534103>,  <35.379963, 27.569223, 45.617577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358879, 27.345196, 45.534103>,  <35.323742, 26.971817, 45.394985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358879, 27.345196, 45.534103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496026, -0.343773, 0.797357,
		0.863853, 0.102471, -0.493212,
		0.087847, 0.933445, 0.347798,
		35.385235, 27.625229, 45.638443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941074, 26.877026, 45.663734>,  <35.323742, 26.971817, 45.394985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941074, 26.877026, 45.663734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798008, 27.227774, 45.792217>,  <35.712166, 27.438223, 45.869308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798008, 27.227774, 45.792217>,  <35.941074, 26.877026, 45.663734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798008, 27.227774, 45.792217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307076, -0.214396, 0.927221,
		0.881916, 0.430274, -0.192583,
		-0.357670, 0.876869, 0.321207,
		35.690708, 27.490835, 45.888580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388493, 27.120070, 46.055210>,  <35.941074, 26.877026, 45.663734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388493, 27.120070, 46.055210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042812, 27.290314, 46.162560>,  <35.835403, 27.392460, 46.226967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042812, 27.290314, 46.162560>,  <36.388493, 27.120070, 46.055210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042812, 27.290314, 46.162560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204046, -0.191097, 0.960129,
		0.459923, 0.884499, 0.078302,
		-0.864196, 0.425608, 0.268369,
		35.783554, 27.417995, 46.243069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553894, 27.507837, 46.626785>,  <36.388493, 27.120070, 46.055210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553894, 27.507837, 46.626785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163021, 27.423462, 46.636787>,  <35.928497, 27.372837, 46.642788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163021, 27.423462, 46.636787>,  <36.553894, 27.507837, 46.626785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163021, 27.423462, 46.636787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092269, -0.315490, 0.944432,
		-0.191330, 0.925187, 0.327753,
		-0.977179, -0.210939, 0.025004,
		35.869865, 27.360180, 46.644287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180191, 27.779623, 47.021511>,  <36.553894, 27.507837, 46.626785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180191, 27.779623, 47.021511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503651, 27.559855, 46.937393>,  <37.697727, 27.427994, 46.886921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503651, 27.559855, 46.937393>,  <37.180191, 27.779623, 47.021511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503651, 27.559855, 46.937393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033848, 0.313428, -0.949009,
		0.587317, 0.774533, 0.234856,
		0.808649, -0.549419, -0.210298,
		37.746246, 27.395029, 46.874306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703743, 28.211542, 46.671349>,  <37.180191, 27.779623, 47.021511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703743, 28.211542, 46.671349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784176, 27.828800, 46.587456>,  <37.832436, 27.599155, 46.537121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784176, 27.828800, 46.587456>,  <37.703743, 28.211542, 46.671349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784176, 27.828800, 46.587456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073125, 0.198848, -0.977299,
		0.976840, 0.211859, -0.029984,
		0.201087, -0.956857, -0.209735,
		37.844501, 27.541742, 46.524536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099659, 28.333759, 46.107994>,  <37.703743, 28.211542, 46.671349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099659, 28.333759, 46.107994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998989, 27.948128, 46.074028>,  <37.938587, 27.716749, 46.053650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998989, 27.948128, 46.074028>,  <38.099659, 28.333759, 46.107994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998989, 27.948128, 46.074028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172022, 0.041782, -0.984206,
		0.952402, -0.262306, 0.155328,
		-0.251673, -0.964079, -0.084916,
		37.923489, 27.658903, 46.048553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575237, 28.107719, 45.604004>,  <38.099659, 28.333759, 46.107994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575237, 28.107719, 45.604004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271454, 27.847498, 45.604496>,  <38.089184, 27.691364, 45.604790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271454, 27.847498, 45.604496>,  <38.575237, 28.107719, 45.604004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271454, 27.847498, 45.604496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079229, -0.094366, -0.992380,
		0.645714, -0.753573, 0.123210,
		-0.759458, -0.650555, 0.001229,
		38.043617, 27.652332, 45.604866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810116, 27.487209, 45.207081>,  <38.575237, 28.107719, 45.604004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810116, 27.487209, 45.207081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413532, 27.537817, 45.219730>,  <38.175583, 27.568182, 45.227318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413532, 27.537817, 45.219730>,  <38.810116, 27.487209, 45.207081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413532, 27.537817, 45.219730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030339, 0.012035, -0.999467,
		-0.126834, -0.991891, -0.008094,
		-0.991460, 0.126521, 0.031619,
		38.116093, 27.575773, 45.229218>
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
