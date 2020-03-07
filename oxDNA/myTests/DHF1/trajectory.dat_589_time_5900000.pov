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
	<1.312464, 0.170915, -0.008521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.207001, 0.520011, 0.155825>,  <1.143723, 0.729468, 0.254432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.207001, 0.520011, 0.155825>,  <1.312464, 0.170915, -0.008521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.207001, 0.520011, 0.155825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383438, -0.296017, 0.874843,
		0.885133, 0.388201, -0.256594,
		-0.263658, 0.872740, 0.410865,
		1.127903, 0.781832, 0.279084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.987053, 0.596354, 0.170430>,  <1.312464, 0.170915, -0.008521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.987053, 0.596354, 0.170430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.658318, 0.689062, 0.378609>,  <1.461076, 0.744686, 0.503516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.658318, 0.689062, 0.378609>,  <1.987053, 0.596354, 0.170430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.658318, 0.689062, 0.378609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461202, -0.265664, 0.846590,
		0.334477, 0.935792, 0.111440,
		-0.821838, 0.231769, 0.520448,
		1.411766, 0.758592, 0.534743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.957297, 1.191339, 0.662657>,  <1.987053, 0.596354, 0.170430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.957297, 1.191339, 0.662657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.755417, 0.856183, 0.745815>,  <1.634289, 0.655090, 0.795710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.755417, 0.856183, 0.745815>,  <1.957297, 1.191339, 0.662657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.755417, 0.856183, 0.745815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518442, -0.101617, 0.849054,
		-0.690286, 0.536300, 0.485683,
		-0.504701, -0.837888, 0.207896,
		1.604007, 0.604817, 0.808184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.508971, 1.146612, 1.381474>,  <1.957297, 1.191339, 0.662657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.508971, 1.146612, 1.381474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.683861, 0.816674, 1.238105>,  <1.788794, 0.618712, 1.152083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.683861, 0.816674, 1.238105>,  <1.508971, 1.146612, 1.381474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.683861, 0.816674, 1.238105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457934, -0.138820, 0.878081,
		-0.774036, -0.548051, 0.317029,
		0.437223, -0.824845, -0.358423,
		1.815028, 0.569221, 1.130578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.852841, 1.027948, 1.970773>,  <1.508971, 1.146612, 1.381474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.852841, 1.027948, 1.970773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.001312, 0.775059, 1.698738>,  <2.090395, 0.623326, 1.535516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.001312, 0.775059, 1.698738>,  <1.852841, 1.027948, 1.970773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.001312, 0.775059, 1.698738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632577, -0.364002, 0.683629,
		-0.679760, -0.683956, 0.264821,
		0.371177, -0.632223, -0.680089,
		2.112665, 0.585392, 1.494711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.006863, 0.292496, 2.263529>,  <1.852841, 1.027948, 1.970773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.006863, 0.292496, 2.263529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.251701, 0.330546, 1.949512>,  <2.398604, 0.353376, 1.761103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.251701, 0.330546, 1.949512>,  <2.006863, 0.292496, 2.263529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.251701, 0.330546, 1.949512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775162, -0.268522, 0.571856,
		-0.156403, -0.958565, -0.238098,
		0.612096, 0.095125, -0.785041,
		2.435330, 0.359083, 1.714000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.356370, -0.355251, 2.288319>,  <2.006863, 0.292496, 2.263529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.356370, -0.355251, 2.288319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.569160, -0.089148, 2.078773>,  <2.696835, 0.070513, 1.953045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.569160, -0.089148, 2.078773>,  <2.356370, -0.355251, 2.288319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.569160, -0.089148, 2.078773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838539, -0.327895, 0.435129,
		0.117699, -0.670760, -0.732276,
		0.531977, 0.665256, -0.523866,
		2.728754, 0.110428, 1.921613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.018626, -0.683595, 2.307113>,  <2.356370, -0.355251, 2.288319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.018626, -0.683595, 2.307113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.079414, -0.299558, 2.213199>,  <3.115887, -0.069135, 2.156851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.079414, -0.299558, 2.213199>,  <3.018626, -0.683595, 2.307113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.079414, -0.299558, 2.213199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896778, -0.034063, 0.441168,
		0.415566, -0.277594, -0.866168,
		0.151970, 0.960094, -0.234785,
		3.125005, -0.011529, 2.142764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.389426, 0.319030, 3.725142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.653763, 0.324636, 3.424985>,  <3.812365, 0.328000, 3.244890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.653763, 0.324636, 3.424985>,  <3.389426, 0.319030, 3.725142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.653763, 0.324636, 3.424985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749984, 0.050283, -0.659542,
		0.028488, 0.998637, 0.043742,
		0.660842, 0.014017, -0.750394,
		3.852015, 0.328841, 3.199867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.034844, 0.391515, 3.135143>,  <3.389426, 0.319030, 3.725142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.034844, 0.391515, 3.135143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.369720, 0.328934, 2.925522>,  <3.570647, 0.291385, 2.799749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.369720, 0.328934, 2.925522>,  <3.034844, 0.391515, 3.135143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.369720, 0.328934, 2.925522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503750, 0.152496, -0.850283,
		0.212946, 0.975842, 0.048854,
		0.837192, -0.156454, -0.524054,
		3.620878, 0.281998, 2.768306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.339028, 0.961675, 2.696659>,  <3.034844, 0.391515, 3.135143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.339028, 0.961675, 2.696659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.406746, 0.614372, 2.510124>,  <3.447376, 0.405991, 2.398204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.406746, 0.614372, 2.510124>,  <3.339028, 0.961675, 2.696659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.406746, 0.614372, 2.510124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458255, 0.349560, -0.817196,
		0.872549, 0.352048, -0.338705,
		0.169294, -0.868257, -0.466336,
		3.457534, 0.353895, 2.370224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.566281, 1.182223, 2.038031>,  <3.339028, 0.961675, 2.696659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.566281, 1.182223, 2.038031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.403168, 0.817112, 2.047403>,  <3.305300, 0.598045, 2.053027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.403168, 0.817112, 2.047403>,  <3.566281, 1.182223, 2.038031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.403168, 0.817112, 2.047403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586193, 0.242035, -0.773173,
		0.700064, -0.329022, -0.633762,
		-0.407783, -0.912778, 0.023430,
		3.280833, 0.543279, 2.054433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.495930, 0.995199, 1.318151>,  <3.566281, 1.182223, 2.038031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.495930, 0.995199, 1.318151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.257996, 0.732273, 1.503239>,  <3.115235, 0.574517, 1.614291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.257996, 0.732273, 1.503239>,  <3.495930, 0.995199, 1.318151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.257996, 0.732273, 1.503239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629389, 0.022765, -0.776757,
		0.500041, -0.753271, -0.427249,
		-0.594835, -0.657315, 0.462718,
		3.079545, 0.535079, 1.642054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.223773, 0.633108, 0.751828>,  <3.495930, 0.995199, 1.318151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.223773, 0.633108, 0.751828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.984879, 0.546719, 1.060804>,  <2.841542, 0.494885, 1.246190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.984879, 0.546719, 1.060804>,  <3.223773, 0.633108, 0.751828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.984879, 0.546719, 1.060804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790301, -0.005886, -0.612691,
		0.136872, -0.976381, -0.167169,
		-0.597236, -0.215974, 0.772441,
		2.805708, 0.481926, 1.292537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.871151, -0.044455, 0.720016>,  <3.223773, 0.633108, 0.751828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.871151, -0.044455, 0.720016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.633797, 0.207567, 0.920385>,  <2.491384, 0.358780, 1.040607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.633797, 0.207567, 0.920385>,  <2.871151, -0.044455, 0.720016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.633797, 0.207567, 0.920385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752659, -0.213737, -0.622752,
		-0.285306, -0.746554, 0.601048,
		-0.593384, 0.630059, 0.500920,
		2.455781, 0.396584, 1.070662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.225572, -0.344627, 0.944315>,  <2.871151, -0.044455, 0.720016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.225572, -0.344627, 0.944315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.156837, 0.046288, 0.894705>,  <2.115597, 0.280836, 0.864939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.156837, 0.046288, 0.894705>,  <2.225572, -0.344627, 0.944315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.156837, 0.046288, 0.894705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833155, -0.211351, -0.511061,
		-0.525666, 0.015514, 0.850550,
		-0.171836, 0.977287, -0.124025,
		2.105287, 0.339474, 0.857497>
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
