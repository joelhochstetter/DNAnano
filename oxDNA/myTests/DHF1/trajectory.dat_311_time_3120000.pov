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
	<0.311000, 3.176668, 2.868507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.046520, 3.189079, 2.568680>,  <-0.112167, 3.196526, 2.388783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.046520, 3.189079, 2.568680>,  <0.311000, 3.176668, 2.868507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.046520, 3.189079, 2.568680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629538, -0.520491, -0.576863,
		-0.408042, -0.853303, 0.324616,
		-0.661199, 0.031027, -0.749569,
		-0.151839, 3.198388, 2.343809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.735765, 2.826632, 3.282312>,  <0.311000, 3.176668, 2.868507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.735765, 2.826632, 3.282312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.904408, 2.980675, 3.610687>,  <1.005593, 3.073101, 3.807713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.904408, 2.980675, 3.610687>,  <0.735765, 2.826632, 3.282312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.904408, 2.980675, 3.610687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883034, -0.380191, -0.275146,
		0.206152, 0.840920, -0.500354,
		0.421606, 0.385108, 0.820939,
		1.030889, 3.096207, 3.856969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.395921, 3.138772, 2.962039>,  <0.735765, 2.826632, 3.282312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.395921, 3.138772, 2.962039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.434746, 2.998100, 3.334469>,  <1.458041, 2.913697, 3.557927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.434746, 2.998100, 3.334469>,  <1.395921, 3.138772, 2.962039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.434746, 2.998100, 3.334469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886159, -0.395347, -0.241708,
		0.453102, 0.848542, 0.273269,
		0.097063, -0.351678, 0.931075,
		1.463865, 2.892597, 3.613791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.880827, 3.569039, 3.326422>,  <1.395921, 3.138772, 2.962039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.880827, 3.569039, 3.326422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.849014, 3.182915, 3.425900>,  <1.829926, 2.951240, 3.485586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.849014, 3.182915, 3.425900>,  <1.880827, 3.569039, 3.326422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.849014, 3.182915, 3.425900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959543, -0.141735, -0.243285,
		0.270095, 0.219283, 0.937531,
		-0.079533, -0.965312, 0.248693,
		1.825154, 2.893321, 3.500507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.523959, 3.463864, 3.633196>,  <1.880827, 3.569039, 3.326422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.523959, 3.463864, 3.633196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.372925, 3.101334, 3.557301>,  <2.282304, 2.883815, 3.511763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.372925, 3.101334, 3.557301>,  <2.523959, 3.463864, 3.633196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.372925, 3.101334, 3.557301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917171, -0.337870, -0.211285,
		0.127386, -0.253801, 0.958831,
		-0.377585, -0.906327, -0.189739,
		2.259649, 2.829436, 3.500379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.857121, 2.828677, 4.056845>,  <2.523959, 3.463864, 3.633196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.857121, 2.828677, 4.056845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.692467, 2.648354, 3.740028>,  <2.593674, 2.540159, 3.549939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.692467, 2.648354, 3.740028>,  <2.857121, 2.828677, 4.056845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.692467, 2.648354, 3.740028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875982, -0.435479, -0.207397,
		-0.251421, -0.779185, 0.574159,
		-0.411635, -0.450809, -0.792040,
		2.568976, 2.513111, 3.502416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.162747, 2.150681, 4.010893>,  <2.857121, 2.828677, 4.056845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.162747, 2.150681, 4.010893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.010067, 2.234375, 3.650776>,  <2.918459, 2.284591, 3.434706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.010067, 2.234375, 3.650776>,  <3.162747, 2.150681, 4.010893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.010067, 2.234375, 3.650776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840676, -0.326234, -0.432244,
		-0.384147, -0.921841, -0.051376,
		-0.381700, 0.209236, -0.900292,
		2.895557, 2.297146, 3.380688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.430149, 1.641416, 3.660550>,  <3.162747, 2.150681, 4.010893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.430149, 1.641416, 3.660550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.337429, 1.932068, 3.401852>,  <3.281797, 2.106459, 3.246633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.337429, 1.932068, 3.401852>,  <3.430149, 1.641416, 3.660550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.337429, 1.932068, 3.401852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858144, -0.160352, -0.487726,
		-0.458102, -0.668055, -0.586383,
		-0.231800, 0.726629, -0.646745,
		3.267889, 2.150057, 3.207828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.971008, 1.802554, 2.833293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.838204, 2.036346, 2.537144>,  <4.758522, 2.176622, 2.359454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.838204, 2.036346, 2.537144>,  <4.971008, 1.802554, 2.833293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.838204, 2.036346, 2.537144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780046, 0.271200, 0.563896,
		0.530375, 0.764744, 0.365880,
		-0.332010, 0.584480, -0.740373,
		4.738602, 2.211690, 2.315032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.624051, 2.296615, 3.240708>,  <4.971008, 1.802554, 2.833293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.624051, 2.296615, 3.240708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.504539, 2.329041, 2.860359>,  <4.432831, 2.348496, 2.632150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.504539, 2.329041, 2.860359>,  <4.624051, 2.296615, 3.240708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.504539, 2.329041, 2.860359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878080, 0.366895, 0.307186,
		0.373773, 0.926723, -0.038440,
		-0.298780, 0.081064, -0.950873,
		4.414905, 2.353360, 2.575097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.090144, 2.863333, 3.175214>,  <4.624051, 2.296615, 3.240708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.090144, 2.863333, 3.175214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.021714, 2.618347, 2.866508>,  <3.980657, 2.471355, 2.681285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.021714, 2.618347, 2.866508>,  <4.090144, 2.863333, 3.175214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.021714, 2.618347, 2.866508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984793, 0.130356, 0.114846,
		0.030265, 0.779675, -0.625452,
		-0.171074, -0.612466, -0.771764,
		3.970392, 2.434608, 2.634979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.653686, 3.164525, 2.684979>,  <4.090144, 2.863333, 3.175214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.653686, 3.164525, 2.684979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.596671, 2.768677, 2.677643>,  <3.562462, 2.531168, 2.673241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.596671, 2.768677, 2.677643>,  <3.653686, 3.164525, 2.684979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.596671, 2.768677, 2.677643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959893, 0.133690, 0.246439,
		-0.241429, 0.052731, -0.968985,
		-0.142538, -0.989620, -0.018340,
		3.553910, 2.471791, 2.672141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.074765, 3.007652, 2.310523>,  <3.653686, 3.164525, 2.684979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.074765, 3.007652, 2.310523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.105281, 2.703293, 2.568272>,  <3.123590, 2.520677, 2.722921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.105281, 2.703293, 2.568272>,  <3.074765, 3.007652, 2.310523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.105281, 2.703293, 2.568272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923042, 0.190494, 0.334224,
		-0.377059, -0.620279, -0.687808,
		0.076288, -0.760898, 0.644371,
		3.128167, 2.475024, 2.761583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.388367, 2.655829, 2.227590>,  <3.074765, 3.007652, 2.310523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.388367, 2.655829, 2.227590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.553974, 2.546143, 2.574783>,  <2.653338, 2.480331, 2.783099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.553974, 2.546143, 2.574783>,  <2.388367, 2.655829, 2.227590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.553974, 2.546143, 2.574783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909406, -0.083096, 0.407523,
		-0.039623, -0.958072, -0.283776,
		0.414017, -0.274215, 0.867984,
		2.678179, 2.463878, 2.835178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.001403, 1.930547, 2.537292>,  <2.388367, 2.655829, 2.227590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.001403, 1.930547, 2.537292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.187605, 2.160675, 2.806309>,  <2.299326, 2.298752, 2.967719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.187605, 2.160675, 2.806309>,  <2.001403, 1.930547, 2.537292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.187605, 2.160675, 2.806309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856441, 0.101191, 0.506230,
		0.223190, -0.811643, 0.539834,
		0.465504, 0.575322, 0.672540,
		2.327256, 2.333271, 3.008071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.745332, 1.678014, 3.137583>,  <2.001403, 1.930547, 2.537292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.745332, 1.678014, 3.137583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.894747, 2.037613, 3.229038>,  <1.984396, 2.253372, 3.283911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.894747, 2.037613, 3.229038>,  <1.745332, 1.678014, 3.137583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.894747, 2.037613, 3.229038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840638, 0.223865, 0.493166,
		0.392171, -0.376418, 0.839352,
		0.373538, 0.898996, 0.228637,
		2.006808, 2.307312, 3.297630>
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
