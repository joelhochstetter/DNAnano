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
	<1.649326, 2.481539, 0.506185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.591465, 2.085747, 0.505629>,  <1.556749, 1.848271, 0.505294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.591465, 2.085747, 0.505629>,  <1.649326, 2.481539, 0.506185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.591465, 2.085747, 0.505629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982128, -0.143748, 0.121499,
		-0.120421, 0.016208, 0.992591,
		-0.144652, -0.989482, -0.001392,
		1.548069, 1.788902, 0.505211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.250374, 2.349693, 0.672472>,  <1.649326, 2.481539, 0.506185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.250374, 2.349693, 0.672472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.115128, 1.982460, 0.589716>,  <2.033979, 1.762120, 0.540062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.115128, 1.982460, 0.589716>,  <2.250374, 2.349693, 0.672472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.115128, 1.982460, 0.589716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939965, -0.318636, -0.122212,
		0.046278, -0.235791, 0.970701,
		-0.338117, -0.918081, -0.206890,
		2.013692, 1.707036, 0.527649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.511255, 1.804436, 1.149643>,  <2.250374, 2.349693, 0.672472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.511255, 1.804436, 1.149643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.435211, 1.655334, 0.786345>,  <2.389585, 1.565874, 0.568365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.435211, 1.655334, 0.786345>,  <2.511255, 1.804436, 1.149643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.435211, 1.655334, 0.786345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895466, -0.445104, -0.004759,
		-0.402490, -0.814209, 0.418407,
		-0.190109, -0.372754, -0.908247,
		2.378178, 1.543508, 0.513870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.611714, 1.096673, 1.116577>,  <2.511255, 1.804436, 1.149643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.611714, 1.096673, 1.116577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.692829, 1.281258, 0.771109>,  <2.741498, 1.392009, 0.563827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.692829, 1.281258, 0.771109>,  <2.611714, 1.096673, 1.116577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.692829, 1.281258, 0.771109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945407, -0.322045, 0.049911,
		-0.255109, -0.826643, -0.501577,
		0.202789, 0.461462, -0.863672,
		2.753666, 1.419696, 0.512007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.941943, 0.688352, 0.800859>,  <2.611714, 1.096673, 1.116577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.941943, 0.688352, 0.800859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.042358, 0.999550, 0.570484>,  <3.102608, 1.186269, 0.432259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.042358, 0.999550, 0.570484>,  <2.941943, 0.688352, 0.800859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.042358, 0.999550, 0.570484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945182, -0.325379, -0.027548,
		-0.208830, -0.537449, -0.817030,
		0.251039, 0.777995, -0.575936,
		3.117670, 1.232948, 0.397703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.401023, 0.408465, 0.249288>,  <2.941943, 0.688352, 0.800859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.401023, 0.408465, 0.249288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.473854, 0.801445, 0.265491>,  <3.517553, 1.037233, 0.275213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.473854, 0.801445, 0.265491>,  <3.401023, 0.408465, 0.249288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.473854, 0.801445, 0.265491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982401, -0.183506, 0.034831,
		0.041653, 0.033454, -0.998572,
		0.182079, 0.982449, 0.040508,
		3.528478, 1.096180, 0.277644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.816056, 0.552812, -0.316734>,  <3.401023, 0.408465, 0.249288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.816056, 0.552812, -0.316734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.868809, 0.842033, -0.045500>,  <3.900460, 1.015566, 0.117241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.868809, 0.842033, -0.045500>,  <3.816056, 0.552812, -0.316734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.868809, 0.842033, -0.045500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980172, -0.197177, 0.019617,
		0.147887, 0.662053, -0.734722,
		0.131882, 0.723054, 0.678085,
		3.908373, 1.058950, 0.157926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.338239, 0.961793, -0.614177>,  <3.816056, 0.552812, -0.316734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.338239, 0.961793, -0.614177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.308811, 0.972847, -0.215414>,  <4.291154, 0.979479, 0.023844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.308811, 0.972847, -0.215414>,  <4.338239, 0.961793, -0.614177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.308811, 0.972847, -0.215414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912796, -0.400806, 0.078473,
		0.401735, 0.915746, 0.004261,
		-0.073569, 0.027635, 0.996907,
		4.286740, 0.981138, 0.083658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.836966, 0.804365, 0.391896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.680336, 1.114532, 0.590044>,  <5.586358, 1.300633, 0.708933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.680336, 1.114532, 0.590044>,  <5.836966, 0.804365, 0.391896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.680336, 1.114532, 0.590044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918282, -0.295068, -0.263995,
		-0.058539, -0.558264, 0.827595,
		-0.391576, 0.775420, 0.495371,
		5.562863, 1.347158, 0.738655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.101152, 0.577165, 0.454760>,  <5.836966, 0.804365, 0.391896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.101152, 0.577165, 0.454760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.127884, 0.964340, 0.551617>,  <5.143923, 1.196645, 0.609730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.127884, 0.964340, 0.551617>,  <5.101152, 0.577165, 0.454760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.127884, 0.964340, 0.551617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985550, 0.101894, -0.135308,
		-0.155642, -0.229600, 0.960760,
		0.066829, 0.967937, 0.242141,
		5.147933, 1.254721, 0.624259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.582826, 0.822107, 1.052172>,  <5.101152, 0.577165, 0.454760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.582826, 0.822107, 1.052172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.684921, 1.099342, 0.782511>,  <4.746179, 1.265683, 0.620714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.684921, 1.099342, 0.782511>,  <4.582826, 0.822107, 1.052172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.684921, 1.099342, 0.782511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961793, 0.253417, -0.103607,
		0.099033, 0.674840, 0.731289,
		0.255239, 0.693088, -0.674153,
		4.761493, 1.307269, 0.580265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.445450, 1.546163, 1.189780>,  <4.582826, 0.822107, 1.052172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.445450, 1.546163, 1.189780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.430321, 1.468391, 0.797705>,  <4.421243, 1.421728, 0.562460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.430321, 1.468391, 0.797705>,  <4.445450, 1.546163, 1.189780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.430321, 1.468391, 0.797705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930041, 0.365624, -0.036636,
		0.365504, 0.910230, -0.194650,
		-0.037821, -0.194423, -0.980189,
		4.418973, 1.410063, 0.503649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.085965, 2.073871, 0.961734>,  <4.445450, 1.546163, 1.189780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.085965, 2.073871, 0.961734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.049355, 1.786598, 0.685810>,  <4.027388, 1.614234, 0.520256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.049355, 1.786598, 0.685810>,  <4.085965, 2.073871, 0.961734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.049355, 1.786598, 0.685810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948441, 0.273964, -0.159389,
		0.303453, 0.639655, -0.706228,
		-0.091527, -0.718182, -0.689810,
		4.021896, 1.571144, 0.478867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.781900, 2.359062, 0.274541>,  <4.085965, 2.073871, 0.961734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.781900, 2.359062, 0.274541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.716301, 1.964661, 0.286566>,  <3.676941, 1.728020, 0.293781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.716301, 1.964661, 0.286566>,  <3.781900, 2.359062, 0.274541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.716301, 1.964661, 0.286566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973889, 0.156983, -0.163998,
		0.156983, -0.056173, -0.986002,
		0.163998, 0.986002, -0.030062,
		3.667101, 1.668860, 0.295584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.281230, 2.324754, -0.205590>,  <3.781900, 2.359062, 0.274541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.281230, 2.324754, -0.205590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.260468, 1.976624, -0.009697>,  <3.248010, 1.767745, 0.107839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.260468, 1.976624, -0.009697>,  <3.281230, 2.324754, -0.205590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.260468, 1.976624, -0.009697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990846, -0.016314, -0.134011,
		0.124622, -0.492205, -0.861512,
		-0.051907, -0.870326, 0.489732,
		3.244895, 1.715526, 0.137223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.903937, 1.900468, -0.645943>,  <3.281230, 2.324754, -0.205590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.903937, 1.900468, -0.645943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.851364, 1.754974, -0.277069>,  <2.819821, 1.667678, -0.055745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.851364, 1.754974, -0.277069>,  <2.903937, 1.900468, -0.645943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.851364, 1.754974, -0.277069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988459, -0.022607, -0.149794,
		0.075333, -0.931228, -0.356565,
		-0.131432, -0.363734, 0.922184,
		2.811935, 1.645854, -0.000414>
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
