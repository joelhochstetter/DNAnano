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
	<2.902162, 2.562489, 0.047617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635078, 2.817581, -0.105988>,  <2.474828, 2.970636, -0.198150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635078, 2.817581, -0.105988>,  <2.902162, 2.562489, 0.047617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.635078, 2.817581, -0.105988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272673, 0.270479, 0.923304,
		0.692686, 0.721208, -0.006710,
		-0.667710, 0.637730, -0.384011,
		2.434766, 3.008900, -0.221191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.948331, 3.314252, 0.218251>,  <2.902162, 2.562489, 0.047617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.948331, 3.314252, 0.218251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.560539, 3.225044, 0.177513>,  <2.327864, 3.171520, 0.153071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.560539, 3.225044, 0.177513>,  <2.948331, 3.314252, 0.218251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.560539, 3.225044, 0.177513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197161, 0.462269, 0.864543,
		-0.145731, 0.858236, -0.492132,
		-0.969479, -0.223020, -0.101844,
		2.269696, 3.158138, 0.146960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.595630, 3.986888, 0.173471>,  <2.948331, 3.314252, 0.218251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.595630, 3.986888, 0.173471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.401001, 3.670410, 0.321663>,  <2.284223, 3.480523, 0.410578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.401001, 3.670410, 0.321663>,  <2.595630, 3.986888, 0.173471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.401001, 3.670410, 0.321663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052013, 0.449549, 0.891740,
		-0.872090, 0.414627, -0.259891,
		-0.486573, -0.791196, 0.370481,
		2.255029, 3.433052, 0.432807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.080220, 4.250356, 0.636202>,  <2.595630, 3.986888, 0.173470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.080220, 4.250356, 0.636202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.187424, 3.884087, 0.756012>,  <2.251746, 3.664325, 0.827898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.187424, 3.884087, 0.756012>,  <2.080220, 4.250356, 0.636202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.187424, 3.884087, 0.756012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183798, 0.256592, 0.948883,
		-0.945722, -0.309361, -0.099530,
		0.268008, -0.915673, 0.299525,
		2.267826, 3.609385, 0.845869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.770819, 4.122424, 1.297268>,  <2.080220, 4.250356, 0.636202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.770819, 4.122424, 1.297268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.074432, 3.862823, 1.317932>,  <2.256600, 3.707063, 1.330331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.074432, 3.862823, 1.317932>,  <1.770819, 4.122424, 1.297268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.074432, 3.862823, 1.317932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032614, 0.117154, 0.992578,
		-0.650236, -0.751714, 0.110090,
		0.759032, -0.649000, 0.051661,
		2.302142, 3.668123, 1.333430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.577131, 3.816377, 1.854537>,  <1.770819, 4.122424, 1.297268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.577131, 3.816377, 1.854537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.947906, 3.673477, 1.808655>,  <2.170372, 3.587738, 1.781125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.947906, 3.673477, 1.808655>,  <1.577131, 3.816377, 1.854537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.947906, 3.673477, 1.808655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087382, -0.091768, 0.991939,
		-0.364895, -0.929490, -0.053847,
		0.926939, -0.357249, -0.114707,
		2.225988, 3.566303, 1.774243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.725964, 3.221199, 2.296306>,  <1.577131, 3.816377, 1.854537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.725964, 3.221199, 2.296306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.085800, 3.379776, 2.223015>,  <2.301702, 3.474922, 2.179040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.085800, 3.379776, 2.223015>,  <1.725964, 3.221199, 2.296306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.085800, 3.379776, 2.223015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236229, -0.088820, 0.967630,
		0.367335, -0.913753, -0.173553,
		0.899589, 0.396443, -0.183228,
		2.355677, 3.498709, 2.168046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.296405, 2.776849, 2.691918>,  <1.725964, 3.221199, 2.296306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.296405, 2.776849, 2.691918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.458168, 3.138054, 2.633919>,  <2.555226, 3.354777, 2.599119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.458168, 3.138054, 2.633919>,  <2.296405, 2.776849, 2.691918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.458168, 3.138054, 2.633919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319375, 0.009124, 0.947584,
		0.857002, -0.429519, -0.284710,
		0.404408, 0.903011, -0.144998,
		2.579491, 3.408957, 2.590420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.196303, 3.136448, 3.965730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.356705, 3.502792, 3.957787>,  <2.452946, 3.722599, 3.953020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.356705, 3.502792, 3.957787>,  <2.196303, 3.136448, 3.965730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.356705, 3.502792, 3.957787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312269, -0.157041, -0.936924,
		-0.861210, 0.369510, -0.348969,
		0.401005, 0.915861, -0.019859,
		2.477006, 3.777551, 3.951829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.968265, 3.564036, 3.492273>,  <2.196303, 3.136448, 3.965730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.968265, 3.564036, 3.492273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.337700, 3.703964, 3.555023>,  <2.559361, 3.787921, 3.592673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.337700, 3.703964, 3.555023>,  <1.968265, 3.564036, 3.492273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.337700, 3.703964, 3.555023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126954, 0.107039, -0.986116,
		-0.361756, 0.930682, 0.054449,
		0.923588, 0.349821, 0.156876,
		2.614776, 3.808910, 3.602086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.040966, 4.105144, 3.087673>,  <1.968265, 3.564036, 3.492273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.040966, 4.105144, 3.087673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.395782, 3.950790, 3.189064>,  <2.608672, 3.858178, 3.249898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.395782, 3.950790, 3.189064>,  <2.040966, 4.105144, 3.087673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.395782, 3.950790, 3.189064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250670, -0.058516, -0.966303,
		0.387713, 0.920689, 0.044824,
		0.887042, -0.385884, 0.253477,
		2.661895, 3.835025, 3.265107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.642551, 4.445755, 2.865465>,  <2.040966, 4.105144, 3.087673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.642551, 4.445755, 2.865465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.723152, 4.054291, 2.881561>,  <2.771513, 3.819412, 2.891219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.723152, 4.054291, 2.881561>,  <2.642551, 4.445755, 2.865465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.723152, 4.054291, 2.881561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232892, 0.007967, -0.972470,
		0.951398, 0.205326, 0.229528,
		0.201502, -0.978661, 0.040240,
		2.783603, 3.760692, 2.893633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.266387, 4.475022, 2.523261>,  <2.642551, 4.445755, 2.865465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.266387, 4.475022, 2.523261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.099121, 4.111710, 2.518135>,  <2.998761, 3.893722, 2.515060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.099121, 4.111710, 2.518135>,  <3.266387, 4.475022, 2.523261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.099121, 4.111710, 2.518135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122474, -0.042397, -0.991566,
		0.900076, -0.416209, 0.128970,
		-0.418166, -0.908280, -0.012814,
		2.973671, 3.839226, 2.514291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.643741, 3.962823, 1.981530>,  <3.266387, 4.475022, 2.523261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.643741, 3.962823, 1.981530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.267834, 3.836365, 2.033508>,  <3.042289, 3.760490, 2.064696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.267834, 3.836365, 2.033508>,  <3.643741, 3.962823, 1.981530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.267834, 3.836365, 2.033508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045296, -0.261634, -0.964104,
		0.338797, -0.911920, 0.231556,
		-0.939769, -0.316147, 0.129947,
		2.985903, 3.741521, 2.072492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.560362, 3.260425, 1.704747>,  <3.643741, 3.962823, 1.981530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.560362, 3.260425, 1.704747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.170818, 3.351242, 1.707603>,  <2.937092, 3.405732, 1.709317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.170818, 3.351242, 1.707603>,  <3.560362, 3.260425, 1.704747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.170818, 3.351242, 1.707603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085979, -0.339326, -0.936731,
		-0.210254, -0.912858, 0.349976,
		-0.973859, 0.227042, 0.007142,
		2.878661, 3.419355, 1.709746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.259244, 2.788456, 1.390231>,  <3.560362, 3.260425, 1.704747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.259244, 2.788456, 1.390231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.981113, 3.074036, 1.357254>,  <2.814235, 3.245384, 1.337468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.981113, 3.074036, 1.357254>,  <3.259244, 2.788456, 1.390231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.981113, 3.074036, 1.357254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247715, -0.345762, -0.905034,
		-0.674654, -0.608872, 0.417274,
		-0.695327, 0.713949, -0.082442,
		2.772515, 3.288220, 1.332521>
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
