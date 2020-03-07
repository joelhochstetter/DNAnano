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
	<5.433571, 0.099094, 4.951242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.586590, 0.212700, 4.599562>,  <5.678401, 0.280863, 4.388554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.586590, 0.212700, 4.599562>,  <5.433571, 0.099094, 4.951242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.586590, 0.212700, 4.599562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372259, 0.918306, 0.134674,
		0.845625, 0.275770, 0.457022,
		0.382547, 0.284015, -0.879201,
		5.701354, 0.297904, 4.335802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.812950, 0.681167, 5.072299>,  <5.433571, 0.099094, 4.951242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.812950, 0.681167, 5.072299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.655987, 0.659328, 4.705031>,  <5.561809, 0.646225, 4.484671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.655987, 0.659328, 4.705031>,  <5.812950, 0.681167, 5.072299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.655987, 0.659328, 4.705031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477992, 0.864963, 0.152851,
		0.785837, 0.498857, -0.365514,
		-0.392407, -0.054597, -0.918170,
		5.538265, 0.642949, 4.429580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.614939, 1.387597, 4.792853>,  <5.812950, 0.681167, 5.072299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.614939, 1.387597, 4.792853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.338169, 1.140884, 4.642748>,  <5.172107, 0.992857, 4.552685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.338169, 1.140884, 4.642748>,  <5.614939, 1.387597, 4.792853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.338169, 1.140884, 4.642748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692840, 0.713419, 0.104909,
		0.203013, 0.332586, -0.920963,
		-0.691924, -0.616782, -0.375262,
		5.130592, 0.955850, 4.530169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.314239, 1.599370, 4.165657>,  <5.614939, 1.387597, 4.792853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.314239, 1.599370, 4.165657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.062405, 1.399019, 4.403226>,  <4.911304, 1.278809, 4.545767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.062405, 1.399019, 4.403226>,  <5.314239, 1.599370, 4.165657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.062405, 1.399019, 4.403226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572873, 0.815670, 0.080611,
		-0.524822, -0.289492, -0.800473,
		-0.629586, -0.500876, 0.593924,
		4.873529, 1.248756, 4.581403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.671243, 1.717614, 3.805719>,  <5.314239, 1.599370, 4.165657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.671243, 1.717614, 3.805719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.576305, 1.600182, 4.176120>,  <4.519343, 1.529722, 4.398360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.576305, 1.600182, 4.176120>,  <4.671243, 1.717614, 3.805719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.576305, 1.600182, 4.176120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609882, 0.786994, 0.093191,
		-0.756117, -0.542633, -0.365837,
		-0.237343, -0.293581, 0.926001,
		4.505103, 1.512107, 4.453920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.046676, 1.637026, 3.836389>,  <4.671243, 1.717614, 3.805719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.046676, 1.637026, 3.836389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.137577, 1.709082, 4.219201>,  <4.192118, 1.752315, 4.448888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.137577, 1.709082, 4.219201>,  <4.046676, 1.637026, 3.836389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.137577, 1.709082, 4.219201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694507, 0.718877, 0.029605,
		-0.682653, -0.671392, 0.288475,
		0.227254, 0.180138, 0.957030,
		4.205753, 1.763123, 4.506310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.386313, 1.727371, 4.234825>,  <4.046676, 1.637026, 3.836389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.386313, 1.727371, 4.234825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.687000, 1.886095, 4.445523>,  <3.867413, 1.981329, 4.571942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.687000, 1.886095, 4.445523>,  <3.386313, 1.727371, 4.234825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.687000, 1.886095, 4.445523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551855, 0.815800, 0.172990,
		-0.361076, -0.420728, 0.832233,
		0.751718, 0.396810, 0.526746,
		3.912516, 2.005138, 4.603547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.951874, 2.081129, 4.737373>,  <3.386313, 1.727371, 4.234825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.951874, 2.081129, 4.737373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.314354, 2.247322, 4.768804>,  <3.531842, 2.347038, 4.787662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.314354, 2.247322, 4.768804>,  <2.951874, 2.081129, 4.737373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.314354, 2.247322, 4.768804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420160, 0.863845, 0.277916,
		0.047591, -0.284862, 0.957386,
		0.906201, 0.415482, 0.078577,
		3.586214, 2.371967, 4.792377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.251491, 2.848011, 4.223109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.319679, 3.202270, 4.395884>,  <3.360592, 3.414825, 4.499548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.319679, 3.202270, 4.395884>,  <3.251491, 2.848011, 4.223109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.319679, 3.202270, 4.395884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738542, -0.405025, 0.538990,
		0.652300, 0.227121, -0.723132,
		0.170471, 0.885647, 0.431936,
		3.370821, 3.467964, 4.525465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.970747, 2.953238, 4.105315>,  <3.251491, 2.848011, 4.223109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.970747, 2.953238, 4.105315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.818237, 3.136638, 4.426414>,  <3.726732, 3.246679, 4.619074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.818237, 3.136638, 4.426414>,  <3.970747, 2.953238, 4.105315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.818237, 3.136638, 4.426414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597946, -0.539936, 0.592392,
		0.705046, 0.705865, -0.068295,
		-0.381274, 0.458501, 0.802750,
		3.703855, 3.274189, 4.667239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.446208, 3.241768, 4.448881>,  <3.970747, 2.953238, 4.105315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.446208, 3.241768, 4.448881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.153381, 3.084075, 4.671110>,  <3.977685, 2.989460, 4.804448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.153381, 3.084075, 4.671110>,  <4.446208, 3.241768, 4.448881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.153381, 3.084075, 4.671110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622838, -0.717696, 0.311425,
		0.275958, 0.574015, 0.770943,
		-0.732066, -0.394232, 0.555572,
		3.933762, 2.965806, 4.837782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.682608, 3.045211, 5.015472>,  <4.446208, 3.241768, 4.448881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.682608, 3.045211, 5.015472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.355965, 2.825986, 4.943054>,  <4.159979, 2.694450, 4.899603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.355965, 2.825986, 4.943054>,  <4.682608, 3.045211, 5.015472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.355965, 2.825986, 4.943054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547898, -0.834701, 0.055520,
		-0.181546, -0.053856, 0.981907,
		-0.816608, -0.548064, -0.181044,
		4.110982, 2.661566, 4.888741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.758399, 2.387476, 5.461484>,  <4.682608, 3.045211, 5.015472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.758399, 2.387476, 5.461484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.472847, 2.269312, 5.207521>,  <4.301516, 2.198414, 5.055144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.472847, 2.269312, 5.207521>,  <4.758399, 2.387476, 5.461484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.472847, 2.269312, 5.207521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382260, -0.924055, 0.000136,
		-0.586729, -0.242603, 0.772588,
		-0.713881, -0.295410, -0.634907,
		4.258683, 2.180690, 5.017049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.416487, 1.841229, 5.769862>,  <4.758399, 2.387476, 5.461484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.416487, 1.841229, 5.769862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.352051, 1.795883, 5.377699>,  <4.313389, 1.768676, 5.142401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.352051, 1.795883, 5.377699>,  <4.416487, 1.841229, 5.769862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.352051, 1.795883, 5.377699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315660, -0.947119, 0.057650,
		-0.935098, -0.300189, 0.188356,
		-0.161090, -0.113365, -0.980407,
		4.303724, 1.761874, 5.083577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.234635, 1.186369, 5.691339>,  <4.416487, 1.841229, 5.769862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.234635, 1.186369, 5.691339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.325409, 1.297639, 5.318005>,  <4.379873, 1.364401, 5.094004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.325409, 1.297639, 5.318005>,  <4.234635, 1.186369, 5.691339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.325409, 1.297639, 5.318005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390410, -0.903954, -0.174492,
		-0.892234, -0.324786, -0.313741,
		0.226935, 0.278175, -0.933338,
		4.393489, 1.381092, 5.038003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.039778, 0.618137, 5.271393>,  <4.234635, 1.186369, 5.691339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.039778, 0.618137, 5.271393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.319374, 0.816126, 5.064932>,  <4.487132, 0.934919, 4.941055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.319374, 0.816126, 5.064932>,  <4.039778, 0.618137, 5.271393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.319374, 0.816126, 5.064932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500720, -0.854061, -0.140921,
		-0.510579, -0.159946, -0.844823,
		0.698991, 0.494972, -0.516154,
		4.529071, 0.964617, 4.910086>
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
