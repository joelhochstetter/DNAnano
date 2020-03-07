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
	<-0.048736, 2.254823, 0.049224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.093918, 2.510464, 0.321799>,  <0.179510, 2.663849, 0.485345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.093918, 2.510464, 0.321799>,  <-0.048736, 2.254823, 0.049224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.093918, 2.510464, 0.321799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862915, -0.504875, 0.021898,
		0.358036, 0.580214, -0.731547,
		0.356634, 0.639103, 0.681439,
		0.200908, 2.702195, 0.526231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.571870, 2.541614, -0.208325>,  <-0.048736, 2.254823, 0.049224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.571870, 2.541614, -0.208325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.547274, 2.508044, 0.189505>,  <0.532516, 2.487902, 0.428202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.547274, 2.508044, 0.189505>,  <0.571870, 2.541614, -0.208325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.547274, 2.508044, 0.189505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845143, -0.534493, 0.007150,
		0.530992, 0.840996, 0.103794,
		-0.061490, -0.083924, 0.994573,
		0.528827, 2.482867, 0.487877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.155590, 2.788741, 0.167754>,  <0.571870, 2.541614, -0.208325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.155590, 2.788741, 0.167754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.983873, 2.528554, 0.418386>,  <0.880843, 2.372443, 0.568765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.983873, 2.528554, 0.418386>,  <1.155590, 2.788741, 0.167754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.983873, 2.528554, 0.418386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899849, -0.367444, 0.235068,
		0.077329, 0.664740, 0.743062,
		-0.429292, -0.650466, 0.626580,
		0.855086, 2.333415, 0.606359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.494103, 2.843946, 0.753949>,  <1.155590, 2.788741, 0.167754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.494103, 2.843946, 0.753949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.329831, 2.479715, 0.772688>,  <1.231268, 2.261177, 0.783931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.329831, 2.479715, 0.772688>,  <1.494103, 2.843946, 0.753949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.329831, 2.479715, 0.772688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887016, -0.387104, 0.251702,
		-0.211059, 0.144923, 0.966670,
		-0.410679, -0.910576, 0.046847,
		1.206627, 2.206543, 0.786742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.778728, 2.515346, 1.393600>,  <1.494103, 2.843946, 0.753949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.778728, 2.515346, 1.393600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.650359, 2.208393, 1.171561>,  <1.573338, 2.024220, 1.038338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.650359, 2.208393, 1.171561>,  <1.778728, 2.515346, 1.393600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.650359, 2.208393, 1.171561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834382, -0.506389, 0.217660,
		-0.448123, -0.393309, 0.802803,
		-0.320923, -0.767384, -0.555095,
		1.554082, 1.978178, 1.005033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.975917, 1.956701, 1.802009>,  <1.778728, 2.515346, 1.393600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.975917, 1.956701, 1.802009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.910374, 1.801903, 1.439047>,  <1.871047, 1.709024, 1.221269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.910374, 1.801903, 1.439047>,  <1.975917, 1.956701, 1.802009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.910374, 1.801903, 1.439047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801005, -0.589092, 0.106593,
		-0.575796, -0.709370, 0.406513,
		-0.163859, -0.386995, -0.907406,
		1.861216, 1.685804, 1.166825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.906326, 1.273128, 1.851630>,  <1.975917, 1.956701, 1.802009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.906326, 1.273128, 1.851630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.996207, 1.321871, 1.464919>,  <2.050136, 1.351116, 1.232892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.996207, 1.321871, 1.464919>,  <1.906326, 1.273128, 1.851630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.996207, 1.321871, 1.464919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712870, -0.696963, 0.077841,
		-0.664323, -0.706678, -0.243478,
		0.224703, 0.121856, -0.966778,
		2.063618, 1.358428, 1.174886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.948831, 0.618024, 1.507452>,  <1.906326, 1.273128, 1.851630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.948831, 0.618024, 1.507452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.166161, 0.865279, 1.280223>,  <2.296558, 1.013632, 1.143886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.166161, 0.865279, 1.280223>,  <1.948831, 0.618024, 1.507452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.166161, 0.865279, 1.280223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830438, -0.494998, 0.255637,
		-0.123176, -0.610642, -0.782268,
		0.543324, 0.618137, -0.568072,
		2.329158, 1.050720, 1.109801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.129201, 0.710763, 1.884328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.317581, 0.794918, 1.541647>,  <3.430609, 0.845411, 1.336038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.317581, 0.794918, 1.541647>,  <3.129201, 0.710763, 1.884328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.317581, 0.794918, 1.541647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820244, 0.461846, -0.337488,
		0.324662, 0.861646, 0.390076,
		0.470950, 0.210388, -0.856704,
		3.458866, 0.858034, 1.284635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.052879, 1.445909, 1.653190>,  <3.129201, 0.710763, 1.884328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.052879, 1.445909, 1.653190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.115570, 1.200905, 1.343283>,  <3.153185, 1.053902, 1.157339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.115570, 1.200905, 1.343283>,  <3.052879, 1.445909, 1.653190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.115570, 1.200905, 1.343283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749326, 0.437284, -0.497287,
		0.643387, 0.658493, -0.390435,
		0.156729, -0.612511, -0.774769,
		3.162589, 1.017151, 1.110852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.240869, 1.865004, 0.960428>,  <3.052879, 1.445909, 1.653190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.240869, 1.865004, 0.960428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.062481, 1.511665, 0.902729>,  <2.955448, 1.299662, 0.868109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.062481, 1.511665, 0.902729>,  <3.240869, 1.865004, 0.960428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.062481, 1.511665, 0.902729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773441, 0.461447, -0.434575,
		0.450442, -0.082244, -0.889009,
		-0.445971, -0.883348, -0.144244,
		2.928690, 1.246661, 0.859454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.982606, 1.835379, 0.310561>,  <3.240869, 1.865004, 0.960428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.982606, 1.835379, 0.310561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.777763, 1.620541, 0.578673>,  <2.654858, 1.491637, 0.739540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.777763, 1.620541, 0.578673>,  <2.982606, 1.835379, 0.310561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.777763, 1.620541, 0.578673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851575, 0.215639, -0.477829,
		0.112102, -0.815492, -0.567808,
		-0.512107, -0.537096, 0.670279,
		2.624131, 1.459412, 0.779756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.443848, 1.547085, -0.088228>,  <2.982606, 1.835379, 0.310561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.443848, 1.547085, -0.088228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.342415, 1.491636, 0.294703>,  <2.281555, 1.458367, 0.524462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.342415, 1.491636, 0.294703>,  <2.443848, 1.547085, -0.088228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.342415, 1.491636, 0.294703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966246, 0.082780, -0.243959,
		-0.045432, -0.986881, -0.154925,
		-0.253583, -0.138612, 0.957331,
		2.266340, 1.450050, 0.581902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.726000, 1.296548, -0.087359>,  <2.443848, 1.547085, -0.088228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.726000, 1.296548, -0.087359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.770290, 1.426117, 0.288474>,  <1.796865, 1.503859, 0.513973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.770290, 1.426117, 0.288474>,  <1.726000, 1.296548, -0.087359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.770290, 1.426117, 0.288474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992177, 0.090879, 0.085594,
		-0.057663, -0.941708, 0.331452,
		0.110726, 0.323924, 0.939582,
		1.803508, 1.523294, 0.570348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.259488, 0.891476, 0.399342>,  <1.726000, 1.296548, -0.087359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.259488, 0.891476, 0.399342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.325111, 1.245687, 0.573202>,  <1.364486, 1.458215, 0.677518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.325111, 1.245687, 0.573202>,  <1.259488, 0.891476, 0.399342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.325111, 1.245687, 0.573202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975284, 0.211719, -0.063221,
		-0.148008, -0.413536, 0.898377,
		0.164059, 0.885530, 0.434651,
		1.374329, 1.511346, 0.703597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.769512, 1.031766, 0.917076>,  <1.259488, 0.891476, 0.399342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.769512, 1.031766, 0.917076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.891487, 1.406929, 0.850931>,  <0.964672, 1.632027, 0.811245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.891487, 1.406929, 0.850931>,  <0.769512, 1.031766, 0.917076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.891487, 1.406929, 0.850931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944924, 0.276284, -0.175456,
		-0.118875, 0.209757, 0.970500,
		0.304937, 0.937907, -0.165361,
		0.982968, 1.688301, 0.801323>
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
