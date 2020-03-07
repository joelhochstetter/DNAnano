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
	<5.951853, 3.670933, 2.792324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.735008, 3.733452, 2.462067>,  <5.604901, 3.770963, 2.263912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.735008, 3.733452, 2.462067>,  <5.951853, 3.670933, 2.792324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.735008, 3.733452, 2.462067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488047, -0.858406, 0.157951,
		-0.684049, 0.488580, 0.541633,
		-0.542113, 0.156296, -0.825642,
		5.572374, 3.780340, 2.214374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.272400, 3.649874, 2.960102>,  <5.951853, 3.670933, 2.792324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.272400, 3.649874, 2.960102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.250141, 3.574333, 2.567931>,  <5.236785, 3.529009, 2.332628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.250141, 3.574333, 2.567931>,  <5.272400, 3.649874, 2.960102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.250141, 3.574333, 2.567931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669079, -0.721804, 0.177012,
		-0.741105, 0.665834, -0.086190,
		-0.055648, -0.188852, -0.980428,
		5.233447, 3.517678, 2.273803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.602995, 3.542578, 2.798343>,  <5.272400, 3.649874, 2.960102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.602995, 3.542578, 2.798343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.789776, 3.357437, 2.496953>,  <4.901844, 3.246353, 2.316119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.789776, 3.357437, 2.496953>,  <4.602995, 3.542578, 2.798343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.789776, 3.357437, 2.496953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719456, -0.694268, -0.019388,
		-0.514140, 0.551145, -0.657190,
		0.466951, -0.462851, -0.753476,
		4.929861, 3.218582, 2.270910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.073758, 3.467083, 2.241015>,  <4.602995, 3.542578, 2.798343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.073758, 3.467083, 2.241015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.358082, 3.185730, 2.240106>,  <4.528676, 3.016918, 2.239560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.358082, 3.185730, 2.240106>,  <4.073758, 3.467083, 2.241015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.358082, 3.185730, 2.240106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679398, -0.685729, -0.261140,
		0.182122, 0.187166, -0.965298,
		0.710809, -0.703381, -0.002274,
		4.571325, 2.974716, 2.239423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.963173, 2.971341, 1.674971>,  <4.073758, 3.467083, 2.241015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.963173, 2.971341, 1.674971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.202763, 2.779587, 1.931539>,  <4.346517, 2.664534, 2.085480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.202763, 2.779587, 1.931539>,  <3.963173, 2.971341, 1.674971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.202763, 2.779587, 1.931539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571224, -0.817146, -0.077297,
		0.561189, -0.320096, -0.763286,
		0.598974, -0.479386, 0.641420,
		4.382455, 2.635771, 2.123965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.986209, 2.335292, 1.399837>,  <3.963173, 2.971341, 1.674971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.986209, 2.335292, 1.399837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.113750, 2.257851, 1.770965>,  <4.190275, 2.211386, 1.993642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.113750, 2.257851, 1.770965>,  <3.986209, 2.335292, 1.399837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.113750, 2.257851, 1.770965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560334, -0.828031, 0.019782,
		0.764434, -0.526197, -0.372502,
		0.318852, -0.193603, 0.927821,
		4.209406, 2.199770, 2.049311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.243393, 1.628372, 1.438263>,  <3.986209, 2.335292, 1.399837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.243393, 1.628372, 1.438263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.123104, 1.730103, 1.805933>,  <4.050931, 1.791141, 2.026535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.123104, 1.730103, 1.805933>,  <4.243393, 1.628372, 1.438263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.123104, 1.730103, 1.805933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492797, -0.866592, 0.078551,
		0.816527, -0.429345, 0.385935,
		-0.300723, 0.254327, 0.919176,
		4.032887, 1.806401, 2.081686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.372579, 1.059200, 1.997721>,  <4.243393, 1.628372, 1.438263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.372579, 1.059200, 1.997721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.056580, 1.266685, 2.128466>,  <3.866980, 1.391177, 2.206912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.056580, 1.266685, 2.128466>,  <4.372579, 1.059200, 1.997721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.056580, 1.266685, 2.128466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510085, -0.851851, 0.119010,
		0.340169, -0.072709, 0.937549,
		-0.789999, 0.518713, 0.326861,
		3.819580, 1.422299, 2.226524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.002830, 0.774621, 1.733427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.788002, 0.885330, 2.052163>,  <2.659105, 0.951755, 2.243404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.788002, 0.885330, 2.052163>,  <3.002830, 0.774621, 1.733427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.788002, 0.885330, 2.052163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717001, 0.647414, 0.258389,
		-0.444370, 0.710107, -0.546153,
		-0.537071, 0.276772, 0.796839,
		2.626881, 0.968362, 2.291214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.657598, 1.432505, 1.768499>,  <3.002830, 0.774621, 1.733427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.657598, 1.432505, 1.768499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.804115, 1.364578, 2.134449>,  <2.892025, 1.323822, 2.354018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.804115, 1.364578, 2.134449>,  <2.657598, 1.432505, 1.768499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.804115, 1.364578, 2.134449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735337, 0.655308, -0.172773,
		-0.570184, 0.736025, 0.364908,
		0.366292, -0.169818, 0.914873,
		2.914003, 1.313633, 2.408910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.740485, 2.027508, 2.190854>,  <2.657598, 1.432505, 1.768499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.740485, 2.027508, 2.190854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.009789, 1.758469, 2.313710>,  <3.171370, 1.597045, 2.387423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.009789, 1.758469, 2.313710>,  <2.740485, 2.027508, 2.190854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.009789, 1.758469, 2.313710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718908, 0.692580, -0.059198,
		-0.172902, 0.260661, 0.949822,
		0.673258, -0.672599, 0.307140,
		3.211766, 1.556689, 2.405852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.161995, 2.285910, 2.845638>,  <2.740485, 2.027508, 2.190854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.161995, 2.285910, 2.845638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.368835, 1.992439, 2.669309>,  <3.492939, 1.816357, 2.563511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.368835, 1.992439, 2.669309>,  <3.161995, 2.285910, 2.845638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.368835, 1.992439, 2.669309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836630, 0.541993, 0.079337,
		0.180715, -0.409831, 0.894081,
		0.517100, -0.733677, -0.440823,
		3.523966, 1.772336, 2.537062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.781676, 2.150818, 3.324548>,  <3.161995, 2.285910, 2.845638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.781676, 2.150818, 3.324548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.844254, 2.064865, 2.938937>,  <3.881800, 2.013293, 2.707570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.844254, 2.064865, 2.938937>,  <3.781676, 2.150818, 3.324548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.844254, 2.064865, 2.938937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861807, 0.506520, 0.026952,
		0.482508, -0.835023, 0.264430,
		0.156445, -0.214883, -0.964028,
		3.891187, 2.000400, 2.649729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.463869, 2.203273, 3.290810>,  <3.781676, 2.150818, 3.324548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.463869, 2.203273, 3.290810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.398148, 2.181427, 2.896852>,  <4.358715, 2.168319, 2.660476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.398148, 2.181427, 2.896852>,  <4.463869, 2.203273, 3.290810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.398148, 2.181427, 2.896852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747368, 0.644750, -0.160432,
		0.643775, -0.762440, -0.065114,
		-0.164302, -0.054618, -0.984897,
		4.348856, 2.165042, 2.601382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.218691, 2.029156, 2.900790>,  <4.463869, 2.203273, 3.290810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.218691, 2.029156, 2.900790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.953476, 2.207558, 2.660303>,  <4.794347, 2.314599, 2.516011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.953476, 2.207558, 2.660303>,  <5.218691, 2.029156, 2.900790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.953476, 2.207558, 2.660303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596577, 0.799961, -0.064480,
		0.452191, -0.401424, -0.796481,
		-0.663038, 0.446005, -0.601216,
		4.754565, 2.341359, 2.479938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.619116, 2.136578, 2.167528>,  <5.218691, 2.029156, 2.900790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.619116, 2.136578, 2.167528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.333092, 2.403091, 2.252149>,  <5.161477, 2.563000, 2.302922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.333092, 2.403091, 2.252149>,  <5.619116, 2.136578, 2.167528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.333092, 2.403091, 2.252149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653430, 0.744588, -0.136445,
		-0.248431, 0.040668, -0.967795,
		-0.715060, 0.666284, 0.211553,
		5.118574, 2.602977, 2.315615>
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
