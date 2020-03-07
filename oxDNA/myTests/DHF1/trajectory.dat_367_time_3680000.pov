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
	<2.121906, 4.893742, 2.868675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.084389, 4.569405, 3.099754>,  <2.061879, 4.374802, 3.238402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.084389, 4.569405, 3.099754>,  <2.121906, 4.893742, 2.868675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.084389, 4.569405, 3.099754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806501, 0.402102, 0.433440,
		-0.583746, -0.425262, -0.691660,
		-0.093792, -0.810843, 0.577699,
		2.056251, 4.326152, 3.273064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.451697, 4.690200, 2.833323>,  <2.121906, 4.893742, 2.868675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.451697, 4.690200, 2.833323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.598011, 4.545013, 3.176125>,  <1.685799, 4.457901, 3.381806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.598011, 4.545013, 3.176125>,  <1.451697, 4.690200, 2.833323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.598011, 4.545013, 3.176125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872465, 0.186879, 0.451533,
		-0.324048, -0.912870, -0.248318,
		0.365785, -0.362967, 0.857004,
		1.707747, 4.436123, 3.433226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.101432, 4.073961, 3.004194>,  <1.451697, 4.690200, 2.833323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.101432, 4.073961, 3.004194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.240414, 4.257118, 3.331512>,  <1.323803, 4.367013, 3.527904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.240414, 4.257118, 3.331512>,  <1.101432, 4.073961, 3.004194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.240414, 4.257118, 3.331512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931915, 0.265385, 0.247196,
		-0.103974, -0.848472, 0.518927,
		0.347455, 0.457893, 0.818297,
		1.344650, 4.394486, 3.577001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.715580, 3.870728, 3.550026>,  <1.101432, 4.073961, 3.004194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.715580, 3.870728, 3.550026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.861710, 4.231796, 3.640999>,  <0.949388, 4.448437, 3.695582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.861710, 4.231796, 3.640999>,  <0.715580, 3.870728, 3.550026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.861710, 4.231796, 3.640999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887384, 0.263891, 0.378036,
		0.281227, -0.339920, 0.897422,
		0.365323, 0.902671, 0.227427,
		0.971307, 4.502597, 3.709228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.516001, 4.009777, 4.240506>,  <0.715580, 3.870728, 3.550026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.516001, 4.009777, 4.240506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.607456, 4.371361, 4.095963>,  <0.662329, 4.588311, 4.009236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.607456, 4.371361, 4.095963>,  <0.516001, 4.009777, 4.240506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.607456, 4.371361, 4.095963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779378, 0.392391, 0.488466,
		0.583348, 0.169955, 0.794242,
		0.228637, 0.903961, -0.361360,
		0.676047, 4.642549, 3.987555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.575705, 4.416496, 4.839313>,  <0.516001, 4.009777, 4.240506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.575705, 4.416496, 4.839313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.493690, 4.653534, 4.527725>,  <0.444482, 4.795757, 4.340773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.493690, 4.653534, 4.527725>,  <0.575705, 4.416496, 4.839313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.493690, 4.653534, 4.527725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586858, 0.562507, 0.582395,
		0.783299, 0.576556, 0.232434,
		-0.205037, 0.592595, -0.778968,
		0.432179, 4.831313, 4.294035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.753166, 5.037886, 5.044008>,  <0.575705, 4.416496, 4.839313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.753166, 5.037886, 5.044008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.496559, 5.094818, 4.742493>,  <0.342595, 5.128977, 4.561584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.496559, 5.094818, 4.742493>,  <0.753166, 5.037886, 5.044008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.496559, 5.094818, 4.742493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696083, 0.304938, 0.649986,
		0.322371, 0.941677, -0.096549,
		-0.641518, 0.142330, -0.753788,
		0.304104, 5.137517, 4.516356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.291032, 5.608263, 5.216195>,  <0.753166, 5.037886, 5.044008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.291032, 5.608263, 5.216195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.069130, 5.434868, 4.932129>,  <-0.064011, 5.330831, 4.761689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.069130, 5.434868, 4.932129>,  <0.291032, 5.608263, 5.216195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.069130, 5.434868, 4.932129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783116, -0.016255, 0.621664,
		-0.281026, 0.901014, -0.330453,
		-0.554756, -0.433486, -0.710166,
		-0.097297, 5.304822, 4.719079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.060524, 0.199533, 5.694542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.871173, 0.330032, 5.367256>,  <3.757563, 0.408332, 5.170885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.871173, 0.330032, 5.367256>,  <4.060524, 0.199533, 5.694542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.871173, 0.330032, 5.367256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825508, -0.159774, -0.541303,
		-0.307329, -0.931683, -0.193689,
		-0.473376, 0.326250, -0.818215,
		3.729160, 0.427907, 5.121791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.136943, -0.271582, 5.237304>,  <4.060524, 0.199533, 5.694542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.136943, -0.271582, 5.237304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.084215, 0.077774, 5.049767>,  <4.052578, 0.287388, 4.937244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.084215, 0.077774, 5.049767>,  <4.136943, -0.271582, 5.237304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.084215, 0.077774, 5.049767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698509, -0.253752, -0.669100,
		-0.703355, -0.415692, -0.576621,
		-0.131821, 0.873390, -0.468842,
		4.044669, 0.339791, 4.909114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.050528, -0.363249, 4.458456>,  <4.136943, -0.271582, 5.237304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.050528, -0.363249, 4.458456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.198682, 0.005524, 4.503815>,  <4.287574, 0.226787, 4.531030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.198682, 0.005524, 4.503815>,  <4.050528, -0.363249, 4.458456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.198682, 0.005524, 4.503815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786801, -0.246497, -0.565848,
		-0.493720, 0.298803, -0.816674,
		0.370385, 0.921931, 0.113398,
		4.309797, 0.282103, 4.537834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.183083, -0.258577, 3.820958>,  <4.050528, -0.363249, 4.458456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.183083, -0.258577, 3.820958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.412283, -0.069244, 4.088577>,  <4.549803, 0.044355, 4.249149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.412283, -0.069244, 4.088577>,  <4.183083, -0.258577, 3.820958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.412283, -0.069244, 4.088577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812709, -0.222881, -0.538357,
		-0.105703, 0.852222, -0.512392,
		0.573001, 0.473331, 0.669049,
		4.584183, 0.072755, 4.289292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.586532, 0.161416, 3.390847>,  <4.183083, -0.258577, 3.820958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.586532, 0.161416, 3.390847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.769712, 0.147430, 3.746162>,  <4.879621, 0.139039, 3.959352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.769712, 0.147430, 3.746162>,  <4.586532, 0.161416, 3.390847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.769712, 0.147430, 3.746162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842252, -0.302624, -0.446129,
		0.284416, 0.952469, -0.109138,
		0.457951, -0.034965, 0.888289,
		4.907098, 0.136941, 4.012649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.184872, 0.652972, 3.292083>,  <4.586532, 0.161416, 3.390847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.184872, 0.652972, 3.292083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.270501, 0.401611, 3.591225>,  <5.321878, 0.250795, 3.770710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.270501, 0.401611, 3.591225>,  <5.184872, 0.652972, 3.292083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.270501, 0.401611, 3.591225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873674, -0.219241, -0.434311,
		0.436882, 0.746355, 0.502084,
		0.214073, -0.628401, 0.747854,
		5.334723, 0.213091, 3.815581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.821879, 0.818213, 3.501662>,  <5.184872, 0.652972, 3.292083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.821879, 0.818213, 3.501662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.796941, 0.454880, 3.667091>,  <5.781978, 0.236880, 3.766349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.796941, 0.454880, 3.667091>,  <5.821879, 0.818213, 3.501662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.796941, 0.454880, 3.667091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951809, -0.178787, -0.249188,
		0.300287, 0.378108, 0.875706,
		-0.062345, -0.908333, 0.413575,
		5.778237, 0.182380, 3.791164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.369585, 0.700416, 3.951435>,  <5.821879, 0.818213, 3.501662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.369585, 0.700416, 3.951435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.257730, 0.331711, 3.843987>,  <6.190618, 0.110488, 3.779517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.257730, 0.331711, 3.843987>,  <6.369585, 0.700416, 3.951435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.257730, 0.331711, 3.843987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955055, -0.238395, -0.176174,
		0.098353, -0.305812, 0.946998,
		-0.279636, -0.921763, -0.268621,
		6.173840, 0.055182, 3.763400>
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
