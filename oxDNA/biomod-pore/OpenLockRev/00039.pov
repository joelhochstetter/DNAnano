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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.992558, 34.761608, 52.748360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872112, 35.051952, 52.500988>,  <39.799847, 35.226158, 52.352566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872112, 35.051952, 52.500988>,  <39.992558, 34.761608, 52.748360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872112, 35.051952, 52.500988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953009, 0.206428, -0.221723,
		-0.033278, -0.656136, -0.753909,
		-0.301108, 0.725861, -0.618434,
		39.781780, 35.269711, 52.315456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175362, 34.568989, 52.193340>,  <39.992558, 34.761608, 52.748360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175362, 34.568989, 52.193340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113449, 34.960453, 52.139290>,  <40.076302, 35.195332, 52.106857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113449, 34.960453, 52.139290>,  <40.175362, 34.568989, 52.193340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113449, 34.960453, 52.139290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975402, 0.129647, -0.178277,
		-0.156954, -0.159398, -0.974658,
		-0.154778, 0.978665, -0.135128,
		40.067017, 35.254051, 52.098751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626568, 34.764259, 51.659096>,  <40.175362, 34.568989, 52.193340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626568, 34.764259, 51.659096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565647, 35.084988, 51.890228>,  <40.529095, 35.277424, 52.028908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565647, 35.084988, 51.890228>,  <40.626568, 34.764259, 51.659096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565647, 35.084988, 51.890228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963155, 0.251541, -0.095180,
		-0.221665, 0.542043, -0.810589,
		-0.152305, 0.801821, 0.577829,
		40.519955, 35.325535, 52.063576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966282, 35.261784, 51.225124>,  <40.626568, 34.764259, 51.659096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966282, 35.261784, 51.225124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913105, 35.415676, 51.590488>,  <40.881199, 35.508011, 51.809708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913105, 35.415676, 51.590488>,  <40.966282, 35.261784, 51.225124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913105, 35.415676, 51.590488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934323, 0.356151, -0.014029,
		-0.330708, 0.851552, -0.406808,
		-0.132938, 0.384730, 0.913406,
		40.873222, 35.531094, 51.864510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376812, 35.884037, 51.180172>,  <40.966282, 35.261784, 51.225124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376812, 35.884037, 51.180172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347454, 35.831795, 51.575657>,  <41.329838, 35.800449, 51.812950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347454, 35.831795, 51.575657>,  <41.376812, 35.884037, 51.180172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347454, 35.831795, 51.575657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982411, 0.161216, 0.094227,
		-0.171702, 0.978239, 0.116473,
		-0.073399, -0.130603, 0.988714,
		41.325436, 35.792614, 51.872272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712997, 36.455009, 51.512169>,  <41.376812, 35.884037, 51.180172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712997, 36.455009, 51.512169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721340, 36.142216, 51.761349>,  <41.726345, 35.954540, 51.910858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721340, 36.142216, 51.761349>,  <41.712997, 36.455009, 51.512169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721340, 36.142216, 51.761349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996832, 0.064098, 0.047084,
		-0.076749, 0.619999, 0.780840,
		0.020859, -0.781980, 0.622954,
		41.727596, 35.907623, 51.948235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221745, 36.646591, 52.014698>,  <41.712997, 36.455009, 51.512169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221745, 36.646591, 52.014698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182224, 36.256889, 52.095764>,  <42.158512, 36.023067, 52.144402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182224, 36.256889, 52.095764>,  <42.221745, 36.646591, 52.014698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182224, 36.256889, 52.095764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981227, -0.061484, 0.182794,
		-0.165627, 0.216919, 0.962036,
		-0.098801, -0.974251, 0.202663,
		42.152584, 35.964615, 52.156563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652493, 36.372322, 52.700329>,  <42.221745, 36.646591, 52.014698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652493, 36.372322, 52.700329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592552, 36.025558, 52.510166>,  <42.556587, 35.817501, 52.396069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592552, 36.025558, 52.510166>,  <42.652493, 36.372322, 52.700329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592552, 36.025558, 52.510166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962081, -0.238690, 0.132012,
		-0.227917, -0.437595, 0.869807,
		-0.149847, -0.866913, -0.475403,
		42.547600, 35.765484, 52.367546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136112, 35.835529, 53.065147>,  <42.652493, 36.372322, 52.700329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136112, 35.835529, 53.065147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026585, 35.654678, 52.725594>,  <42.960869, 35.546169, 52.521862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026585, 35.654678, 52.725594>,  <43.136112, 35.835529, 53.065147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026585, 35.654678, 52.725594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932341, -0.341487, -0.118856,
		-0.236144, -0.823994, 0.515044,
		-0.273817, -0.452129, -0.848883,
		42.944439, 35.519039, 52.470928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304935, 35.141754, 53.094604>,  <43.136112, 35.835529, 53.065147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304935, 35.141754, 53.094604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256630, 35.196838, 52.701370>,  <43.227646, 35.229889, 52.465431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256630, 35.196838, 52.701370>,  <43.304935, 35.141754, 53.094604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256630, 35.196838, 52.701370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899746, -0.403196, -0.167003,
		-0.419373, -0.904693, -0.075211,
		-0.120762, 0.137708, -0.983083,
		43.220402, 35.238152, 52.406445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577412, 34.555569, 52.778759>,  <43.304935, 35.141754, 53.094604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577412, 34.555569, 52.778759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612202, 34.841938, 52.501663>,  <43.633076, 35.013760, 52.335407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612202, 34.841938, 52.501663>,  <43.577412, 34.555569, 52.778759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612202, 34.841938, 52.501663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924654, -0.316800, -0.211315,
		-0.370745, -0.622164, -0.689536,
		0.086972, 0.715926, -0.692738,
		43.638294, 35.056717, 52.293842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913738, 34.230350, 52.228874>,  <43.577412, 34.555569, 52.778759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913738, 34.230350, 52.228874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959133, 34.619347, 52.147499>,  <43.986370, 34.852745, 52.098675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959133, 34.619347, 52.147499>,  <43.913738, 34.230350, 52.228874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959133, 34.619347, 52.147499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989376, -0.129345, -0.066371,
		-0.090859, -0.193746, -0.976835,
		0.113489, 0.972488, -0.203440,
		43.993179, 34.911095, 52.086468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263420, 34.337097, 51.534035>,  <43.913738, 34.230350, 52.228874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263420, 34.337097, 51.534035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334610, 34.673958, 51.737648>,  <44.377323, 34.876072, 51.859818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334610, 34.673958, 51.737648>,  <44.263420, 34.337097, 51.534035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334610, 34.673958, 51.737648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981278, -0.113183, -0.155828,
		-0.073616, 0.527236, -0.846524,
		0.177970, 0.842147, 0.509033,
		44.388000, 34.926601, 51.890358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687534, 34.806774, 51.072262>,  <44.263420, 34.337097, 51.534035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687534, 34.806774, 51.072262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714870, 34.956097, 51.442337>,  <44.731274, 35.045689, 51.664383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714870, 34.956097, 51.442337>,  <44.687534, 34.806774, 51.072262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.714870, 34.956097, 51.442337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939693, 0.287419, -0.185383,
		-0.335121, 0.882063, -0.331149,
		0.068341, 0.373304, 0.925188,
		44.735374, 35.068089, 51.719894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025120, 35.396782, 50.888317>,  <44.687534, 34.806774, 51.072262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025120, 35.396782, 50.888317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065056, 35.361622, 51.284763>,  <45.089020, 35.340527, 51.522629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065056, 35.361622, 51.284763>,  <45.025120, 35.396782, 50.888317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065056, 35.361622, 51.284763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961462, 0.264970, -0.073357,
		-0.256167, 0.960242, 0.110969,
		0.099844, -0.087901, 0.991113,
		45.095009, 35.335251, 51.582096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389717, 35.988354, 51.093464>,  <45.025120, 35.396782, 50.888317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389717, 35.988354, 51.093464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473381, 35.730080, 51.387222>,  <45.523579, 35.575115, 51.563477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473381, 35.730080, 51.387222>,  <45.389717, 35.988354, 51.093464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473381, 35.730080, 51.387222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977128, 0.167479, -0.131038,
		-0.038386, 0.745008, 0.665950,
		0.209157, -0.645689, 0.734397,
		45.536129, 35.536373, 51.607540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745678, 36.356709, 51.740993>,  <45.389717, 35.988354, 51.093464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745678, 36.356709, 51.740993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838161, 35.968231, 51.764057>,  <45.893650, 35.735146, 51.777893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838161, 35.968231, 51.764057>,  <45.745678, 36.356709, 51.740993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838161, 35.968231, 51.764057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972422, 0.232552, 0.017758,
		-0.030655, 0.051962, 0.998178,
		0.231206, -0.971195, 0.057658,
		45.907524, 35.676872, 51.781353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322186, 36.199699, 52.244267>,  <45.745678, 36.356709, 51.740993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.322186, 36.199699, 52.244267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374561, 35.886532, 52.000992>,  <46.405987, 35.698631, 51.855026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374561, 35.886532, 52.000992>,  <46.322186, 36.199699, 52.244267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374561, 35.886532, 52.000992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987978, 0.052189, 0.145518,
		-0.082188, -0.619933, 0.780339,
		0.130937, -0.782917, -0.608191,
		46.413841, 35.651657, 51.818535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.901669, 35.827778, 52.572315>,  <46.322186, 36.199699, 52.244267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.901669, 35.827778, 52.572315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853943, 35.684120, 52.202065>,  <46.825306, 35.597927, 51.979916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853943, 35.684120, 52.202065>,  <46.901669, 35.827778, 52.572315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853943, 35.684120, 52.202065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981281, -0.184601, -0.054865,
		-0.151167, -0.914843, 0.374447,
		-0.119316, -0.359144, -0.925624,
		46.818150, 35.576378, 51.924377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.284916, 35.224258, 52.501041>,  <46.901669, 35.827778, 52.572315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.284916, 35.224258, 52.501041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226246, 35.364044, 52.130882>,  <47.191044, 35.447918, 51.908787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226246, 35.364044, 52.130882>,  <47.284916, 35.224258, 52.501041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226246, 35.364044, 52.130882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978492, -0.085930, -0.187539,
		-0.145058, -0.933000, -0.329348,
		-0.146673, 0.349468, -0.925397,
		47.182243, 35.468884, 51.853264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.714542, 34.782799, 52.167683>,  <47.284916, 35.224258, 52.501041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.714542, 34.782799, 52.167683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666626, 35.080875, 51.905281>,  <47.637875, 35.259720, 51.747841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666626, 35.080875, 51.905281>,  <47.714542, 34.782799, 52.167683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.666626, 35.080875, 51.905281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963112, -0.073150, -0.258968,
		-0.240966, -0.662831, -0.708936,
		-0.119793, 0.745187, -0.656007,
		47.630688, 35.304432, 51.708477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.338552, 34.576969, 51.810680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.318369, 34.975800, 51.787712>,  <24.306259, 35.215096, 51.773930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.318369, 34.975800, 51.787712>,  <24.338552, 34.576969, 51.810680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.318369, 34.975800, 51.787712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997299, 0.053379, 0.050461,
		0.053379, -0.054719, -0.997074,
		-0.050461, 0.997074, -0.057421,
		24.303230, 35.274921, 51.770485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910341, 34.761253, 51.367531>,  <24.338552, 34.576969, 51.810680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910341, 34.761253, 51.367531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.816133, 35.093472, 51.569408>,  <24.759609, 35.292805, 51.690536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.816133, 35.093472, 51.569408>,  <24.910341, 34.761253, 51.367531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.816133, 35.093472, 51.569408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971775, 0.194013, 0.134211,
		0.013552, 0.522060, -0.852801,
		-0.235520, 0.830549, 0.504696,
		24.745478, 35.342636, 51.720818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375589, 35.231518, 51.124992>,  <24.910341, 34.761253, 51.367531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375589, 35.231518, 51.124992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.268030, 35.400055, 51.471439>,  <25.203495, 35.501179, 51.679310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.268030, 35.400055, 51.471439>,  <25.375589, 35.231518, 51.124992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268030, 35.400055, 51.471439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959974, 0.190423, 0.205400,
		-0.078385, 0.886684, -0.455683,
		-0.268898, 0.421343, 0.866120,
		25.187361, 35.526459, 51.731274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643389, 35.811760, 51.130463>,  <25.375589, 35.231518, 51.124992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643389, 35.811760, 51.130463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.591394, 35.719200, 51.516117>,  <25.560198, 35.663666, 51.747509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.591394, 35.719200, 51.516117>,  <25.643389, 35.811760, 51.130463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591394, 35.719200, 51.516117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972991, 0.157315, 0.168938,
		-0.190765, 0.960056, 0.204699,
		-0.129988, -0.231398, 0.964136,
		25.552399, 35.649780, 51.805359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159090, 36.189819, 51.360054>,  <25.643389, 35.811760, 51.130463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159090, 36.189819, 51.360054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.045698, 35.963226, 51.669567>,  <25.977663, 35.827271, 51.855274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.045698, 35.963226, 51.669567>,  <26.159090, 36.189819, 51.360054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045698, 35.963226, 51.669567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945363, -0.029594, 0.324673,
		-0.161022, 0.823544, 0.543918,
		-0.283479, -0.566480, 0.773783,
		25.960655, 35.793282, 51.901703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419376, 36.475662, 52.006268>,  <26.159090, 36.189819, 51.360054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419376, 36.475662, 52.006268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.355619, 36.093548, 52.105877>,  <26.317366, 35.864277, 52.165642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.355619, 36.093548, 52.105877>,  <26.419376, 36.475662, 52.006268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355619, 36.093548, 52.105877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919474, -0.051823, 0.389720,
		-0.359390, 0.291092, 0.886625,
		-0.159392, -0.955290, 0.249027,
		26.307802, 35.806961, 52.180584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570383, 36.374474, 52.796627>,  <26.419376, 36.475662, 52.006268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570383, 36.374474, 52.796627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.594263, 36.030079, 52.594585>,  <26.608591, 35.823441, 52.473362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.594263, 36.030079, 52.594585>,  <26.570383, 36.374474, 52.796627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594263, 36.030079, 52.594585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952677, -0.101948, 0.286380,
		-0.298065, -0.498298, 0.814160,
		0.059700, -0.860991, -0.505104,
		26.612173, 35.771782, 52.443054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974251, 35.850613, 53.238884>,  <26.570383, 36.374474, 52.796627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974251, 35.850613, 53.238884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.004143, 35.692356, 52.872742>,  <27.022078, 35.597401, 52.653057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.004143, 35.692356, 52.872742>,  <26.974251, 35.850613, 53.238884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004143, 35.692356, 52.872742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983839, -0.120525, 0.132415,
		-0.162713, -0.910463, 0.380240,
		0.074731, -0.395640, -0.915360,
		27.026562, 35.573666, 52.598133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525835, 35.365177, 53.356758>,  <26.974251, 35.850613, 53.238884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525835, 35.365177, 53.356758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.492804, 35.393776, 52.959152>,  <27.472984, 35.410934, 52.720589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.492804, 35.393776, 52.959152>,  <27.525835, 35.365177, 53.356758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492804, 35.393776, 52.959152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984791, -0.147141, -0.092396,
		-0.152867, -0.986528, -0.058259,
		-0.082579, 0.071497, -0.994017,
		27.468031, 35.415226, 52.660946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994398, 34.780193, 53.153843>,  <27.525835, 35.365177, 53.356758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994398, 34.780193, 53.153843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.933594, 35.024601, 52.843090>,  <27.897112, 35.171246, 52.656639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.933594, 35.024601, 52.843090>,  <27.994398, 34.780193, 53.153843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933594, 35.024601, 52.843090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955944, -0.108820, -0.272632,
		-0.251124, -0.784100, -0.567560,
		-0.152009, 0.611020, -0.776883,
		27.887991, 35.207909, 52.610023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268673, 34.417000, 52.521603>,  <27.994398, 34.780193, 53.153843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268673, 34.417000, 52.521603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.268984, 34.810669, 52.450722>,  <28.269171, 35.046871, 52.408192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.268984, 34.810669, 52.450722>,  <28.268673, 34.417000, 52.521603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268984, 34.810669, 52.450722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924458, -0.068272, -0.375123,
		-0.381284, -0.163523, -0.909880,
		0.000778, 0.984174, -0.177201,
		28.269217, 35.105923, 52.397560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516830, 34.371391, 51.889732>,  <28.268673, 34.417000, 52.521603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516830, 34.371391, 51.889732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.582933, 34.750164, 52.000008>,  <28.622595, 34.977428, 52.066174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.582933, 34.750164, 52.000008>,  <28.516830, 34.371391, 51.889732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582933, 34.750164, 52.000008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906770, -0.035946, -0.420090,
		-0.387888, 0.319407, -0.864593,
		0.165259, 0.946936, 0.275686,
		28.632511, 35.034245, 52.082714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080551, 34.661961, 51.420403>,  <28.516830, 34.371391, 51.889732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080551, 34.661961, 51.420403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.063869, 34.964703, 51.681301>,  <29.053860, 35.146347, 51.837841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.063869, 34.964703, 51.681301>,  <29.080551, 34.661961, 51.420403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063869, 34.964703, 51.681301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984184, 0.143612, -0.103714,
		-0.172168, 0.637607, -0.750877,
		-0.041706, 0.756858, 0.652248,
		29.051357, 35.191761, 51.876976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295349, 35.281231, 51.110149>,  <29.080551, 34.661961, 51.420403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295349, 35.281231, 51.110149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.388357, 35.305382, 51.498436>,  <29.444162, 35.319874, 51.731407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.388357, 35.305382, 51.498436>,  <29.295349, 35.281231, 51.110149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388357, 35.305382, 51.498436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957389, 0.161570, -0.239376,
		-0.171291, 0.985013, -0.020235,
		0.232519, 0.060376, 0.970716,
		29.458113, 35.323494, 51.789650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703995, 35.849834, 51.235584>,  <29.295349, 35.281231, 51.110149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703995, 35.849834, 51.235584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.794422, 35.594372, 51.529800>,  <29.848679, 35.441093, 51.706329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.794422, 35.594372, 51.529800>,  <29.703995, 35.849834, 51.235584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794422, 35.594372, 51.529800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972829, 0.186754, -0.136845,
		-0.049967, 0.746488, 0.663521,
		0.226068, -0.638654, 0.735536,
		29.862242, 35.402775, 51.750462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113926, 36.244316, 51.556610>,  <29.703995, 35.849834, 51.235584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113926, 36.244316, 51.556610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.194166, 35.870445, 51.674004>,  <30.242310, 35.646122, 51.744442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.194166, 35.870445, 51.674004>,  <30.113926, 36.244316, 51.556610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194166, 35.870445, 51.674004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979531, 0.186260, -0.076331,
		0.016680, 0.302792, 0.952911,
		0.200601, -0.934679, 0.293488,
		30.254347, 35.590042, 51.762051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647642, 36.278591, 52.123894>,  <30.113926, 36.244316, 51.556610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647642, 36.278591, 52.123894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.672140, 35.909454, 51.971783>,  <30.686838, 35.687973, 51.880516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.672140, 35.909454, 51.971783>,  <30.647642, 36.278591, 52.123894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672140, 35.909454, 51.971783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998113, 0.058294, 0.019283,
		0.004373, -0.380746, 0.924669,
		0.061245, -0.922840, -0.380282,
		30.690514, 35.632603, 51.857697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202005, 35.964592, 52.487862>,  <30.647642, 36.278591, 52.123894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202005, 35.964592, 52.487862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.166391, 35.733437, 52.163364>,  <31.145023, 35.594742, 51.968666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.166391, 35.733437, 52.163364>,  <31.202005, 35.964592, 52.487862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166391, 35.733437, 52.163364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991612, 0.025182, -0.126770,
		0.093687, -0.815728, 0.570799,
		-0.089036, -0.577888, -0.811245,
		31.139681, 35.560070, 51.919991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842876, 35.685017, 52.575554>,  <31.202005, 35.964592, 52.487862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842876, 35.685017, 52.575554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718775, 35.601765, 52.204517>,  <31.644314, 35.551811, 51.981895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718775, 35.601765, 52.204517>,  <31.842876, 35.685017, 52.575554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718775, 35.601765, 52.204517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950220, -0.097360, -0.295978,
		-0.028707, -0.973243, 0.227979,
		-0.310255, -0.208133, -0.927590,
		31.625698, 35.539326, 51.926239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099384, 34.972622, 52.293835>,  <31.842876, 35.685017, 52.575554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099384, 34.972622, 52.293835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.018353, 35.198601, 51.973885>,  <31.969734, 35.334187, 51.781914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.018353, 35.198601, 51.973885>,  <32.099384, 34.972622, 52.293835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018353, 35.198601, 51.973885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967136, -0.012741, -0.253939,
		-0.153652, -0.825031, -0.543796,
		-0.202579, 0.564943, -0.799875,
		31.957579, 35.368084, 51.733921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557438, 34.753021, 51.746418>,  <32.099384, 34.972622, 52.293835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557438, 34.753021, 51.746418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.446346, 35.114502, 51.616070>,  <32.379692, 35.331390, 51.537861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.446346, 35.114502, 51.616070>,  <32.557438, 34.753021, 51.746418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446346, 35.114502, 51.616070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844495, 0.067972, -0.531232,
		-0.457925, -0.422732, -0.782050,
		-0.277727, 0.903702, -0.325869,
		32.363029, 35.385612, 51.518311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.566099, 34.876530, 35.032036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.182013, 34.945427, 35.119953>,  <23.951561, 34.986767, 35.172707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.182013, 34.945427, 35.119953>,  <24.566099, 34.876530, 35.032036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.182013, 34.945427, 35.119953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267551, -0.792903, -0.547468,
		0.079979, -0.584497, 0.807445,
		-0.960219, 0.172246, 0.219798,
		23.893948, 34.997101, 35.185894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.192991, 34.294983, 35.514706>,  <24.566099, 34.876530, 35.032036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.192991, 34.294983, 35.514706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.007353, 34.513699, 35.235954>,  <23.895969, 34.644928, 35.068703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.007353, 34.513699, 35.235954>,  <24.192991, 34.294983, 35.514706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.007353, 34.513699, 35.235954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212528, -0.832491, -0.511654,
		-0.859912, -0.089349, 0.502562,
		-0.464094, 0.546786, -0.696880,
		23.868124, 34.677734, 35.026890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.758827, 34.272884, 36.105522>,  <24.192991, 34.294983, 35.514706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.758827, 34.272884, 36.105522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.105543, 34.336990, 36.294411>,  <25.313572, 34.375454, 36.407745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.105543, 34.336990, 36.294411>,  <24.758827, 34.272884, 36.105522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105543, 34.336990, 36.294411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341082, -0.500277, 0.795856,
		0.363788, -0.850905, -0.378971,
		0.866788, 0.160262, 0.472223,
		25.365580, 34.385071, 36.436077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075771, 33.705662, 36.359158>,  <24.758827, 34.272884, 36.105522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075771, 33.705662, 36.359158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.212900, 33.976421, 36.619705>,  <25.295177, 34.138878, 36.776035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.212900, 33.976421, 36.619705>,  <25.075771, 33.705662, 36.359158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212900, 33.976421, 36.619705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007498, -0.691397, 0.722436,
		0.939371, -0.252550, -0.231950,
		0.342821, 0.676896, 0.651372,
		25.315746, 34.179489, 36.815117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582235, 33.433937, 36.647022>,  <25.075771, 33.705662, 36.359158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582235, 33.433937, 36.647022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.515137, 33.722916, 36.915329>,  <25.474878, 33.896301, 37.076313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.515137, 33.722916, 36.915329>,  <25.582235, 33.433937, 36.647022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515137, 33.722916, 36.915329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085254, -0.667230, 0.739956,
		0.982137, 0.181309, 0.050333,
		-0.167745, 0.722447, 0.670769,
		25.464813, 33.939651, 37.116558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152266, 33.912022, 36.789639>,  <25.582235, 33.433937, 36.647022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152266, 33.912022, 36.789639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.179379, 34.263592, 36.600792>,  <26.195646, 34.474533, 36.487484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.179379, 34.263592, 36.600792>,  <26.152266, 33.912022, 36.789639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179379, 34.263592, 36.600792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994234, 0.020093, -0.105333,
		-0.083094, 0.476532, 0.875221,
		0.067781, 0.878927, -0.472115,
		26.199713, 34.527271, 36.459156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156658, 33.175640, 36.998306>,  <26.152266, 33.912022, 36.789639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156658, 33.175640, 36.998306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.251762, 32.830997, 37.177681>,  <26.308825, 32.624210, 37.285305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.251762, 32.830997, 37.177681>,  <26.156658, 33.175640, 36.998306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251762, 32.830997, 37.177681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519788, 0.502875, 0.690607,
		-0.820542, 0.068894, 0.567419,
		0.237762, -0.861609, 0.448440,
		26.323092, 32.572514, 37.312214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788860, 32.802864, 37.672695>,  <26.156658, 33.175640, 36.998306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788860, 32.802864, 37.672695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.176455, 32.704052, 37.675171>,  <26.409012, 32.644764, 37.676659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.176455, 32.704052, 37.675171>,  <25.788860, 32.802864, 37.672695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176455, 32.704052, 37.675171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150839, 0.611138, 0.777018,
		-0.195735, -0.751987, 0.629447,
		0.968987, -0.247034, 0.006192,
		26.467150, 32.629940, 37.677029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979437, 32.556767, 38.400650>,  <25.788860, 32.802864, 37.672695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979437, 32.556767, 38.400650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.282867, 32.725513, 38.202019>,  <26.464926, 32.826763, 38.082840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.282867, 32.725513, 38.202019>,  <25.979437, 32.556767, 38.400650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282867, 32.725513, 38.202019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158842, 0.619388, 0.768848,
		0.631934, -0.662104, 0.402838,
		0.758570, 0.421873, -0.496582,
		26.510441, 32.852074, 38.053043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651613, 32.536488, 38.759121>,  <25.979437, 32.556767, 38.400650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651613, 32.536488, 38.759121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.624771, 32.864334, 38.531536>,  <26.608665, 33.061043, 38.394985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.624771, 32.864334, 38.531536>,  <26.651613, 32.536488, 38.759121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624771, 32.864334, 38.531536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202034, 0.569598, 0.796707,
		0.977077, -0.061487, -0.203814,
		-0.067104, 0.819621, -0.568963,
		26.604639, 33.110222, 38.360847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808647, 33.089306, 39.197517>,  <26.651613, 32.536488, 38.759121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808647, 33.089306, 39.197517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.717684, 33.292622, 38.865269>,  <26.663105, 33.414612, 38.665920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.717684, 33.292622, 38.865269>,  <26.808647, 33.089306, 39.197517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717684, 33.292622, 38.865269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159956, 0.860878, 0.483015,
		0.960572, -0.023021, -0.277075,
		-0.227408, 0.508291, -0.830618,
		26.649462, 33.445110, 38.616085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328625, 33.545155, 39.018909>,  <26.808647, 33.089306, 39.197517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328625, 33.545155, 39.018909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.006289, 33.739429, 38.883419>,  <26.812887, 33.855995, 38.802124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.006289, 33.739429, 38.883419>,  <27.328625, 33.545155, 39.018909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006289, 33.739429, 38.883419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352578, 0.853140, 0.384502,
		0.475724, 0.190421, -0.858735,
		-0.805838, 0.485688, -0.338721,
		26.764538, 33.885136, 38.781803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475657, 34.200249, 38.562496>,  <27.328625, 33.545155, 39.018909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475657, 34.200249, 38.562496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.145475, 34.219112, 38.787495>,  <26.947367, 34.230431, 38.922493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.145475, 34.219112, 38.787495>,  <27.475657, 34.200249, 38.562496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145475, 34.219112, 38.787495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418667, 0.719537, 0.554062,
		-0.378605, 0.692851, -0.613690,
		-0.825455, 0.047161, 0.562494,
		26.897839, 34.233261, 38.956242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196381, 34.948154, 38.746826>,  <27.475657, 34.200249, 38.562496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196381, 34.948154, 38.746826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.089649, 34.690086, 39.033199>,  <27.025610, 34.535248, 39.205025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.089649, 34.690086, 39.033199>,  <27.196381, 34.948154, 38.746826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089649, 34.690086, 39.033199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319813, 0.641497, 0.697281,
		-0.909133, 0.415020, 0.035163,
		-0.266828, -0.645167, 0.715935,
		27.009602, 34.496536, 39.247978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762617, 35.360344, 39.173107>,  <27.196381, 34.948154, 38.746826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762617, 35.360344, 39.173107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.936363, 35.048084, 39.352844>,  <27.040611, 34.860729, 39.460686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.936363, 35.048084, 39.352844>,  <26.762617, 35.360344, 39.173107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936363, 35.048084, 39.352844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522269, 0.624720, 0.580482,
		-0.733869, -0.017463, 0.679067,
		0.434364, -0.780653, 0.449343,
		27.066671, 34.813889, 39.487648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594881, 35.165703, 39.884853>,  <26.762617, 35.360344, 39.173107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594881, 35.165703, 39.884853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.985775, 35.110603, 39.820312>,  <27.220312, 35.077545, 39.781590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.985775, 35.110603, 39.820312>,  <26.594881, 35.165703, 39.884853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985775, 35.110603, 39.820312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211837, 0.675038, 0.706717,
		0.011568, -0.724810, 0.688853,
		0.977237, -0.137749, -0.161350,
		27.278946, 35.069279, 39.771908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875595, 34.995277, 40.465233>,  <26.594881, 35.165703, 39.884853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875595, 34.995277, 40.465233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.121286, 35.200241, 40.225182>,  <27.268702, 35.323219, 40.081150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.121286, 35.200241, 40.225182>,  <26.875595, 34.995277, 40.465233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121286, 35.200241, 40.225182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068984, 0.722722, 0.687688,
		0.786109, -0.463795, 0.408567,
		0.614226, 0.512413, -0.600133,
		27.305555, 35.353966, 40.045143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652567, 35.061352, 40.809765>,  <26.875595, 34.995277, 40.465233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652567, 35.061352, 40.809765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.499493, 35.368984, 40.604996>,  <27.407648, 35.553562, 40.482132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.499493, 35.368984, 40.604996>,  <27.652567, 35.061352, 40.809765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499493, 35.368984, 40.604996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254041, 0.620342, 0.742051,
		0.888266, 0.153920, -0.432772,
		-0.382684, 0.769080, -0.511927,
		27.384687, 35.599709, 40.451416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298733, 35.460903, 40.768684>,  <27.652567, 35.061352, 40.809765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298733, 35.460903, 40.768684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.946968, 35.650532, 40.786087>,  <27.735909, 35.764309, 40.796528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.946968, 35.650532, 40.786087>,  <28.298733, 35.460903, 40.768684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946968, 35.650532, 40.786087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332418, 0.546071, 0.768963,
		0.340783, 0.690699, -0.637811,
		-0.879412, 0.474070, 0.043509,
		27.683144, 35.792751, 40.799141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488655, 36.193844, 40.929955>,  <28.298733, 35.460903, 40.768684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488655, 36.193844, 40.929955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.104437, 36.128319, 41.019859>,  <27.873905, 36.089005, 41.073803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.104437, 36.128319, 41.019859>,  <28.488655, 36.193844, 40.929955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104437, 36.128319, 41.019859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135244, 0.431040, 0.892140,
		-0.243022, 0.887339, -0.391879,
		-0.960546, -0.163810, 0.224759,
		27.816273, 36.079174, 41.087288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111885, 36.745148, 41.269424>,  <28.488655, 36.193844, 40.929955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111885, 36.745148, 41.269424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.937828, 36.401257, 41.376400>,  <27.833395, 36.194923, 41.440586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.937828, 36.401257, 41.376400>,  <28.111885, 36.745148, 41.269424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937828, 36.401257, 41.376400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140855, 0.228372, 0.963331,
		-0.889276, 0.456855, 0.021722,
		-0.435142, -0.859727, 0.267436,
		27.807285, 36.143337, 41.456631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704216, 36.956043, 41.863922>,  <28.111885, 36.745148, 41.269424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704216, 36.956043, 41.863922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855776, 36.586269, 41.881168>,  <27.946711, 36.364407, 41.891518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855776, 36.586269, 41.881168>,  <27.704216, 36.956043, 41.863922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855776, 36.586269, 41.881168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390883, 0.202096, 0.897980,
		-0.838837, -0.323388, 0.437919,
		0.378898, -0.924434, 0.043118,
		27.969444, 36.308941, 41.894104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435902, 36.658318, 42.440525>,  <27.704216, 36.956043, 41.863922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435902, 36.658318, 42.440525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.797697, 36.517750, 42.343857>,  <28.014774, 36.433407, 42.285858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.797697, 36.517750, 42.343857>,  <27.435902, 36.658318, 42.440525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797697, 36.517750, 42.343857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378630, 0.400815, 0.834258,
		-0.196313, -0.846079, 0.495592,
		0.904489, -0.351422, -0.241666,
		28.069044, 36.412323, 42.271358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743790, 36.169376, 42.833675>,  <27.435902, 36.658318, 42.440525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743790, 36.169376, 42.833675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.002264, 36.425678, 42.667843>,  <28.157349, 36.579460, 42.568344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.002264, 36.425678, 42.667843>,  <27.743790, 36.169376, 42.833675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002264, 36.425678, 42.667843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271073, 0.315101, 0.909522,
		0.713417, -0.700101, 0.029922,
		0.646186, 0.640757, -0.414577,
		28.196119, 36.617905, 42.543468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378609, 35.967987, 43.007568>,  <27.743790, 36.169376, 42.833675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378609, 35.967987, 43.007568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.349604, 36.365719, 42.976475>,  <28.332201, 36.604359, 42.957817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.349604, 36.365719, 42.976475>,  <28.378609, 35.967987, 43.007568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349604, 36.365719, 42.976475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295734, 0.095872, 0.950447,
		0.952514, 0.045932, -0.301010,
		-0.072515, 0.994333, -0.077736,
		28.327848, 36.664021, 42.953156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968977, 36.276196, 43.263897>,  <28.378609, 35.967987, 43.007568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968977, 36.276196, 43.263897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.641359, 36.502312, 43.303120>,  <28.444788, 36.637981, 43.326653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.641359, 36.502312, 43.303120>,  <28.968977, 36.276196, 43.263897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641359, 36.502312, 43.303120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015059, -0.149668, 0.988622,
		0.573533, 0.811201, 0.114072,
		-0.819044, 0.565289, 0.098055,
		28.395645, 36.671898, 43.332535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058823, 36.919956, 43.654221>,  <28.968977, 36.276196, 43.263897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058823, 36.919956, 43.654221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.697174, 36.755268, 43.699921>,  <28.480185, 36.656456, 43.727341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.697174, 36.755268, 43.699921>,  <29.058823, 36.919956, 43.654221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697174, 36.755268, 43.699921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136741, -0.025488, 0.990279,
		-0.404804, 0.910954, 0.079343,
		-0.904121, -0.411719, 0.114248,
		28.425938, 36.631752, 43.734196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595413, 37.375008, 44.091587>,  <29.058823, 36.919956, 43.654221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595413, 37.375008, 44.091587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.550991, 36.978432, 44.119057>,  <28.524338, 36.740486, 44.135540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.550991, 36.978432, 44.119057>,  <28.595413, 37.375008, 44.091587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550991, 36.978432, 44.119057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413821, 0.016696, 0.910205,
		-0.903559, 0.129506, 0.408423,
		-0.111058, -0.991438, 0.068678,
		28.517673, 36.681000, 44.139660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070135, 36.905914, 44.408012>,  <28.595413, 37.375008, 44.091587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070135, 36.905914, 44.408012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315470, 37.209068, 44.496948>,  <29.462671, 37.390961, 44.550312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315470, 37.209068, 44.496948>,  <29.070135, 36.905914, 44.408012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315470, 37.209068, 44.496948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521132, -0.599854, 0.607122,
		0.593499, -0.256500, -0.762867,
		0.613336, 0.757881, 0.222342,
		29.499470, 37.436432, 44.563652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794184, 36.716759, 44.103710>,  <29.070135, 36.905914, 44.408012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794184, 36.716759, 44.103710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814434, 36.940804, 44.434460>,  <29.826584, 37.075230, 44.632908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814434, 36.940804, 44.434460>,  <29.794184, 36.716759, 44.103710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814434, 36.940804, 44.434460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692679, -0.616127, 0.374946,
		0.719468, 0.553774, -0.419167,
		0.050624, 0.560109, 0.826871,
		29.829622, 37.108837, 44.682522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487467, 36.936760, 44.212589>,  <29.794184, 36.716759, 44.103710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487467, 36.936760, 44.212589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.311317, 36.903530, 44.570175>,  <30.205627, 36.883591, 44.784725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.311317, 36.903530, 44.570175>,  <30.487467, 36.936760, 44.212589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311317, 36.903530, 44.570175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726915, -0.617388, 0.300709,
		0.526940, 0.782259, 0.332272,
		-0.440374, -0.083078, 0.893963,
		30.179205, 36.878609, 44.838364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846455, 37.063477, 44.898487>,  <30.487467, 36.936760, 44.212589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846455, 37.063477, 44.898487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.576046, 36.770931, 44.934486>,  <30.413801, 36.595406, 44.956085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.576046, 36.770931, 44.934486>,  <30.846455, 37.063477, 44.898487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576046, 36.770931, 44.934486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736210, -0.665141, 0.124833,
		-0.031438, 0.150645, 0.988088,
		-0.676023, -0.731364, 0.089996,
		30.373240, 36.551521, 44.961487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237494, 36.470497, 45.079029>,  <30.846455, 37.063477, 44.898487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237494, 36.470497, 45.079029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406807, 36.239891, 45.358589>,  <31.508394, 36.101528, 45.526325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406807, 36.239891, 45.358589>,  <31.237494, 36.470497, 45.079029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406807, 36.239891, 45.358589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363985, 0.814637, 0.451533,
		-0.829666, 0.063263, 0.554664,
		0.423284, -0.576511, 0.698903,
		31.533792, 36.066936, 45.568260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067059, 36.775280, 45.735218>,  <31.237494, 36.470497, 45.079029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067059, 36.775280, 45.735218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.399532, 36.557697, 45.781242>,  <31.599016, 36.427147, 45.808857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.399532, 36.557697, 45.781242>,  <31.067059, 36.775280, 45.735218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399532, 36.557697, 45.781242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416572, 0.746332, 0.519092,
		-0.368240, -0.383530, 0.846938,
		0.831184, -0.543962, 0.115061,
		31.648888, 36.394508, 45.815762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356941, 36.990978, 46.261963>,  <31.067059, 36.775280, 45.735218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356941, 36.990978, 46.261963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.680080, 36.799339, 46.124649>,  <31.873964, 36.684357, 46.042259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.680080, 36.799339, 46.124649>,  <31.356941, 36.990978, 46.261963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680080, 36.799339, 46.124649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589311, 0.646967, 0.483886,
		-0.009736, -0.593208, 0.804991,
		0.807848, -0.479101, -0.343285,
		31.922434, 36.655609, 46.021664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542562, 37.093616, 46.959126>,  <31.356941, 36.990978, 46.261963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542562, 37.093616, 46.959126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.820833, 37.331806, 47.119846>,  <31.987797, 37.474720, 47.216278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.820833, 37.331806, 47.119846>,  <31.542562, 37.093616, 46.959126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820833, 37.331806, 47.119846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686908, 0.715111, 0.129514,
		-0.210212, -0.366103, 0.906521,
		0.695678, 0.595471, 0.401804,
		32.029537, 37.510448, 47.240387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465563, 37.137871, 47.724625>,  <31.542562, 37.093616, 46.959126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465563, 37.137871, 47.724625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.645920, 37.452202, 47.555309>,  <31.754135, 37.640800, 47.453720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.645920, 37.452202, 47.555309>,  <31.465563, 37.137871, 47.724625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645920, 37.452202, 47.555309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653238, 0.613690, 0.443468,
		0.608257, 0.076553, 0.790040,
		0.450891, 0.785827, -0.423289,
		31.781187, 37.687950, 47.428326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855944, 37.539780, 48.193520>,  <31.465563, 37.137871, 47.724625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855944, 37.539780, 48.193520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709333, 37.749687, 47.886200>,  <31.621367, 37.875629, 47.701809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709333, 37.749687, 47.886200>,  <31.855944, 37.539780, 48.193520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709333, 37.749687, 47.886200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650330, 0.446044, 0.614911,
		0.665379, 0.725027, 0.177784,
		-0.366527, 0.524767, -0.768295,
		31.599375, 37.907116, 47.655712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110470, 38.210796, 48.398941>,  <31.855944, 37.539780, 48.193520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110470, 38.210796, 48.398941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.278080, 38.310646, 48.748135>,  <32.378647, 38.370556, 48.957649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.278080, 38.310646, 48.748135>,  <32.110470, 38.210796, 48.398941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278080, 38.310646, 48.748135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304061, -0.867372, 0.393969,
		0.855547, -0.430525, -0.287553,
		0.419029, 0.249626, 0.872984,
		32.403790, 38.385532, 49.010029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570614, 37.590801, 48.795731>,  <32.110470, 38.210796, 48.398941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570614, 37.590801, 48.795731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.365555, 37.851715, 49.019058>,  <32.242519, 38.008263, 49.153053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.365555, 37.851715, 49.019058>,  <32.570614, 37.590801, 48.795731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365555, 37.851715, 49.019058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640232, -0.723691, 0.257632,
		0.572101, -0.225381, 0.788609,
		-0.512644, 0.652285, 0.558320,
		32.211761, 38.047401, 49.186554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477837, 37.270081, 49.572247>,  <32.570614, 37.590801, 48.795731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477837, 37.270081, 49.572247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195633, 37.504539, 49.412903>,  <32.026310, 37.645214, 49.317299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195633, 37.504539, 49.412903>,  <32.477837, 37.270081, 49.572247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195633, 37.504539, 49.412903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678239, -0.721456, 0.139621,
		-0.205558, 0.368684, 0.906542,
		-0.705505, 0.586152, -0.398357,
		31.983982, 37.680386, 49.293396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931366, 36.638947, 49.945461>,  <32.477837, 37.270081, 49.572247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931366, 36.638947, 49.945461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.027000, 36.433704, 50.275204>,  <33.084381, 36.310558, 50.473049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.027000, 36.433704, 50.275204>,  <32.931366, 36.638947, 49.945461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027000, 36.433704, 50.275204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923899, 0.381415, -0.030548,
		-0.298748, 0.768927, 0.565244,
		0.239082, -0.513102, 0.824358,
		33.098724, 36.279774, 50.522511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457050, 37.011524, 50.212612>,  <32.931366, 36.638947, 49.945461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457050, 37.011524, 50.212612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516331, 36.660339, 50.394695>,  <33.551899, 36.449627, 50.503944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516331, 36.660339, 50.394695>,  <33.457050, 37.011524, 50.212612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516331, 36.660339, 50.394695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987123, 0.159341, -0.014062,
		-0.060187, 0.451430, 0.890274,
		0.148205, -0.877964, 0.455207,
		33.560791, 36.396950, 50.531258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987267, 37.223160, 50.624866>,  <33.457050, 37.011524, 50.212612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987267, 37.223160, 50.624866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987514, 36.824562, 50.591396>,  <33.987663, 36.585403, 50.571316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987514, 36.824562, 50.591396>,  <33.987267, 37.223160, 50.624866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987514, 36.824562, 50.591396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998317, 0.005464, -0.057740,
		0.057995, -0.083494, 0.994819,
		0.000615, -0.996493, -0.083671,
		33.987698, 36.525616, 50.566296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387402, 37.027668, 51.203400>,  <33.987267, 37.223160, 50.624866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387402, 37.027668, 51.203400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383331, 36.710629, 50.959538>,  <34.380890, 36.520405, 50.813221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383331, 36.710629, 50.959538>,  <34.387402, 37.027668, 51.203400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383331, 36.710629, 50.959538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992422, -0.082671, 0.090912,
		-0.122458, -0.604113, 0.787434,
		-0.010176, -0.792599, -0.609658,
		34.380280, 36.472847, 50.776642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962505, 36.606079, 51.417686>,  <34.387402, 37.027668, 51.203400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962505, 36.606079, 51.417686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876034, 36.426586, 51.070835>,  <34.824150, 36.318890, 50.862724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876034, 36.426586, 51.070835>,  <34.962505, 36.606079, 51.417686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876034, 36.426586, 51.070835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967571, -0.217319, -0.128759,
		-0.130665, -0.866841, 0.481159,
		-0.216178, -0.448731, -0.867126,
		34.811180, 36.291965, 50.810696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212509, 35.990669, 51.507046>,  <34.962505, 36.606079, 51.417686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212509, 35.990669, 51.507046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.179741, 36.069164, 51.116196>,  <35.160080, 36.116261, 50.881683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.179741, 36.069164, 51.116196>,  <35.212509, 35.990669, 51.507046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179741, 36.069164, 51.116196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955073, -0.264734, -0.133237,
		-0.284826, -0.944143, -0.165737,
		-0.081919, 0.196240, -0.977128,
		35.155167, 36.128036, 50.823059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555302, 35.337219, 51.027515>,  <35.212509, 35.990669, 51.507046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555302, 35.337219, 51.027515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542255, 35.669445, 50.805130>,  <35.534428, 35.868782, 50.671700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542255, 35.669445, 50.805130>,  <35.555302, 35.337219, 51.027515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542255, 35.669445, 50.805130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967350, -0.113648, -0.226535,
		-0.251336, -0.545201, -0.799741,
		-0.032618, 0.830566, -0.555964,
		35.532471, 35.918613, 50.638340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868977, 35.221161, 50.466545>,  <35.555302, 35.337219, 51.027515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868977, 35.221161, 50.466545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892235, 35.620193, 50.451324>,  <35.906189, 35.859612, 50.442192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892235, 35.620193, 50.451324>,  <35.868977, 35.221161, 50.466545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892235, 35.620193, 50.451324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995344, -0.060863, -0.074745,
		-0.076880, -0.033528, -0.996476,
		0.058142, 0.997583, -0.038051,
		35.909676, 35.919468, 50.439911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259789, 35.399456, 49.858818>,  <35.868977, 35.221161, 50.466545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259789, 35.399456, 49.858818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291553, 35.743790, 50.059883>,  <36.310612, 35.950390, 50.180523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291553, 35.743790, 50.059883>,  <36.259789, 35.399456, 49.858818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291553, 35.743790, 50.059883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990010, -0.009176, -0.140695,
		-0.116502, 0.508810, -0.852959,
		0.079414, 0.860830, 0.502658,
		36.315376, 36.002037, 50.210682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686195, 35.821892, 49.426266>,  <36.259789, 35.399456, 49.858818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686195, 35.821892, 49.426266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.680481, 35.985786, 49.791103>,  <36.677052, 36.084126, 50.010006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.680481, 35.985786, 49.791103>,  <36.686195, 35.821892, 49.426266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680481, 35.985786, 49.791103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977195, 0.198997, -0.074092,
		-0.211862, 0.890232, -0.403240,
		-0.014285, 0.409741, 0.912090,
		36.676197, 36.108707, 50.064732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047325, 36.385540, 49.319267>,  <36.686195, 35.821892, 49.426266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047325, 36.385540, 49.319267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061974, 36.317993, 49.713249>,  <37.070763, 36.277466, 49.949638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061974, 36.317993, 49.713249>,  <37.047325, 36.385540, 49.319267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061974, 36.317993, 49.713249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997753, 0.061512, -0.026550,
		-0.056103, 0.983717, 0.170741,
		0.036621, -0.168868, 0.984958,
		37.072960, 36.267334, 50.008736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423843, 36.947742, 49.704548>,  <37.047325, 36.385540, 49.319267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423843, 36.947742, 49.704548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477253, 36.620098, 49.927696>,  <37.509300, 36.423512, 50.061584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477253, 36.620098, 49.927696>,  <37.423843, 36.947742, 49.704548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477253, 36.620098, 49.927696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954640, 0.257477, 0.149559,
		-0.266146, 0.512600, 0.816338,
		0.133524, -0.819113, 0.557875,
		37.517311, 36.374363, 50.095058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947525, 37.083565, 50.114491>,  <37.423843, 36.947742, 49.704548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947525, 37.083565, 50.114491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934097, 36.683846, 50.107803>,  <37.926041, 36.444016, 50.103790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934097, 36.683846, 50.107803>,  <37.947525, 37.083565, 50.114491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934097, 36.683846, 50.107803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994410, -0.035069, 0.099592,
		-0.100109, -0.013285, 0.994888,
		-0.033566, -0.999297, -0.016721,
		37.924026, 36.384056, 50.102787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457344, 36.873959, 50.615788>,  <37.947525, 37.083565, 50.114491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457344, 36.873959, 50.615788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378201, 36.578804, 50.357681>,  <38.330715, 36.401711, 50.202816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378201, 36.578804, 50.357681>,  <38.457344, 36.873959, 50.615788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378201, 36.578804, 50.357681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962312, -0.271509, 0.015402,
		-0.186560, -0.617900, 0.763803,
		-0.197863, -0.737891, -0.645266,
		38.318840, 36.357437, 50.164101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695126, 36.240021, 50.853832>,  <38.457344, 36.873959, 50.615788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695126, 36.240021, 50.853832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675514, 36.197529, 50.456581>,  <38.663746, 36.172035, 50.218231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675514, 36.197529, 50.456581>,  <38.695126, 36.240021, 50.853832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675514, 36.197529, 50.456581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923298, -0.384058, -0.004500,
		-0.380942, -0.917178, 0.116910,
		-0.049028, -0.106229, -0.993132,
		38.660805, 36.165661, 50.158642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664383, 35.478184, 50.648701>,  <38.695126, 36.240021, 50.853832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664383, 35.478184, 50.648701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869877, 35.743813, 50.431416>,  <38.993172, 35.903191, 50.301044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869877, 35.743813, 50.431416>,  <38.664383, 35.478184, 50.648701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869877, 35.743813, 50.431416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848334, -0.487714, 0.206070,
		-0.128088, -0.566694, -0.813911,
		0.513734, 0.664073, -0.543216,
		39.023998, 35.943035, 50.268452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160336, 35.087479, 51.008377>,  <38.664383, 35.478184, 50.648701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160336, 35.087479, 51.008377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321968, 34.955730, 51.349724>,  <39.418945, 34.876682, 51.554531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.321968, 34.955730, 51.349724>,  <39.160336, 35.087479, 51.008377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321968, 34.955730, 51.349724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893235, 0.058949, 0.445709,
		-0.197111, -0.942356, -0.270392,
		0.404078, -0.329378, 0.853365,
		39.443192, 34.856918, 51.605732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848873, 34.482197, 51.389473>,  <39.160336, 35.087479, 51.008377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848873, 34.482197, 51.389473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.015800, 34.679520, 51.694756>,  <39.115959, 34.797913, 51.877926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.015800, 34.679520, 51.694756>,  <38.848873, 34.482197, 51.389473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015800, 34.679520, 51.694756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897888, 0.094315, 0.430003,
		0.140146, -0.864721, 0.482303,
		0.417321, 0.493317, 0.763205,
		39.140999, 34.827515, 51.923717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766167, 34.179245, 51.992287>,  <38.848873, 34.482197, 51.389473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766167, 34.179245, 51.992287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.814228, 34.556049, 52.117622>,  <38.843063, 34.782131, 52.192822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.814228, 34.556049, 52.117622>,  <38.766167, 34.179245, 51.992287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814228, 34.556049, 52.117622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862254, -0.057402, 0.503213,
		0.492018, -0.330637, 0.805356,
		0.120152, 0.942011, 0.313336,
		38.850273, 34.838654, 52.211624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654388, 34.177025, 52.666508>,  <38.766167, 34.179245, 51.992287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654388, 34.177025, 52.666508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.587067, 34.558598, 52.567154>,  <38.546673, 34.787540, 52.507542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.587067, 34.558598, 52.567154>,  <38.654388, 34.177025, 52.666508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587067, 34.558598, 52.567154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760094, 0.034849, 0.648878,
		0.627640, 0.298000, 0.719211,
		-0.168302, 0.953930, -0.248381,
		38.536575, 34.844776, 52.492641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840137, 34.641705, 53.180721>,  <38.654388, 34.177025, 52.666508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840137, 34.641705, 53.180721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564213, 34.842945, 52.972473>,  <38.398659, 34.963688, 52.847523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564213, 34.842945, 52.972473>,  <38.840137, 34.641705, 53.180721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564213, 34.842945, 52.972473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544375, 0.113650, 0.831107,
		0.477301, 0.856721, 0.195479,
		-0.689811, 0.503103, -0.520623,
		38.357269, 34.993877, 52.816288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630886, 35.224541, 53.587299>,  <38.840137, 34.641705, 53.180721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630886, 35.224541, 53.587299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324169, 35.194416, 53.332314>,  <38.140141, 35.176342, 53.179321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324169, 35.194416, 53.332314>,  <38.630886, 35.224541, 53.587299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324169, 35.194416, 53.332314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641656, 0.062899, 0.764409,
		-0.017474, 0.995174, -0.096555,
		-0.766793, -0.075313, -0.637461,
		38.094131, 35.171822, 53.141075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183136, 35.772144, 53.742455>,  <38.630886, 35.224541, 53.587299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183136, 35.772144, 53.742455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964142, 35.517490, 53.525215>,  <37.832745, 35.364700, 53.394871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964142, 35.517490, 53.525215>,  <38.183136, 35.772144, 53.742455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964142, 35.517490, 53.525215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715821, 0.020143, 0.697993,
		-0.433425, 0.770904, -0.466743,
		-0.547487, -0.636633, -0.543099,
		37.799896, 35.326500, 53.362286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568146, 35.922066, 53.955620>,  <38.183136, 35.772144, 53.742455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568146, 35.922066, 53.955620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477814, 35.576340, 53.775856>,  <37.423615, 35.368904, 53.667999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477814, 35.576340, 53.775856>,  <37.568146, 35.922066, 53.955620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477814, 35.576340, 53.775856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820460, -0.079967, 0.566084,
		-0.525210, 0.496559, -0.691074,
		-0.225831, -0.864311, -0.449406,
		37.410065, 35.317047, 53.641033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842564, 36.016224, 53.959141>,  <37.568146, 35.922066, 53.955620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842564, 36.016224, 53.959141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918247, 35.631531, 53.879868>,  <36.963657, 35.400715, 53.832302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918247, 35.631531, 53.879868>,  <36.842564, 36.016224, 53.959141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918247, 35.631531, 53.879868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825230, -0.265126, 0.498702,
		-0.532160, 0.069189, -0.843812,
		0.189212, -0.961728, -0.198186,
		36.975010, 35.343014, 53.820412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145325, 35.813503, 53.925430>,  <36.842564, 36.016224, 53.959141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145325, 35.813503, 53.925430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357418, 35.478348, 53.977272>,  <36.484673, 35.277256, 54.008377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357418, 35.478348, 53.977272>,  <36.145325, 35.813503, 53.925430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357418, 35.478348, 53.977272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667554, -0.318333, 0.673080,
		-0.522710, -0.443404, -0.728126,
		0.530232, -0.837888, 0.129600,
		36.516487, 35.226982, 54.016151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663067, 35.308277, 53.917484>,  <36.145325, 35.813503, 53.925430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663067, 35.308277, 53.917484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974468, 35.152195, 54.114128>,  <36.161308, 35.058548, 54.232113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974468, 35.152195, 54.114128>,  <35.663067, 35.308277, 53.917484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974468, 35.152195, 54.114128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610354, -0.288071, 0.737891,
		-0.146308, -0.874504, -0.462424,
		0.778500, -0.390201, 0.491610,
		36.208019, 35.035133, 54.261612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464523, 34.704666, 54.105015>,  <35.663067, 35.308277, 53.917484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464523, 34.704666, 54.105015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.787323, 34.741997, 54.338268>,  <35.981003, 34.764397, 54.478222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.787323, 34.741997, 54.338268>,  <35.464523, 34.704666, 54.105015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787323, 34.741997, 54.338268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529044, -0.324534, 0.784085,
		0.262424, -0.941258, -0.212524,
		0.806998, 0.093328, 0.583133,
		36.029423, 34.769997, 54.513206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525463, 34.128769, 54.443954>,  <35.464523, 34.704666, 54.105015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525463, 34.128769, 54.443954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.724304, 34.386494, 54.676418>,  <35.843609, 34.541130, 54.815895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.724304, 34.386494, 54.676418>,  <35.525463, 34.128769, 54.443954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724304, 34.386494, 54.676418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497679, -0.336933, 0.799245,
		0.710776, -0.686540, 0.153169,
		0.497106, 0.644313, 0.581160,
		35.873436, 34.579788, 54.850765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846138, 33.735661, 55.087803>,  <35.525463, 34.128769, 54.443954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846138, 33.735661, 55.087803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845425, 34.112289, 55.222527>,  <35.844997, 34.338268, 55.303360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845425, 34.112289, 55.222527>,  <35.846138, 33.735661, 55.087803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845425, 34.112289, 55.222527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465609, -0.298855, 0.833003,
		0.884989, -0.155332, 0.438938,
		-0.001787, 0.941572, 0.336808,
		35.844891, 34.394760, 55.323570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091969, 33.773251, 55.904453>,  <35.846138, 33.735661, 55.087803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091969, 33.773251, 55.904453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892277, 34.113663, 55.839306>,  <35.772461, 34.317909, 55.800217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892277, 34.113663, 55.839306>,  <36.091969, 33.773251, 55.904453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892277, 34.113663, 55.839306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465871, -0.105145, 0.878583,
		0.730574, 0.514487, 0.448960,
		-0.499225, 0.851028, -0.162869,
		35.742508, 34.368973, 55.790443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077599, 34.000404, 56.617455>,  <36.091969, 33.773251, 55.904453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077599, 34.000404, 56.617455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827175, 34.238976, 56.416531>,  <35.676922, 34.382118, 56.295975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827175, 34.238976, 56.416531>,  <36.077599, 34.000404, 56.617455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827175, 34.238976, 56.416531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473777, 0.220694, 0.852543,
		0.619339, 0.771729, 0.144407,
		-0.626062, 0.596430, -0.502312,
		35.639355, 34.417904, 56.265839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985996, 34.495655, 57.019196>,  <36.077599, 34.000404, 56.617455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985996, 34.495655, 57.019196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670326, 34.538670, 56.777321>,  <35.480927, 34.564476, 56.632198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670326, 34.538670, 56.777321>,  <35.985996, 34.495655, 57.019196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670326, 34.538670, 56.777321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593316, 0.120901, 0.795838,
		0.158686, 0.986823, -0.031610,
		-0.789173, 0.107533, -0.604683,
		35.433575, 34.570930, 56.595917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657864, 35.108818, 57.162033>,  <35.985996, 34.495655, 57.019196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657864, 35.108818, 57.162033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381004, 34.852242, 57.029675>,  <35.214890, 34.698296, 56.950260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381004, 34.852242, 57.029675>,  <35.657864, 35.108818, 57.162033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381004, 34.852242, 57.029675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567193, 0.199877, 0.798963,
		-0.446348, 0.740679, -0.502164,
		-0.692146, -0.641439, -0.330893,
		35.173359, 34.659809, 56.930408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016449, 35.502357, 57.241116>,  <35.657864, 35.108818, 57.162033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016449, 35.502357, 57.241116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914413, 35.116188, 57.219646>,  <34.853191, 34.884487, 57.206764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914413, 35.116188, 57.219646>,  <35.016449, 35.502357, 57.241116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914413, 35.116188, 57.219646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724764, 0.154166, 0.671528,
		-0.640035, 0.210204, -0.739033,
		-0.255092, -0.965426, -0.053676,
		34.837887, 34.826561, 57.203545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333511, 35.624195, 57.314137>,  <35.016449, 35.502357, 57.241116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333511, 35.624195, 57.314137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429417, 35.248581, 57.412712>,  <34.486961, 35.023212, 57.471859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429417, 35.248581, 57.412712>,  <34.333511, 35.624195, 57.314137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429417, 35.248581, 57.412712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717566, -0.000431, 0.696491,
		-0.653921, -0.343830, -0.673920,
		0.239765, -0.939032, 0.246439,
		34.501347, 34.966873, 57.486645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663670, 35.308182, 57.451683>,  <34.333511, 35.624195, 57.314137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663670, 35.308182, 57.451683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.925148, 35.072132, 57.641178>,  <34.082035, 34.930500, 57.754875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.925148, 35.072132, 57.641178>,  <33.663670, 35.308182, 57.451683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925148, 35.072132, 57.641178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613070, -0.045965, 0.788691,
		-0.443653, -0.806000, -0.391837,
		0.653695, -0.590128, 0.473742,
		34.121258, 34.895092, 57.783302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377895, 34.593067, 57.692810>,  <33.663670, 35.308182, 57.451683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377895, 34.593067, 57.692810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673706, 34.627895, 57.959797>,  <33.851192, 34.648792, 58.119991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673706, 34.627895, 57.959797>,  <33.377895, 34.593067, 57.692810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673706, 34.627895, 57.959797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610716, -0.330202, 0.719717,
		0.283066, -0.939886, -0.191019,
		0.739527, 0.087069, 0.667472,
		33.895565, 34.654015, 58.160038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079765, 34.257572, 58.279366>,  <33.377895, 34.593067, 57.692810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079765, 34.257572, 58.279366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.417107, 34.399792, 58.440536>,  <33.619511, 34.485123, 58.537239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.417107, 34.399792, 58.440536>,  <33.079765, 34.257572, 58.279366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417107, 34.399792, 58.440536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371094, -0.156970, 0.915232,
		0.388654, -0.921384, -0.000440,
		0.843349, 0.355545, 0.402927,
		33.670113, 34.506454, 58.561413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274250, 33.868778, 58.839626>,  <33.079765, 34.257572, 58.279366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274250, 33.868778, 58.839626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475090, 34.204983, 58.921055>,  <33.595592, 34.406704, 58.969913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475090, 34.204983, 58.921055>,  <33.274250, 33.868778, 58.839626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475090, 34.204983, 58.921055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294484, -0.055157, 0.954063,
		0.813127, -0.538983, 0.219822,
		0.502099, 0.840509, 0.203571,
		33.625721, 34.457134, 58.982128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520889, 33.748287, 59.498585>,  <33.274250, 33.868778, 58.839626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520889, 33.748287, 59.498585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561802, 34.143032, 59.448563>,  <33.586349, 34.379879, 59.418549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561802, 34.143032, 59.448563>,  <33.520889, 33.748287, 59.498585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561802, 34.143032, 59.448563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313561, 0.151292, 0.937438,
		0.944043, -0.056674, 0.324916,
		0.102286, 0.986863, -0.125056,
		33.592487, 34.439091, 59.411045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809399, 33.984909, 60.182789>,  <33.520889, 33.748287, 59.498585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809399, 33.984909, 60.182789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647095, 34.304741, 60.005684>,  <33.549713, 34.496639, 59.899422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647095, 34.304741, 60.005684>,  <33.809399, 33.984909, 60.182789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647095, 34.304741, 60.005684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314773, 0.332544, 0.889006,
		0.858066, 0.500092, 0.116753,
		-0.405759, 0.799577, -0.442760,
		33.525368, 34.544613, 59.872856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986897, 34.449497, 60.629448>,  <33.809399, 33.984909, 60.182789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986897, 34.449497, 60.629448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667679, 34.561523, 60.416023>,  <33.476147, 34.628738, 60.287968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667679, 34.561523, 60.416023>,  <33.986897, 34.449497, 60.629448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667679, 34.561523, 60.416023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449510, 0.313023, 0.836634,
		0.401331, 0.907513, -0.123913,
		-0.798044, 0.280067, -0.533562,
		33.428265, 34.645542, 60.255955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848118, 35.129173, 60.968624>,  <33.986897, 34.449497, 60.629448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848118, 35.129173, 60.968624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.523087, 35.012886, 60.766552>,  <33.328068, 34.943111, 60.645309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.523087, 35.012886, 60.766552>,  <33.848118, 35.129173, 60.968624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523087, 35.012886, 60.766552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577192, 0.521916, 0.628056,
		0.081069, 0.801926, -0.591898,
		-0.812575, -0.290723, -0.505176,
		33.279316, 34.925671, 60.614998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440464, 35.732765, 60.895237>,  <33.848118, 35.129173, 60.968624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440464, 35.732765, 60.895237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172153, 35.442341, 60.834724>,  <33.011166, 35.268085, 60.798416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172153, 35.442341, 60.834724>,  <33.440464, 35.732765, 60.895237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172153, 35.442341, 60.834724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678667, 0.518644, 0.520019,
		-0.299108, 0.451485, -0.840652,
		-0.670780, -0.726064, -0.151277,
		32.970921, 35.224522, 60.789341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908020, 36.053410, 60.616383>,  <33.440464, 35.732765, 60.895237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908020, 36.053410, 60.616383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767288, 35.709461, 60.764351>,  <32.682850, 35.503094, 60.853134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767288, 35.709461, 60.764351>,  <32.908020, 36.053410, 60.616383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767288, 35.709461, 60.764351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756169, 0.494014, 0.429137,
		-0.551748, -0.128742, -0.824014,
		-0.351827, -0.859869, 0.369923,
		32.661739, 35.451500, 60.875328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234859, 36.060333, 60.453720>,  <32.908020, 36.053410, 60.616383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234859, 36.060333, 60.453720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.270252, 35.803585, 60.758396>,  <32.291489, 35.649536, 60.941200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.270252, 35.803585, 60.758396>,  <32.234859, 36.060333, 60.453720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270252, 35.803585, 60.758396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824175, 0.382258, 0.417868,
		-0.559380, -0.664738, -0.495194,
		0.088481, -0.641874, 0.761688,
		32.296795, 35.611023, 60.986904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532640, 35.970284, 60.732407>,  <32.234859, 36.060333, 60.453720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532640, 35.970284, 60.732407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770041, 35.850704, 61.031307>,  <31.912479, 35.778957, 61.210648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770041, 35.850704, 61.031307>,  <31.532640, 35.970284, 60.732407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770041, 35.850704, 61.031307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686128, 0.297383, 0.663922,
		-0.420700, -0.906748, -0.028622,
		0.593499, -0.298950, 0.747254,
		31.948090, 35.761021, 61.255482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180576, 35.533951, 61.099583>,  <31.532640, 35.970284, 60.732407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180576, 35.533951, 61.099583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455189, 35.678463, 61.351978>,  <31.619957, 35.765171, 61.503418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455189, 35.678463, 61.351978>,  <31.180576, 35.533951, 61.099583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455189, 35.678463, 61.351978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699988, 0.093629, 0.707991,
		0.196706, -0.927744, 0.317173,
		0.686530, 0.361283, 0.630992,
		31.661148, 35.786846, 61.541275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015129, 35.219845, 61.737495>,  <31.180576, 35.533951, 61.099583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015129, 35.219845, 61.737495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.236269, 35.541119, 61.826271>,  <31.368952, 35.733883, 61.879536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.236269, 35.541119, 61.826271>,  <31.015129, 35.219845, 61.737495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236269, 35.541119, 61.826271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612343, 0.210951, 0.761929,
		0.565151, -0.557131, 0.608448,
		0.552847, 0.803184, 0.221936,
		31.402122, 35.782074, 61.892853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073502, 35.272472, 62.573467>,  <31.015129, 35.219845, 61.737495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073502, 35.272472, 62.573467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.163603, 35.628880, 62.415813>,  <31.217665, 35.842724, 62.321220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.163603, 35.628880, 62.415813>,  <31.073502, 35.272472, 62.573467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163603, 35.628880, 62.415813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495687, 0.453068, 0.740961,
		0.838781, 0.028461, 0.543724,
		0.225255, 0.891022, -0.394133,
		31.231180, 35.896187, 62.297573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221098, 35.725327, 63.195873>,  <31.073502, 35.272472, 62.573467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221098, 35.725327, 63.195873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145573, 35.980415, 62.897167>,  <31.100258, 36.133469, 62.717945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145573, 35.980415, 62.897167>,  <31.221098, 35.725327, 63.195873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145573, 35.980415, 62.897167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580461, 0.540899, 0.608682,
		0.792095, 0.548397, 0.268043,
		-0.188815, 0.637722, -0.746766,
		31.088928, 36.171730, 62.673138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285574, 36.385582, 63.437962>,  <31.221098, 35.725327, 63.195873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285574, 36.385582, 63.437962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049391, 36.421925, 63.117188>,  <30.907681, 36.443729, 62.924721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049391, 36.421925, 63.117188>,  <31.285574, 36.385582, 63.437962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049391, 36.421925, 63.117188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638086, 0.555860, 0.532790,
		0.494174, 0.826295, -0.270236,
		-0.590456, 0.090857, -0.801939,
		30.872253, 36.449181, 62.876606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047508, 37.101536, 63.501518>,  <31.285574, 36.385582, 63.437962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047508, 37.101536, 63.501518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784500, 36.975792, 63.227631>,  <30.626694, 36.900345, 63.063297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784500, 36.975792, 63.227631>,  <31.047508, 37.101536, 63.501518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784500, 36.975792, 63.227631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658252, 0.681834, 0.319072,
		0.366562, 0.660516, -0.655249,
		-0.657523, -0.314359, -0.684720,
		30.587244, 36.881485, 63.022213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777706, 37.665623, 63.161270>,  <31.047508, 37.101536, 63.501518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777706, 37.665623, 63.161270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.506496, 37.378235, 63.099190>,  <30.343771, 37.205803, 63.061939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.506496, 37.378235, 63.099190>,  <30.777706, 37.665623, 63.161270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506496, 37.378235, 63.099190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705665, 0.577152, 0.411014,
		-0.205724, 0.388199, -0.898320,
		-0.678022, -0.718469, -0.155204,
		30.303089, 37.162693, 63.052628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315060, 37.971149, 62.822880>,  <30.777706, 37.665623, 63.161270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315060, 37.971149, 62.822880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133810, 37.649704, 62.977222>,  <30.025061, 37.456837, 63.069828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133810, 37.649704, 62.977222>,  <30.315060, 37.971149, 62.822880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133810, 37.649704, 62.977222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777618, 0.567962, 0.269686,
		-0.435876, -0.177851, -0.882259,
		-0.453126, -0.803610, 0.385861,
		29.997873, 37.408623, 63.092979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684074, 38.066940, 62.536064>,  <30.315060, 37.971149, 62.822880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684074, 38.066940, 62.536064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.656376, 37.813129, 62.843979>,  <29.639757, 37.660843, 63.028728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.656376, 37.813129, 62.843979>,  <29.684074, 38.066940, 62.536064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656376, 37.813129, 62.843979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884377, 0.396100, 0.246945,
		-0.461608, -0.663686, -0.588591,
		-0.069247, -0.634528, 0.769791,
		29.635601, 37.622772, 63.074917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961086, 37.921150, 62.573936>,  <29.684074, 38.066940, 62.536064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961086, 37.921150, 62.573936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.140959, 37.840919, 62.922085>,  <29.248882, 37.792782, 63.130974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.140959, 37.840919, 62.922085>,  <28.961086, 37.921150, 62.573936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140959, 37.840919, 62.922085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565592, 0.690251, 0.451285,
		-0.691296, -0.695213, 0.196949,
		0.449683, -0.200579, 0.870375,
		29.275864, 37.780746, 63.183197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434727, 37.871181, 63.038929>,  <28.961086, 37.921150, 62.573936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434727, 37.871181, 63.038929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.722939, 37.911766, 63.313313>,  <28.895864, 37.936115, 63.477943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.722939, 37.911766, 63.313313>,  <28.434727, 37.871181, 63.038929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722939, 37.911766, 63.313313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610636, 0.561584, 0.558343,
		-0.328578, -0.821176, 0.466591,
		0.720528, 0.101457, 0.685963,
		28.939096, 37.942204, 63.519100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058426, 37.761765, 63.576920>,  <28.434727, 37.871181, 63.038929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058426, 37.761765, 63.576920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.385780, 37.938614, 63.723763>,  <28.582193, 38.044724, 63.811871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.385780, 37.938614, 63.723763>,  <28.058426, 37.761765, 63.576920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385780, 37.938614, 63.723763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569526, 0.538748, 0.620798,
		0.076686, -0.717134, 0.692703,
		0.818389, 0.442119, 0.367112,
		28.631296, 38.071251, 63.833897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199703, 37.584217, 64.359070>,  <28.058426, 37.761765, 63.576920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199703, 37.584217, 64.359070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.363123, 37.947292, 64.320709>,  <28.461174, 38.165138, 64.297691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.363123, 37.947292, 64.320709>,  <28.199703, 37.584217, 64.359070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363123, 37.947292, 64.320709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587462, 0.341916, 0.733472,
		0.698553, -0.243317, 0.672919,
		0.408548, 0.907684, -0.095907,
		28.485687, 38.219597, 64.291939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461273, 37.823391, 65.120331>,  <28.199703, 37.584217, 64.359070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461273, 37.823391, 65.120331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.398182, 38.118946, 64.858284>,  <28.360327, 38.296280, 64.701057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.398182, 38.118946, 64.858284>,  <28.461273, 37.823391, 65.120331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398182, 38.118946, 64.858284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555739, 0.481961, 0.677397,
		0.816257, 0.470917, 0.334607,
		-0.157730, 0.738885, -0.655111,
		28.350863, 38.340611, 64.661751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211292, 38.401611, 65.514900>,  <28.461273, 37.823391, 65.120331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211292, 38.401611, 65.514900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.106054, 38.541813, 65.155357>,  <28.042912, 38.625935, 64.939636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.106054, 38.541813, 65.155357>,  <28.211292, 38.401611, 65.514900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106054, 38.541813, 65.155357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651474, 0.622635, 0.433481,
		0.711592, 0.699623, 0.064533,
		-0.263093, 0.350503, -0.898849,
		28.027126, 38.646965, 64.885704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344479, 39.092171, 65.557953>,  <28.211292, 38.401611, 65.514900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344479, 39.092171, 65.557953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.032621, 39.054371, 65.310333>,  <27.845507, 39.031689, 65.161758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.032621, 39.054371, 65.310333>,  <28.344479, 39.092171, 65.557953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032621, 39.054371, 65.310333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524780, 0.638003, 0.563523,
		0.341701, 0.764212, -0.547010,
		-0.779645, -0.094504, -0.619050,
		27.798727, 39.026020, 65.124619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189186, 39.782902, 65.370575>,  <28.344479, 39.092171, 65.557953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189186, 39.782902, 65.370575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.901545, 39.506901, 65.403519>,  <27.728960, 39.341301, 65.423286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.901545, 39.506901, 65.403519>,  <28.189186, 39.782902, 65.370575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901545, 39.506901, 65.403519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439751, 0.543621, 0.714910,
		-0.538058, 0.477882, -0.694351,
		-0.719106, -0.690004, 0.082350,
		27.685812, 39.299900, 65.428223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553928, 40.046459, 65.150139>,  <28.189186, 39.782902, 65.370575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553928, 40.046459, 65.150139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.548172, 39.762535, 65.431839>,  <27.544718, 39.592182, 65.600861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.548172, 39.762535, 65.431839>,  <27.553928, 40.046459, 65.150139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548172, 39.762535, 65.431839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263916, 0.682043, 0.682031,
		-0.964438, -0.176049, -0.197144,
		-0.014390, -0.709806, 0.704250,
		27.543856, 39.549595, 65.643112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663326, 40.582108, 65.727028>,  <27.553928, 40.046459, 65.150139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663326, 40.582108, 65.727028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990967, 40.796761, 65.808113>,  <28.187551, 40.925552, 65.856766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990967, 40.796761, 65.808113>,  <27.663326, 40.582108, 65.727028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990967, 40.796761, 65.808113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568417, -0.806879, -0.160773,
		0.077287, 0.246914, -0.965950,
		0.819103, 0.536637, 0.202711,
		28.236698, 40.957752, 65.868927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765141, 41.180691, 65.254364>,  <27.663326, 40.582108, 65.727028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765141, 41.180691, 65.254364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.825808, 41.500698, 65.022171>,  <27.862207, 41.692703, 64.882858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.825808, 41.500698, 65.022171>,  <27.765141, 41.180691, 65.254364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825808, 41.500698, 65.022171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664944, -0.517105, -0.538936,
		-0.731332, -0.304251, -0.610397,
		0.151668, 0.800021, -0.580485,
		27.871307, 41.740704, 64.848022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572233, 40.941872, 64.556305>,  <27.765141, 41.180691, 65.254364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572233, 40.941872, 64.556305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.831022, 41.246006, 64.579338>,  <27.986296, 41.428486, 64.593155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.831022, 41.246006, 64.579338>,  <27.572233, 40.941872, 64.556305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831022, 41.246006, 64.579338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642762, -0.503187, -0.577633,
		-0.410221, 0.410723, -0.814263,
		0.646974, 0.760335, 0.057580,
		28.025114, 41.474106, 64.596611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832907, 40.985119, 63.893795>,  <27.572233, 40.941872, 64.556305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832907, 40.985119, 63.893795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.071558, 41.183056, 64.146515>,  <28.214748, 41.301819, 64.298149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.071558, 41.183056, 64.146515>,  <27.832907, 40.985119, 63.893795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071558, 41.183056, 64.146515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798666, -0.289085, -0.527790,
		-0.078528, 0.819490, -0.567688,
		0.596628, 0.494840, 0.631798,
		28.250547, 41.331509, 64.336052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229055, 41.595230, 63.502399>,  <27.832907, 40.985119, 63.893795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229055, 41.595230, 63.502399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378660, 41.401714, 63.818897>,  <28.468424, 41.285606, 64.008797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378660, 41.401714, 63.818897>,  <28.229055, 41.595230, 63.502399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378660, 41.401714, 63.818897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832708, -0.200433, -0.516163,
		0.408305, 0.851925, 0.327890,
		0.374012, -0.483788, 0.791242,
		28.490864, 41.256577, 64.056267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872610, 41.880421, 63.715027>,  <28.229055, 41.595230, 63.502399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872610, 41.880421, 63.715027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.867220, 41.486687, 63.785351>,  <28.863987, 41.250446, 63.827545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.867220, 41.486687, 63.785351>,  <28.872610, 41.880421, 63.715027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867220, 41.486687, 63.785351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672844, -0.138988, -0.726610,
		0.739661, 0.108502, 0.664175,
		-0.013474, -0.984332, 0.175809,
		28.863178, 41.191387, 63.838093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536936, 41.657024, 63.670265>,  <28.872610, 41.880421, 63.715027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536936, 41.657024, 63.670265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.328430, 41.321808, 63.605804>,  <29.203327, 41.120678, 63.567127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.328430, 41.321808, 63.605804>,  <29.536936, 41.657024, 63.670265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328430, 41.321808, 63.605804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573646, -0.204277, -0.793222,
		0.631835, -0.505919, 0.587223,
		-0.521262, -0.838044, -0.161149,
		29.172052, 41.070396, 63.557461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990713, 41.311462, 63.272476>,  <29.536936, 41.657024, 63.670265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990713, 41.311462, 63.272476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663673, 41.087318, 63.219513>,  <29.467449, 40.952831, 63.187737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663673, 41.087318, 63.219513>,  <29.990713, 41.311462, 63.272476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663673, 41.087318, 63.219513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429189, -0.439812, -0.788899,
		0.383833, -0.701830, 0.600089,
		-0.817599, -0.560357, -0.132404,
		29.418394, 40.919212, 63.179790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196899, 40.531681, 63.256237>,  <29.990713, 41.311462, 63.272476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196899, 40.531681, 63.256237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855309, 40.584789, 63.055004>,  <29.650354, 40.616653, 62.934265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855309, 40.584789, 63.055004>,  <30.196899, 40.531681, 63.256237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855309, 40.584789, 63.055004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441652, -0.326200, -0.835786,
		-0.275069, -0.935931, 0.219932,
		-0.853979, 0.132766, -0.503083,
		29.599115, 40.624622, 62.904079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165291, 39.946945, 62.881676>,  <30.196899, 40.531681, 63.256237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165291, 39.946945, 62.881676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.913813, 40.202103, 62.703758>,  <29.762926, 40.355198, 62.597008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.913813, 40.202103, 62.703758>,  <30.165291, 39.946945, 62.881676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913813, 40.202103, 62.703758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378287, -0.248868, -0.891607,
		-0.679442, -0.728807, -0.084844,
		-0.628695, 0.637891, -0.444790,
		29.725204, 40.393471, 62.570320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793858, 39.542580, 62.264442>,  <30.165291, 39.946945, 62.881676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793858, 39.542580, 62.264442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.793285, 39.939243, 62.212894>,  <29.792942, 40.177242, 62.181965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.793285, 39.939243, 62.212894>,  <29.793858, 39.542580, 62.264442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793285, 39.939243, 62.212894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394261, -0.117870, -0.911408,
		-0.918997, -0.052113, -0.390805,
		-0.001432, 0.991661, -0.128869,
		29.792856, 40.236740, 62.174232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728422, 39.530964, 61.557556>,  <29.793858, 39.542580, 62.264442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728422, 39.530964, 61.557556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795424, 39.919300, 61.626163>,  <29.835625, 40.152302, 61.667328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795424, 39.919300, 61.626163>,  <29.728422, 39.530964, 61.557556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795424, 39.919300, 61.626163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308477, 0.113631, -0.944420,
		-0.936368, 0.211102, -0.280447,
		0.167502, 0.970837, 0.171520,
		29.845675, 40.210552, 61.677620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579042, 39.859692, 60.914345>,  <29.728422, 39.530964, 61.557556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579042, 39.859692, 60.914345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.803898, 40.135082, 61.097649>,  <29.938810, 40.300316, 61.207630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.803898, 40.135082, 61.097649>,  <29.579042, 39.859692, 60.914345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803898, 40.135082, 61.097649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196493, 0.427049, -0.882621,
		-0.803364, 0.586198, 0.104779,
		0.562136, 0.688477, 0.458259,
		29.972538, 40.341625, 61.235126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293150, 40.460468, 60.749146>,  <29.579042, 39.859692, 60.914345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293150, 40.460468, 60.749146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.672831, 40.532875, 60.852097>,  <29.900639, 40.576321, 60.913868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.672831, 40.532875, 60.852097>,  <29.293150, 40.460468, 60.749146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672831, 40.532875, 60.852097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208587, 0.250448, -0.945392,
		-0.235595, 0.951056, 0.199968,
		0.949203, 0.181019, 0.257382,
		29.957592, 40.587181, 60.929310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513947, 40.972973, 60.263233>,  <29.293150, 40.460468, 60.749146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513947, 40.972973, 60.263233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867878, 40.860134, 60.411556>,  <30.080236, 40.792431, 60.500549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867878, 40.860134, 60.411556>,  <29.513947, 40.972973, 60.263233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867878, 40.860134, 60.411556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441609, 0.254078, -0.860480,
		0.148521, 0.925131, 0.349391,
		0.884829, -0.282093, 0.370811,
		30.133327, 40.775505, 60.522800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960018, 41.641624, 60.059689>,  <29.513947, 40.972973, 60.263233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960018, 41.641624, 60.059689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170736, 41.307178, 60.120872>,  <30.297167, 41.106510, 60.157581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170736, 41.307178, 60.120872>,  <29.960018, 41.641624, 60.059689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170736, 41.307178, 60.120872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502798, 0.161441, -0.849194,
		0.685330, 0.524260, 0.505444,
		0.526798, -0.836115, 0.152957,
		30.328775, 41.056343, 60.166759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714911, 41.784119, 59.846230>,  <29.960018, 41.641624, 60.059689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714911, 41.784119, 59.846230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673767, 41.386623, 59.828735>,  <30.649080, 41.148129, 59.818237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673767, 41.386623, 59.828735>,  <30.714911, 41.784119, 59.846230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673767, 41.386623, 59.828735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547702, -0.019880, -0.836437,
		0.830327, -0.109990, 0.546315,
		-0.102860, -0.993734, -0.043735,
		30.642910, 41.088505, 59.815617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429995, 41.504066, 59.585163>,  <30.714911, 41.784119, 59.846230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429995, 41.504066, 59.585163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.141748, 41.243572, 59.489994>,  <30.968800, 41.087276, 59.432892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.141748, 41.243572, 59.489994>,  <31.429995, 41.504066, 59.585163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141748, 41.243572, 59.489994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420443, -0.137584, -0.896827,
		0.551307, -0.746303, 0.372951,
		-0.720617, -0.651231, -0.237927,
		30.925564, 41.048203, 59.418617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881628, 41.060822, 59.207283>,  <31.429995, 41.504066, 59.585163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881628, 41.060822, 59.207283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.494249, 41.013943, 59.119301>,  <31.261822, 40.985817, 59.066513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.494249, 41.013943, 59.119301>,  <31.881628, 41.060822, 59.207283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494249, 41.013943, 59.119301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202347, 0.145497, -0.968445,
		0.145497, -0.982393, -0.117193,
		0.968445, 0.117193, 0.219954,
		31.203716, 40.978786, 59.053314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697664, 40.463055, 58.844440>,  <31.881628, 41.060822, 59.207283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697664, 40.463055, 58.844440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476320, 40.779644, 58.740620>,  <31.343513, 40.969597, 58.678326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476320, 40.779644, 58.740620>,  <31.697664, 40.463055, 58.844440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476320, 40.779644, 58.740620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319496, -0.086092, -0.943669,
		-0.769232, -0.605114, -0.205232,
		-0.553358, 0.791470, -0.259556,
		31.310312, 41.017086, 58.662754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238062, 40.304920, 58.267300>,  <31.697664, 40.463055, 58.844440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238062, 40.304920, 58.267300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299868, 40.700115, 58.265778>,  <31.336950, 40.937233, 58.264862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299868, 40.700115, 58.265778>,  <31.238062, 40.304920, 58.267300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299868, 40.700115, 58.265778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249821, -0.042800, -0.967346,
		-0.955884, 0.148517, -0.253432,
		0.154514, 0.987983, -0.003810,
		31.346222, 40.996510, 58.264633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953438, 40.565544, 57.664097>,  <31.238062, 40.304920, 58.267300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953438, 40.565544, 57.664097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254965, 40.812622, 57.753735>,  <31.435881, 40.960869, 57.807518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254965, 40.812622, 57.753735>,  <30.953438, 40.565544, 57.664097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254965, 40.812622, 57.753735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482766, -0.289276, -0.826593,
		-0.445754, 0.731285, -0.516261,
		0.753817, 0.617691, 0.224093,
		31.481110, 40.997929, 57.820961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138424, 40.933182, 57.049709>,  <30.953438, 40.565544, 57.664097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138424, 40.933182, 57.049709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460802, 40.981388, 57.281548>,  <31.654228, 41.010311, 57.420650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460802, 40.981388, 57.281548>,  <31.138424, 40.933182, 57.049709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460802, 40.981388, 57.281548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591584, -0.200248, -0.780980,
		0.021942, 0.972305, -0.232683,
		0.805945, 0.120515, 0.579594,
		31.702585, 41.017544, 57.455425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619665, 41.482227, 56.734715>,  <31.138424, 40.933182, 57.049709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619665, 41.482227, 56.734715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842203, 41.228596, 56.949535>,  <31.975727, 41.076416, 57.078426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842203, 41.228596, 56.949535>,  <31.619665, 41.482227, 56.734715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842203, 41.228596, 56.949535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634311, -0.093433, -0.767411,
		0.536776, 0.767605, 0.350220,
		0.556347, -0.634076, 0.537053,
		32.009106, 41.038372, 57.110653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191200, 41.399353, 56.309593>,  <31.619665, 41.482227, 56.734715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191200, 41.399353, 56.309593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258087, 41.143803, 56.609959>,  <32.298218, 40.990471, 56.790176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258087, 41.143803, 56.609959>,  <32.191200, 41.399353, 56.309593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258087, 41.143803, 56.609959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633762, -0.513778, -0.578254,
		0.755237, 0.572596, 0.318984,
		0.167218, -0.638879, 0.750914,
		32.308254, 40.952137, 56.835232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887520, 41.332069, 56.311832>,  <32.191200, 41.399353, 56.309593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887520, 41.332069, 56.311832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734741, 41.002960, 56.480198>,  <32.643074, 40.805496, 56.581219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734741, 41.002960, 56.480198>,  <32.887520, 41.332069, 56.311832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734741, 41.002960, 56.480198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464865, -0.564671, -0.681944,
		0.798759, -0.064800, 0.598152,
		-0.381949, -0.822769, 0.420913,
		32.620155, 40.756130, 56.606472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404602, 40.930943, 56.372395>,  <32.887520, 41.332069, 56.311832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404602, 40.930943, 56.372395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104603, 40.666378, 56.374954>,  <32.924603, 40.507641, 56.376492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104603, 40.666378, 56.374954>,  <33.404602, 40.930943, 56.372395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104603, 40.666378, 56.374954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505912, -0.579853, -0.638610,
		0.426095, -0.475717, 0.769504,
		-0.749997, -0.661410, 0.006401,
		32.879604, 40.467957, 56.376873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694725, 40.269958, 56.423923>,  <33.404602, 40.930943, 56.372395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694725, 40.269958, 56.423923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.335846, 40.194477, 56.264206>,  <33.120518, 40.149189, 56.168377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.335846, 40.194477, 56.264206>,  <33.694725, 40.269958, 56.423923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335846, 40.194477, 56.264206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371594, -0.811152, -0.451609,
		-0.238663, -0.553554, 0.797883,
		-0.897194, -0.188706, -0.399290,
		33.066689, 40.137867, 56.144421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640839, 39.489140, 56.515694>,  <33.694725, 40.269958, 56.423923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640839, 39.489140, 56.515694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.387516, 39.608406, 56.230030>,  <33.235523, 39.679966, 56.058632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.387516, 39.608406, 56.230030>,  <33.640839, 39.489140, 56.515694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387516, 39.608406, 56.230030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273572, -0.776972, -0.566986,
		-0.723934, -0.554450, 0.410493,
		-0.633307, 0.298161, -0.714158,
		33.197525, 39.697853, 56.015781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470028, 38.916622, 56.208271>,  <33.640839, 39.489140, 56.515694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470028, 38.916622, 56.208271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.360390, 39.190838, 55.938484>,  <33.294605, 39.355370, 55.776611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.360390, 39.190838, 55.938484>,  <33.470028, 38.916622, 56.208271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360390, 39.190838, 55.938484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377064, -0.568560, -0.731138,
		-0.884700, -0.454719, -0.102653,
		-0.274097, 0.685544, -0.674463,
		33.278160, 39.396500, 55.736145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239983, 38.496239, 55.605099>,  <33.470028, 38.916622, 56.208271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239983, 38.496239, 55.605099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.278252, 38.863708, 55.451794>,  <33.301212, 39.084190, 55.359810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.278252, 38.863708, 55.451794>,  <33.239983, 38.496239, 55.605099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278252, 38.863708, 55.451794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389020, -0.388917, -0.835109,
		-0.916248, -0.069199, -0.394590,
		0.095674, 0.918670, -0.383264,
		33.306953, 39.139309, 55.336815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948925, 38.413300, 54.935150>,  <33.239983, 38.496239, 55.605099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948925, 38.413300, 54.935150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193710, 38.729515, 54.925758>,  <33.340584, 38.919243, 54.920124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193710, 38.729515, 54.925758>,  <32.948925, 38.413300, 54.935150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193710, 38.729515, 54.925758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394461, -0.330823, -0.857296,
		-0.685491, 0.515374, -0.514288,
		0.611967, 0.790535, -0.023481,
		33.377300, 38.966675, 54.918713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990036, 38.545544, 54.169964>,  <32.948925, 38.413300, 54.935150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990036, 38.545544, 54.169964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.288841, 38.752583, 54.336849>,  <33.468124, 38.876804, 54.436981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.288841, 38.752583, 54.336849>,  <32.990036, 38.545544, 54.169964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288841, 38.752583, 54.336849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493086, -0.010435, -0.869918,
		-0.445910, 0.855563, -0.263013,
		0.747015, 0.517593, 0.417213,
		33.512947, 38.907860, 54.462013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169846, 39.067646, 53.645393>,  <32.990036, 38.545544, 54.169964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169846, 39.067646, 53.645393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486435, 38.997280, 53.879532>,  <33.676388, 38.955059, 54.020016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486435, 38.997280, 53.879532>,  <33.169846, 39.067646, 53.645393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486435, 38.997280, 53.879532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597443, 0.020574, -0.801647,
		0.128980, 0.984190, 0.121384,
		0.791471, -0.175917, 0.585344,
		33.723877, 38.944504, 54.055134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680489, 39.464745, 53.454548>,  <33.169846, 39.067646, 53.645393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680489, 39.464745, 53.454548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902672, 39.208820, 53.667000>,  <34.035984, 39.055264, 53.794472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902672, 39.208820, 53.667000>,  <33.680489, 39.464745, 53.454548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902672, 39.208820, 53.667000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668369, -0.036484, -0.742935,
		0.494717, 0.767665, 0.407365,
		0.555463, -0.639813, 0.531132,
		34.069309, 39.016876, 53.826340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434486, 39.669880, 53.472824>,  <33.680489, 39.464745, 53.454548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434486, 39.669880, 53.472824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.421238, 39.272297, 53.514690>,  <34.413288, 39.033749, 53.539810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.421238, 39.272297, 53.514690>,  <34.434486, 39.669880, 53.472824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421238, 39.272297, 53.514690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677885, -0.099292, -0.728432,
		0.734422, 0.046823, 0.677076,
		-0.033121, -0.993956, 0.104663,
		34.411301, 38.974110, 53.546089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146774, 39.486065, 53.329838>,  <34.434486, 39.669880, 53.472824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146774, 39.486065, 53.329838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994774, 39.116123, 53.336021>,  <34.903572, 38.894157, 53.339729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994774, 39.116123, 53.336021>,  <35.146774, 39.486065, 53.329838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994774, 39.116123, 53.336021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787488, -0.332236, -0.519116,
		0.485243, -0.185093, 0.854564,
		-0.380002, -0.924856, 0.015456,
		34.880772, 38.838665, 53.340660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751240, 39.049805, 53.419613>,  <35.146774, 39.486065, 53.329838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751240, 39.049805, 53.419613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447811, 38.853371, 53.248314>,  <35.265755, 38.735512, 53.145535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447811, 38.853371, 53.248314>,  <35.751240, 39.049805, 53.419613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447811, 38.853371, 53.248314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588151, -0.233198, -0.774401,
		0.280431, -0.839317, 0.465731,
		-0.758576, -0.491087, -0.428249,
		35.220238, 38.706043, 53.119839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010094, 38.404652, 53.164040>,  <35.751240, 39.049805, 53.419613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010094, 38.404652, 53.164040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668179, 38.455372, 52.962738>,  <35.463032, 38.485806, 52.841957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668179, 38.455372, 52.962738>,  <36.010094, 38.404652, 53.164040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668179, 38.455372, 52.962738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422567, -0.392907, -0.816738,
		-0.301296, -0.910794, 0.282268,
		-0.854785, 0.126803, -0.503253,
		35.411743, 38.493412, 52.811764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033035, 37.825924, 52.813347>,  <36.010094, 38.404652, 53.164040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033035, 37.825924, 52.813347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769680, 38.071430, 52.639072>,  <35.611668, 38.218735, 52.534508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769680, 38.071430, 52.639072>,  <36.033035, 37.825924, 52.813347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769680, 38.071430, 52.639072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458635, -0.131840, -0.878790,
		-0.596809, -0.778405, -0.194691,
		-0.658386, 0.613762, -0.435688,
		35.572163, 38.255558, 52.508366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842781, 37.498291, 52.243618>,  <36.033035, 37.825924, 52.813347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842781, 37.498291, 52.243618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753429, 37.878857, 52.158840>,  <35.699818, 38.107197, 52.107975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753429, 37.878857, 52.158840>,  <35.842781, 37.498291, 52.243618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753429, 37.878857, 52.158840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340434, -0.127595, -0.931571,
		-0.913350, -0.280242, -0.295392,
		-0.223375, 0.951412, -0.211943,
		35.686417, 38.164280, 52.095257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396729, 37.524139, 51.748043>,  <35.842781, 37.498291, 52.243618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396729, 37.524139, 51.748043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620480, 37.855629, 51.740929>,  <35.754730, 38.054523, 51.736660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620480, 37.855629, 51.740929>,  <35.396729, 37.524139, 51.748043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620480, 37.855629, 51.740929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373096, -0.270878, -0.887370,
		-0.740201, 0.489739, -0.460716,
		0.559377, 0.828723, -0.017784,
		35.788292, 38.104244, 51.735592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225464, 37.771385, 51.096333>,  <35.396729, 37.524139, 51.748043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225464, 37.771385, 51.096333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.561100, 37.948788, 51.222336>,  <35.762482, 38.055229, 51.297935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.561100, 37.948788, 51.222336>,  <35.225464, 37.771385, 51.096333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561100, 37.948788, 51.222336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344751, 0.014385, -0.938584,
		-0.420795, 0.896158, -0.140827,
		0.839094, 0.443502, 0.315004,
		35.812828, 38.081837, 51.316837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354454, 38.267078, 50.491928>,  <35.225464, 37.771385, 51.096333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354454, 38.267078, 50.491928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705898, 38.246086, 50.681789>,  <35.916763, 38.233490, 50.795704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705898, 38.246086, 50.681789>,  <35.354454, 38.267078, 50.491928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705898, 38.246086, 50.681789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477508, 0.084356, -0.874569,
		0.005859, 0.995053, 0.099176,
		0.878608, -0.052481, 0.474652,
		35.969482, 38.230343, 50.824184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753193, 38.746346, 50.197212>,  <35.354454, 38.267078, 50.491928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753193, 38.746346, 50.197212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.012398, 38.494293, 50.368336>,  <36.167919, 38.343063, 50.471008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.012398, 38.494293, 50.368336>,  <35.753193, 38.746346, 50.197212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012398, 38.494293, 50.368336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537460, -0.019658, -0.843060,
		0.539647, 0.776241, 0.325930,
		0.648011, -0.630129, 0.427807,
		36.206802, 38.305256, 50.496677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125816, 38.930401, 50.489601>,  <35.753193, 38.746346, 50.197212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125816, 38.930401, 50.489601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948685, 38.926842, 50.130978>,  <34.842407, 38.924706, 49.915802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948685, 38.926842, 50.130978>,  <35.125816, 38.930401, 50.489601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948685, 38.926842, 50.130978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636829, 0.707019, 0.307527,
		0.631151, 0.707139, -0.318753,
		-0.442829, -0.008895, -0.896562,
		34.815838, 38.924171, 49.862007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881367, 39.640953, 50.359684>,  <35.125816, 38.930401, 50.489601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881367, 39.640953, 50.359684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.683369, 39.432240, 50.081772>,  <34.564571, 39.307011, 49.915024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.683369, 39.432240, 50.081772>,  <34.881367, 39.640953, 50.359684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683369, 39.432240, 50.081772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853300, 0.442738, 0.275430,
		0.163889, 0.729191, -0.664395,
		-0.494994, -0.521788, -0.694779,
		34.534870, 39.275703, 49.873337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458462, 40.103024, 49.935658>,  <34.881367, 39.640953, 50.359684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458462, 40.103024, 49.935658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.299637, 39.741318, 49.872856>,  <34.204342, 39.524296, 49.835175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.299637, 39.741318, 49.872856>,  <34.458462, 40.103024, 49.935658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299637, 39.741318, 49.872856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913213, 0.372199, 0.165862,
		-0.091547, 0.209234, -0.973571,
		-0.397066, -0.904262, -0.157001,
		34.180515, 39.470039, 49.825756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839092, 40.284740, 49.468365>,  <34.458462, 40.103024, 49.935658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839092, 40.284740, 49.468365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816757, 39.937325, 49.665352>,  <33.803356, 39.728874, 49.783546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816757, 39.937325, 49.665352>,  <33.839092, 40.284740, 49.468365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816757, 39.937325, 49.665352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962533, 0.177913, 0.204638,
		-0.265352, -0.462594, -0.845929,
		-0.055837, -0.868535, 0.492472,
		33.800007, 39.676765, 49.813095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121704, 40.157627, 49.326714>,  <33.839092, 40.284740, 49.468365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121704, 40.157627, 49.326714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252010, 39.909565, 49.612167>,  <33.330196, 39.760727, 49.783440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252010, 39.909565, 49.612167>,  <33.121704, 40.157627, 49.326714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252010, 39.909565, 49.612167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832056, 0.170373, 0.527879,
		-0.448952, -0.765753, -0.460504,
		0.325767, -0.620157, 0.713639,
		33.349739, 39.723518, 49.826260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527431, 39.862476, 49.560089>,  <33.121704, 40.157627, 49.326714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527431, 39.862476, 49.560089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.786911, 39.792690, 49.856400>,  <32.942596, 39.750816, 50.034187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.786911, 39.792690, 49.856400>,  <32.527431, 39.862476, 49.560089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786911, 39.792690, 49.856400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724091, 0.158143, 0.671329,
		-0.234276, -0.971880, -0.023745,
		0.648696, -0.174470, 0.740779,
		32.981522, 39.740349, 50.078632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105225, 39.347374, 50.026146>,  <32.527431, 39.862476, 49.560089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105225, 39.347374, 50.026146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.410301, 39.511013, 50.226524>,  <32.593346, 39.609196, 50.346752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.410301, 39.511013, 50.226524>,  <32.105225, 39.347374, 50.026146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410301, 39.511013, 50.226524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604661, 0.176113, 0.776769,
		0.229548, -0.895336, 0.381683,
		0.762688, 0.409094, 0.500948,
		32.639107, 39.633739, 50.376808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076191, 39.089638, 50.645401>,  <32.105225, 39.347374, 50.026146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076191, 39.089638, 50.645401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276127, 39.430138, 50.709324>,  <32.396088, 39.634438, 50.747677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276127, 39.430138, 50.709324>,  <32.076191, 39.089638, 50.645401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276127, 39.430138, 50.709324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504773, 0.136370, 0.852413,
		0.703822, -0.506735, 0.497850,
		0.499839, 0.851248, 0.159806,
		32.426079, 39.685513, 50.757267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320816, 39.060318, 51.391556>,  <32.076191, 39.089638, 50.645401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320816, 39.060318, 51.391556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320393, 39.445957, 51.285343>,  <32.320137, 39.677341, 51.221615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320393, 39.445957, 51.285343>,  <32.320816, 39.060318, 51.391556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320393, 39.445957, 51.285343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534370, 0.223898, 0.815058,
		0.845250, 0.142758, 0.514949,
		-0.001060, 0.964101, -0.265535,
		32.320076, 39.735188, 51.205681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409531, 39.402931, 51.974438>,  <32.320816, 39.060318, 51.391556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409531, 39.402931, 51.974438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256618, 39.681984, 51.732059>,  <32.164871, 39.849415, 51.586632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256618, 39.681984, 51.732059>,  <32.409531, 39.402931, 51.974438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256618, 39.681984, 51.732059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588578, 0.321686, 0.741683,
		0.712346, 0.640180, 0.287635,
		-0.382282, 0.697630, -0.605948,
		32.141933, 39.891273, 51.550274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518566, 39.984737, 52.383572>,  <32.409531, 39.402931, 51.974438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518566, 39.984737, 52.383572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.233471, 40.054520, 52.111813>,  <32.062416, 40.096390, 51.948757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.233471, 40.054520, 52.111813>,  <32.518566, 39.984737, 52.383572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233471, 40.054520, 52.111813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597225, 0.357051, 0.718218,
		0.367876, 0.917649, -0.150292,
		-0.712734, 0.174457, -0.679393,
		32.019650, 40.106857, 51.907993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294369, 40.722130, 52.463917>,  <32.518566, 39.984737, 52.383572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294369, 40.722130, 52.463917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987043, 40.556320, 52.268829>,  <31.802649, 40.456837, 52.151775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987043, 40.556320, 52.268829>,  <32.294369, 40.722130, 52.463917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987043, 40.556320, 52.268829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638184, 0.437561, 0.633452,
		-0.049173, 0.797942, -0.600724,
		-0.768312, -0.414521, -0.487718,
		31.756550, 40.431965, 52.122513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734526, 41.223801, 52.470703>,  <32.294369, 40.722130, 52.463917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734526, 41.223801, 52.470703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521992, 40.894974, 52.388836>,  <31.394472, 40.697678, 52.339714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521992, 40.894974, 52.388836>,  <31.734526, 41.223801, 52.470703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521992, 40.894974, 52.388836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803321, 0.412202, 0.429844,
		-0.268996, 0.392805, -0.879401,
		-0.531335, -0.822067, -0.204668,
		31.362591, 40.648354, 52.327435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083595, 41.394520, 52.154392>,  <31.734526, 41.223801, 52.470703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083595, 41.394520, 52.154392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.044386, 41.035503, 52.326347>,  <31.020861, 40.820091, 52.429520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.044386, 41.035503, 52.326347>,  <31.083595, 41.394520, 52.154392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044386, 41.035503, 52.326347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744453, 0.352803, 0.566850,
		-0.660439, -0.264468, -0.702763,
		-0.098024, -0.897545, 0.429889,
		31.014978, 40.766239, 52.455315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416401, 41.238636, 52.165627>,  <31.083595, 41.394520, 52.154392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416401, 41.238636, 52.165627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550949, 41.000820, 52.457756>,  <30.631678, 40.858131, 52.633034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550949, 41.000820, 52.457756>,  <30.416401, 41.238636, 52.165627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550949, 41.000820, 52.457756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675057, 0.388504, 0.627186,
		-0.656623, -0.703978, -0.270668,
		0.336370, -0.594542, 0.730326,
		30.651859, 40.822456, 52.676853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832310, 41.335197, 52.677235>,  <30.416401, 41.238636, 52.165627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832310, 41.335197, 52.677235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.089542, 41.115528, 52.890720>,  <30.243883, 40.983727, 53.018814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.089542, 41.115528, 52.890720>,  <29.832310, 41.335197, 52.677235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089542, 41.115528, 52.890720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495438, 0.233081, 0.836788,
		-0.583941, -0.802548, -0.122190,
		0.643082, -0.549172, 0.533718,
		30.282467, 40.950775, 53.050835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431499, 40.763298, 53.014545>,  <29.832310, 41.335197, 52.677235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431499, 40.763298, 53.014545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.763458, 40.827595, 53.228249>,  <29.962633, 40.866173, 53.356472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.763458, 40.827595, 53.228249>,  <29.431499, 40.763298, 53.014545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763458, 40.827595, 53.228249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551098, 0.086947, 0.829898,
		0.086947, -0.983159, 0.160742,
		-0.829898, -0.160742, -0.534258,
		30.012428, 40.875816, 53.388527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258303, 40.386257, 53.604820>,  <29.431499, 40.763298, 53.014545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258303, 40.386257, 53.604820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.558641, 40.631233, 53.703732>,  <29.738846, 40.778217, 53.763077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.558641, 40.631233, 53.703732>,  <29.258303, 40.386257, 53.604820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558641, 40.631233, 53.703732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387261, 0.104946, 0.915978,
		0.535029, -0.783521, 0.315972,
		0.750848, 0.612438, 0.247278,
		29.783895, 40.814964, 53.777916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462257, 40.160088, 54.179859>,  <29.258303, 40.386257, 53.604820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462257, 40.160088, 54.179859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578819, 40.542702, 54.184254>,  <29.648756, 40.772270, 54.186890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578819, 40.542702, 54.184254>,  <29.462257, 40.160088, 54.179859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578819, 40.542702, 54.184254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364479, 0.100406, 0.925783,
		0.884443, -0.273780, 0.377897,
		0.291404, 0.956537, 0.010984,
		29.666241, 40.829662, 54.187550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929230, 40.236858, 54.610363>,  <29.462257, 40.160088, 54.179859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929230, 40.236858, 54.610363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814825, 40.619358, 54.585754>,  <29.746183, 40.848858, 54.570988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814825, 40.619358, 54.585754>,  <29.929230, 40.236858, 54.610363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814825, 40.619358, 54.585754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104091, 0.032822, 0.994026,
		0.952556, 0.290706, 0.090149,
		-0.286011, 0.956249, -0.061525,
		29.729021, 40.906235, 54.567295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513121, 40.716854, 54.987080>,  <29.929230, 40.236858, 54.610363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513121, 40.716854, 54.987080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.145103, 40.873550, 54.990299>,  <29.924294, 40.967567, 54.992229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.145103, 40.873550, 54.990299>,  <30.513121, 40.716854, 54.987080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145103, 40.873550, 54.990299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077060, 0.160775, 0.983978,
		0.384168, 0.905921, -0.178107,
		-0.920042, 0.391738, 0.008046,
		29.869091, 40.991074, 54.992714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629150, 41.274017, 55.379204>,  <30.513121, 40.716854, 54.987080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629150, 41.274017, 55.379204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232925, 41.219334, 55.375294>,  <29.995190, 41.186523, 55.372948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232925, 41.219334, 55.375294>,  <30.629150, 41.274017, 55.379204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232925, 41.219334, 55.375294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023221, 0.097133, 0.995001,
		-0.135078, 0.985838, -0.099390,
		-0.990563, -0.136711, -0.009772,
		29.935757, 41.178322, 55.372364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455223, 41.372189, 56.065041>,  <30.629150, 41.274017, 55.379204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455223, 41.372189, 56.065041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.096548, 41.256359, 55.931114>,  <29.881344, 41.186863, 55.850758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.096548, 41.256359, 55.931114>,  <30.455223, 41.372189, 56.065041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096548, 41.256359, 55.931114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297241, -0.166615, 0.940153,
		-0.328025, 0.942544, 0.063329,
		-0.896687, -0.289570, -0.334817,
		29.827541, 41.169487, 55.830669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941549, 41.655968, 56.595009>,  <30.455223, 41.372189, 56.065041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941549, 41.655968, 56.595009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754328, 41.350540, 56.417072>,  <29.641994, 41.167282, 56.310310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754328, 41.350540, 56.417072>,  <29.941549, 41.655968, 56.595009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754328, 41.350540, 56.417072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335637, -0.312062, 0.888800,
		-0.817481, 0.565310, -0.110222,
		-0.468052, -0.763572, -0.444843,
		29.613913, 41.121468, 56.283619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256260, 41.694080, 56.627464>,  <29.941549, 41.655968, 56.595009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256260, 41.694080, 56.627464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.320808, 41.301098, 56.590054>,  <29.359537, 41.065308, 56.567608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.320808, 41.301098, 56.590054>,  <29.256260, 41.694080, 56.627464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320808, 41.301098, 56.590054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429133, -0.155196, 0.889808,
		-0.888709, -0.103454, -0.446647,
		0.161372, -0.982452, -0.093529,
		29.369221, 41.006363, 56.561996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599337, 41.357655, 56.896954>,  <29.256260, 41.694080, 56.627464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599337, 41.357655, 56.896954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879702, 41.074272, 56.863949>,  <29.047920, 40.904243, 56.844147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879702, 41.074272, 56.863949>,  <28.599337, 41.357655, 56.896954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879702, 41.074272, 56.863949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314452, -0.410774, 0.855795,
		-0.640191, -0.573889, -0.510692,
		0.700910, -0.708461, -0.082513,
		29.089975, 40.861732, 56.839195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250156, 40.664616, 56.891174>,  <28.599337, 41.357655, 56.896954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250156, 40.664616, 56.891174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.618269, 40.584671, 57.025715>,  <28.839136, 40.536705, 57.106441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.618269, 40.584671, 57.025715>,  <28.250156, 40.664616, 56.891174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618269, 40.584671, 57.025715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359420, -0.092192, 0.928611,
		-0.154583, -0.975478, -0.156677,
		0.920283, -0.199860, 0.336355,
		28.894354, 40.524712, 57.126621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258062, 40.051693, 57.326950>,  <28.250156, 40.664616, 56.891174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258062, 40.051693, 57.326950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.567596, 40.276291, 57.444187>,  <28.753317, 40.411049, 57.514530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.567596, 40.276291, 57.444187>,  <28.258062, 40.051693, 57.326950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567596, 40.276291, 57.444187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279845, -0.112035, 0.953486,
		0.568213, -0.819862, 0.070434,
		0.773835, 0.561494, 0.293094,
		28.799747, 40.444740, 57.532116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611774, 39.596905, 57.929325>,  <28.258062, 40.051693, 57.326950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611774, 39.596905, 57.929325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.729828, 39.976276, 57.975597>,  <28.800659, 40.203899, 58.003361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.729828, 39.976276, 57.975597>,  <28.611774, 39.596905, 57.929325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729828, 39.976276, 57.975597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251271, -0.039772, 0.967099,
		0.921824, -0.314492, 0.226574,
		0.295134, 0.948426, 0.115685,
		28.818369, 40.260803, 58.010303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966097, 39.602409, 58.555870>,  <28.611774, 39.596905, 57.929325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966097, 39.602409, 58.555870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851627, 39.979385, 58.486691>,  <28.782946, 40.205570, 58.445183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851627, 39.979385, 58.486691>,  <28.966097, 39.602409, 58.555870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851627, 39.979385, 58.486691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266320, 0.095149, 0.959177,
		0.920422, 0.320552, 0.223761,
		-0.286175, 0.942440, -0.172947,
		28.765776, 40.262119, 58.434807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223759, 40.001064, 59.109879>,  <28.966097, 39.602409, 58.555870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223759, 40.001064, 59.109879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.941181, 40.217827, 58.927769>,  <28.771635, 40.347885, 58.818504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.941181, 40.217827, 58.927769>,  <29.223759, 40.001064, 59.109879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941181, 40.217827, 58.927769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465003, 0.129578, 0.875775,
		0.533585, 0.830387, 0.160451,
		-0.706442, 0.541910, -0.455273,
		28.729248, 40.380402, 58.791187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204327, 40.591057, 59.568207>,  <29.223759, 40.001064, 59.109879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204327, 40.591057, 59.568207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.864117, 40.623123, 59.360291>,  <28.659990, 40.642365, 59.235538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.864117, 40.623123, 59.360291>,  <29.204327, 40.591057, 59.568207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864117, 40.623123, 59.360291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519478, 0.026374, 0.854077,
		0.082181, 0.996432, 0.019215,
		-0.850523, 0.080170, -0.519792,
		28.608959, 40.647175, 59.204353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877922, 41.292313, 59.644936>,  <29.204327, 40.591057, 59.568207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877922, 41.292313, 59.644936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.584599, 41.063698, 59.497635>,  <28.408606, 40.926529, 59.409256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.584599, 41.063698, 59.497635>,  <28.877922, 41.292313, 59.644936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584599, 41.063698, 59.497635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598090, 0.284676, 0.749165,
		-0.323342, 0.769615, -0.550584,
		-0.733307, -0.571536, -0.368251,
		28.364607, 40.892239, 59.387161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249290, 41.668446, 59.536377>,  <28.877922, 41.292313, 59.644936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249290, 41.668446, 59.536377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.123287, 41.295567, 59.607689>,  <28.047686, 41.071838, 59.650478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.123287, 41.295567, 59.607689>,  <28.249290, 41.668446, 59.536377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123287, 41.295567, 59.607689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788979, 0.361614, 0.496737,
		-0.527525, 0.015815, -0.849393,
		-0.315008, -0.932194, 0.178283,
		28.028786, 41.015907, 59.661175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589773, 41.665325, 59.610523>,  <28.249290, 41.668446, 59.536377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589773, 41.665325, 59.610523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.629538, 41.285202, 59.728527>,  <27.653397, 41.057129, 59.799328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.629538, 41.285202, 59.728527>,  <27.589773, 41.665325, 59.610523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629538, 41.285202, 59.728527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819549, 0.089946, 0.565905,
		-0.564320, -0.298033, -0.769883,
		0.099411, -0.950309, 0.295011,
		27.659361, 41.000111, 59.817032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891132, 41.368088, 59.516396>,  <27.589773, 41.665325, 59.610523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891132, 41.368088, 59.516396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.101503, 41.153820, 59.780655>,  <27.227726, 41.025261, 59.939213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.101503, 41.153820, 59.780655>,  <26.891132, 41.368088, 59.516396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101503, 41.153820, 59.780655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790944, -0.022411, 0.611478,
		-0.312746, -0.844129, -0.435473,
		0.525925, -0.535672, 0.660650,
		27.259281, 40.993118, 59.978851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414860, 40.958691, 59.788448>,  <26.891132, 41.368088, 59.516396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414860, 40.958691, 59.788448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.701719, 40.917641, 60.064178>,  <26.873835, 40.893013, 60.229614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.701719, 40.917641, 60.064178>,  <26.414860, 40.958691, 59.788448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701719, 40.917641, 60.064178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690181, 0.032634, 0.722900,
		-0.096683, -0.994185, -0.047427,
		0.717148, -0.102625, 0.689323,
		26.916864, 40.886852, 60.270977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208126, 40.259735, 60.228382>,  <26.414860, 40.958691, 59.788448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208126, 40.259735, 60.228382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.431887, 40.525421, 60.426731>,  <26.566143, 40.684834, 60.545742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.431887, 40.525421, 60.426731>,  <26.208126, 40.259735, 60.228382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431887, 40.525421, 60.426731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549227, -0.151039, 0.821910,
		0.620821, -0.732124, 0.280313,
		0.559402, 0.664215, 0.495871,
		26.599707, 40.724686, 60.575493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636606, 39.717106, 59.898335>,  <26.208126, 40.259735, 60.228382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636606, 39.717106, 59.898335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.463924, 39.368340, 59.990761>,  <25.360315, 39.159081, 60.046215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.463924, 39.368340, 59.990761>,  <25.636606, 39.717106, 59.898335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463924, 39.368340, 59.990761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499417, -0.444365, -0.743722,
		0.751142, -0.205671, 0.627285,
		-0.431705, -0.871917, 0.231066,
		25.334414, 39.106766, 60.060081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195892, 39.255272, 60.010868>,  <25.636606, 39.717106, 59.898335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.195892, 39.255272, 60.010868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.867828, 39.033390, 59.954823>,  <25.670990, 38.900261, 59.921196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.867828, 39.033390, 59.954823>,  <26.195892, 39.255272, 60.010868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867828, 39.033390, 59.954823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493330, -0.561634, -0.664223,
		0.289758, -0.613893, 0.734286,
		-0.820162, -0.554709, -0.140114,
		25.621780, 38.866978, 59.912788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330643, 38.467773, 60.107216>,  <26.195892, 39.255272, 60.010868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330643, 38.467773, 60.107216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.994549, 38.463032, 59.890377>,  <25.792892, 38.460186, 59.760273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.994549, 38.463032, 59.890377>,  <26.330643, 38.467773, 60.107216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994549, 38.463032, 59.890377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434419, -0.613001, -0.659932,
		-0.324477, -0.789993, 0.520217,
		-0.840235, -0.011859, -0.542093,
		25.742477, 38.459473, 59.727749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392292, 37.791847, 59.910858>,  <26.330643, 38.467773, 60.107216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392292, 37.791847, 59.910858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.144716, 37.989933, 59.666996>,  <25.996170, 38.108784, 59.520679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.144716, 37.989933, 59.666996>,  <26.392292, 37.791847, 59.910858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144716, 37.989933, 59.666996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499507, -0.350829, -0.792093,
		-0.606140, -0.794784, -0.030221,
		-0.618940, 0.495215, -0.609652,
		25.959034, 38.138496, 59.484100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994535, 37.235817, 59.405987>,  <26.392292, 37.791847, 59.910858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994535, 37.235817, 59.405987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.015203, 37.606209, 59.256378>,  <26.027603, 37.828445, 59.166615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.015203, 37.606209, 59.256378>,  <25.994535, 37.235817, 59.405987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015203, 37.606209, 59.256378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495547, -0.348930, -0.795412,
		-0.867043, -0.144245, -0.476896,
		0.051669, 0.925981, -0.374018,
		26.030704, 37.884003, 59.144173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760878, 37.195202, 58.662464>,  <25.994535, 37.235817, 59.405987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760878, 37.195202, 58.662464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.963549, 37.538528, 58.694889>,  <26.085152, 37.744526, 58.714344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.963549, 37.538528, 58.694889>,  <25.760878, 37.195202, 58.662464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963549, 37.538528, 58.694889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378923, -0.137253, -0.915193,
		-0.774399, 0.494424, -0.394779,
		0.506678, 0.858316, 0.081060,
		26.115553, 37.796024, 58.719208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620413, 37.502426, 58.073559>,  <25.760878, 37.195202, 58.662464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620413, 37.502426, 58.073559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.930597, 37.725533, 58.191921>,  <26.116707, 37.859398, 58.262939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.930597, 37.725533, 58.191921>,  <25.620413, 37.502426, 58.073559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930597, 37.725533, 58.191921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318233, 0.059503, -0.946143,
		-0.545335, 0.827862, -0.131358,
		0.775460, 0.557767, 0.295902,
		26.163235, 37.892864, 58.280693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628538, 38.074032, 57.649719>,  <25.620413, 37.502426, 58.073559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628538, 38.074032, 57.649719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.998293, 38.036633, 57.797646>,  <26.220146, 38.014194, 57.886402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.998293, 38.036633, 57.797646>,  <25.628538, 38.074032, 57.649719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998293, 38.036633, 57.797646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380068, 0.308233, -0.872090,
		-0.032452, 0.946705, 0.320463,
		0.924389, -0.093496, 0.369815,
		26.275610, 38.008583, 57.908588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982405, 38.562946, 57.255939>,  <25.628538, 38.074032, 57.649719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982405, 38.562946, 57.255939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.296829, 38.357300, 57.393223>,  <26.485483, 38.233913, 57.475594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.296829, 38.357300, 57.393223>,  <25.982405, 38.562946, 57.255939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296829, 38.357300, 57.393223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435019, 0.065622, -0.898027,
		0.439168, 0.855207, 0.275233,
		0.786060, -0.514116, 0.343213,
		26.532648, 38.203064, 57.496185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541729, 38.844440, 56.975681>,  <25.982405, 38.562946, 57.255939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541729, 38.844440, 56.975681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.691999, 38.497650, 57.106663>,  <26.782162, 38.289577, 57.185253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.691999, 38.497650, 57.106663>,  <26.541729, 38.844440, 56.975681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691999, 38.497650, 57.106663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564388, -0.066228, -0.822849,
		0.735075, 0.493934, 0.464429,
		0.375675, -0.866974, 0.327453,
		26.804703, 38.237556, 57.204899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280245, 38.879139, 56.765232>,  <26.541729, 38.844440, 56.975681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280245, 38.879139, 56.765232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.193796, 38.496975, 56.845715>,  <27.141928, 38.267677, 56.894005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.193796, 38.496975, 56.845715>,  <27.280245, 38.879139, 56.765232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193796, 38.496975, 56.845715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571444, -0.290869, -0.767363,
		0.791672, -0.050864, 0.608826,
		-0.216120, -0.955410, 0.201207,
		27.128960, 38.210354, 56.906078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911261, 38.481236, 56.941849>,  <27.280245, 38.879139, 56.765232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911261, 38.481236, 56.941849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.618952, 38.246826, 56.801823>,  <27.443567, 38.106178, 56.717808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.618952, 38.246826, 56.801823>,  <27.911261, 38.481236, 56.941849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618952, 38.246826, 56.801823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577953, -0.258277, -0.774121,
		0.363242, -0.768027, 0.527437,
		-0.730771, -0.586027, -0.350067,
		27.399721, 38.071018, 56.696804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208059, 37.720829, 57.039101>,  <27.911261, 38.481236, 56.941849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208059, 37.720829, 57.039101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.908564, 37.792023, 56.783691>,  <27.728867, 37.834740, 56.630447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.908564, 37.792023, 56.783691>,  <28.208059, 37.720829, 57.039101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908564, 37.792023, 56.783691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654701, 0.047857, -0.754371,
		-0.103710, -0.982868, -0.152361,
		-0.748739, 0.177987, -0.638522,
		27.683941, 37.845417, 56.592136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403870, 37.288700, 56.573891>,  <28.208059, 37.720829, 57.039101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403870, 37.288700, 56.573891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.130350, 37.503712, 56.376518>,  <27.966238, 37.632717, 56.258095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.130350, 37.503712, 56.376518>,  <28.403870, 37.288700, 56.573891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130350, 37.503712, 56.376518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522722, -0.110952, -0.845252,
		-0.509097, -0.835913, -0.205110,
		-0.683800, 0.537531, -0.493435,
		27.925209, 37.664970, 56.228489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207285, 36.967171, 55.874714>,  <28.403870, 37.288700, 56.573891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207285, 36.967171, 55.874714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.141314, 37.361465, 55.861271>,  <28.101730, 37.598042, 55.853207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.141314, 37.361465, 55.861271>,  <28.207285, 36.967171, 55.874714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141314, 37.361465, 55.861271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402042, 0.036079, -0.914910,
		-0.900645, -0.164405, -0.402257,
		-0.164929, 0.985733, -0.033604,
		28.091835, 37.657185, 55.851189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982103, 36.986282, 55.185112>,  <28.207285, 36.967171, 55.874714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982103, 36.986282, 55.185112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.029179, 37.369183, 55.290798>,  <28.057425, 37.598923, 55.354210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.029179, 37.369183, 55.290798>,  <27.982103, 36.986282, 55.185112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029179, 37.369183, 55.290798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097194, 0.253688, -0.962391,
		-0.988283, 0.138943, -0.063184,
		0.117688, 0.957255, 0.264220,
		28.064486, 37.656361, 55.370064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584297, 37.355835, 54.740726>,  <27.982103, 36.986282, 55.185112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584297, 37.355835, 54.740726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.841869, 37.628208, 54.880257>,  <27.996412, 37.791634, 54.963974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.841869, 37.628208, 54.880257>,  <27.584297, 37.355835, 54.740726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841869, 37.628208, 54.880257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224899, 0.267324, -0.936994,
		-0.731283, 0.681810, 0.018996,
		0.643930, 0.680935, 0.348828,
		28.035048, 37.832489, 54.984905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500614, 38.023586, 54.389446>,  <27.584297, 37.355835, 54.740726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500614, 38.023586, 54.389446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.886173, 38.029377, 54.495796>,  <28.117510, 38.032852, 54.559605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.886173, 38.029377, 54.495796>,  <27.500614, 38.023586, 54.389446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886173, 38.029377, 54.495796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257242, 0.207125, -0.943888,
		-0.068735, 0.978207, 0.195924,
		0.963899, 0.014478, 0.265873,
		28.175343, 38.033722, 54.575558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790396, 38.350407, 53.806896>,  <27.500614, 38.023586, 54.389446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790396, 38.350407, 53.806896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.125040, 38.252426, 54.002888>,  <28.325827, 38.193638, 54.120483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.125040, 38.252426, 54.002888>,  <27.790396, 38.350407, 53.806896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125040, 38.252426, 54.002888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543282, 0.256406, -0.799438,
		0.070193, 0.935015, 0.347592,
		0.836611, -0.244956, 0.489979,
		28.376022, 38.178940, 54.149883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193640, 38.955761, 53.906136>,  <27.790396, 38.350407, 53.806896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193640, 38.955761, 53.906136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.414761, 38.622822, 53.890099>,  <28.547432, 38.423058, 53.880474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.414761, 38.622822, 53.890099>,  <28.193640, 38.955761, 53.906136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414761, 38.622822, 53.890099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405831, 0.310930, -0.859432,
		0.727814, 0.458822, 0.509675,
		0.552800, -0.832349, -0.040095,
		28.580601, 38.373116, 53.878071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857515, 39.124958, 53.784534>,  <28.193640, 38.955761, 53.906136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857515, 39.124958, 53.784534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.885494, 38.744804, 53.663292>,  <28.902281, 38.516712, 53.590546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.885494, 38.744804, 53.663292>,  <28.857515, 39.124958, 53.784534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885494, 38.744804, 53.663292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628900, 0.277869, -0.726136,
		0.774333, -0.139833, 0.617134,
		0.069945, -0.950387, -0.303104,
		28.906477, 38.459690, 53.572361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528042, 39.078365, 53.708492>,  <28.857515, 39.124958, 53.784534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528042, 39.078365, 53.708492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.358717, 38.798573, 53.478176>,  <29.257122, 38.630695, 53.339989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.358717, 38.798573, 53.478176>,  <29.528042, 39.078365, 53.708492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358717, 38.798573, 53.478176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502788, 0.347310, -0.791568,
		0.753664, -0.624580, 0.204670,
		-0.423314, -0.699482, -0.575786,
		29.231722, 38.588726, 53.305439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064695, 38.808037, 53.339844>,  <29.528042, 39.078365, 53.708492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064695, 38.808037, 53.339844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.765690, 38.673958, 53.110458>,  <29.586287, 38.593510, 52.972828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.765690, 38.673958, 53.110458>,  <30.064695, 38.808037, 53.339844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765690, 38.673958, 53.110458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598451, 0.034770, -0.800404,
		0.288236, -0.941505, 0.174611,
		-0.747513, -0.335201, -0.573467,
		29.541435, 38.573399, 52.938419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408772, 38.220112, 52.985577>,  <30.064695, 38.808037, 53.339844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408772, 38.220112, 52.985577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.091303, 38.352917, 52.781670>,  <29.900822, 38.432598, 52.659325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.091303, 38.352917, 52.781670>,  <30.408772, 38.220112, 52.985577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091303, 38.352917, 52.781670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461994, -0.216224, -0.860122,
		-0.395790, -0.918160, 0.018225,
		-0.793670, 0.332008, -0.509763,
		29.853201, 38.452518, 52.628742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402393, 37.865551, 52.430569>,  <30.408772, 38.220112, 52.985577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402393, 37.865551, 52.430569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147261, 38.146370, 52.303886>,  <29.994181, 38.314861, 52.227879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147261, 38.146370, 52.303886>,  <30.402393, 37.865551, 52.430569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147261, 38.146370, 52.303886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226855, -0.221716, -0.948356,
		-0.736009, -0.676736, -0.017846,
		-0.637830, 0.702047, -0.316706,
		29.955912, 38.356983, 52.208874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988440, 37.537632, 52.002953>,  <30.402393, 37.865551, 52.430569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988440, 37.537632, 52.002953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.965416, 37.919216, 51.885212>,  <29.951601, 38.148167, 51.814568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.965416, 37.919216, 51.885212>,  <29.988440, 37.537632, 52.002953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965416, 37.919216, 51.885212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182387, -0.279827, -0.942567,
		-0.981541, -0.107939, -0.157884,
		-0.057560, 0.953963, -0.294348,
		29.948149, 38.205406, 51.796906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567970, 37.666943, 51.412636>,  <29.988440, 37.537632, 52.002953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567970, 37.666943, 51.412636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.809040, 37.985069, 51.386551>,  <29.953682, 38.175945, 51.370899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.809040, 37.985069, 51.386551>,  <29.567970, 37.666943, 51.412636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809040, 37.985069, 51.386551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310093, -0.308715, -0.899187,
		-0.735272, 0.521694, -0.432678,
		0.602675, 0.795318, -0.065216,
		29.989843, 38.223663, 51.366985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382427, 38.062786, 50.728592>,  <29.567970, 37.666943, 51.412636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382427, 38.062786, 50.728592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.759861, 38.136509, 50.838631>,  <29.986322, 38.180744, 50.904652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.759861, 38.136509, 50.838631>,  <29.382427, 38.062786, 50.728592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759861, 38.136509, 50.838631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324419, -0.348167, -0.879507,
		-0.066323, 0.919135, -0.388319,
		0.943586, 0.184310, 0.275093,
		30.042936, 38.191803, 50.921158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729078, 38.154076, 50.010403>,  <29.382427, 38.062786, 50.728592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729078, 38.154076, 50.010403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.031012, 38.125259, 50.271183>,  <30.212172, 38.107971, 50.427650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.031012, 38.125259, 50.271183>,  <29.729078, 38.154076, 50.010403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031012, 38.125259, 50.271183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501432, -0.577380, -0.644360,
		0.422841, 0.813292, -0.399702,
		0.754832, -0.072039, 0.651950,
		30.257462, 38.103649, 50.466766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335661, 38.332180, 49.633854>,  <29.729078, 38.154076, 50.010403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335661, 38.332180, 49.633854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.443037, 38.102329, 49.943108>,  <30.507462, 37.964420, 50.128662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.443037, 38.102329, 49.943108>,  <30.335661, 38.332180, 49.633854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443037, 38.102329, 49.943108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490880, -0.608972, -0.623049,
		0.828841, 0.546769, 0.118602,
		0.268438, -0.574628, 0.773139,
		30.523569, 37.929939, 50.175049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059389, 38.289650, 49.528568>,  <30.335661, 38.332180, 49.633854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059389, 38.289650, 49.528568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982964, 37.996407, 49.789661>,  <30.937109, 37.820461, 49.946316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982964, 37.996407, 49.789661>,  <31.059389, 38.289650, 49.528568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982964, 37.996407, 49.789661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730216, -0.550539, -0.404588,
		0.655957, 0.399331, 0.640511,
		-0.191062, -0.733104, 0.652728,
		30.925646, 37.776474, 49.985481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708021, 38.057720, 49.794575>,  <31.059389, 38.289650, 49.528568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708021, 38.057720, 49.794575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.450699, 37.758099, 49.857914>,  <31.296305, 37.578327, 49.895916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.450699, 37.758099, 49.857914>,  <31.708021, 38.057720, 49.794575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450699, 37.758099, 49.857914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579038, -0.611331, -0.539434,
		0.500869, -0.255332, 0.827004,
		-0.643308, -0.749053, 0.158350,
		31.257706, 37.533382, 49.905418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066059, 37.559551, 50.086315>,  <31.708021, 38.057720, 49.794575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066059, 37.559551, 50.086315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753872, 37.362843, 49.931896>,  <31.566561, 37.244816, 49.839245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753872, 37.362843, 49.931896>,  <32.066059, 37.559551, 50.086315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753872, 37.362843, 49.931896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622215, -0.671236, -0.402853,
		-0.061019, -0.554619, 0.829864,
		-0.780465, -0.491772, -0.386050,
		31.519732, 37.215309, 49.816082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284618, 36.911366, 50.151405>,  <32.066059, 37.559551, 50.086315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284618, 36.911366, 50.151405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.971598, 36.850227, 49.909996>,  <31.783785, 36.813545, 49.765148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.971598, 36.850227, 49.909996>,  <32.284618, 36.911366, 50.151405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971598, 36.850227, 49.909996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354163, -0.906551, -0.229638,
		-0.512031, -0.393452, 0.763558,
		-0.782556, -0.152842, -0.603528,
		31.736832, 36.804375, 49.728939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991171, 36.143238, 50.317337>,  <32.284618, 36.911366, 50.151405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991171, 36.143238, 50.317337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.900553, 36.256088, 49.944439>,  <31.846182, 36.323799, 49.720699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.900553, 36.256088, 49.944439>,  <31.991171, 36.143238, 50.317337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900553, 36.256088, 49.944439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360412, -0.864912, -0.349330,
		-0.904865, -0.415131, 0.094260,
		-0.226544, 0.282124, -0.932247,
		31.832590, 36.340725, 49.664764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809671, 35.417351, 50.061146>,  <31.991171, 36.143238, 50.317337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809671, 35.417351, 50.061146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.849991, 35.640079, 49.731350>,  <31.874184, 35.773716, 49.533474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.849991, 35.640079, 49.731350>,  <31.809671, 35.417351, 50.061146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849991, 35.640079, 49.731350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411712, -0.777771, -0.474938,
		-0.905722, -0.291578, -0.307651,
		0.100801, 0.556826, -0.824490,
		31.880232, 35.807129, 49.484001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446955, 35.102314, 49.347412>,  <31.809671, 35.417351, 50.061146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446955, 35.102314, 49.347412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742561, 35.355068, 49.253967>,  <31.919926, 35.506721, 49.197899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742561, 35.355068, 49.253967>,  <31.446955, 35.102314, 49.347412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742561, 35.355068, 49.253967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393543, -0.686370, -0.611571,
		-0.546787, 0.360025, -0.755914,
		0.739018, 0.631884, -0.233612,
		31.964268, 35.544632, 49.183884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649824, 34.886349, 48.626873>,  <31.446955, 35.102314, 49.347412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649824, 34.886349, 48.626873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964504, 35.109592, 48.732418>,  <32.153313, 35.243538, 48.795746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964504, 35.109592, 48.732418>,  <31.649824, 34.886349, 48.626873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964504, 35.109592, 48.732418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606288, -0.617983, -0.500511,
		-0.116277, 0.553727, -0.824540,
		0.786698, 0.558107, 0.263861,
		32.200512, 35.277023, 48.811577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008450, 34.791557, 47.972980>,  <31.649824, 34.886349, 48.626873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008450, 34.791557, 47.972980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256851, 34.901794, 48.266483>,  <32.405891, 34.967937, 48.442585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256851, 34.901794, 48.266483>,  <32.008450, 34.791557, 47.972980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256851, 34.901794, 48.266483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724075, -0.560156, -0.402419,
		0.300115, 0.781200, -0.547410,
		0.621005, 0.275593, 0.733758,
		32.443153, 34.984474, 48.486610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669758, 34.883827, 47.693897>,  <32.008450, 34.791557, 47.972980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669758, 34.883827, 47.693897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751255, 34.858032, 48.084656>,  <32.800152, 34.842556, 48.319111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751255, 34.858032, 48.084656>,  <32.669758, 34.883827, 47.693897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751255, 34.858032, 48.084656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790761, -0.577469, -0.203043,
		0.577222, 0.813862, -0.066660,
		0.203743, -0.064488, 0.976898,
		32.812378, 34.838684, 48.377724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352718, 34.868500, 47.669716>,  <32.669758, 34.883827, 47.693897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352718, 34.868500, 47.669716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294121, 34.731049, 48.040760>,  <33.258965, 34.648579, 48.263386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294121, 34.731049, 48.040760>,  <33.352718, 34.868500, 47.669716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294121, 34.731049, 48.040760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845762, -0.529861, -0.062722,
		0.513058, 0.775348, 0.368249,
		-0.146489, -0.343631, 0.927609,
		33.250175, 34.627960, 48.319042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924458, 35.030704, 48.192593>,  <33.352718, 34.868500, 47.669716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924458, 35.030704, 48.192593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.742317, 34.687683, 48.288307>,  <33.633034, 34.481869, 48.345734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.742317, 34.687683, 48.288307>,  <33.924458, 35.030704, 48.192593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742317, 34.687683, 48.288307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882778, -0.469775, -0.003703,
		0.115585, 0.209549, 0.970942,
		-0.455348, -0.857555, 0.239284,
		33.605713, 34.430416, 48.360092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180836, 34.563927, 48.764732>,  <33.924458, 35.030704, 48.192593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180836, 34.563927, 48.764732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.007648, 34.310127, 48.508621>,  <33.903736, 34.157848, 48.354954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.007648, 34.310127, 48.508621>,  <34.180836, 34.563927, 48.764732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007648, 34.310127, 48.508621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736465, -0.658569, 0.154612,
		-0.519766, -0.404598, 0.752425,
		-0.432969, -0.634497, -0.640274,
		33.877758, 34.119778, 48.316540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918385, 33.906315, 49.047428>,  <34.180836, 34.563927, 48.764732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918385, 33.906315, 49.047428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059937, 33.872597, 48.674835>,  <34.144867, 33.852367, 48.451279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059937, 33.872597, 48.674835>,  <33.918385, 33.906315, 49.047428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059937, 33.872597, 48.674835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710941, -0.622885, 0.326460,
		-0.607726, -0.777759, -0.160502,
		0.353882, -0.084291, -0.931484,
		34.166100, 33.847309, 48.395390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783413, 33.248940, 48.731236>,  <33.918385, 33.906315, 49.047428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783413, 33.248940, 48.731236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119678, 33.411793, 48.588394>,  <34.321438, 33.509502, 48.502689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119678, 33.411793, 48.588394>,  <33.783413, 33.248940, 48.731236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119678, 33.411793, 48.588394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522634, -0.782691, 0.338007,
		-0.141892, -0.470788, -0.870762,
		0.840667, 0.407129, -0.357107,
		34.371880, 33.533932, 48.481262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251125, 32.578598, 48.640007>,  <33.783413, 33.248940, 48.731236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251125, 32.578598, 48.640007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.450863, 32.923977, 48.611370>,  <34.570705, 33.131203, 48.594189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.450863, 32.923977, 48.611370>,  <34.251125, 32.578598, 48.640007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450863, 32.923977, 48.611370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805611, -0.432309, 0.405093,
		0.318826, -0.259952, -0.911469,
		0.499341, 0.863443, -0.071588,
		34.600666, 33.183010, 48.589893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934093, 32.318321, 48.595917>,  <34.251125, 32.578598, 48.640007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934093, 32.318321, 48.595917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992332, 32.710938, 48.645523>,  <35.027275, 32.946507, 48.675285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992332, 32.710938, 48.645523>,  <34.934093, 32.318321, 48.595917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992332, 32.710938, 48.645523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940290, -0.176267, 0.291177,
		0.307662, 0.074213, -0.948597,
		0.145597, 0.981541, 0.124013,
		35.036011, 33.005402, 48.682728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600990, 32.523144, 48.332077>,  <34.934093, 32.318321, 48.595917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600990, 32.523144, 48.332077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.496025, 32.797012, 48.604065>,  <35.433048, 32.961334, 48.767258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.496025, 32.797012, 48.604065>,  <35.600990, 32.523144, 48.332077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496025, 32.797012, 48.604065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964285, 0.159782, 0.211245,
		0.035987, 0.711119, -0.702150,
		-0.262411, 0.684675, 0.679971,
		35.417301, 33.002415, 48.808056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222210, 33.000767, 48.350567>,  <35.600990, 32.523144, 48.332077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222210, 33.000767, 48.350567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.002846, 33.094929, 48.671524>,  <35.871227, 33.151424, 48.864098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.002846, 33.094929, 48.671524>,  <36.222210, 33.000767, 48.350567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002846, 33.094929, 48.671524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835900, 0.180327, 0.518414,
		-0.022656, 0.955022, -0.295668,
		-0.548414, 0.235404, 0.802388,
		35.838322, 33.165550, 48.912239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554096, 33.549782, 48.664478>,  <36.222210, 33.000767, 48.350567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554096, 33.549782, 48.664478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316063, 33.408806, 48.953381>,  <36.173241, 33.324223, 49.126724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316063, 33.408806, 48.953381>,  <36.554096, 33.549782, 48.664478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316063, 33.408806, 48.953381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751281, 0.075186, 0.655686,
		-0.285392, 0.932810, 0.220038,
		-0.595087, -0.352437, 0.722260,
		36.137535, 33.303074, 49.170059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506504, 34.026863, 49.272030>,  <36.554096, 33.549782, 48.664478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506504, 34.026863, 49.272030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414547, 33.657642, 49.395393>,  <36.359371, 33.436108, 49.469414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414547, 33.657642, 49.395393>,  <36.506504, 34.026863, 49.272030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414547, 33.657642, 49.395393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745309, 0.036801, 0.665702,
		-0.625830, 0.382902, 0.679502,
		-0.229892, -0.923056, 0.308412,
		36.345581, 33.380726, 49.487919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551208, 34.088112, 50.029335>,  <36.506504, 34.026863, 49.272030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551208, 34.088112, 50.029335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598351, 33.707386, 49.916088>,  <36.626637, 33.478951, 49.848141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598351, 33.707386, 49.916088>,  <36.551208, 34.088112, 50.029335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598351, 33.707386, 49.916088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905507, -0.014025, 0.424099,
		-0.407635, -0.306347, 0.860224,
		0.117857, -0.951817, -0.283116,
		36.633709, 33.421841, 49.831154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981171, 33.828846, 50.582485>,  <36.551208, 34.088112, 50.029335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981171, 33.828846, 50.582485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017994, 33.526154, 50.323601>,  <37.040089, 33.344540, 50.168270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017994, 33.526154, 50.323601>,  <36.981171, 33.828846, 50.582485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017994, 33.526154, 50.323601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989879, -0.000947, 0.141910,
		-0.108000, -0.653728, 0.748983,
		0.092061, -0.756729, -0.647214,
		37.045612, 33.299133, 50.129436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418354, 33.425510, 50.923897>,  <36.981171, 33.828846, 50.582485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418354, 33.425510, 50.923897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.438061, 33.264484, 50.558270>,  <37.449883, 33.167870, 50.338894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.438061, 33.264484, 50.558270>,  <37.418354, 33.425510, 50.923897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438061, 33.264484, 50.558270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996546, 0.081074, 0.018005,
		0.066859, -0.911796, 0.405165,
		0.049265, -0.402561, -0.914066,
		37.452839, 33.143715, 50.284050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006340, 33.023136, 50.939323>,  <37.418354, 33.425510, 50.923897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006340, 33.023136, 50.939323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.940132, 33.038673, 50.545147>,  <37.900406, 33.047997, 50.308640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.940132, 33.038673, 50.545147>,  <38.006340, 33.023136, 50.939323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940132, 33.038673, 50.545147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985511, 0.044034, -0.163798,
		0.037031, -0.998275, -0.045565,
		-0.165522, 0.038839, -0.985441,
		37.890476, 33.050323, 50.249516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511822, 32.570255, 50.573997>,  <38.006340, 33.023136, 50.939323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511822, 32.570255, 50.573997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.374157, 32.847733, 50.320908>,  <38.291557, 33.014221, 50.169056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.374157, 32.847733, 50.320908>,  <38.511822, 32.570255, 50.573997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374157, 32.847733, 50.320908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918924, 0.110560, -0.378623,
		-0.192695, -0.711732, -0.675505,
		-0.344162, 0.693696, -0.632723,
		38.270908, 33.055840, 50.131092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831051, 32.467274, 49.994896>,  <38.511822, 32.570255, 50.573997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831051, 32.467274, 49.994896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728764, 32.853725, 50.008770>,  <38.667393, 33.085598, 50.017094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728764, 32.853725, 50.008770>,  <38.831051, 32.467274, 49.994896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728764, 32.853725, 50.008770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922171, 0.254539, -0.291223,
		-0.290187, -0.042488, -0.956026,
		-0.255719, 0.966129, 0.034683,
		38.652046, 33.143562, 50.019176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077003, 32.664368, 49.326923>,  <38.831051, 32.467274, 49.994896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077003, 32.664368, 49.326923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.057888, 32.967056, 49.587719>,  <39.046417, 33.148670, 49.744198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.057888, 32.967056, 49.587719>,  <39.077003, 32.664368, 49.326923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057888, 32.967056, 49.587719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920486, 0.286816, -0.265411,
		-0.387842, 0.587464, -0.710256,
		-0.047793, 0.756718, 0.651992,
		39.043549, 33.194073, 49.783318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284050, 33.301498, 48.797047>,  <39.077003, 32.664368, 49.326923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284050, 33.301498, 48.797047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609932, 33.277615, 48.566326>,  <39.805462, 33.263283, 48.427895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609932, 33.277615, 48.566326>,  <39.284050, 33.301498, 48.797047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609932, 33.277615, 48.566326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112863, 0.959334, -0.258729,
		0.568792, 0.275886, 0.774831,
		0.814701, -0.059713, -0.576798,
		39.854343, 33.259701, 48.393288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810402, 33.818008, 49.028389>,  <39.284050, 33.301498, 48.797047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810402, 33.818008, 49.028389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834896, 33.730190, 48.638916>,  <39.849594, 33.677498, 48.405231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834896, 33.730190, 48.638916>,  <39.810402, 33.818008, 49.028389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834896, 33.730190, 48.638916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092818, 0.970029, -0.224561,
		0.993798, 0.104126, 0.039025,
		0.061238, -0.219546, -0.973678,
		39.853268, 33.664326, 48.346813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399937, 34.197662, 48.691582>,  <39.810402, 33.818008, 49.028389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399937, 34.197662, 48.691582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.066902, 34.118698, 48.484573>,  <39.867081, 34.071320, 48.360367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.066902, 34.118698, 48.484573>,  <40.399937, 34.197662, 48.691582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066902, 34.118698, 48.484573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080687, 0.967591, -0.239284,
		0.547985, -0.157468, -0.821533,
		-0.832587, -0.197412, -0.517520,
		39.817127, 34.059475, 48.329319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429947, 34.431416, 47.963696>,  <40.399937, 34.197662, 48.691582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429947, 34.431416, 47.963696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.050785, 34.442966, 48.090588>,  <39.823288, 34.449898, 48.166725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.050785, 34.442966, 48.090588>,  <40.429947, 34.431416, 47.963696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050785, 34.442966, 48.090588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134849, 0.865864, -0.481764,
		-0.288595, -0.499446, -0.816864,
		-0.947908, 0.028881, 0.317234,
		39.766415, 34.451630, 48.185757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870693, 34.810822, 48.382343>,  <40.429947, 34.431416, 47.963696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870693, 34.810822, 48.382343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.263290, 34.874798, 48.340225>,  <41.498848, 34.913185, 48.314953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.263290, 34.874798, 48.340225>,  <40.870693, 34.810822, 48.382343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263290, 34.874798, 48.340225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190634, 0.868023, -0.458469,
		0.018071, 0.470058, 0.882450,
		0.981495, 0.159940, -0.105295,
		41.557739, 34.922779, 48.308636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881863, 35.451454, 48.221085>,  <40.870693, 34.810822, 48.382343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881863, 35.451454, 48.221085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260830, 35.374485, 48.118809>,  <41.488209, 35.328304, 48.057442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260830, 35.374485, 48.118809>,  <40.881863, 35.451454, 48.221085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260830, 35.374485, 48.118809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029493, 0.743108, -0.668522,
		0.318646, 0.640908, 0.698356,
		0.947415, -0.192425, -0.255690,
		41.545055, 35.316757, 48.042103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287605, 36.130520, 48.106022>,  <40.881863, 35.451454, 48.221085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287605, 36.130520, 48.106022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490181, 35.833660, 47.930416>,  <41.611725, 35.655544, 47.825054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490181, 35.833660, 47.930416>,  <41.287605, 36.130520, 48.106022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490181, 35.833660, 47.930416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127678, 0.568060, -0.813023,
		0.852772, 0.355692, 0.382442,
		0.506436, -0.742153, -0.439011,
		41.642113, 35.611015, 47.798714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980278, 36.234665, 47.910610>,  <41.287605, 36.130520, 48.106022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980278, 36.234665, 47.910610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.833282, 35.972385, 47.646786>,  <41.745087, 35.815018, 47.488491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.833282, 35.972385, 47.646786>,  <41.980278, 36.234665, 47.910610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833282, 35.972385, 47.646786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054203, 0.692874, -0.719019,
		0.928448, -0.299980, -0.219082,
		-0.367487, -0.655696, -0.659557,
		41.723038, 35.775677, 47.448917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351463, 36.264202, 47.331711>,  <41.980278, 36.234665, 47.910610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351463, 36.264202, 47.331711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.004982, 36.106609, 47.208775>,  <41.797092, 36.012054, 47.135014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.004982, 36.106609, 47.208775>,  <42.351463, 36.264202, 47.331711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004982, 36.106609, 47.208775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052791, 0.539480, -0.840342,
		0.496884, -0.744137, -0.446505,
		-0.866210, -0.393981, -0.307343,
		41.745121, 35.988415, 47.116570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439941, 36.126049, 46.631275>,  <42.351463, 36.264202, 47.331711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439941, 36.126049, 46.631275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.041012, 36.128162, 46.660431>,  <41.801655, 36.129429, 46.677925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.041012, 36.128162, 46.660431>,  <42.439941, 36.126049, 46.631275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041012, 36.128162, 46.660431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058873, 0.532845, -0.844163,
		-0.043299, -0.846196, -0.531109,
		-0.997326, 0.005283, 0.072889,
		41.741814, 36.129745, 46.682297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052647, 36.424004, 46.326439>,  <42.439941, 36.126049, 46.631275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052647, 36.424004, 46.326439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.445347, 36.358322, 46.288055>,  <43.680965, 36.318913, 46.265026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.445347, 36.358322, 46.288055>,  <43.052647, 36.424004, 46.326439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445347, 36.358322, 46.288055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105548, -0.050661, -0.993123,
		0.158211, 0.985125, -0.067068,
		0.981748, -0.164201, -0.095963,
		43.739872, 36.309063, 46.259266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457539, 36.941723, 45.855717>,  <43.052647, 36.424004, 46.326439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457539, 36.941723, 45.855717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.596447, 36.566788, 45.844376>,  <43.679794, 36.341827, 45.837570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.596447, 36.566788, 45.844376>,  <43.457539, 36.941723, 45.855717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596447, 36.566788, 45.844376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115836, -0.012875, -0.993185,
		0.930582, 0.348191, -0.113049,
		0.347274, -0.937335, -0.028352,
		43.700630, 36.285587, 45.835869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927986, 36.846527, 45.294308>,  <43.457539, 36.941723, 45.855717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927986, 36.846527, 45.294308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.743793, 36.510174, 45.408062>,  <43.633278, 36.308361, 45.476315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.743793, 36.510174, 45.408062>,  <43.927986, 36.846527, 45.294308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743793, 36.510174, 45.408062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257752, -0.179909, -0.949314,
		0.849423, -0.510444, -0.133893,
		-0.460483, -0.840881, 0.284386,
		43.605648, 36.257908, 45.493378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296856, 36.256451, 45.009544>,  <43.927986, 36.846527, 45.294308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296856, 36.256451, 45.009544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.911030, 36.180183, 45.082497>,  <43.679535, 36.134422, 45.126266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.911030, 36.180183, 45.082497>,  <44.296856, 36.256451, 45.009544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911030, 36.180183, 45.082497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222360, 0.215356, -0.950882,
		0.142028, -0.957740, -0.250122,
		-0.964564, -0.190670, 0.182377,
		43.621662, 36.122982, 45.137211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925545, 35.615395, 44.682945>,  <44.296856, 36.256451, 45.009544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925545, 35.615395, 44.682945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.666912, 35.914402, 44.743813>,  <43.511734, 36.093807, 44.780334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.666912, 35.914402, 44.743813>,  <43.925545, 35.615395, 44.682945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666912, 35.914402, 44.743813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156654, 0.065116, -0.985505,
		-0.746590, -0.661044, 0.074999,
		-0.646578, 0.747517, 0.152170,
		43.472939, 36.138657, 44.789463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500553, 35.235420, 44.315750>,  <43.925545, 35.615395, 44.682945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500553, 35.235420, 44.315750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.144306, 35.117512, 44.177238>,  <43.930557, 35.046768, 44.094131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.144306, 35.117512, 44.177238>,  <44.500553, 35.235420, 44.315750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144306, 35.117512, 44.177238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454482, -0.603010, -0.655610,
		-0.015553, -0.741275, 0.671021,
		-0.890620, -0.294771, -0.346275,
		43.877121, 35.029079, 44.073357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479698, 34.413902, 44.241451>,  <44.500553, 35.235420, 44.315750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479698, 34.413902, 44.241451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.227230, 34.615185, 44.005348>,  <44.075748, 34.735954, 43.863686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.227230, 34.615185, 44.005348>,  <44.479698, 34.413902, 44.241451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227230, 34.615185, 44.005348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439907, -0.394523, -0.806743,
		-0.638828, -0.768853, 0.027649,
		-0.631175, 0.503207, -0.590255,
		44.037876, 34.766148, 43.828270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375618, 33.937725, 43.806168>,  <44.479698, 34.413902, 44.241451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375618, 33.937725, 43.806168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.276009, 34.285259, 43.634998>,  <44.216244, 34.493778, 43.532295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.276009, 34.285259, 43.634998>,  <44.375618, 33.937725, 43.806168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276009, 34.285259, 43.634998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475552, -0.275218, -0.835527,
		-0.843705, -0.411563, -0.344641,
		-0.249021, 0.868833, -0.427922,
		44.201302, 34.545910, 43.506622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111347, 33.839184, 43.158398>,  <44.375618, 33.937725, 43.806168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111347, 33.839184, 43.158398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.269123, 34.206749, 43.159752>,  <44.363789, 34.427288, 43.160564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.269123, 34.206749, 43.159752>,  <44.111347, 33.839184, 43.158398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269123, 34.206749, 43.159752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398873, -0.167893, -0.901506,
		-0.827840, 0.356938, -0.432754,
		0.394438, 0.918916, 0.003384,
		44.387455, 34.482426, 43.160767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956554, 33.933266, 42.456848>,  <44.111347, 33.839184, 43.158398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956554, 33.933266, 42.456848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.275806, 34.142277, 42.576820>,  <44.467358, 34.267685, 42.648804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.275806, 34.142277, 42.576820>,  <43.956554, 33.933266, 42.456848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275806, 34.142277, 42.576820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451021, -0.188108, -0.872465,
		-0.399466, 0.831614, -0.385804,
		0.798127, 0.522526, 0.299932,
		44.515244, 34.299034, 42.666801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034565, 34.603695, 42.069260>,  <43.956554, 33.933266, 42.456848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034565, 34.603695, 42.069260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.356701, 34.416157, 42.214375>,  <44.549980, 34.303635, 42.301445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.356701, 34.416157, 42.214375>,  <44.034565, 34.603695, 42.069260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356701, 34.416157, 42.214375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310556, -0.187622, -0.931854,
		0.504964, 0.863123, -0.005496,
		0.805336, -0.468846, 0.362791,
		44.598301, 34.275501, 42.323212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708927, 34.914711, 41.913895>,  <44.034565, 34.603695, 42.069260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708927, 34.914711, 41.913895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.731319, 34.515751, 41.895760>,  <44.744755, 34.276375, 41.884880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.731319, 34.515751, 41.895760>,  <44.708927, 34.914711, 41.913895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.731319, 34.515751, 41.895760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359292, 0.062490, -0.931131,
		0.931545, 0.035836, 0.361856,
		0.055980, -0.997402, -0.045336,
		44.748112, 34.216530, 41.882160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370216, 34.374947, 41.399891>,  <44.708927, 34.914711, 41.913895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370216, 34.374947, 41.399891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.430180, 34.473259, 41.016827>,  <44.466160, 34.532246, 40.786987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.430180, 34.473259, 41.016827>,  <44.370216, 34.374947, 41.399891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430180, 34.473259, 41.016827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012173, -0.968077, -0.250356,
		-0.988625, 0.049189, -0.142133,
		0.149911, 0.245778, -0.957664,
		44.475151, 34.546993, 40.729527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801292, 34.191425, 40.948513>,  <44.370216, 34.374947, 41.399891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801292, 34.191425, 40.948513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.162628, 34.205784, 40.777542>,  <44.379429, 34.214401, 40.674961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.162628, 34.205784, 40.777542>,  <43.801292, 34.191425, 40.948513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162628, 34.205784, 40.777542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066019, -0.972980, -0.221251,
		-0.423818, 0.228082, -0.876560,
		0.903338, 0.035900, -0.427424,
		44.433628, 34.216553, 40.649315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783062, 33.819141, 40.277122>,  <43.801292, 34.191425, 40.948513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783062, 33.819141, 40.277122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.143803, 33.816250, 40.449913>,  <44.360249, 33.814514, 40.553589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.143803, 33.816250, 40.449913>,  <43.783062, 33.819141, 40.277122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143803, 33.816250, 40.449913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099039, -0.969776, -0.222991,
		0.420534, 0.243889, -0.873882,
		0.901855, -0.007227, 0.431979,
		44.414360, 33.814083, 40.579506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237625, 33.317608, 39.891338>,  <43.783062, 33.819141, 40.277122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237625, 33.317608, 39.891338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.344933, 33.388470, 40.270103>,  <44.409317, 33.430988, 40.497364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.344933, 33.388470, 40.270103>,  <44.237625, 33.317608, 39.891338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344933, 33.388470, 40.270103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146720, -0.978992, 0.141592,
		0.952105, 0.100946, -0.288629,
		0.268272, 0.177158, 0.946913,
		44.425415, 33.441616, 40.554176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920647, 32.832706, 39.387024>,  <44.237625, 33.317608, 39.891338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920647, 32.832706, 39.387024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.093906, 33.191952, 39.356632>,  <44.197861, 33.407497, 39.338398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.093906, 33.191952, 39.356632>,  <43.920647, 32.832706, 39.387024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093906, 33.191952, 39.356632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894179, 0.417594, -0.161428,
		-0.113252, 0.137864, 0.983955,
		0.433149, 0.898114, -0.075982,
		44.223850, 33.461388, 39.333839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604897, 32.862392, 39.276646>,  <43.920647, 32.832706, 39.387024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604897, 32.862392, 39.276646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.546078, 32.990841, 38.902424>,  <44.510788, 33.067909, 38.677891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.546078, 32.990841, 38.902424>,  <44.604897, 32.862392, 39.276646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546078, 32.990841, 38.902424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922822, -0.385011, 0.012893,
		-0.356057, 0.865244, 0.352953,
		-0.147047, 0.321122, -0.935552,
		44.501965, 33.087177, 38.621758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248940, 33.160748, 39.528191>,  <44.604897, 32.862392, 39.276646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248940, 33.160748, 39.528191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.605469, 32.995327, 39.602505>,  <45.819386, 32.896076, 39.647091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.605469, 32.995327, 39.602505>,  <45.248940, 33.160748, 39.528191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605469, 32.995327, 39.602505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422006, 0.906568, -0.006658,
		-0.165671, 0.084335, 0.982568,
		0.891327, -0.413547, 0.185782,
		45.872868, 32.871262, 39.658241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695175, 33.681736, 39.883339>,  <45.248940, 33.160748, 39.528191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695175, 33.681736, 39.883339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.936783, 33.411957, 39.713501>,  <46.081749, 33.250088, 39.611599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.936783, 33.411957, 39.713501>,  <45.695175, 33.681736, 39.883339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936783, 33.411957, 39.713501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581615, 0.737275, -0.343730,
		0.544870, -0.039330, 0.837598,
		0.604021, -0.674447, -0.424594,
		46.117989, 33.209621, 39.586124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.459560, 33.848843, 40.089905>,  <45.695175, 33.681736, 39.883339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.459560, 33.848843, 40.089905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.391571, 33.653969, 39.747265>,  <46.350777, 33.537045, 39.541683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.391571, 33.653969, 39.747265>,  <46.459560, 33.848843, 40.089905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391571, 33.653969, 39.747265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686489, 0.565090, -0.457609,
		0.706996, -0.665824, 0.238401,
		-0.169969, -0.487187, -0.856597,
		46.340580, 33.507812, 39.490284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.180889, 33.844467, 39.757179>,  <46.459560, 33.848843, 40.089905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.180889, 33.844467, 39.757179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.877480, 33.771835, 39.506847>,  <46.695435, 33.728256, 39.356647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.877480, 33.771835, 39.506847>,  <47.180889, 33.844467, 39.757179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877480, 33.771835, 39.506847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526131, 0.395996, -0.752578,
		0.384469, -0.900123, -0.204847,
		-0.758531, -0.181566, -0.625831,
		46.649921, 33.717361, 39.319096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.341209, 33.358276, 39.244633>,  <47.180889, 33.844467, 39.757179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.341209, 33.358276, 39.244633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.069893, 33.602112, 39.080524>,  <46.907101, 33.748413, 38.982059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.069893, 33.602112, 39.080524>,  <47.341209, 33.358276, 39.244633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069893, 33.602112, 39.080524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733072, 0.523248, -0.434529,
		-0.050210, -0.595497, -0.801787,
		-0.678294, 0.609586, -0.410270,
		46.866405, 33.784988, 38.957443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.379066, 33.439522, 38.428593>,  <47.341209, 33.358276, 39.244633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.379066, 33.439522, 38.428593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.287701, 33.772453, 38.630604>,  <47.232883, 33.972214, 38.751812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.287701, 33.772453, 38.630604>,  <47.379066, 33.439522, 38.428593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.287701, 33.772453, 38.630604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797254, 0.457634, -0.393645,
		-0.558761, 0.312721, -0.768109,
		-0.228412, 0.832332, 0.505027,
		47.219177, 34.022152, 38.782112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.455593, 33.960030, 37.895634>,  <47.379066, 33.439522, 38.428593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.455593, 33.960030, 37.895634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.479160, 34.111637, 38.265038>,  <47.493301, 34.202602, 38.486679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.479160, 34.111637, 38.265038>,  <47.455593, 33.960030, 37.895634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479160, 34.111637, 38.265038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814395, 0.516761, -0.264043,
		-0.577312, 0.767660, -0.278223,
		0.058920, 0.379018, 0.923511,
		47.496838, 34.225342, 38.542091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.370098, 34.719059, 37.909428>,  <47.455593, 33.960030, 37.895634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.370098, 34.719059, 37.909428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.617153, 34.519333, 38.152477>,  <47.765385, 34.399498, 38.298309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.617153, 34.519333, 38.152477>,  <47.370098, 34.719059, 37.909428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.617153, 34.519333, 38.152477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771568, 0.534356, -0.345176,
		-0.152338, 0.682018, 0.715293,
		0.617638, -0.499314, 0.607626,
		47.802444, 34.369537, 38.334766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.441467, 34.478333, 37.264111>,  <47.370098, 34.719059, 37.909428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.441467, 34.478333, 37.264111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.791553, 34.337624, 37.131290>,  <48.001606, 34.253197, 37.051598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.791553, 34.337624, 37.131290>,  <47.441467, 34.478333, 37.264111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.791553, 34.337624, 37.131290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236506, 0.287619, -0.928084,
		0.421982, 0.890802, 0.168531,
		0.875212, -0.351776, -0.332051,
		48.054115, 34.232090, 37.031673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.972836, 34.962029, 36.875599>,  <47.441467, 34.478333, 37.264111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.972836, 34.962029, 36.875599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.966011, 34.583969, 36.745125>,  <47.961914, 34.357132, 36.666840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.966011, 34.583969, 36.745125>,  <47.972836, 34.962029, 36.875599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.966011, 34.583969, 36.745125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313891, 0.314807, -0.895751,
		0.949306, 0.087101, -0.302047,
		-0.017066, -0.945151, -0.326188,
		47.960892, 34.300423, 36.647270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.527744, 34.733505, 36.341591>,  <47.972836, 34.962029, 36.875599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.527744, 34.733505, 36.341591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.222031, 34.484684, 36.273563>,  <48.038601, 34.335392, 36.232746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.222031, 34.484684, 36.273563>,  <48.527744, 34.733505, 36.341591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.222031, 34.484684, 36.273563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184864, 0.463988, -0.866338,
		0.617817, -0.630686, -0.469613,
		-0.764282, -0.622053, -0.170068,
		47.992744, 34.298069, 36.222542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.500771, 34.187126, 35.682346>,  <48.527744, 34.733505, 36.341591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.500771, 34.187126, 35.682346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.138977, 34.336369, 35.764996>,  <47.921902, 34.425915, 35.814587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.138977, 34.336369, 35.764996>,  <48.500771, 34.187126, 35.682346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.138977, 34.336369, 35.764996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002687, 0.479464, -0.877557,
		-0.426493, -0.794294, -0.432666,
		-0.904487, 0.373110, 0.206622,
		47.867630, 34.448303, 35.826981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.157734, 34.216480, 35.039600>,  <48.500771, 34.187126, 35.682346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.157734, 34.216480, 35.039600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.940228, 34.439491, 35.290512>,  <47.809723, 34.573299, 35.441059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.940228, 34.439491, 35.290512>,  <48.157734, 34.216480, 35.039600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.940228, 34.439491, 35.290512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061509, 0.718952, -0.692333,
		-0.836979, -0.415051, -0.356649,
		-0.543767, 0.557531, 0.627277,
		47.777096, 34.606750, 35.478695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.719448, 34.561146, 34.599632>,  <48.157734, 34.216480, 35.039600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.719448, 34.561146, 34.599632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.755371, 34.802132, 34.916862>,  <47.776924, 34.946724, 35.107201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.755371, 34.802132, 34.916862>,  <47.719448, 34.561146, 34.599632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.755371, 34.802132, 34.916862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099063, 0.797747, -0.594799,
		-0.991020, -0.025146, 0.131326,
		0.089808, 0.602467, 0.793075,
		47.782314, 34.982872, 35.154785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.419138, 32.758850, 57.761288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.684029, 32.975311, 57.968601>,  <30.842962, 33.105186, 58.092987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.684029, 32.975311, 57.968601>,  <30.419138, 32.758850, 57.761288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684029, 32.975311, 57.968601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650055, -0.070900, -0.756572,
		-0.372672, 0.837933, -0.398728,
		0.662226, 0.541148, 0.518280,
		30.882696, 33.137657, 58.124084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620440, 33.277439, 57.330662>,  <30.419138, 32.758850, 57.761288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620440, 33.277439, 57.330662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.898138, 33.262768, 57.618183>,  <31.064756, 33.253967, 57.790695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.898138, 33.262768, 57.618183>,  <30.620440, 33.277439, 57.330662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898138, 33.262768, 57.618183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716692, -0.056565, -0.695092,
		0.066152, 0.997725, -0.012985,
		0.694245, -0.036676, 0.718804,
		31.106411, 33.251766, 57.833824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068773, 33.779457, 57.176533>,  <30.620440, 33.277439, 57.330662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068773, 33.779457, 57.176533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.301764, 33.549427, 57.406319>,  <31.441557, 33.411407, 57.544189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.301764, 33.549427, 57.406319>,  <31.068773, 33.779457, 57.176533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301764, 33.549427, 57.406319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607048, -0.162242, -0.777927,
		0.540570, 0.801851, 0.254596,
		0.582475, -0.575076, 0.574465,
		31.476505, 33.376904, 57.578659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769907, 34.118431, 57.156013>,  <31.068773, 33.779457, 57.176533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769907, 34.118431, 57.156013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.804590, 33.725826, 57.224266>,  <31.825401, 33.490265, 57.265217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.804590, 33.725826, 57.224266>,  <31.769907, 34.118431, 57.156013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804590, 33.725826, 57.224266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690290, -0.064303, -0.720670,
		0.718319, 0.180274, 0.671952,
		0.086710, -0.981512, 0.170632,
		31.830603, 33.431374, 57.275455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463623, 34.061291, 57.227886>,  <31.769907, 34.118431, 57.156013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463623, 34.061291, 57.227886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.358475, 33.680740, 57.163651>,  <32.295387, 33.452412, 57.125111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.358475, 33.680740, 57.163651>,  <32.463623, 34.061291, 57.227886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358475, 33.680740, 57.163651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838520, -0.142934, -0.525789,
		0.477268, -0.272870, 0.835318,
		-0.262868, -0.951374, -0.160589,
		32.279613, 33.395329, 57.115475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066082, 33.836899, 57.278614>,  <32.463623, 34.061291, 57.227886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066082, 33.836899, 57.278614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.842621, 33.543159, 57.124393>,  <32.708546, 33.366917, 57.031860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.842621, 33.543159, 57.124393>,  <33.066082, 33.836899, 57.278614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842621, 33.543159, 57.124393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692068, -0.156527, -0.704656,
		0.457114, -0.660480, 0.595662,
		-0.558649, -0.734347, -0.385547,
		32.675026, 33.322857, 57.008728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581116, 33.278542, 57.151859>,  <33.066082, 33.836899, 57.278614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581116, 33.278542, 57.151859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.257519, 33.176052, 56.940247>,  <33.063358, 33.114559, 56.813278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.257519, 33.176052, 56.940247>,  <33.581116, 33.278542, 57.151859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257519, 33.176052, 56.940247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585217, -0.266541, -0.765818,
		0.055209, -0.929143, 0.365575,
		-0.808995, -0.256221, -0.529034,
		33.014820, 33.099186, 56.781536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799706, 32.688244, 56.775501>,  <33.581116, 33.278542, 57.151859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799706, 32.688244, 56.775501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.472683, 32.800514, 56.574375>,  <33.276470, 32.867878, 56.453701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.472683, 32.800514, 56.574375>,  <33.799706, 32.688244, 56.775501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472683, 32.800514, 56.574375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446556, -0.242281, -0.861329,
		-0.363579, -0.928719, 0.072739,
		-0.817556, 0.280679, -0.502814,
		33.227417, 32.884720, 56.423531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616508, 32.134766, 56.334297>,  <33.799706, 32.688244, 56.775501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616508, 32.134766, 56.334297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.469112, 32.469971, 56.173325>,  <33.380676, 32.671093, 56.076740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.469112, 32.469971, 56.173325>,  <33.616508, 32.134766, 56.334297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469112, 32.469971, 56.173325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413239, -0.240117, -0.878395,
		-0.832737, -0.489978, -0.257819,
		-0.368487, 0.838012, -0.402433,
		33.358566, 32.721375, 56.052593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411209, 32.038673, 55.627262>,  <33.616508, 32.134766, 56.334297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411209, 32.038673, 55.627262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.455887, 32.436047, 55.637234>,  <33.482693, 32.674469, 55.643215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.455887, 32.436047, 55.637234>,  <33.411209, 32.038673, 55.627262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455887, 32.436047, 55.637234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445852, -0.027679, -0.894679,
		-0.888110, 0.111047, -0.446015,
		0.111697, 0.993430, 0.024928,
		33.489395, 32.734074, 55.644711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084091, 32.377865, 55.015827>,  <33.411209, 32.038673, 55.627262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084091, 32.377865, 55.015827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.378128, 32.617424, 55.142925>,  <33.554550, 32.761162, 55.219185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.378128, 32.617424, 55.142925>,  <33.084091, 32.377865, 55.015827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378128, 32.617424, 55.142925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450222, -0.080813, -0.889252,
		-0.506897, 0.796734, -0.329044,
		0.735089, 0.598902, 0.317744,
		33.598656, 32.797096, 55.238247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080597, 32.955502, 54.607201>,  <33.084091, 32.377865, 55.015827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080597, 32.955502, 54.607201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.454899, 32.971180, 54.747391>,  <33.679478, 32.980587, 54.831505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.454899, 32.971180, 54.747391>,  <33.080597, 32.955502, 54.607201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454899, 32.971180, 54.747391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344158, 0.115420, -0.931791,
		-0.076978, 0.992543, 0.094513,
		0.935751, 0.039200, 0.350476,
		33.735622, 32.982941, 54.852535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379456, 33.363789, 54.142189>,  <33.080597, 32.955502, 54.607201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379456, 33.363789, 54.142189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.709095, 33.260498, 54.343857>,  <33.906879, 33.198524, 54.464855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.709095, 33.260498, 54.343857>,  <33.379456, 33.363789, 54.142189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709095, 33.260498, 54.343857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554434, 0.185360, -0.811323,
		0.116055, 0.948135, 0.295926,
		0.824096, -0.258229, 0.504166,
		33.956326, 33.183029, 54.495106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918610, 33.930550, 53.923115>,  <33.379456, 33.363789, 54.142189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918610, 33.930550, 53.923115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.112919, 33.605457, 54.051792>,  <34.229504, 33.410400, 54.128998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.112919, 33.605457, 54.051792>,  <33.918610, 33.930550, 53.923115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112919, 33.605457, 54.051792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542650, -0.008104, -0.839920,
		0.685239, 0.582578, 0.437094,
		0.485777, -0.812734, 0.321689,
		34.258652, 33.361637, 54.148300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675354, 34.037949, 53.880573>,  <33.918610, 33.930550, 53.923115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675354, 34.037949, 53.880573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.630280, 33.640911, 53.898735>,  <34.603233, 33.402687, 53.909630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.630280, 33.640911, 53.898735>,  <34.675354, 34.037949, 53.880573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630280, 33.640911, 53.898735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665334, -0.109314, -0.738499,
		0.737992, -0.053012, 0.672724,
		-0.112687, -0.992593, 0.045402,
		34.596474, 33.343132, 53.912357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375095, 33.712742, 53.816463>,  <34.675354, 34.037949, 53.880573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375095, 33.712742, 53.816463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.119061, 33.430893, 53.693958>,  <34.965439, 33.261784, 53.620457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.119061, 33.430893, 53.693958>,  <35.375095, 33.712742, 53.816463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119061, 33.430893, 53.693958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497076, -0.075846, -0.864386,
		0.585835, -0.705520, 0.398798,
		-0.640089, -0.704620, -0.306264,
		34.927032, 33.219505, 53.602077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799534, 33.179714, 53.416676>,  <35.375095, 33.712742, 53.816463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799534, 33.179714, 53.416676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.418346, 33.113052, 53.315418>,  <35.189636, 33.073055, 53.254662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.418346, 33.113052, 53.315418>,  <35.799534, 33.179714, 53.416676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418346, 33.113052, 53.315418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284041, -0.199741, -0.937776,
		0.105721, -0.965572, 0.237683,
		-0.952966, -0.166654, -0.253146,
		35.132458, 33.063057, 53.239475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768139, 32.576263, 53.012669>,  <35.799534, 33.179714, 53.416676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768139, 32.576263, 53.012669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.453396, 32.808811, 52.929844>,  <35.264549, 32.948338, 52.880150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.453396, 32.808811, 52.929844>,  <35.768139, 32.576263, 53.012669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453396, 32.808811, 52.929844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247854, -0.009575, -0.968750,
		-0.565180, -0.813586, -0.136560,
		-0.786854, 0.581365, -0.207062,
		35.217339, 32.983219, 52.867725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758640, 32.491920, 52.318230>,  <35.768139, 32.576263, 53.012669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758640, 32.491920, 52.318230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.499798, 32.792366, 52.370514>,  <35.344494, 32.972633, 52.401886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.499798, 32.792366, 52.370514>,  <35.758640, 32.491920, 52.318230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499798, 32.792366, 52.370514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033695, 0.199459, -0.979327,
		-0.761659, -0.629320, -0.154379,
		-0.647102, 0.751114, 0.130715,
		35.305668, 33.017700, 52.409729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080318, 32.430973, 51.898579>,  <35.758640, 32.491920, 52.318230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080318, 32.430973, 51.898579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.114048, 32.826019, 51.951492>,  <35.134285, 33.063049, 51.983242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.114048, 32.826019, 51.951492>,  <35.080318, 32.430973, 51.898579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114048, 32.826019, 51.951492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006707, 0.133316, -0.991051,
		-0.996416, 0.082678, 0.017865,
		0.084320, 0.987619, 0.132283,
		35.139343, 33.122307, 51.991177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892155, 32.666088, 51.343330>,  <35.080318, 32.430973, 51.898579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892155, 32.666088, 51.343330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.051979, 33.008038, 51.475723>,  <35.147873, 33.213207, 51.555157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.051979, 33.008038, 51.475723>,  <34.892155, 32.666088, 51.343330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051979, 33.008038, 51.475723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141073, 0.299410, -0.943638,
		-0.905788, 0.423731, -0.000967,
		0.399559, 0.854872, 0.330978,
		35.171848, 33.264500, 51.575016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553318, 33.072296, 50.957638>,  <34.892155, 32.666088, 51.343330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553318, 33.072296, 50.957638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.897823, 33.238506, 51.074646>,  <35.104527, 33.338234, 51.144852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.897823, 33.238506, 51.074646>,  <34.553318, 33.072296, 50.957638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897823, 33.238506, 51.074646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195115, 0.261109, -0.945385,
		-0.469211, 0.871298, 0.143808,
		0.861262, 0.415526, 0.292519,
		35.156200, 33.363163, 51.162403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844482, 33.135956, 50.632484>,  <34.553318, 33.072296, 50.957638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844482, 33.135956, 50.632484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.574280, 33.149284, 50.337845>,  <33.412159, 33.157280, 50.161060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.574280, 33.149284, 50.337845>,  <33.844482, 33.135956, 50.632484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574280, 33.149284, 50.337845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634406, 0.482874, 0.603624,
		0.375799, 0.875056, -0.305045,
		-0.675503, 0.033319, -0.736604,
		33.371628, 33.159279, 50.116863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551914, 33.716358, 50.714939>,  <33.844482, 33.135956, 50.632484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551914, 33.716358, 50.714939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.276638, 33.549824, 50.477264>,  <33.111473, 33.449902, 50.334660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.276638, 33.549824, 50.477264>,  <33.551914, 33.716358, 50.714939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276638, 33.549824, 50.477264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712524, 0.233470, 0.661666,
		-0.136753, 0.878724, -0.457323,
		-0.688193, -0.416338, -0.594183,
		33.070179, 33.424923, 50.299011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971424, 34.222969, 50.621838>,  <33.551914, 33.716358, 50.714939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971424, 34.222969, 50.621838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.815643, 33.866978, 50.526962>,  <32.722176, 33.653381, 50.470036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.815643, 33.866978, 50.526962>,  <32.971424, 34.222969, 50.621838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815643, 33.866978, 50.526962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762754, 0.167293, 0.624676,
		-0.516270, 0.424199, -0.743990,
		-0.389451, -0.889982, -0.237191,
		32.698807, 33.599983, 50.455807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265347, 34.215164, 50.746281>,  <32.971424, 34.222969, 50.621838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265347, 34.215164, 50.746281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.335190, 33.821400, 50.737923>,  <32.377098, 33.585140, 50.732906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.335190, 33.821400, 50.737923>,  <32.265347, 34.215164, 50.746281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335190, 33.821400, 50.737923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585323, -0.120840, 0.801745,
		-0.791776, -0.127761, -0.597301,
		0.174610, -0.984416, -0.020897,
		32.387573, 33.526073, 50.731655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590019, 33.880230, 50.718807>,  <32.265347, 34.215164, 50.746281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590019, 33.880230, 50.718807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.867025, 33.624187, 50.851883>,  <32.033230, 33.470562, 50.931728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.867025, 33.624187, 50.851883>,  <31.590019, 33.880230, 50.718807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867025, 33.624187, 50.851883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476033, -0.058965, 0.877448,
		-0.542046, -0.766017, -0.345548,
		0.692516, -0.640110, 0.332687,
		32.074780, 33.432156, 50.951691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224903, 33.345623, 50.997978>,  <31.590019, 33.880230, 50.718807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224903, 33.345623, 50.997978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.581995, 33.313347, 51.175301>,  <31.796249, 33.293980, 51.281693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.581995, 33.313347, 51.175301>,  <31.224903, 33.345623, 50.997978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581995, 33.313347, 51.175301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450589, -0.156885, 0.878838,
		-0.001363, -0.984315, -0.176413,
		0.892730, -0.080688, 0.443308,
		31.849813, 33.289139, 51.308292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133987, 32.784431, 51.372044>,  <31.224903, 33.345623, 50.997978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133987, 32.784431, 51.372044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.473875, 32.898373, 51.549507>,  <31.677809, 32.966736, 51.655987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.473875, 32.898373, 51.549507>,  <31.133987, 32.784431, 51.372044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473875, 32.898373, 51.549507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383686, -0.243050, 0.890905,
		0.361608, -0.927246, -0.097231,
		0.849720, 0.284852, 0.443660,
		31.728790, 32.983829, 51.682606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421190, 32.194363, 51.852589>,  <31.133987, 32.784431, 51.372044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421190, 32.194363, 51.852589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.554922, 32.549919, 51.977875>,  <31.635162, 32.763252, 52.053047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.554922, 32.549919, 51.977875>,  <31.421190, 32.194363, 51.852589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554922, 32.549919, 51.977875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244558, -0.239127, 0.939686,
		0.910172, -0.390765, 0.137437,
		0.334332, 0.888887, 0.313212,
		31.655222, 32.816586, 52.071838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778324, 32.116940, 52.453686>,  <31.421190, 32.194363, 51.852589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778324, 32.116940, 52.453686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.713200, 32.510330, 52.485367>,  <31.674126, 32.746365, 52.504375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.713200, 32.510330, 52.485367>,  <31.778324, 32.116940, 52.453686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713200, 32.510330, 52.485367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280106, -0.123046, 0.952051,
		0.946062, 0.132818, 0.295510,
		-0.162811, 0.983473, 0.079206,
		31.664356, 32.805370, 52.509129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045021, 32.329739, 53.154594>,  <31.778324, 32.116940, 52.453686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045021, 32.329739, 53.154594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.846859, 32.664341, 53.060940>,  <31.727961, 32.865105, 53.004745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.846859, 32.664341, 53.060940>,  <32.045021, 32.329739, 53.154594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846859, 32.664341, 53.060940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240324, 0.127031, 0.962345,
		0.834754, 0.533023, 0.138102,
		-0.495408, 0.836510, -0.234138,
		31.698236, 32.915295, 52.990700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150463, 32.787937, 53.653988>,  <32.045021, 32.329739, 53.154594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150463, 32.787937, 53.653988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.805538, 32.920582, 53.500912>,  <31.598583, 33.000168, 53.409065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.805538, 32.920582, 53.500912>,  <32.150463, 32.787937, 53.653988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805538, 32.920582, 53.500912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341628, 0.176870, 0.923042,
		0.373777, 0.926688, -0.039230,
		-0.862311, 0.331610, -0.382693,
		31.546844, 33.020065, 53.386105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973871, 33.297935, 54.099327>,  <32.150463, 32.787937, 53.653988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973871, 33.297935, 54.099327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.624201, 33.234074, 53.915882>,  <31.414398, 33.195759, 53.805817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.624201, 33.234074, 53.915882>,  <31.973871, 33.297935, 54.099327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624201, 33.234074, 53.915882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475114, 0.085947, 0.875717,
		-0.100393, 0.983425, -0.150985,
		-0.874178, -0.159652, -0.458611,
		31.361948, 33.186176, 53.778297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513336, 33.680840, 54.370541>,  <31.973871, 33.297935, 54.099327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513336, 33.680840, 54.370541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.259007, 33.402233, 54.237514>,  <31.106409, 33.235069, 54.157700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.259007, 33.402233, 54.237514>,  <31.513336, 33.680840, 54.370541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259007, 33.402233, 54.237514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493924, 0.036077, 0.868757,
		-0.593101, 0.716638, -0.366962,
		-0.635823, -0.696511, -0.332568,
		31.068260, 33.193279, 54.137745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811512, 33.937145, 54.349751>,  <31.513336, 33.680840, 54.370541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811512, 33.937145, 54.349751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.748171, 33.542358, 54.338329>,  <30.710165, 33.305485, 54.331478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.748171, 33.542358, 54.338329>,  <30.811512, 33.937145, 54.349751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748171, 33.542358, 54.338329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696140, 0.091091, 0.712104,
		-0.700223, 0.132643, -0.701494,
		-0.158355, -0.986969, -0.028555,
		30.700665, 33.246269, 54.329762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061659, 33.788822, 54.350147>,  <30.811512, 33.937145, 54.349751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061659, 33.788822, 54.350147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.219051, 33.449417, 54.491680>,  <30.313488, 33.245773, 54.576599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.219051, 33.449417, 54.491680>,  <30.061659, 33.788822, 54.350147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219051, 33.449417, 54.491680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768899, -0.092768, 0.632605,
		-0.503951, -0.520977, -0.688924,
		0.393482, -0.848515, 0.353828,
		30.337095, 33.194862, 54.597828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498705, 33.444126, 54.474297>,  <30.061659, 33.788822, 54.350147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498705, 33.444126, 54.474297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.775726, 33.261009, 54.697296>,  <29.941938, 33.151138, 54.831097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.775726, 33.261009, 54.697296>,  <29.498705, 33.444126, 54.474297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775726, 33.261009, 54.697296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661355, -0.094324, 0.744118,
		-0.288067, -0.884041, -0.368088,
		0.692551, -0.457792, 0.557494,
		29.983492, 33.123672, 54.864544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119452, 32.899792, 54.779835>,  <29.498705, 33.444126, 54.474297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119452, 32.899792, 54.779835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.436405, 33.001499, 55.001637>,  <29.626577, 33.062523, 55.134716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.436405, 33.001499, 55.001637>,  <29.119452, 32.899792, 54.779835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436405, 33.001499, 55.001637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569420, -0.017777, 0.821855,
		0.218831, -0.966970, 0.130701,
		0.792385, 0.254271, 0.554502,
		29.674120, 33.077782, 55.167988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001169, 32.434807, 55.397694>,  <29.119452, 32.899792, 54.779835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001169, 32.434807, 55.397694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.251360, 32.732635, 55.490986>,  <29.401474, 32.911331, 55.546959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.251360, 32.732635, 55.490986>,  <29.001169, 32.434807, 55.397694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251360, 32.732635, 55.490986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491198, 0.143515, 0.859143,
		0.606221, -0.651934, 0.455497,
		0.625476, 0.744571, 0.233228,
		29.439003, 32.956005, 55.560955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.310997, 32.578217, 56.346462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403124, 32.934444, 56.189571>,  <29.458401, 33.148182, 56.095436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403124, 32.934444, 56.189571>,  <29.310997, 32.578217, 56.346462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403124, 32.934444, 56.189571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314918, 0.449588, 0.835881,
		0.920750, -0.069000, 0.384004,
		0.230319, 0.890567, -0.392229,
		29.472219, 33.201614, 56.071903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711845, 32.905823, 56.794277>,  <29.310997, 32.578217, 56.346462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711845, 32.905823, 56.794277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535753, 33.195206, 56.581558>,  <29.430098, 33.368835, 56.453926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535753, 33.195206, 56.581558>,  <29.711845, 32.905823, 56.794277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535753, 33.195206, 56.581558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270396, 0.457963, 0.846851,
		0.856203, 0.516605, -0.005989,
		-0.440230, 0.723457, -0.531797,
		29.403685, 33.412243, 56.422020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933701, 33.543472, 57.107944>,  <29.711845, 32.905823, 56.794277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933701, 33.543472, 57.107944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608725, 33.634033, 56.893028>,  <29.413738, 33.688370, 56.764080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608725, 33.634033, 56.893028>,  <29.933701, 33.543472, 57.107944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608725, 33.634033, 56.893028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376176, 0.500514, 0.779729,
		0.445457, 0.835599, -0.321469,
		-0.812441, 0.226406, -0.537290,
		29.364992, 33.701954, 56.731842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773659, 34.286339, 57.221813>,  <29.933701, 33.543472, 57.107944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773659, 34.286339, 57.221813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422239, 34.147812, 57.090229>,  <29.211388, 34.064697, 57.011280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422239, 34.147812, 57.090229>,  <29.773659, 34.286339, 57.221813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422239, 34.147812, 57.090229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471759, 0.521305, 0.711115,
		-0.074782, 0.779940, -0.621370,
		-0.878551, -0.346315, -0.328960,
		29.158674, 34.043919, 56.991543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287893, 34.730534, 57.267006>,  <29.773659, 34.286339, 57.221813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287893, 34.730534, 57.267006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043545, 34.414093, 57.254440>,  <28.896935, 34.224228, 57.246899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043545, 34.414093, 57.254440>,  <29.287893, 34.730534, 57.267006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043545, 34.414093, 57.254440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482041, 0.340154, 0.807423,
		-0.628069, 0.508377, -0.589136,
		-0.610872, -0.791106, -0.031419,
		28.860283, 34.176762, 57.245014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672270, 34.986519, 57.431416>,  <29.287893, 34.730534, 57.267006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672270, 34.986519, 57.431416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603270, 34.593876, 57.464138>,  <28.561871, 34.358292, 57.483772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603270, 34.593876, 57.464138>,  <28.672270, 34.986519, 57.431416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603270, 34.593876, 57.464138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628800, 0.173665, 0.757925,
		-0.758191, 0.079301, -0.647192,
		-0.172499, -0.981607, 0.081807,
		28.551519, 34.299393, 57.488682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991896, 34.931934, 57.364933>,  <28.672270, 34.986519, 57.431416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991896, 34.931934, 57.364933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114372, 34.610550, 57.569168>,  <28.187859, 34.417721, 57.691711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114372, 34.610550, 57.569168>,  <27.991896, 34.931934, 57.364933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114372, 34.610550, 57.569168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749875, 0.126854, 0.649304,
		-0.586458, -0.581691, -0.563651,
		0.306192, -0.803457, 0.510590,
		28.206230, 34.369514, 57.722343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333002, 34.789913, 57.577808>,  <27.991896, 34.931934, 57.364933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333002, 34.789913, 57.577808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583244, 34.557026, 57.785519>,  <27.733389, 34.417294, 57.910145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583244, 34.557026, 57.785519>,  <27.333002, 34.789913, 57.577808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583244, 34.557026, 57.785519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604096, 0.059647, 0.794676,
		-0.493646, -0.810843, -0.314399,
		0.625604, -0.582216, 0.519272,
		27.770926, 34.382362, 57.941299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878199, 34.272896, 57.976933>,  <27.333002, 34.789913, 57.577808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878199, 34.272896, 57.976933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233240, 34.280148, 58.161030>,  <27.446266, 34.284500, 58.271488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233240, 34.280148, 58.161030>,  <26.878199, 34.272896, 57.976933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233240, 34.280148, 58.161030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459792, 0.094181, 0.883018,
		-0.027343, -0.995390, 0.091928,
		0.887605, 0.018123, 0.460247,
		27.499521, 34.285587, 58.299103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908323, 33.676449, 58.526215>,  <26.878199, 34.272896, 57.976933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908323, 33.676449, 58.526215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151058, 33.982483, 58.612370>,  <27.296700, 34.166103, 58.664062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151058, 33.982483, 58.612370>,  <26.908323, 33.676449, 58.526215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151058, 33.982483, 58.612370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506820, 0.163726, 0.846361,
		0.612274, -0.622767, 0.487116,
		0.606839, 0.765085, 0.215386,
		27.333109, 34.212009, 58.676987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087477, 33.607571, 59.231388>,  <26.908323, 33.676449, 58.526215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087477, 33.607571, 59.231388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181871, 33.986336, 59.144062>,  <27.238508, 34.213596, 59.091667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181871, 33.986336, 59.144062>,  <27.087477, 33.607571, 59.231388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181871, 33.986336, 59.144062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291478, 0.283291, 0.913666,
		0.927011, -0.151980, 0.342859,
		0.235988, 0.946915, -0.218315,
		27.252668, 34.270409, 59.078568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591969, 33.834705, 59.730442>,  <27.087477, 33.607571, 59.231388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591969, 33.834705, 59.730442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386372, 34.147400, 59.589188>,  <27.263014, 34.335014, 59.504436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386372, 34.147400, 59.589188>,  <27.591969, 33.834705, 59.730442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386372, 34.147400, 59.589188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276872, 0.238454, 0.930850,
		0.811884, 0.576222, 0.093877,
		-0.513991, 0.781734, -0.353137,
		27.232174, 34.381920, 59.483246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709843, 34.324963, 60.144894>,  <27.591969, 33.834705, 59.730442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709843, 34.324963, 60.144894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394352, 34.484318, 59.957619>,  <27.205057, 34.579929, 59.845253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394352, 34.484318, 59.957619>,  <27.709843, 34.324963, 60.144894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394352, 34.484318, 59.957619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287626, 0.433947, 0.853792,
		0.543306, 0.808072, -0.227681,
		-0.788727, 0.398383, -0.468188,
		27.157734, 34.603832, 59.817162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609713, 34.964840, 60.363995>,  <27.709843, 34.324963, 60.144894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609713, 34.964840, 60.363995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238588, 34.917049, 60.222633>,  <27.015915, 34.888374, 60.137817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238588, 34.917049, 60.222633>,  <27.609713, 34.964840, 60.363995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238588, 34.917049, 60.222633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362505, 0.512456, 0.778447,
		0.088100, 0.850361, -0.518771,
		-0.927808, -0.119476, -0.353408,
		26.960245, 34.881207, 60.116611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307785, 35.550137, 60.444447>,  <27.609713, 34.964840, 60.363995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307785, 35.550137, 60.444447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977121, 35.333065, 60.384945>,  <26.778723, 35.202820, 60.349243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977121, 35.333065, 60.384945>,  <27.307785, 35.550137, 60.444447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977121, 35.333065, 60.384945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463265, 0.506314, 0.727346,
		-0.319401, 0.670182, -0.669955,
		-0.826661, -0.542682, -0.148755,
		26.729122, 35.170261, 60.340317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726965, 36.018795, 60.205456>,  <27.307785, 35.550137, 60.444447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726965, 36.018795, 60.205456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566406, 35.686474, 60.359676>,  <26.470072, 35.487080, 60.452209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566406, 35.686474, 60.359676>,  <26.726965, 36.018795, 60.205456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566406, 35.686474, 60.359676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456991, 0.546476, 0.701800,
		-0.793751, 0.105506, -0.599022,
		-0.401395, -0.830803, 0.385550,
		26.445988, 35.437233, 60.475342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021879, 36.208225, 60.234074>,  <26.726965, 36.018795, 60.205456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021879, 36.208225, 60.234074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058084, 35.893639, 60.478462>,  <26.079807, 35.704887, 60.625095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058084, 35.893639, 60.478462>,  <26.021879, 36.208225, 60.234074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058084, 35.893639, 60.478462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493990, 0.497241, 0.713250,
		-0.864744, -0.366369, -0.343499,
		0.090511, -0.786463, 0.610969,
		26.085238, 35.657700, 60.661755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358252, 35.924904, 60.391571>,  <26.021879, 36.208225, 60.234074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358252, 35.924904, 60.391571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593521, 35.799351, 60.689705>,  <25.734684, 35.724018, 60.868584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593521, 35.799351, 60.689705>,  <25.358252, 35.924904, 60.391571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593521, 35.799351, 60.689705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569836, 0.493126, 0.657354,
		-0.573878, -0.811359, 0.111181,
		0.588176, -0.313886, 0.745335,
		25.769974, 35.705185, 60.913307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837538, 35.737492, 60.911633>,  <25.358252, 35.924904, 60.391571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837538, 35.737492, 60.911633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192255, 35.793983, 61.087658>,  <25.405085, 35.827877, 61.193272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192255, 35.793983, 61.087658>,  <24.837538, 35.737492, 60.911633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.192255, 35.793983, 61.087658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461416, 0.324797, 0.825592,
		-0.026332, -0.935180, 0.353193,
		0.886793, 0.141230, 0.440059,
		25.458294, 35.836353, 61.219677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.783560, 35.405594, 61.502136>,  <24.837538, 35.737492, 60.911633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.783560, 35.405594, 61.502136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102430, 35.642593, 61.548531>,  <25.293753, 35.784794, 61.576366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102430, 35.642593, 61.548531>,  <24.783560, 35.405594, 61.502136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102430, 35.642593, 61.548531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373927, 0.333691, 0.865349,
		0.474019, -0.733205, 0.487562,
		0.797173, 0.592504, 0.115989,
		25.341583, 35.820343, 61.583328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782156, 35.458958, 62.206871>,  <24.783560, 35.405594, 61.502136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782156, 35.458958, 62.206871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017567, 35.763817, 62.098969>,  <25.158813, 35.946732, 62.034229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017567, 35.763817, 62.098969>,  <24.782156, 35.458958, 62.206871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017567, 35.763817, 62.098969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396911, 0.563051, 0.724869,
		0.704342, -0.319538, 0.633875,
		0.588527, 0.762148, -0.269752,
		25.194124, 35.992462, 62.018044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161139, 35.691551, 62.820801>,  <24.782156, 35.458958, 62.206871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.161139, 35.691551, 62.820801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154884, 35.998520, 62.564423>,  <25.151133, 36.182701, 62.410595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154884, 35.998520, 62.564423>,  <25.161139, 35.691551, 62.820801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.154884, 35.998520, 62.564423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514538, 0.543459, 0.663252,
		0.857325, 0.340162, 0.386373,
		-0.015635, 0.767426, -0.640947,
		25.150194, 36.228748, 62.372139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188831, 34.935005, 62.925594>,  <25.161139, 35.691551, 62.820801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188831, 34.935005, 62.925594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379000, 34.703114, 62.660904>,  <25.493101, 34.563976, 62.502090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379000, 34.703114, 62.660904>,  <25.188831, 34.935005, 62.925594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379000, 34.703114, 62.660904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857440, 0.473687, 0.201042,
		0.196902, -0.662973, 0.722286,
		0.475422, -0.579731, -0.661729,
		25.521626, 34.529194, 62.462387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864597, 34.807224, 63.162239>,  <25.188831, 34.935005, 62.925594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864597, 34.807224, 63.162239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987694, 34.747608, 62.786350>,  <26.061552, 34.711838, 62.560818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987694, 34.747608, 62.786350>,  <25.864597, 34.807224, 63.162239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987694, 34.747608, 62.786350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816114, 0.549085, 0.180175,
		0.489135, -0.822370, 0.290609,
		0.307740, -0.149041, -0.939725,
		26.080015, 34.702896, 62.504433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324276, 34.380005, 63.563206>,  <25.864597, 34.807224, 63.162239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324276, 34.380005, 63.563206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570093, 34.354843, 63.877754>,  <26.717585, 34.339748, 64.066483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570093, 34.354843, 63.877754>,  <26.324276, 34.380005, 63.563206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570093, 34.354843, 63.877754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681541, 0.544338, -0.489079,
		-0.397287, 0.836504, 0.377391,
		0.614545, -0.062903, 0.786370,
		26.754457, 34.335972, 64.113663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531610, 35.055573, 63.640480>,  <26.324276, 34.380005, 63.563206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531610, 35.055573, 63.640480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793133, 34.860035, 63.871502>,  <26.950047, 34.742714, 64.010117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793133, 34.860035, 63.871502>,  <26.531610, 35.055573, 63.640480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793133, 34.860035, 63.871502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756579, 0.411038, -0.508563,
		0.011211, 0.769467, 0.638588,
		0.653806, -0.488844, 0.577554,
		26.989275, 34.713383, 64.044769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902586, 35.568317, 63.901199>,  <26.531610, 35.055573, 63.640480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902586, 35.568317, 63.901199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118874, 35.232220, 63.917297>,  <27.248646, 35.030563, 63.926956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118874, 35.232220, 63.917297>,  <26.902586, 35.568317, 63.901199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118874, 35.232220, 63.917297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749358, 0.459390, -0.476890,
		0.382212, 0.288024, 0.878041,
		0.540719, -0.840240, 0.040249,
		27.281090, 34.980148, 63.929371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610020, 35.772499, 64.103119>,  <26.902586, 35.568317, 63.901199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610020, 35.772499, 64.103119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659380, 35.413857, 63.933006>,  <27.688995, 35.198669, 63.830936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659380, 35.413857, 63.933006>,  <27.610020, 35.772499, 64.103119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659380, 35.413857, 63.933006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771073, 0.356404, -0.527658,
		0.624676, -0.262813, 0.735329,
		0.123399, -0.896608, -0.425285,
		27.696400, 35.144875, 63.805420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380001, 35.709198, 63.930428>,  <27.610020, 35.772499, 64.103119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380001, 35.709198, 63.930428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257530, 35.407734, 63.697788>,  <28.184048, 35.226856, 63.558205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257530, 35.407734, 63.697788>,  <28.380001, 35.709198, 63.930428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257530, 35.407734, 63.697788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741165, 0.194697, -0.642470,
		0.597437, -0.627771, 0.498972,
		-0.306176, -0.753656, -0.581601,
		28.165678, 35.181637, 63.523308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939987, 35.299751, 63.750271>,  <28.380001, 35.709198, 63.930428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939987, 35.299751, 63.750271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655056, 35.233688, 63.477417>,  <28.484097, 35.194050, 63.313705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655056, 35.233688, 63.477417>,  <28.939987, 35.299751, 63.750271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655056, 35.233688, 63.477417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642886, 0.236387, -0.728573,
		0.281577, -0.957520, -0.062208,
		-0.712328, -0.165157, -0.682137,
		28.441357, 35.184143, 63.272778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213633, 34.777874, 63.267334>,  <28.939987, 35.299751, 63.750271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213633, 34.777874, 63.267334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909491, 34.947559, 63.070602>,  <28.727005, 35.049370, 62.952564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909491, 34.947559, 63.070602>,  <29.213633, 34.777874, 63.267334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909491, 34.947559, 63.070602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553824, 0.027860, -0.832168,
		-0.339319, -0.905131, -0.256125,
		-0.760357, 0.424218, -0.491830,
		28.681383, 35.074825, 62.923054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031265, 34.348515, 62.711079>,  <29.213633, 34.777874, 63.267334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031265, 34.348515, 62.711079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890663, 34.709339, 62.610897>,  <28.806301, 34.925835, 62.550789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890663, 34.709339, 62.610897>,  <29.031265, 34.348515, 62.711079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890663, 34.709339, 62.610897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372788, -0.110531, -0.921310,
		-0.858762, -0.417212, -0.297426,
		-0.351507, 0.902063, -0.250452,
		28.785212, 34.979958, 62.535763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669687, 34.189590, 62.166359>,  <29.031265, 34.348515, 62.711079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669687, 34.189590, 62.166359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736164, 34.583225, 62.141193>,  <28.776051, 34.819405, 62.126095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736164, 34.583225, 62.141193>,  <28.669687, 34.189590, 62.166359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736164, 34.583225, 62.141193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438509, -0.130894, -0.889144,
		-0.883227, 0.120180, -0.453284,
		0.166190, 0.984085, -0.062909,
		28.786020, 34.878452, 62.122322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369884, 34.450428, 61.572197>,  <28.669687, 34.189590, 62.166359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369884, 34.450428, 61.572197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665127, 34.707886, 61.653118>,  <28.842272, 34.862358, 61.701672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665127, 34.707886, 61.653118>,  <28.369884, 34.450428, 61.572197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665127, 34.707886, 61.653118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270851, -0.008057, -0.962587,
		-0.617930, 0.765285, -0.180278,
		0.738107, 0.643641, 0.202299,
		28.886559, 34.900978, 61.713806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327154, 34.957176, 60.953655>,  <28.369884, 34.450428, 61.572197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327154, 34.957176, 60.953655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690180, 34.984772, 61.119339>,  <28.907995, 35.001328, 61.218750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690180, 34.984772, 61.119339>,  <28.327154, 34.957176, 60.953655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690180, 34.984772, 61.119339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419912, -0.151875, -0.894767,
		0.001183, 0.985989, -0.166803,
		0.907564, 0.068985, 0.414209,
		28.962448, 35.005466, 61.243603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708420, 35.327587, 60.461754>,  <28.327154, 34.957176, 60.953655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708420, 35.327587, 60.461754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004118, 35.177841, 60.685669>,  <29.181538, 35.087994, 60.820019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004118, 35.177841, 60.685669>,  <28.708420, 35.327587, 60.461754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004118, 35.177841, 60.685669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482145, -0.286114, -0.828055,
		0.470160, 0.882036, -0.031010,
		0.739247, -0.374367, 0.559789,
		29.225891, 35.065533, 60.853607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371988, 35.497730, 60.143002>,  <28.708420, 35.327587, 60.461754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371988, 35.497730, 60.143002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456059, 35.179241, 60.369930>,  <29.506500, 34.988148, 60.506088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456059, 35.179241, 60.369930>,  <29.371988, 35.497730, 60.143002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456059, 35.179241, 60.369930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380729, -0.467814, -0.797619,
		0.900485, 0.383634, 0.204824,
		0.210174, -0.796226, 0.567320,
		29.519112, 34.940372, 60.540127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044558, 35.269169, 59.919056>,  <29.371988, 35.497730, 60.143002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044558, 35.269169, 59.919056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916063, 34.957760, 60.134727>,  <29.838966, 34.770916, 60.264130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916063, 34.957760, 60.134727>,  <30.044558, 35.269169, 59.919056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916063, 34.957760, 60.134727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545142, -0.617582, -0.566933,
		0.774357, 0.111812, 0.622792,
		-0.321235, -0.778518, 0.539182,
		29.819693, 34.724205, 60.296482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624912, 34.872017, 59.995655>,  <30.044558, 35.269169, 59.919056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624912, 34.872017, 59.995655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295216, 34.646915, 60.020748>,  <30.097397, 34.511856, 60.035805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295216, 34.646915, 60.020748>,  <30.624912, 34.872017, 59.995655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295216, 34.646915, 60.020748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426994, -0.690490, -0.583866,
		0.371891, -0.454458, 0.809422,
		-0.824241, -0.562753, 0.062736,
		30.047943, 34.478088, 60.039570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806299, 34.275616, 59.952415>,  <30.624912, 34.872017, 59.995655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806299, 34.275616, 59.952415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431767, 34.150074, 59.889446>,  <30.207047, 34.074749, 59.851665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431767, 34.150074, 59.889446>,  <30.806299, 34.275616, 59.952415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431767, 34.150074, 59.889446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343466, -0.725630, -0.596232,
		0.072899, -0.612339, 0.787228,
		-0.936331, -0.313851, -0.157420,
		30.150867, 34.055920, 59.842220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966696, 33.644222, 59.981323>,  <30.806299, 34.275616, 59.952415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966696, 33.644222, 59.981323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623741, 33.690269, 59.780670>,  <30.417969, 33.717896, 59.660278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623741, 33.690269, 59.780670>,  <30.966696, 33.644222, 59.981323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623741, 33.690269, 59.780670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266891, -0.733936, -0.624586,
		-0.440067, -0.669393, 0.598543,
		-0.857386, 0.115114, -0.501636,
		30.366526, 33.724804, 59.630180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800049, 32.955818, 59.806061>,  <30.966696, 33.644222, 59.981323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800049, 32.955818, 59.806061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597427, 33.199341, 59.561844>,  <30.475855, 33.345455, 59.415314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597427, 33.199341, 59.561844>,  <30.800049, 32.955818, 59.806061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597427, 33.199341, 59.561844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302304, -0.537753, -0.787042,
		-0.807476, -0.583246, 0.088355,
		-0.506553, 0.608807, -0.610540,
		30.445461, 33.381981, 59.378681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540491, 32.485233, 59.329475>,  <30.800049, 32.955818, 59.806061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540491, 32.485233, 59.329475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537424, 32.845642, 59.155994>,  <30.535583, 33.061890, 59.051907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537424, 32.845642, 59.155994>,  <30.540491, 32.485233, 59.329475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537424, 32.845642, 59.155994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598559, -0.343298, -0.723791,
		-0.801042, -0.265145, -0.536684,
		-0.007667, 0.901024, -0.433702,
		30.535124, 33.115948, 59.025883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309359, 32.401569, 58.590752>,  <30.540491, 32.485233, 59.329475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309359, 32.401569, 58.590752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492178, 32.757343, 58.589386>,  <30.601870, 32.970806, 58.588566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492178, 32.757343, 58.589386>,  <30.309359, 32.401569, 58.590752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492178, 32.757343, 58.589386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545370, -0.283278, -0.788876,
		-0.702621, 0.358693, -0.614543,
		0.457051, 0.889434, -0.003416,
		30.629293, 33.024174, 58.588360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.445755, 36.236729, 50.803551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.501850, 35.932850, 51.057537>,  <47.535507, 35.750523, 51.209930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.501850, 35.932850, 51.057537>,  <47.445755, 36.236729, 50.803551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.501850, 35.932850, 51.057537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989847, -0.092576, 0.107858,
		-0.023157, -0.643650, -0.764970,
		0.140240, -0.759701, 0.634971,
		47.543922, 35.704941, 51.248028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.079540, 35.679596, 50.548416>,  <47.445755, 36.236729, 50.803551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.079540, 35.679596, 50.548416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.119736, 35.639118, 50.944328>,  <47.143852, 35.614830, 51.181873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.119736, 35.639118, 50.944328>,  <47.079540, 35.679596, 50.548416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.119736, 35.639118, 50.944328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992497, -0.079847, 0.092602,
		0.069660, -0.991657, -0.108458,
		0.100489, -0.101194, 0.989778,
		47.149883, 35.608761, 51.241261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641857, 35.211613, 50.675564>,  <47.079540, 35.679596, 50.548416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641857, 35.211613, 50.675564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.688801, 35.321949, 51.057167>,  <46.716969, 35.388149, 51.286129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.688801, 35.321949, 51.057167>,  <46.641857, 35.211613, 50.675564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688801, 35.321949, 51.057167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969558, -0.176057, 0.170181,
		0.214903, -0.944942, 0.246783,
		0.117363, 0.275843, 0.954011,
		46.724010, 35.404701, 51.343369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468624, 34.653320, 51.055096>,  <46.641857, 35.211613, 50.675564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468624, 34.653320, 51.055096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.446178, 34.974476, 51.292492>,  <46.432713, 35.167168, 51.434929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.446178, 34.974476, 51.292492>,  <46.468624, 34.653320, 51.055096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.446178, 34.974476, 51.292492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942167, -0.239295, 0.234646,
		0.330413, -0.545999, 0.769878,
		-0.056111, 0.802884, 0.593488,
		46.429344, 35.215340, 51.470539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211681, 34.418495, 51.815952>,  <46.468624, 34.653320, 51.055096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211681, 34.418495, 51.815952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.122082, 34.807789, 51.795429>,  <46.068321, 35.041367, 51.783115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.122082, 34.807789, 51.795429>,  <46.211681, 34.418495, 51.815952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.122082, 34.807789, 51.795429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973038, -0.220365, 0.068092,
		0.054964, 0.065174, 0.996359,
		-0.224001, 0.973238, -0.051304,
		46.054882, 35.099762, 51.780037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857330, 34.644688, 52.493233>,  <46.211681, 34.418495, 51.815952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857330, 34.644688, 52.493233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.740425, 34.910946, 52.218571>,  <45.670280, 35.070702, 52.053772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.740425, 34.910946, 52.218571>,  <45.857330, 34.644688, 52.493233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740425, 34.910946, 52.218571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955606, -0.175205, 0.236896,
		0.037384, 0.725409, 0.687302,
		-0.292265, 0.665647, -0.686655,
		45.652744, 35.110641, 52.012573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394978, 35.049900, 52.801491>,  <45.857330, 34.644688, 52.493233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394978, 35.049900, 52.801491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.284710, 35.181904, 52.440357>,  <45.218548, 35.261105, 52.223679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.284710, 35.181904, 52.440357>,  <45.394978, 35.049900, 52.801491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284710, 35.181904, 52.440357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954753, -0.203034, 0.217311,
		-0.111591, 0.921885, 0.371045,
		-0.275671, 0.330006, -0.902830,
		45.202007, 35.280907, 52.169510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939671, 35.719612, 52.847355>,  <45.394978, 35.049900, 52.801491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939671, 35.719612, 52.847355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.875072, 35.524040, 52.504456>,  <44.836315, 35.406696, 52.298717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.875072, 35.524040, 52.504456>,  <44.939671, 35.719612, 52.847355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875072, 35.524040, 52.504456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983427, 0.007193, 0.181161,
		-0.082409, 0.872296, -0.481985,
		-0.161493, -0.488926, -0.857247,
		44.826626, 35.377361, 52.247280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464348, 36.091881, 52.497692>,  <44.939671, 35.719612, 52.847355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464348, 36.091881, 52.497692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.444305, 35.716072, 52.362171>,  <44.432278, 35.490585, 52.280857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.444305, 35.716072, 52.362171>,  <44.464348, 36.091881, 52.497692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444305, 35.716072, 52.362171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996785, 0.068282, -0.041926,
		0.062524, 0.335610, -0.939924,
		-0.050109, -0.939523, -0.338800,
		44.429272, 35.434216, 52.260529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128910, 36.198498, 51.948383>,  <44.464348, 36.091881, 52.497692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128910, 36.198498, 51.948383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.077190, 35.802502, 51.971039>,  <44.046158, 35.564903, 51.984631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.077190, 35.802502, 51.971039>,  <44.128910, 36.198498, 51.948383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077190, 35.802502, 51.971039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989695, 0.125296, -0.069318,
		0.061528, -0.065019, -0.995985,
		-0.129300, -0.989986, 0.056640,
		44.038399, 35.505505, 51.988029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664780, 36.052074, 51.478256>,  <44.128910, 36.198498, 51.948383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664780, 36.052074, 51.478256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.648716, 35.736931, 51.724072>,  <43.639076, 35.547844, 51.871563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.648716, 35.736931, 51.724072>,  <43.664780, 36.052074, 51.478256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648716, 35.736931, 51.724072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993346, 0.097925, 0.060623,
		-0.107941, -0.608017, -0.786552,
		-0.040163, -0.787862, 0.614541,
		43.636665, 35.500572, 51.908432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134537, 35.752739, 51.158875>,  <43.664780, 36.052074, 51.478256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134537, 35.752739, 51.158875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.166073, 35.570431, 51.513515>,  <43.184994, 35.461048, 51.726299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.166073, 35.570431, 51.513515>,  <43.134537, 35.752739, 51.158875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166073, 35.570431, 51.513515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987427, 0.086527, 0.132289,
		-0.137008, -0.885884, -0.443214,
		0.078842, -0.455766, 0.886601,
		43.189724, 35.433701, 51.779495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628540, 35.196224, 51.258823>,  <43.134537, 35.752739, 51.158875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628540, 35.196224, 51.258823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.722786, 35.291847, 51.635616>,  <42.779335, 35.349220, 51.861694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.722786, 35.291847, 51.635616>,  <42.628540, 35.196224, 51.258823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722786, 35.291847, 51.635616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970010, 0.117414, 0.212826,
		-0.059727, -0.963882, 0.259545,
		0.235614, 0.239049, 0.941988,
		42.793468, 35.363564, 51.918213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247318, 34.659313, 51.720486>,  <42.628540, 35.196224, 51.258823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247318, 34.659313, 51.720486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.341785, 35.001945, 51.904003>,  <42.398464, 35.207527, 52.014114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.341785, 35.001945, 51.904003>,  <42.247318, 34.659313, 51.720486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341785, 35.001945, 51.904003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955135, 0.117788, 0.271742,
		0.178730, -0.502386, 0.845969,
		0.236164, 0.856583, 0.458794,
		42.412636, 35.258919, 52.041641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919212, 34.699993, 52.289436>,  <42.247318, 34.659313, 51.720486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919212, 34.699993, 52.289436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.978935, 35.093208, 52.246838>,  <42.014767, 35.329140, 52.221279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.978935, 35.093208, 52.246838>,  <41.919212, 34.699993, 52.289436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978935, 35.093208, 52.246838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907125, 0.179035, 0.380881,
		0.393488, 0.039737, 0.918471,
		0.149304, 0.983040, -0.106494,
		42.023727, 35.388119, 52.214890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672939, 35.019691, 52.892948>,  <41.919212, 34.699993, 52.289436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672939, 35.019691, 52.892948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.668636, 35.287663, 52.596008>,  <41.666054, 35.448444, 52.417847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.668636, 35.287663, 52.596008>,  <41.672939, 35.019691, 52.892948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668636, 35.287663, 52.596008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919637, 0.284866, 0.270404,
		0.392621, 0.685597, 0.613029,
		-0.010757, 0.669931, -0.742345,
		41.665409, 35.488644, 52.373306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322586, 35.647457, 53.160164>,  <41.672939, 35.019691, 52.892948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322586, 35.647457, 53.160164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309837, 35.649479, 52.760372>,  <41.302189, 35.650692, 52.520496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309837, 35.649479, 52.760372>,  <41.322586, 35.647457, 53.160164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309837, 35.649479, 52.760372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961177, 0.274068, 0.032039,
		0.274087, 0.961697, -0.003873,
		-0.031873, 0.005059, -0.999479,
		41.300274, 35.650997, 52.460529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931629, 36.157715, 53.026081>,  <41.322586, 35.647457, 53.160164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931629, 36.157715, 53.026081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.896652, 35.947174, 52.687778>,  <40.875668, 35.820850, 52.484798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.896652, 35.947174, 52.687778>,  <40.931629, 36.157715, 53.026081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896652, 35.947174, 52.687778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984832, 0.173402, -0.006099,
		0.149866, 0.832394, -0.533535,
		-0.087439, -0.526357, -0.845756,
		40.870422, 35.789268, 52.434052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349983, 36.431782, 52.713596>,  <40.931629, 36.157715, 53.026081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349983, 36.431782, 52.713596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.387440, 36.099663, 52.493839>,  <40.409916, 35.900391, 52.361984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.387440, 36.099663, 52.493839>,  <40.349983, 36.431782, 52.713596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387440, 36.099663, 52.493839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987470, -0.007058, -0.157648,
		0.127017, 0.557276, -0.820554,
		0.093646, -0.830297, -0.549397,
		40.415535, 35.850574, 52.329021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881130, 36.582329, 52.128204>,  <40.349983, 36.431782, 52.713596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881130, 36.582329, 52.128204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.940212, 36.186760, 52.122284>,  <39.975662, 35.949421, 52.118732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.940212, 36.186760, 52.122284>,  <39.881130, 36.582329, 52.128204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940212, 36.186760, 52.122284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983057, -0.148441, 0.107537,
		-0.108543, -0.001330, -0.994091,
		0.147706, -0.988920, -0.014805,
		39.984524, 35.890083, 52.117844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362606, 36.234314, 51.651436>,  <39.881130, 36.582329, 52.128204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362606, 36.234314, 51.651436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480934, 35.935345, 51.889378>,  <39.551929, 35.755962, 52.032143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480934, 35.935345, 51.889378>,  <39.362606, 36.234314, 51.651436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480934, 35.935345, 51.889378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954989, -0.245792, 0.166079,
		0.022078, -0.617204, -0.786493,
		0.295818, -0.747425, 0.594850,
		39.569679, 35.711117, 52.067833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928734, 35.729004, 51.474140>,  <39.362606, 36.234314, 51.651436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928734, 35.729004, 51.474140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.031242, 35.644421, 51.851418>,  <39.092747, 35.593670, 52.077785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.031242, 35.644421, 51.851418>,  <38.928734, 35.729004, 51.474140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031242, 35.644421, 51.851418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945025, -0.259847, 0.198514,
		0.203108, -0.942213, -0.266423,
		0.256272, -0.211457, 0.943192,
		39.108124, 35.580982, 52.134377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551529, 35.117420, 51.549076>,  <38.928734, 35.729004, 51.474140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551529, 35.117420, 51.549076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624416, 35.324352, 51.883541>,  <38.668148, 35.448513, 52.084221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624416, 35.324352, 51.883541>,  <38.551529, 35.117420, 51.549076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624416, 35.324352, 51.883541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947284, -0.135565, 0.290303,
		0.263537, -0.844981, 0.465355,
		0.182215, 0.517329, 0.836163,
		38.679081, 35.479549, 52.134392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493202, 34.808743, 50.808250>,  <38.551529, 35.117420, 51.549076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493202, 34.808743, 50.808250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.525494, 34.864754, 50.413509>,  <38.544868, 34.898361, 50.176666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.525494, 34.864754, 50.413509>,  <38.493202, 34.808743, 50.808250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525494, 34.864754, 50.413509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791581, -0.592657, -0.148851,
		-0.605708, 0.793190, 0.062997,
		0.080731, 0.140027, -0.986851,
		38.549713, 34.906761, 50.117455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760197, 34.165359, 50.467133>,  <38.493202, 34.808743, 50.808250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760197, 34.165359, 50.467133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.860432, 33.876968, 50.208710>,  <38.920574, 33.703934, 50.053654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.860432, 33.876968, 50.208710>,  <38.760197, 34.165359, 50.467133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860432, 33.876968, 50.208710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966253, -0.145141, -0.212813,
		0.059665, 0.677585, -0.733020,
		0.250590, -0.720980, -0.646059,
		38.935608, 33.660675, 50.014893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277245, 34.303082, 49.801952>,  <38.760197, 34.165359, 50.467133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277245, 34.303082, 49.801952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.392174, 33.923023, 49.850410>,  <38.461132, 33.694988, 49.879486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.392174, 33.923023, 49.850410>,  <38.277245, 34.303082, 49.801952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392174, 33.923023, 49.850410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942584, -0.302958, -0.140544,
		0.170237, -0.073805, -0.982635,
		0.287324, -0.950142, 0.121142,
		38.478371, 33.637981, 49.886753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887024, 33.998337, 49.303810>,  <38.277245, 34.303082, 49.801952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887024, 33.998337, 49.303810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989391, 33.700417, 49.550316>,  <38.050812, 33.521664, 49.698219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989391, 33.700417, 49.550316>,  <37.887024, 33.998337, 49.303810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989391, 33.700417, 49.550316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924524, -0.374816, -0.069055,
		0.282418, -0.552080, -0.784505,
		0.255921, -0.744796, 0.616266,
		38.066166, 33.476978, 49.735195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549381, 33.486233, 49.045959>,  <37.887024, 33.998337, 49.303810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549381, 33.486233, 49.045959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665741, 33.338913, 49.399170>,  <37.735558, 33.250519, 49.611095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665741, 33.338913, 49.399170>,  <37.549381, 33.486233, 49.045959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665741, 33.338913, 49.399170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916460, -0.372288, 0.146637,
		0.274733, -0.851913, -0.445833,
		0.290900, -0.368302, 0.883024,
		37.753010, 33.228424, 49.664078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435074, 32.782169, 49.031113>,  <37.549381, 33.486233, 49.045959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435074, 32.782169, 49.031113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445339, 32.914612, 49.408409>,  <37.451500, 32.994076, 49.634789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445339, 32.914612, 49.408409>,  <37.435074, 32.782169, 49.031113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445339, 32.914612, 49.408409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969083, -0.223381, 0.104783,
		0.245397, -0.916772, 0.315133,
		0.025667, 0.331103, 0.943245,
		37.453041, 33.013943, 49.691383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272675, 32.263531, 49.357281>,  <37.435074, 32.782169, 49.031113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272675, 32.263531, 49.357281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.198086, 32.584202, 49.584454>,  <37.153332, 32.776604, 49.720757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.198086, 32.584202, 49.584454>,  <37.272675, 32.263531, 49.357281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198086, 32.584202, 49.584454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949443, -0.295648, 0.105596,
		0.252562, -0.519529, 0.816273,
		-0.186469, 0.801674, 0.567933,
		37.142143, 32.824703, 49.754833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689194, 32.106632, 49.618610>,  <37.272675, 32.263531, 49.357281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689194, 32.106632, 49.618610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678062, 32.501537, 49.681278>,  <36.671383, 32.738480, 49.718880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678062, 32.501537, 49.681278>,  <36.689194, 32.106632, 49.618610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678062, 32.501537, 49.681278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976620, 0.006572, -0.214874,
		-0.213166, -0.158987, 0.963993,
		-0.027827, 0.987259, 0.156671,
		36.669716, 32.797714, 49.728279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041466, 32.251457, 50.024628>,  <36.689194, 32.106632, 49.618610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041466, 32.251457, 50.024628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154194, 32.577991, 49.822964>,  <36.221828, 32.773911, 49.701965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154194, 32.577991, 49.822964>,  <36.041466, 32.251457, 50.024628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154194, 32.577991, 49.822964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954779, 0.186711, -0.231381,
		-0.094752, 0.546567, 0.832038,
		0.281816, 0.816335, -0.504159,
		36.238739, 32.822891, 49.671715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493774, 32.662949, 50.145863>,  <36.041466, 32.251457, 50.024628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493774, 32.662949, 50.145863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.681324, 32.841377, 49.840923>,  <35.793854, 32.948433, 49.657959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.681324, 32.841377, 49.840923>,  <35.493774, 32.662949, 50.145863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681324, 32.841377, 49.840923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871388, 0.374674, -0.316705,
		0.144361, 0.812799, 0.564374,
		0.468874, 0.446069, -0.762352,
		35.821987, 32.975197, 49.612217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166145, 33.310207, 50.044754>,  <35.493774, 32.662949, 50.145863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166145, 33.310207, 50.044754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.350449, 33.254635, 49.694122>,  <35.461033, 33.221291, 49.483742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.350449, 33.254635, 49.694122>,  <35.166145, 33.310207, 50.044754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350449, 33.254635, 49.694122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781339, 0.404964, -0.474883,
		0.420960, 0.903716, 0.078040,
		0.460763, -0.138930, -0.876582,
		35.488678, 33.212955, 49.431149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993073, 33.879658, 49.668625>,  <35.166145, 33.310207, 50.044754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993073, 33.879658, 49.668625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108738, 33.613689, 49.393154>,  <35.178139, 33.454109, 49.227875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108738, 33.613689, 49.393154>,  <34.993073, 33.879658, 49.668625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108738, 33.613689, 49.393154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788062, 0.243066, -0.565577,
		0.543455, 0.706260, -0.453711,
		0.289162, -0.664918, -0.688672,
		35.195488, 33.414215, 49.186554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.255869, 32.804436, 53.185158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590694, 32.922577, 53.369370>,  <30.791590, 32.993462, 53.479897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590694, 32.922577, 53.369370>,  <30.255869, 32.804436, 53.185158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590694, 32.922577, 53.369370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438538, 0.141089, -0.887569,
		-0.327126, 0.944912, -0.011425,
		0.837062, 0.295357, 0.460534,
		30.841812, 33.011185, 53.507530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489204, 33.336624, 52.824856>,  <30.255869, 32.804436, 53.185158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489204, 33.336624, 52.824856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.832708, 33.261154, 53.015408>,  <31.038811, 33.215874, 53.129738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.832708, 33.261154, 53.015408>,  <30.489204, 33.336624, 52.824856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832708, 33.261154, 53.015408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508540, 0.200288, -0.837420,
		0.062585, 0.961399, 0.267946,
		0.858761, -0.188671, 0.476375,
		31.090336, 33.204552, 53.158321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956270, 33.970768, 52.769859>,  <30.489204, 33.336624, 52.824856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956270, 33.970768, 52.769859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161308, 33.630806, 52.818703>,  <31.284332, 33.426830, 52.848007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161308, 33.630806, 52.818703>,  <30.956270, 33.970768, 52.769859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161308, 33.630806, 52.818703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562218, 0.224742, -0.795866,
		0.648966, 0.476609, 0.593032,
		0.512596, -0.849903, 0.122108,
		31.315086, 33.375835, 52.855335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676828, 34.110069, 52.629158>,  <30.956270, 33.970768, 52.769859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676828, 34.110069, 52.629158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.656752, 33.711830, 52.597507>,  <31.644705, 33.472885, 52.578518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.656752, 33.711830, 52.597507>,  <31.676828, 34.110069, 52.629158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656752, 33.711830, 52.597507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690625, 0.022634, -0.722859,
		0.721469, -0.090932, 0.686450,
		-0.050194, -0.995600, -0.079130,
		31.641693, 33.413151, 52.573769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363323, 33.886944, 52.586998>,  <31.676828, 34.110069, 52.629158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363323, 33.886944, 52.586998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.156513, 33.581573, 52.432148>,  <32.032429, 33.398350, 52.339237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.156513, 33.581573, 52.432148>,  <32.363323, 33.886944, 52.586998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156513, 33.581573, 52.432148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586957, 0.012981, -0.809514,
		0.623032, -0.645761, 0.441389,
		-0.517023, -0.763429, -0.387122,
		32.001408, 33.352547, 52.316010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727013, 33.712269, 52.107609>,  <32.363323, 33.886944, 52.586998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727013, 33.712269, 52.107609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428841, 33.463726, 52.011066>,  <32.249939, 33.314602, 51.953140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428841, 33.463726, 52.011066>,  <32.727013, 33.712269, 52.107609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428841, 33.463726, 52.011066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421774, -0.159276, -0.892601,
		0.516180, -0.767169, 0.380801,
		-0.745429, -0.621355, -0.241357,
		32.205212, 33.277321, 51.938660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015560, 33.103893, 51.944893>,  <32.727013, 33.712269, 52.107609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015560, 33.103893, 51.944893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.682972, 33.204102, 51.746540>,  <32.483421, 33.264225, 51.627529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.682972, 33.204102, 51.746540>,  <33.015560, 33.103893, 51.944893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682972, 33.204102, 51.746540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476976, -0.135793, -0.868363,
		-0.284882, -0.958540, -0.006587,
		-0.831466, 0.250523, -0.495886,
		32.433533, 33.279259, 51.597775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059780, 32.678940, 51.436558>,  <33.015560, 33.103893, 51.944893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059780, 32.678940, 51.436558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.749187, 32.891689, 51.301388>,  <32.562832, 33.019337, 51.220287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.749187, 32.891689, 51.301388>,  <33.059780, 32.678940, 51.436558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749187, 32.891689, 51.301388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335103, -0.105624, -0.936242,
		-0.533652, -0.840213, -0.096216,
		-0.776481, 0.531870, -0.337924,
		32.516243, 33.051250, 51.200012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719284, 32.296040, 50.813896>,  <33.059780, 32.678940, 51.436558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719284, 32.296040, 50.813896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584995, 32.667889, 50.753101>,  <32.504421, 32.890999, 50.716625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584995, 32.667889, 50.753101>,  <32.719284, 32.296040, 50.813896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584995, 32.667889, 50.753101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483526, 0.031604, -0.874759,
		-0.808390, -0.367162, -0.460106,
		-0.335720, 0.929620, -0.151984,
		32.484280, 32.946774, 50.707504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161751, 32.398209, 50.216698>,  <32.719284, 32.296040, 50.813896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161751, 32.398209, 50.216698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.334881, 32.753410, 50.278820>,  <32.438759, 32.966530, 50.316093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.334881, 32.753410, 50.278820>,  <32.161751, 32.398209, 50.216698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334881, 32.753410, 50.278820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408036, -0.039358, -0.912117,
		-0.803849, 0.458153, -0.379372,
		0.432821, 0.888001, 0.155305,
		32.464725, 33.019810, 50.325413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128040, 32.806126, 49.605694>,  <32.161751, 32.398209, 50.216698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128040, 32.806126, 49.605694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.439064, 32.937492, 49.820187>,  <32.625679, 33.016312, 49.948883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.439064, 32.937492, 49.820187>,  <32.128040, 32.806126, 49.605694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439064, 32.937492, 49.820187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555973, 0.039340, -0.830269,
		-0.293771, 0.943713, -0.152003,
		0.777555, 0.328418, 0.536236,
		32.672329, 33.036018, 49.981056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506058, 33.119656, 49.139378>,  <32.128040, 32.806126, 49.605694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506058, 33.119656, 49.139378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763321, 33.075203, 49.442429>,  <32.917679, 33.048531, 49.624260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763321, 33.075203, 49.442429>,  <32.506058, 33.119656, 49.139378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763321, 33.075203, 49.442429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696699, -0.325618, -0.639205,
		0.317731, 0.938948, -0.132001,
		0.643162, -0.111130, 0.757623,
		32.956268, 33.041862, 49.669716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100487, 33.539608, 48.942799>,  <32.506058, 33.119656, 49.139378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100487, 33.539608, 48.942799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.318939, 33.866917, 48.871052>,  <33.450012, 34.063301, 48.828003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.318939, 33.866917, 48.871052>,  <33.100487, 33.539608, 48.942799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318939, 33.866917, 48.871052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748595, 0.572819, 0.333893,
		0.375958, -0.048079, 0.925389,
		0.546133, 0.818271, -0.179364,
		33.482780, 34.112396, 48.817242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088390, 34.046394, 49.493256>,  <33.100487, 33.539608, 48.942799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088390, 34.046394, 49.493256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144657, 34.239952, 49.147758>,  <33.178417, 34.356087, 48.940460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144657, 34.239952, 49.147758>,  <33.088390, 34.046394, 49.493256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144657, 34.239952, 49.147758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678542, 0.682421, 0.271812,
		0.720968, 0.547854, 0.424337,
		0.140663, 0.483898, -0.863746,
		33.186855, 34.385120, 48.888634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984215, 34.717075, 49.722481>,  <33.088390, 34.046394, 49.493256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984215, 34.717075, 49.722481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947975, 34.735264, 49.324543>,  <32.926231, 34.746178, 49.085781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947975, 34.735264, 49.324543>,  <32.984215, 34.717075, 49.722481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947975, 34.735264, 49.324543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519938, 0.849844, 0.086193,
		0.849386, 0.525068, -0.053349,
		-0.090595, 0.045473, -0.994849,
		32.920795, 34.748905, 49.026089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288845, 35.324562, 49.415325>,  <32.984215, 34.717075, 49.722481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288845, 35.324562, 49.415325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020630, 35.236748, 49.131866>,  <32.859699, 35.184059, 48.961792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020630, 35.236748, 49.131866>,  <33.288845, 35.324562, 49.415325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020630, 35.236748, 49.131866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463084, 0.870126, 0.168622,
		0.579597, 0.441232, -0.685114,
		-0.670537, -0.219532, -0.708650,
		32.819469, 35.170887, 48.919270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235519, 36.025860, 49.158035>,  <33.288845, 35.324562, 49.415325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235519, 36.025860, 49.158035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920795, 35.799450, 49.059616>,  <32.731960, 35.663605, 49.000565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920795, 35.799450, 49.059616>,  <33.235519, 36.025860, 49.158035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920795, 35.799450, 49.059616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608729, 0.777485, 0.158007,
		0.101859, 0.274096, -0.956293,
		-0.786812, -0.566029, -0.246045,
		32.684753, 35.629642, 48.985802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777565, 36.429359, 48.708942>,  <33.235519, 36.025860, 49.158035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777565, 36.429359, 48.708942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525131, 36.160397, 48.863655>,  <32.373672, 35.999020, 48.956482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525131, 36.160397, 48.863655>,  <32.777565, 36.429359, 48.708942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525131, 36.160397, 48.863655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655122, 0.728999, 0.198430,
		-0.415390, -0.128165, -0.900569,
		-0.631082, -0.672409, 0.386783,
		32.335808, 35.958675, 48.979691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156414, 36.814766, 48.569725>,  <32.777565, 36.429359, 48.708942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156414, 36.814766, 48.569725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.042194, 36.511448, 48.804142>,  <31.973663, 36.329456, 48.944794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.042194, 36.511448, 48.804142>,  <32.156414, 36.814766, 48.569725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042194, 36.511448, 48.804142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621428, 0.612028, 0.489130,
		-0.729582, -0.224514, -0.645991,
		-0.285548, -0.758297, 0.586044,
		31.956530, 36.283958, 48.979954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449352, 36.726398, 48.473160>,  <32.156414, 36.814766, 48.569725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449352, 36.726398, 48.473160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536055, 36.578705, 48.834641>,  <31.588076, 36.490089, 49.051529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536055, 36.578705, 48.834641>,  <31.449352, 36.726398, 48.473160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536055, 36.578705, 48.834641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646267, 0.639547, 0.416315,
		-0.731680, -0.674274, -0.099998,
		0.216756, -0.369235, 0.903705,
		31.601082, 36.467934, 49.105751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817944, 36.725788, 48.834465>,  <31.449352, 36.726398, 48.473160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817944, 36.725788, 48.834465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.099831, 36.735554, 49.118092>,  <31.268963, 36.741413, 49.288269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.099831, 36.735554, 49.118092>,  <30.817944, 36.725788, 48.834465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099831, 36.735554, 49.118092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558628, 0.635215, 0.533326,
		-0.437387, -0.771949, 0.461289,
		0.704719, 0.024418, 0.709067,
		31.311247, 36.742878, 49.330811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501787, 36.588017, 49.442535>,  <30.817944, 36.725788, 48.834465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501787, 36.588017, 49.442535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.828161, 36.779293, 49.572514>,  <31.023985, 36.894058, 49.650501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.828161, 36.779293, 49.572514>,  <30.501787, 36.588017, 49.442535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828161, 36.779293, 49.572514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568698, 0.562645, 0.600011,
		0.104092, -0.674363, 0.731026,
		0.815933, 0.478190, 0.324942,
		31.072941, 36.922749, 49.669994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546978, 36.504513, 50.138584>,  <30.501787, 36.588017, 49.442535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546978, 36.504513, 50.138584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.751263, 36.837490, 50.052597>,  <30.873833, 37.037277, 50.001003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.751263, 36.837490, 50.052597>,  <30.546978, 36.504513, 50.138584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751263, 36.837490, 50.052597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449482, 0.471663, 0.758617,
		0.732898, -0.290810, 0.615052,
		0.510711, 0.832444, -0.214967,
		30.904476, 37.087223, 49.988106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661825, 36.694893, 50.742477>,  <30.546978, 36.504513, 50.138584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661825, 36.694893, 50.742477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.740351, 37.033695, 50.544876>,  <30.787466, 37.236977, 50.426315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.740351, 37.033695, 50.544876>,  <30.661825, 36.694893, 50.742477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740351, 37.033695, 50.544876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394551, 0.529454, 0.751005,
		0.897658, 0.047475, 0.438128,
		0.196315, 0.847009, -0.494000,
		30.799246, 37.287796, 50.396675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003506, 37.175671, 51.128906>,  <30.661825, 36.694893, 50.742477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003506, 37.175671, 51.128906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838827, 37.403389, 50.844257>,  <30.740019, 37.540020, 50.673470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838827, 37.403389, 50.844257>,  <31.003506, 37.175671, 51.128906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838827, 37.403389, 50.844257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350507, 0.621883, 0.700290,
		0.841219, 0.537736, -0.056485,
		-0.411698, 0.569299, -0.711620,
		30.715319, 37.574181, 50.630772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173275, 37.816734, 51.377537>,  <31.003506, 37.175671, 51.128906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173275, 37.816734, 51.377537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.889233, 37.916122, 51.114017>,  <30.718807, 37.975758, 50.955906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.889233, 37.916122, 51.114017>,  <31.173275, 37.816734, 51.377537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889233, 37.916122, 51.114017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362648, 0.672942, 0.644698,
		0.603522, 0.696714, -0.387750,
		-0.710104, 0.248473, -0.658797,
		30.676201, 37.990665, 50.916378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199657, 38.519596, 51.419426>,  <31.173275, 37.816734, 51.377537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199657, 38.519596, 51.419426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.849134, 38.443142, 51.242542>,  <30.638821, 38.397270, 51.136410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.849134, 38.443142, 51.242542>,  <31.199657, 38.519596, 51.419426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849134, 38.443142, 51.242542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448326, 0.659496, 0.603381,
		0.176312, 0.727003, -0.663612,
		-0.876309, -0.191131, -0.442211,
		30.586241, 38.385803, 51.109879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803967, 39.180248, 51.356930>,  <31.199657, 38.519596, 51.419426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803967, 39.180248, 51.356930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.552870, 38.868965, 51.364315>,  <30.402212, 38.682198, 51.368748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.552870, 38.868965, 51.364315>,  <30.803967, 39.180248, 51.356930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552870, 38.868965, 51.364315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499411, 0.420819, 0.757298,
		-0.597103, 0.466165, -0.652808,
		-0.627740, -0.778204, 0.018464,
		30.364548, 38.635506, 51.369854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769062, 39.891384, 51.468945>,  <30.803967, 39.180248, 51.356930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769062, 39.891384, 51.468945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.073118, 40.043026, 51.680023>,  <31.255552, 40.134010, 51.806671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.073118, 40.043026, 51.680023>,  <30.769062, 39.891384, 51.468945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073118, 40.043026, 51.680023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612809, -0.148311, -0.776189,
		-0.215991, 0.913393, -0.345053,
		0.760141, 0.379101, 0.527701,
		31.301161, 40.156757, 51.838333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121679, 40.474850, 51.029541>,  <30.769062, 39.891384, 51.468945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121679, 40.474850, 51.029541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.389538, 40.347221, 51.297798>,  <31.550253, 40.270645, 51.458752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.389538, 40.347221, 51.297798>,  <31.121679, 40.474850, 51.029541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389538, 40.347221, 51.297798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668615, -0.134095, -0.731418,
		0.323305, 0.938196, 0.123540,
		0.669648, -0.319072, 0.670645,
		31.590431, 40.251499, 51.498993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641611, 40.884197, 50.861359>,  <31.121679, 40.474850, 51.029541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641611, 40.884197, 50.861359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.809938, 40.597279, 51.083496>,  <31.910934, 40.425129, 51.216778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.809938, 40.597279, 51.083496>,  <31.641611, 40.884197, 50.861359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809938, 40.597279, 51.083496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763991, -0.049839, -0.643299,
		0.489111, 0.694987, 0.527033,
		0.420818, -0.717293, 0.555341,
		31.936184, 40.382092, 51.250099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364475, 41.025997, 50.911652>,  <31.641611, 40.884197, 50.861359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364475, 41.025997, 50.911652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354351, 40.633125, 50.986137>,  <32.348274, 40.397400, 51.030830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354351, 40.633125, 50.986137>,  <32.364475, 41.025997, 50.911652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354351, 40.633125, 50.986137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760541, -0.139814, -0.634058,
		0.648796, 0.125575, 0.750529,
		-0.025312, -0.982183, 0.186216,
		32.346756, 40.338470, 51.042004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036854, 40.760094, 51.102924>,  <32.364475, 41.025997, 50.911652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036854, 40.760094, 51.102924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847900, 40.428516, 50.983120>,  <32.734528, 40.229568, 50.911240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847900, 40.428516, 50.983120>,  <33.036854, 40.760094, 51.102924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847900, 40.428516, 50.983120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797545, -0.257350, -0.545612,
		0.375204, -0.496609, 0.782688,
		-0.472381, -0.828945, -0.299509,
		32.706184, 40.179832, 50.893269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556744, 40.312687, 51.099991>,  <33.036854, 40.760094, 51.102924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556744, 40.312687, 51.099991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.283199, 40.114220, 50.886021>,  <33.119072, 39.995140, 50.757637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.283199, 40.114220, 50.886021>,  <33.556744, 40.312687, 51.099991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283199, 40.114220, 50.886021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727617, -0.409650, -0.550237,
		0.053874, -0.765512, 0.641163,
		-0.683865, -0.496164, -0.534930,
		33.078041, 39.965370, 50.725540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868233, 39.653751, 51.006458>,  <33.556744, 40.312687, 51.099991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868233, 39.653751, 51.006458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586689, 39.684464, 50.723988>,  <33.417763, 39.702888, 50.554504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586689, 39.684464, 50.723988>,  <33.868233, 39.653751, 51.006458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586689, 39.684464, 50.723988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518905, -0.623336, -0.584970,
		-0.485099, -0.778176, 0.398900,
		-0.703858, 0.076778, -0.706179,
		33.375530, 39.707497, 50.512135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719852, 38.909683, 50.788181>,  <33.868233, 39.653751, 51.006458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719852, 38.909683, 50.788181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590572, 39.148399, 50.494411>,  <33.513004, 39.291630, 50.318150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590572, 39.148399, 50.494411>,  <33.719852, 38.909683, 50.788181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590572, 39.148399, 50.494411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638071, -0.435701, -0.634846,
		-0.698862, -0.673796, -0.239979,
		-0.323197, 0.596794, -0.734425,
		33.493614, 39.327438, 50.274082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595436, 38.411846, 50.213848>,  <33.719852, 38.909683, 50.788181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595436, 38.411846, 50.213848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646427, 38.792511, 50.102074>,  <33.677021, 39.020912, 50.035007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646427, 38.792511, 50.102074>,  <33.595436, 38.411846, 50.213848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646427, 38.792511, 50.102074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688671, -0.287679, -0.665562,
		-0.713780, -0.107592, -0.692057,
		0.127481, 0.951664, -0.279435,
		33.684669, 39.078011, 50.018242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685345, 38.302013, 49.546219>,  <33.595436, 38.411846, 50.213848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685345, 38.302013, 49.546219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828316, 38.667542, 49.623337>,  <33.914097, 38.886860, 49.669609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828316, 38.667542, 49.623337>,  <33.685345, 38.302013, 49.546219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828316, 38.667542, 49.623337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860860, -0.242311, -0.447443,
		-0.362168, 0.325897, -0.873284,
		0.357427, 0.913825, 0.192795,
		33.935543, 38.941689, 49.681175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977982, 38.589832, 48.915211>,  <33.685345, 38.302013, 49.546219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977982, 38.589832, 48.915211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.144367, 38.786972, 49.220909>,  <34.244198, 38.905258, 49.404327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.144367, 38.786972, 49.220909>,  <33.977982, 38.589832, 48.915211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144367, 38.786972, 49.220909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900817, -0.108241, -0.420491,
		-0.124517, 0.863354, -0.488994,
		0.415962, 0.492853, 0.764246,
		34.269157, 38.934830, 49.450184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426304, 39.108624, 48.636322>,  <33.977982, 38.589832, 48.915211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426304, 39.108624, 48.636322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560997, 39.032822, 49.005257>,  <34.641811, 38.987339, 49.226616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560997, 39.032822, 49.005257>,  <34.426304, 39.108624, 48.636322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560997, 39.032822, 49.005257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937655, -0.022105, -0.346863,
		0.086122, 0.981630, 0.170249,
		0.336728, -0.189507, 0.922335,
		34.662014, 38.975971, 49.281956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.051083, 40.005875, 56.882607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774239, 40.294521, 56.888966>,  <29.608133, 40.467709, 56.892780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774239, 40.294521, 56.888966>,  <30.051083, 40.005875, 56.882607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774239, 40.294521, 56.888966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043108, 0.063309, -0.997063,
		-0.720506, -0.689390, -0.074924,
		-0.692108, 0.721619, 0.015896,
		29.566607, 40.511005, 56.893734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613718, 39.783825, 56.438110>,  <30.051083, 40.005875, 56.882607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613718, 39.783825, 56.438110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.532106, 40.173428, 56.477478>,  <29.483139, 40.407188, 56.501099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.532106, 40.173428, 56.477478>,  <29.613718, 39.783825, 56.438110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532106, 40.173428, 56.477478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002143, 0.100091, -0.994976,
		-0.978962, -0.203216, -0.018335,
		-0.204030, 0.974005, 0.098420,
		29.470898, 40.465630, 56.507004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260696, 39.979710, 55.811298>,  <29.613718, 39.783825, 56.438110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260696, 39.979710, 55.811298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.355391, 40.346313, 55.940277>,  <29.412207, 40.566277, 56.017666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.355391, 40.346313, 55.940277>,  <29.260696, 39.979710, 55.811298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355391, 40.346313, 55.940277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105228, 0.305742, -0.946281,
		-0.965859, 0.257950, -0.024062,
		0.236736, 0.916506, 0.322447,
		29.426411, 40.621265, 56.037010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758230, 40.484703, 55.564713>,  <29.260696, 39.979710, 55.811298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758230, 40.484703, 55.564713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086214, 40.702713, 55.634693>,  <29.283005, 40.833519, 55.676682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086214, 40.702713, 55.634693>,  <28.758230, 40.484703, 55.564713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086214, 40.702713, 55.634693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058083, 0.224833, -0.972665,
		-0.569464, 0.807710, 0.152698,
		0.819962, 0.545028, 0.174948,
		29.332203, 40.866222, 55.687180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658426, 41.100842, 55.264229>,  <28.758230, 40.484703, 55.564713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658426, 41.100842, 55.264229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057518, 41.099045, 55.291103>,  <29.296974, 41.097965, 55.307228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057518, 41.099045, 55.291103>,  <28.658426, 41.100842, 55.264229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057518, 41.099045, 55.291103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064268, 0.361418, -0.930186,
		-0.020103, 0.932393, 0.360887,
		0.997730, -0.004494, 0.067188,
		29.356836, 41.097698, 55.311260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839115, 41.729099, 54.906109>,  <28.658426, 41.100842, 55.264229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839115, 41.729099, 54.906109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167507, 41.502750, 54.936523>,  <29.364542, 41.366940, 54.954773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167507, 41.502750, 54.936523>,  <28.839115, 41.729099, 54.906109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167507, 41.502750, 54.936523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260005, 0.251965, -0.932154,
		0.508320, 0.785050, 0.353988,
		0.820980, -0.565871, 0.076038,
		29.413801, 41.332989, 54.959335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402515, 42.171730, 54.493774>,  <28.839115, 41.729099, 54.906109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402515, 42.171730, 54.493774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522543, 41.790573, 54.511417>,  <29.594561, 41.561878, 54.522003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522543, 41.790573, 54.511417>,  <29.402515, 42.171730, 54.493774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522543, 41.790573, 54.511417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476626, 0.109716, -0.872233,
		0.826308, 0.282754, 0.487098,
		0.300070, -0.952897, 0.044109,
		29.612564, 41.504704, 54.524651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019333, 42.084839, 54.124077>,  <29.402515, 42.171730, 54.493774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019333, 42.084839, 54.124077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.930599, 41.694931, 54.134018>,  <29.877359, 41.460987, 54.139984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.930599, 41.694931, 54.134018>,  <30.019333, 42.084839, 54.124077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930599, 41.694931, 54.134018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644505, -0.165709, -0.746427,
		0.731712, -0.149565, 0.665003,
		-0.221836, -0.974767, 0.024856,
		29.864048, 41.402500, 54.141476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728922, 41.697365, 54.075256>,  <30.019333, 42.084839, 54.124077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728922, 41.697365, 54.075256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448095, 41.421928, 54.002655>,  <30.279600, 41.256668, 53.959095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448095, 41.421928, 54.002655>,  <30.728922, 41.697365, 54.075256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448095, 41.421928, 54.002655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554835, -0.369166, -0.745570,
		0.446387, -0.624146, 0.641234,
		-0.702066, -0.688592, -0.181507,
		30.237476, 41.215351, 53.948204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107561, 41.091637, 54.041092>,  <30.728922, 41.697365, 54.075256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107561, 41.091637, 54.041092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.769348, 41.001808, 53.847332>,  <30.566420, 40.947910, 53.731075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.769348, 41.001808, 53.847332>,  <31.107561, 41.091637, 54.041092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769348, 41.001808, 53.847332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532420, -0.286669, -0.796461,
		0.040002, -0.931337, 0.361955,
		-0.845534, -0.224573, -0.484395,
		30.515688, 40.934437, 53.702015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274256, 40.414413, 53.730408>,  <31.107561, 41.091637, 54.041092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274256, 40.414413, 53.730408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967920, 40.570335, 53.525845>,  <30.784119, 40.663891, 53.403107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967920, 40.570335, 53.525845>,  <31.274256, 40.414413, 53.730408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967920, 40.570335, 53.525845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340652, -0.428603, -0.836813,
		-0.545390, -0.815076, 0.195451,
		-0.765837, 0.389809, -0.511413,
		30.738169, 40.687279, 53.372421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098579, 39.868359, 53.360096>,  <31.274256, 40.414413, 53.730408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098579, 39.868359, 53.360096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.944349, 40.170593, 53.148273>,  <30.851812, 40.351933, 53.021179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.944349, 40.170593, 53.148273>,  <31.098579, 39.868359, 53.360096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944349, 40.170593, 53.148273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363647, -0.403033, -0.839836,
		-0.847994, -0.516388, -0.119367,
		-0.385573, 0.755584, -0.529553,
		30.828678, 40.397270, 52.989407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682030, 39.588730, 52.786079>,  <31.098579, 39.868359, 53.360096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682030, 39.588730, 52.786079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.814735, 39.954960, 52.695164>,  <30.894360, 40.174698, 52.640614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.814735, 39.954960, 52.695164>,  <30.682030, 39.588730, 52.786079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814735, 39.954960, 52.695164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440825, -0.363473, -0.820707,
		-0.834030, 0.172089, -0.524195,
		0.331765, 0.915572, -0.227286,
		30.914265, 40.229633, 52.626976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631685, 39.564228, 52.096581>,  <30.682030, 39.588730, 52.786079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631685, 39.564228, 52.096581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.862598, 39.882092, 52.171692>,  <31.001146, 40.072811, 52.216759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.862598, 39.882092, 52.171692>,  <30.631685, 39.564228, 52.096581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862598, 39.882092, 52.171692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580642, -0.237818, -0.778651,
		-0.574106, 0.558532, -0.598702,
		0.577284, 0.794660, 0.187774,
		31.035784, 40.120491, 52.228024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939968, 39.518093, 51.718815>,  <30.631685, 39.564228, 52.096581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939968, 39.518093, 51.718815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.953968, 39.118481, 51.729504>,  <29.962368, 38.878712, 51.735916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.953968, 39.118481, 51.729504>,  <29.939968, 39.518093, 51.718815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953968, 39.118481, 51.729504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566612, 0.002191, 0.823982,
		-0.823241, -0.043981, -0.565986,
		0.034999, -0.999030, 0.026724,
		29.964468, 38.818771, 51.737522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301285, 39.357697, 51.920677>,  <29.939968, 39.518093, 51.718815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301285, 39.357697, 51.920677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.501507, 39.020275, 51.998508>,  <29.621639, 38.817822, 52.045208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.501507, 39.020275, 51.998508>,  <29.301285, 39.357697, 51.920677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501507, 39.020275, 51.998508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458473, -0.067657, 0.886129,
		-0.734335, -0.532764, -0.420613,
		0.500555, -0.843555, 0.194574,
		29.651674, 38.767208, 52.056881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780285, 38.933205, 52.156658>,  <29.301285, 39.357697, 51.920677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780285, 38.933205, 52.156658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123016, 38.768520, 52.280815>,  <29.328655, 38.669708, 52.355309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123016, 38.768520, 52.280815>,  <28.780285, 38.933205, 52.156658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123016, 38.768520, 52.280815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412719, -0.186826, 0.891493,
		-0.309048, -0.891959, -0.329998,
		0.856827, -0.411711, 0.310390,
		29.380064, 38.645008, 52.373932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539013, 38.266117, 52.204365>,  <28.780285, 38.933205, 52.156658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539013, 38.266117, 52.204365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867582, 38.329227, 52.423588>,  <29.064724, 38.367092, 52.555122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867582, 38.329227, 52.423588>,  <28.539013, 38.266117, 52.204365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867582, 38.329227, 52.423588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494739, -0.280920, 0.822385,
		0.283713, -0.946674, -0.152696,
		0.821426, 0.157777, 0.548057,
		29.114010, 38.376560, 52.588005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782139, 37.612206, 52.612843>,  <28.539013, 38.266117, 52.204365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782139, 37.612206, 52.612843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.895136, 37.929092, 52.829212>,  <28.962934, 38.119225, 52.959034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.895136, 37.929092, 52.829212>,  <28.782139, 37.612206, 52.612843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895136, 37.929092, 52.829212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378067, -0.426299, 0.821787,
		0.881625, -0.436653, 0.179083,
		0.282493, 0.792214, 0.540920,
		28.979883, 38.166756, 52.991489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000914, 37.247482, 53.238224>,  <28.782139, 37.612206, 52.612843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000914, 37.247482, 53.238224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981106, 37.630562, 53.351612>,  <28.969221, 37.860409, 53.419643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981106, 37.630562, 53.351612>,  <29.000914, 37.247482, 53.238224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981106, 37.630562, 53.351612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164327, -0.287760, 0.943499,
		0.985162, 0.000142, 0.171627,
		-0.049521, 0.957702, 0.283467,
		28.966249, 37.917873, 53.436653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097708, 37.192291, 53.959026>,  <29.000914, 37.247482, 53.238224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097708, 37.192291, 53.959026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968388, 37.568577, 53.917988>,  <28.890795, 37.794350, 53.893364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968388, 37.568577, 53.917988>,  <29.097708, 37.192291, 53.959026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968388, 37.568577, 53.917988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330091, -0.010500, 0.943891,
		0.886858, 0.339027, 0.313917,
		-0.323301, 0.940718, -0.102598,
		28.871397, 37.850792, 53.887207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502445, 37.671669, 54.378944>,  <29.097708, 37.192291, 53.959026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502445, 37.671669, 54.378944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123529, 37.793789, 54.340096>,  <28.896179, 37.867062, 54.316788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123529, 37.793789, 54.340096>,  <29.502445, 37.671669, 54.378944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123529, 37.793789, 54.340096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092211, 0.030504, 0.995272,
		0.306823, 0.951766, -0.000744,
		-0.947289, 0.305304, -0.097123,
		28.839342, 37.885380, 54.310959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347214, 37.960323, 55.037781>,  <29.502445, 37.671669, 54.378944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347214, 37.960323, 55.037781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975433, 37.982014, 54.891804>,  <28.752365, 37.995026, 54.804218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975433, 37.982014, 54.891804>,  <29.347214, 37.960323, 55.037781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975433, 37.982014, 54.891804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365461, 0.000371, 0.930827,
		0.050608, 0.998529, 0.019472,
		-0.929450, 0.054224, -0.364942,
		28.696598, 37.998280, 54.782322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081881, 38.563244, 55.385845>,  <29.347214, 37.960323, 55.037781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081881, 38.563244, 55.385845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768803, 38.342461, 55.270790>,  <28.580956, 38.209991, 55.201759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768803, 38.342461, 55.270790>,  <29.081881, 38.563244, 55.385845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768803, 38.342461, 55.270790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410640, 0.110661, 0.905058,
		-0.467723, 0.826497, -0.313269,
		-0.782694, -0.551957, -0.287634,
		28.533995, 38.176872, 55.184502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480898, 38.889801, 55.632153>,  <29.081881, 38.563244, 55.385845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480898, 38.889801, 55.632153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.370581, 38.509106, 55.578300>,  <28.304390, 38.280689, 55.545990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.370581, 38.509106, 55.578300>,  <28.480898, 38.889801, 55.632153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370581, 38.509106, 55.578300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657435, 0.084594, 0.748748,
		-0.701226, 0.295011, -0.649038,
		-0.275794, -0.951742, -0.134631,
		28.287842, 38.223583, 55.537910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729876, 38.901043, 55.606529>,  <28.480898, 38.889801, 55.632153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729876, 38.901043, 55.606529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847033, 38.529675, 55.697960>,  <27.917326, 38.306854, 55.752819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847033, 38.529675, 55.697960>,  <27.729876, 38.901043, 55.606529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847033, 38.529675, 55.697960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661206, -0.023985, 0.749821,
		-0.690667, -0.370753, -0.620903,
		0.292891, -0.928422, 0.228578,
		27.934900, 38.251148, 55.766533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103838, 38.442764, 55.537697>,  <27.729876, 38.901043, 55.606529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103838, 38.442764, 55.537697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366524, 38.236187, 55.757519>,  <27.524136, 38.112240, 55.889412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366524, 38.236187, 55.757519>,  <27.103838, 38.442764, 55.537697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366524, 38.236187, 55.757519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721679, -0.218874, 0.656714,
		-0.218874, -0.827875, -0.516447,
		-0.656714, 0.516447, -0.549554,
		27.563538, 38.081253, 55.922386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759314, 37.846306, 55.672531>,  <27.103838, 38.442764, 55.537697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759314, 37.846306, 55.672531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.044498, 37.853046, 55.952930>,  <27.215611, 37.857090, 56.121170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.044498, 37.853046, 55.952930>,  <26.759314, 37.846306, 55.672531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044498, 37.853046, 55.952930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616770, -0.460524, 0.638367,
		0.333582, -0.887487, -0.317946,
		0.712964, 0.016848, 0.700998,
		27.258389, 37.858101, 56.163231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.434261, 34.721386, 61.918758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387825, 34.983982, 61.620621>,  <32.359962, 35.141541, 61.441738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387825, 34.983982, 61.620621>,  <32.434261, 34.721386, 61.918758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387825, 34.983982, 61.620621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517912, -0.600315, -0.609417,
		-0.847520, -0.456770, -0.270316,
		-0.116089, 0.656493, -0.745346,
		32.352997, 35.180931, 61.397018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175793, 34.306564, 61.332436>,  <32.434261, 34.721386, 61.918758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175793, 34.306564, 61.332436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.330212, 34.653870, 61.207798>,  <32.422863, 34.862251, 61.133015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.330212, 34.653870, 61.207798>,  <32.175793, 34.306564, 61.332436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330212, 34.653870, 61.207798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530240, -0.485260, -0.695247,
		-0.754860, 0.103178, -0.647719,
		0.386047, 0.868261, -0.311594,
		32.446026, 34.914349, 61.114319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132050, 34.263008, 60.680420>,  <32.175793, 34.306564, 61.332436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132050, 34.263008, 60.680420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.397015, 34.561848, 60.702522>,  <32.555992, 34.741154, 60.715782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.397015, 34.561848, 60.702522>,  <32.132050, 34.263008, 60.680420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397015, 34.561848, 60.702522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439648, -0.327966, -0.836150,
		-0.606567, 0.578167, -0.545710,
		0.662409, 0.747102, 0.055257,
		32.595737, 34.785976, 60.719101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144806, 34.454021, 60.008923>,  <32.132050, 34.263008, 60.680420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144806, 34.454021, 60.008923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476948, 34.590023, 60.185520>,  <32.676231, 34.671623, 60.291477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476948, 34.590023, 60.185520>,  <32.144806, 34.454021, 60.008923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476948, 34.590023, 60.185520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488396, -0.062568, -0.870376,
		-0.268306, 0.938341, -0.218009,
		0.830350, 0.340002, 0.441494,
		32.726051, 34.692024, 60.317970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322933, 34.954224, 59.594856>,  <32.144806, 34.454021, 60.008923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322933, 34.954224, 59.594856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668125, 34.885651, 59.784966>,  <32.875240, 34.844505, 59.899029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668125, 34.885651, 59.784966>,  <32.322933, 34.954224, 59.594856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668125, 34.885651, 59.784966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489637, 0.515766, -0.703023,
		-0.124604, 0.839402, 0.529036,
		0.862977, -0.171436, 0.475269,
		32.927017, 34.834221, 59.927547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832481, 35.473999, 59.331272>,  <32.322933, 34.954224, 59.594856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832481, 35.473999, 59.331272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057873, 35.188564, 59.497787>,  <33.193108, 35.017303, 59.597694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057873, 35.188564, 59.497787>,  <32.832481, 35.473999, 59.331272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057873, 35.188564, 59.497787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594856, 0.000790, -0.803832,
		0.573272, 0.700571, 0.424924,
		0.563477, -0.713583, 0.416286,
		33.226917, 34.974491, 59.622673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496105, 35.729725, 59.309284>,  <32.832481, 35.473999, 59.331272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496105, 35.729725, 59.309284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532356, 35.332279, 59.336170>,  <33.554108, 35.093811, 59.352303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532356, 35.332279, 59.336170>,  <33.496105, 35.729725, 59.309284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532356, 35.332279, 59.336170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647252, 0.007471, -0.762239,
		0.756870, 0.112580, 0.643796,
		0.090623, -0.993614, 0.067213,
		33.559544, 35.034195, 59.356335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157417, 35.620777, 59.211700>,  <33.496105, 35.729725, 59.309284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157417, 35.620777, 59.211700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986156, 35.265675, 59.144073>,  <33.883400, 35.052612, 59.103497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986156, 35.265675, 59.144073>,  <34.157417, 35.620777, 59.211700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986156, 35.265675, 59.144073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614489, -0.148806, -0.774765,
		0.662640, -0.435607, 0.609225,
		-0.428149, -0.887752, -0.169071,
		33.857712, 34.999348, 59.093353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743916, 35.122040, 59.116978>,  <34.157417, 35.620777, 59.211700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743916, 35.122040, 59.116978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425064, 34.952301, 58.945156>,  <34.233753, 34.850456, 58.842064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425064, 34.952301, 58.945156>,  <34.743916, 35.122040, 59.116978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425064, 34.952301, 58.945156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550937, -0.220011, -0.805024,
		0.247105, -0.878363, 0.409166,
		-0.797125, -0.424350, -0.429557,
		34.185928, 34.824997, 58.816288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039467, 34.590641, 58.681767>,  <34.743916, 35.122040, 59.116978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039467, 34.590641, 58.681767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671867, 34.611267, 58.525417>,  <34.451309, 34.623642, 58.431606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671867, 34.611267, 58.525417>,  <35.039467, 34.590641, 58.681767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671867, 34.611267, 58.525417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379410, -0.153883, -0.912342,
		-0.107195, -0.986742, 0.121853,
		-0.918998, 0.051566, -0.390876,
		34.396168, 34.626740, 58.408154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908981, 33.913769, 58.302494>,  <35.039467, 34.590641, 58.681767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908981, 33.913769, 58.302494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667351, 34.198601, 58.159370>,  <34.522373, 34.369499, 58.073494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667351, 34.198601, 58.159370>,  <34.908981, 33.913769, 58.302494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667351, 34.198601, 58.159370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297353, -0.215164, -0.930207,
		-0.739372, -0.668314, -0.081764,
		-0.604078, 0.712082, -0.357812,
		34.486126, 34.412224, 58.052029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683601, 33.676815, 57.733559>,  <34.908981, 33.913769, 58.302494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683601, 33.676815, 57.733559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581097, 34.053585, 57.646748>,  <34.519592, 34.279648, 57.594662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581097, 34.053585, 57.646748>,  <34.683601, 33.676815, 57.733559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581097, 34.053585, 57.646748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397506, -0.101963, -0.911917,
		-0.881089, -0.319961, -0.348293,
		-0.256265, 0.941928, -0.217025,
		34.504215, 34.336163, 57.581638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480247, 33.641552, 56.991859>,  <34.683601, 33.676815, 57.733559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480247, 33.641552, 56.991859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.543995, 34.031109, 57.056538>,  <34.582241, 34.264843, 57.095345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.543995, 34.031109, 57.056538>,  <34.480247, 33.641552, 56.991859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543995, 34.031109, 57.056538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217039, 0.125217, -0.968098,
		-0.963066, 0.189376, -0.191417,
		0.159366, 0.973888, 0.161694,
		34.591805, 34.323277, 57.105045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214878, 33.946564, 56.384628>,  <34.480247, 33.641552, 56.991859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214878, 33.946564, 56.384628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487228, 34.174747, 56.568359>,  <34.650639, 34.311657, 56.678596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487228, 34.174747, 56.568359>,  <34.214878, 33.946564, 56.384628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487228, 34.174747, 56.568359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405960, 0.228042, -0.884982,
		-0.609596, 0.789030, -0.076318,
		0.680873, 0.570464, 0.459328,
		34.691490, 34.345886, 56.706158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620403, 33.998363, 55.798855>,  <34.214878, 33.946564, 56.384628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620403, 33.998363, 55.798855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.569363, 33.606651, 55.735958>,  <33.538738, 33.371624, 55.698219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.569363, 33.606651, 55.735958>,  <33.620403, 33.998363, 55.798855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569363, 33.606651, 55.735958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586835, -0.053267, 0.807952,
		-0.799588, 0.195374, -0.567880,
		-0.127604, -0.979281, -0.157244,
		33.531082, 33.312866, 55.688786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934002, 33.899616, 55.680454>,  <33.620403, 33.998363, 55.798855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934002, 33.899616, 55.680454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.048267, 33.536415, 55.803047>,  <33.116825, 33.318493, 55.876602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.048267, 33.536415, 55.803047>,  <32.934002, 33.899616, 55.680454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048267, 33.536415, 55.803047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767535, -0.025274, 0.640509,
		-0.573837, -0.418203, -0.704143,
		0.285660, -0.908002, 0.306483,
		33.133965, 33.264015, 55.894993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307655, 33.574055, 55.811150>,  <32.934002, 33.899616, 55.680454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307655, 33.574055, 55.811150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589943, 33.365669, 56.003212>,  <32.759315, 33.240639, 56.118450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589943, 33.365669, 56.003212>,  <32.307655, 33.574055, 55.811150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589943, 33.365669, 56.003212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660314, -0.238006, 0.712277,
		-0.256798, -0.819719, -0.511972,
		0.705719, -0.520973, 0.480153,
		32.801659, 33.209381, 56.147259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968691, 32.930962, 55.936501>,  <32.307655, 33.574055, 55.811150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968691, 32.930962, 55.936501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279514, 32.933159, 56.188263>,  <32.466007, 32.934475, 56.339321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279514, 32.933159, 56.188263>,  <31.968691, 32.930962, 55.936501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279514, 32.933159, 56.188263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614913, -0.206887, 0.760973,
		0.134394, -0.978349, -0.157388,
		0.777059, 0.005490, 0.629404,
		32.512630, 32.934807, 56.377083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004471, 32.349697, 56.463676>,  <31.968691, 32.930962, 55.936501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004471, 32.349697, 56.463676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188610, 32.673717, 56.608948>,  <32.299095, 32.868130, 56.696110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188610, 32.673717, 56.608948>,  <32.004471, 32.349697, 56.463676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188610, 32.673717, 56.608948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577445, -0.037487, 0.815568,
		0.674267, -0.585159, 0.450503,
		0.460350, 0.810051, 0.363173,
		32.326714, 32.916733, 56.717899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021446, 32.115063, 57.081802>,  <32.004471, 32.349697, 56.463676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021446, 32.115063, 57.081802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.078354, 32.510963, 57.086845>,  <32.112499, 32.748505, 57.089870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.078354, 32.510963, 57.086845>,  <32.021446, 32.115063, 57.081802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078354, 32.510963, 57.086845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563772, 0.070552, 0.822912,
		0.813585, -0.124185, 0.568030,
		0.142269, 0.989748, 0.012612,
		32.121033, 32.807888, 57.090630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054142, 32.239559, 57.782997>,  <32.021446, 32.115063, 57.081802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054142, 32.239559, 57.782997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991077, 32.598648, 57.618443>,  <31.953239, 32.814102, 57.519711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991077, 32.598648, 57.618443>,  <32.054142, 32.239559, 57.782997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991077, 32.598648, 57.618443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732815, 0.172881, 0.658099,
		0.661910, 0.405230, 0.630606,
		-0.157662, 0.897720, -0.411391,
		31.943779, 32.867966, 57.495026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085976, 32.585648, 58.397942>,  <32.054142, 32.239559, 57.782997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085976, 32.585648, 58.397942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915421, 32.822235, 58.124195>,  <31.813087, 32.964188, 57.959946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915421, 32.822235, 58.124195>,  <32.085976, 32.585648, 58.397942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915421, 32.822235, 58.124195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674797, 0.295845, 0.676110,
		0.602363, 0.750095, 0.272976,
		-0.426389, 0.591467, -0.684368,
		31.787504, 32.999676, 57.918884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045578, 33.150257, 58.702110>,  <32.085976, 32.585648, 58.397942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045578, 33.150257, 58.702110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.763763, 33.206276, 58.423824>,  <31.594675, 33.239887, 58.256855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.763763, 33.206276, 58.423824>,  <32.045578, 33.150257, 58.702110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763763, 33.206276, 58.423824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624589, 0.343053, 0.701572,
		0.336921, 0.928817, -0.154220,
		-0.704537, 0.140050, -0.695711,
		31.552402, 33.248291, 58.215111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628025, 33.760605, 58.973484>,  <32.045578, 33.150257, 58.702110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628025, 33.760605, 58.973484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.404852, 33.585430, 58.691513>,  <31.270948, 33.480328, 58.522331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.404852, 33.585430, 58.691513>,  <31.628025, 33.760605, 58.973484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404852, 33.585430, 58.691513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829454, 0.266871, 0.490698,
		-0.026767, 0.858484, -0.512141,
		-0.557933, -0.437932, -0.704930,
		31.237473, 33.454052, 58.480034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167652, 34.222530, 58.553921>,  <31.628025, 33.760605, 58.973484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167652, 34.222530, 58.553921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008362, 33.855988, 58.570480>,  <30.912788, 33.636063, 58.580418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008362, 33.855988, 58.570480>,  <31.167652, 34.222530, 58.553921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008362, 33.855988, 58.570480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736735, 0.346405, 0.580711,
		-0.546478, 0.200753, -0.813056,
		-0.398226, -0.916353, 0.041401,
		30.888893, 33.581081, 58.582901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531614, 34.371956, 58.626408>,  <31.167652, 34.222530, 58.553921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531614, 34.371956, 58.626408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.549753, 33.986931, 58.733307>,  <30.560637, 33.755917, 58.797447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.549753, 33.986931, 58.733307>,  <30.531614, 34.371956, 58.626408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549753, 33.986931, 58.733307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730235, 0.150615, 0.666387,
		-0.681689, -0.225373, -0.696066,
		0.045348, -0.962560, 0.267247,
		30.563358, 33.698162, 58.813480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872513, 34.207199, 58.588474>,  <30.531614, 34.371956, 58.626408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872513, 34.207199, 58.588474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.041031, 33.936615, 58.830109>,  <30.142141, 33.774265, 58.975090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.041031, 33.936615, 58.830109>,  <29.872513, 34.207199, 58.588474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041031, 33.936615, 58.830109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597430, 0.294138, 0.746030,
		-0.682341, -0.675195, -0.280218,
		0.421293, -0.676457, 0.604084,
		30.167419, 33.733677, 59.011333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390694, 33.822430, 58.788509>,  <29.872513, 34.207199, 58.588474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390694, 33.822430, 58.788509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.690336, 33.840076, 59.052902>,  <29.870123, 33.850666, 59.211536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.690336, 33.840076, 59.052902>,  <29.390694, 33.822430, 58.788509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690336, 33.840076, 59.052902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577823, 0.531482, 0.619393,
		-0.323973, -0.845920, 0.423629,
		0.749108, 0.044116, 0.660977,
		29.915068, 33.853310, 59.251194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645746, 33.739494, 58.742603>,  <29.390694, 33.822430, 58.788509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645746, 33.739494, 58.742603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.390572, 33.929512, 58.500160>,  <28.237467, 34.043522, 58.354694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.390572, 33.929512, 58.500160>,  <28.645746, 33.739494, 58.742603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390572, 33.929512, 58.500160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511546, -0.326917, -0.794636,
		-0.575636, -0.816980, -0.034456,
		-0.637938, 0.475046, -0.606107,
		28.199190, 34.072025, 58.318329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647713, 33.278580, 58.199242>,  <28.645746, 33.739494, 58.742603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647713, 33.278580, 58.199242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.488523, 33.622375, 58.070930>,  <28.393011, 33.828651, 57.993942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.488523, 33.622375, 58.070930>,  <28.647713, 33.278580, 58.199242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488523, 33.622375, 58.070930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189787, -0.264962, -0.945397,
		-0.897552, -0.437120, -0.057673,
		-0.397971, 0.859489, -0.320777,
		28.369133, 33.880222, 57.974697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168196, 33.104599, 57.779266>,  <28.647713, 33.278580, 58.199242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168196, 33.104599, 57.779266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.280643, 33.471485, 57.666355>,  <28.348112, 33.691616, 57.598610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.280643, 33.471485, 57.666355>,  <28.168196, 33.104599, 57.779266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280643, 33.471485, 57.666355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350556, -0.371961, -0.859509,
		-0.893355, 0.142669, -0.426102,
		0.281119, 0.917219, -0.282279,
		28.364979, 33.746651, 57.581673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947714, 33.277840, 57.091625>,  <28.168196, 33.104599, 57.779266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947714, 33.277840, 57.091625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.226217, 33.560886, 57.139805>,  <28.393318, 33.730713, 57.168713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.226217, 33.560886, 57.139805>,  <27.947714, 33.277840, 57.091625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226217, 33.560886, 57.139805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464590, -0.316341, -0.827094,
		-0.547160, 0.631831, -0.549004,
		0.696256, 0.707614, 0.120453,
		28.435095, 33.773170, 57.175941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112972, 33.556484, 56.369495>,  <27.947714, 33.277840, 57.091625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112972, 33.556484, 56.369495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.414148, 33.734890, 56.563053>,  <28.594854, 33.841934, 56.679188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.414148, 33.734890, 56.563053>,  <28.112972, 33.556484, 56.369495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414148, 33.734890, 56.563053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605387, -0.181111, -0.775052,
		-0.258042, 0.876512, -0.406375,
		0.752941, 0.446010, 0.483895,
		28.640030, 33.868694, 56.708221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363369, 34.084164, 55.943451>,  <28.112972, 33.556484, 56.369495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363369, 34.084164, 55.943451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.669209, 33.969555, 56.174377>,  <28.852713, 33.900791, 56.312931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.669209, 33.969555, 56.174377>,  <28.363369, 34.084164, 55.943451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669209, 33.969555, 56.174377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529536, -0.231337, -0.816134,
		0.367393, 0.929725, -0.025158,
		0.764601, -0.286520, 0.577314,
		28.898588, 33.883598, 56.347572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033712, 34.405006, 55.675415>,  <28.363369, 34.084164, 55.943451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033712, 34.405006, 55.675415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.107567, 34.076523, 55.891384>,  <29.151880, 33.879433, 56.020966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.107567, 34.076523, 55.891384>,  <29.033712, 34.405006, 55.675415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107567, 34.076523, 55.891384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513420, -0.387851, -0.765488,
		0.838039, 0.418545, 0.350016,
		0.184637, -0.821214, 0.539924,
		29.162958, 33.830158, 56.053360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774914, 34.413136, 55.597218>,  <29.033712, 34.405006, 55.675415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774914, 34.413136, 55.597218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.685562, 34.051514, 55.742977>,  <29.631952, 33.834541, 55.830433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.685562, 34.051514, 55.742977>,  <29.774914, 34.413136, 55.597218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685562, 34.051514, 55.742977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540367, -0.425993, -0.725626,
		0.811238, 0.034820, 0.583679,
		-0.223377, -0.904056, 0.364397,
		29.618549, 33.780296, 55.852295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265774, 33.895943, 55.770069>,  <29.774914, 34.413136, 55.597218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265774, 33.895943, 55.770069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.003553, 33.598034, 55.720169>,  <29.846222, 33.419289, 55.690228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.003553, 33.598034, 55.720169>,  <30.265774, 33.895943, 55.770069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003553, 33.598034, 55.720169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630329, -0.448700, -0.633525,
		0.415857, -0.493943, 0.763599,
		-0.655552, -0.744775, -0.124752,
		29.806889, 33.374603, 55.682743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679098, 33.310925, 55.889000>,  <30.265774, 33.895943, 55.770069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679098, 33.310925, 55.889000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.363245, 33.221210, 55.660553>,  <30.173733, 33.167381, 55.523483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.363245, 33.221210, 55.660553>,  <30.679098, 33.310925, 55.889000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363245, 33.221210, 55.660553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605722, -0.433440, -0.667256,
		-0.097891, -0.872826, 0.478112,
		-0.789632, -0.224284, -0.571120,
		30.126356, 33.153927, 55.489216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767056, 32.550251, 55.637093>,  <30.679098, 33.310925, 55.889000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767056, 32.550251, 55.637093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.523037, 32.722820, 55.371246>,  <30.376625, 32.826363, 55.211739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.523037, 32.722820, 55.371246>,  <30.767056, 32.550251, 55.637093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523037, 32.722820, 55.371246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487852, -0.456438, -0.744087,
		-0.624373, -0.778163, 0.067979,
		-0.610049, 0.431424, -0.664616,
		30.340023, 32.852249, 55.171860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847239, 32.120399, 55.058796>,  <30.767056, 32.550251, 55.637093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847239, 32.120399, 55.058796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.675194, 32.446442, 54.903564>,  <30.571966, 32.642067, 54.810425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.675194, 32.446442, 54.903564>,  <30.847239, 32.120399, 55.058796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675194, 32.446442, 54.903564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506582, -0.137905, -0.851092,
		-0.747247, -0.562661, -0.353603,
		-0.430112, 0.815105, -0.388083,
		30.546160, 32.690971, 54.787140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469675, 31.991188, 54.322407>,  <30.847239, 32.120399, 55.058796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469675, 31.991188, 54.322407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.552765, 32.381939, 54.342632>,  <30.602619, 32.616390, 54.354767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.552765, 32.381939, 54.342632>,  <30.469675, 31.991188, 54.322407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552765, 32.381939, 54.342632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347102, -0.025281, -0.937486,
		-0.914533, 0.212291, -0.344329,
		0.207725, 0.976879, 0.050566,
		30.615082, 32.675003, 54.357803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224348, 32.328239, 53.809254>,  <30.469675, 31.991188, 54.322407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224348, 32.328239, 53.809254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.492643, 32.617294, 53.876072>,  <30.653622, 32.790726, 53.916164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.492643, 32.617294, 53.876072>,  <30.224348, 32.328239, 53.809254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492643, 32.617294, 53.876072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170879, 0.068605, -0.982901,
		-0.721740, 0.687815, -0.077467,
		0.670739, 0.722636, 0.167048,
		30.693865, 32.834084, 53.926186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.459648, 37.335125, 56.150887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.753683, 37.543282, 56.324711>,  <26.930105, 37.668175, 56.429005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.753683, 37.543282, 56.324711>,  <26.459648, 37.335125, 56.150887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753683, 37.543282, 56.324711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372649, -0.225328, 0.900200,
		0.566373, -0.823663, 0.028287,
		0.735088, 0.520390, 0.434557,
		26.974209, 37.699398, 56.455078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616575, 37.057999, 56.845737>,  <26.459648, 37.335125, 56.150887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616575, 37.057999, 56.845737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.763063, 37.428307, 56.883343>,  <26.850956, 37.650490, 56.905907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.763063, 37.428307, 56.883343>,  <26.616575, 37.057999, 56.845737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763063, 37.428307, 56.883343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119885, -0.053253, 0.991358,
		0.922774, -0.374325, 0.091484,
		0.366218, 0.925767, 0.094016,
		26.872929, 37.706036, 56.911549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032200, 37.038803, 57.426434>,  <26.616575, 37.057999, 56.845737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032200, 37.038803, 57.426434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.940622, 37.425091, 57.377502>,  <26.885675, 37.656864, 57.348145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.940622, 37.425091, 57.377502>,  <27.032200, 37.038803, 57.426434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940622, 37.425091, 57.377502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149885, 0.089194, 0.984672,
		0.961832, 0.243768, 0.124327,
		-0.228942, 0.965724, -0.122326,
		26.871941, 37.714809, 57.340805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320913, 37.310516, 58.014591>,  <27.032200, 37.038803, 57.426434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320913, 37.310516, 58.014591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.076893, 37.589344, 57.863895>,  <26.930481, 37.756641, 57.773479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.076893, 37.589344, 57.863895>,  <27.320913, 37.310516, 58.014591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076893, 37.589344, 57.863895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293942, 0.242440, 0.924565,
		0.735823, 0.674771, 0.056998,
		-0.610051, 0.697071, -0.376736,
		26.893877, 37.798466, 57.750874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488575, 37.883854, 58.326828>,  <27.320913, 37.310516, 58.014591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488575, 37.883854, 58.326828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.110386, 37.902042, 58.197819>,  <26.883472, 37.912956, 58.120415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.110386, 37.902042, 58.197819>,  <27.488575, 37.883854, 58.326828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110386, 37.902042, 58.197819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298536, 0.274968, 0.913930,
		0.130238, 0.960378, -0.246400,
		-0.945471, 0.045469, -0.322519,
		26.826744, 37.915684, 58.101063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250298, 38.479713, 58.611942>,  <27.488575, 37.883854, 58.326828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250298, 38.479713, 58.611942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.907446, 38.289749, 58.532150>,  <26.701735, 38.175770, 58.484276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.907446, 38.289749, 58.532150>,  <27.250298, 38.479713, 58.611942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907446, 38.289749, 58.532150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393918, 0.354803, 0.847905,
		-0.331904, 0.805342, -0.491187,
		-0.857128, -0.474910, -0.199478,
		26.650307, 38.147278, 58.472305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679821, 38.934929, 58.657383>,  <27.250298, 38.479713, 58.611942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679821, 38.934929, 58.657383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.493147, 38.581173, 58.660488>,  <26.381144, 38.368919, 58.662350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.493147, 38.581173, 58.660488>,  <26.679821, 38.934929, 58.657383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493147, 38.581173, 58.660488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635313, 0.341328, 0.692729,
		-0.615292, 0.318354, -0.721157,
		-0.466684, -0.884390, 0.007762,
		26.353142, 38.315857, 58.662815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926813, 38.970257, 58.482342>,  <26.679821, 38.934929, 58.657383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926813, 38.970257, 58.482342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.959467, 38.638966, 58.704109>,  <25.979059, 38.440193, 58.837170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.959467, 38.638966, 58.704109>,  <25.926813, 38.970257, 58.482342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959467, 38.638966, 58.704109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709571, 0.342338, 0.615884,
		-0.699889, -0.443676, -0.559738,
		0.081633, -0.828225, 0.554418,
		25.983957, 38.390499, 58.870434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.266403, 38.811028, 58.655060>,  <25.926813, 38.970257, 58.482342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.266403, 38.811028, 58.655060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.486212, 38.617390, 58.927433>,  <25.618097, 38.501205, 59.090858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.486212, 38.617390, 58.927433>,  <25.266403, 38.811028, 58.655060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.486212, 38.617390, 58.927433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653491, 0.258757, 0.711333,
		-0.520552, -0.835879, -0.174161,
		0.549523, -0.484098, 0.680936,
		25.651068, 38.472160, 59.131714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.749083, 38.523445, 58.987087>,  <25.266403, 38.811028, 58.655060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.749083, 38.523445, 58.987087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.071289, 38.537415, 59.223705>,  <25.264612, 38.545795, 59.365677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.071289, 38.537415, 59.223705>,  <24.749083, 38.523445, 58.987087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071289, 38.537415, 59.223705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581065, 0.242335, 0.776941,
		-0.116222, -0.969564, 0.215496,
		0.805516, 0.034920, 0.591544,
		25.312944, 38.547890, 59.401169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.673559, 38.041203, 59.631275>,  <24.749083, 38.523445, 58.987087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.673559, 38.041203, 59.631275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.956327, 38.295773, 59.754711>,  <25.125988, 38.448513, 59.828773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.956327, 38.295773, 59.754711>,  <24.673559, 38.041203, 59.631275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.956327, 38.295773, 59.754711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532667, 0.191999, 0.824259,
		0.465329, -0.747061, 0.474730,
		0.706919, 0.636424, 0.308593,
		25.168404, 38.486698, 59.847290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.795721, 37.962002, 60.368935>,  <24.673559, 38.041203, 59.631275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.795721, 37.962002, 60.368935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.935089, 38.326443, 60.280849>,  <25.018711, 38.545109, 60.227997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.935089, 38.326443, 60.280849>,  <24.795721, 37.962002, 60.368935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935089, 38.326443, 60.280849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357590, 0.346369, 0.867271,
		0.866448, -0.223429, 0.446483,
		0.348421, 0.911103, -0.220215,
		25.039616, 38.599773, 60.214787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312820, 38.213184, 60.873627>,  <24.795721, 37.962002, 60.368935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312820, 38.213184, 60.873627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.109676, 38.511646, 60.701427>,  <24.987789, 38.690723, 60.598106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.109676, 38.511646, 60.701427>,  <25.312820, 38.213184, 60.873627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109676, 38.511646, 60.701427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118729, 0.434349, 0.892886,
		0.853218, 0.504575, -0.131999,
		-0.507861, 0.746154, -0.430502,
		24.957317, 38.735493, 60.572277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362867, 37.964756, 61.665707>,  <25.312820, 38.213184, 60.873627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.362867, 37.964756, 61.665707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.337799, 38.050175, 62.055676>,  <25.322758, 38.101425, 62.289658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.337799, 38.050175, 62.055676>,  <25.362867, 37.964756, 61.665707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337799, 38.050175, 62.055676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706312, -0.680657, 0.194494,
		0.705121, 0.700788, -0.108173,
		-0.062670, 0.213546, 0.974921,
		25.318998, 38.114239, 62.348152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.081841, 37.279900, 61.583370>,  <25.362867, 37.964756, 61.665707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.081841, 37.279900, 61.583370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.114222, 36.965431, 61.828442>,  <25.133650, 36.776749, 61.975483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.114222, 36.965431, 61.828442>,  <25.081841, 37.279900, 61.583370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114222, 36.965431, 61.828442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383667, -0.542752, -0.747141,
		0.919917, 0.295548, 0.257691,
		0.080954, -0.786175, 0.612679,
		25.138508, 36.729580, 62.012245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759872, 37.043205, 61.501732>,  <25.081841, 37.279900, 61.583370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759872, 37.043205, 61.501732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.600250, 36.724483, 61.683220>,  <25.504477, 36.533249, 61.792110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.600250, 36.724483, 61.683220>,  <25.759872, 37.043205, 61.501732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600250, 36.724483, 61.683220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475744, -0.602931, -0.640423,
		0.783852, -0.039709, 0.619676,
		-0.399053, -0.796804, 0.453718,
		25.480534, 36.485443, 61.819336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317879, 36.598373, 61.737865>,  <25.759872, 37.043205, 61.501732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317879, 36.598373, 61.737865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.991776, 36.370064, 61.698730>,  <25.796114, 36.233078, 61.675251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.991776, 36.370064, 61.698730>,  <26.317879, 36.598373, 61.737865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991776, 36.370064, 61.698730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540120, -0.688513, -0.483963,
		0.208874, -0.447397, 0.869602,
		-0.815256, -0.570777, -0.097835,
		25.747198, 36.198830, 61.669380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627371, 35.927357, 61.822613>,  <26.317879, 36.598373, 61.737865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627371, 35.927357, 61.822613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.271021, 35.891693, 61.644447>,  <26.057211, 35.870296, 61.537548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.271021, 35.891693, 61.644447>,  <26.627371, 35.927357, 61.822613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271021, 35.891693, 61.644447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415037, -0.558308, -0.718357,
		-0.184631, -0.824829, 0.534387,
		-0.890874, -0.089160, -0.445415,
		26.003759, 35.864944, 61.510822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513651, 35.254913, 61.837608>,  <26.627371, 35.927357, 61.822613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513651, 35.254913, 61.837608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.312023, 35.419273, 61.533745>,  <26.191048, 35.517891, 61.351429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.312023, 35.419273, 61.533745>,  <26.513651, 35.254913, 61.837608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312023, 35.419273, 61.533745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402134, -0.666750, -0.627481,
		-0.764333, -0.621776, 0.170849,
		-0.504067, 0.410900, -0.759656,
		26.160803, 35.542545, 61.305847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349894, 34.670170, 61.487785>,  <26.513651, 35.254913, 61.837608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349894, 34.670170, 61.487785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.282591, 34.974342, 61.236889>,  <26.242208, 35.156845, 61.086349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.282591, 34.974342, 61.236889>,  <26.349894, 34.670170, 61.487785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282591, 34.974342, 61.236889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267641, -0.577172, -0.771518,
		-0.948714, -0.297690, -0.106409,
		-0.168257, 0.760430, -0.627245,
		26.232113, 35.202473, 61.048714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804893, 34.441906, 61.005630>,  <26.349894, 34.670170, 61.487785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804893, 34.441906, 61.005630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.032528, 34.728512, 60.844261>,  <26.169109, 34.900475, 60.747440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.032528, 34.728512, 60.844261>,  <25.804893, 34.441906, 61.005630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032528, 34.728512, 60.844261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223773, -0.607050, -0.762506,
		-0.791243, 0.343657, -0.505801,
		0.569087, 0.716512, -0.403423,
		26.203255, 34.943466, 60.723236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731262, 34.334423, 60.202061>,  <25.804893, 34.441906, 61.005630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731262, 34.334423, 60.202061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.031420, 34.596535, 60.236748>,  <26.211514, 34.753803, 60.257561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.031420, 34.596535, 60.236748>,  <25.731262, 34.334423, 60.202061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031420, 34.596535, 60.236748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412021, -0.361120, -0.836559,
		-0.516863, 0.663478, -0.540971,
		0.750394, 0.655278, 0.086718,
		26.256538, 34.793118, 60.262764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840883, 34.650749, 59.563965>,  <25.731262, 34.334423, 60.202061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840883, 34.650749, 59.563965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.192738, 34.731956, 59.736023>,  <26.403851, 34.780682, 59.839260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.192738, 34.731956, 59.736023>,  <25.840883, 34.650749, 59.563965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192738, 34.731956, 59.736023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445495, -0.034761, -0.894610,
		-0.166668, 0.978558, -0.121020,
		0.879634, 0.203017, 0.430149,
		26.456627, 34.792862, 59.865067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192780, 35.032139, 59.134468>,  <25.840883, 34.650749, 59.563965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192780, 35.032139, 59.134468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.501389, 34.944824, 59.373501>,  <26.686554, 34.892433, 59.516918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.501389, 34.944824, 59.373501>,  <26.192780, 35.032139, 59.134468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501389, 34.944824, 59.373501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601025, -0.057922, -0.797129,
		0.208618, 0.974163, 0.086510,
		0.771523, -0.218290, 0.597580,
		26.732845, 34.879337, 59.552776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734652, 35.371727, 58.847584>,  <26.192780, 35.032139, 59.134468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734652, 35.371727, 58.847584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.908260, 35.091061, 59.073605>,  <27.012426, 34.922661, 59.209217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.908260, 35.091061, 59.073605>,  <26.734652, 35.371727, 58.847584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908260, 35.091061, 59.073605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581177, -0.261178, -0.770727,
		0.688373, 0.662910, 0.294436,
		0.434022, -0.701667, 0.565056,
		27.038467, 34.880562, 59.243122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483582, 35.517075, 58.842701>,  <26.734652, 35.371727, 58.847584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483582, 35.517075, 58.842701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.421722, 35.132824, 58.935024>,  <27.384607, 34.902271, 58.990417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.421722, 35.132824, 58.935024>,  <27.483582, 35.517075, 58.842701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421722, 35.132824, 58.935024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696339, -0.271708, -0.664295,
		0.700855, 0.057991, 0.710943,
		-0.154646, -0.960631, 0.230809,
		27.375328, 34.844635, 59.004269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177795, 35.169682, 59.000587>,  <27.483582, 35.517075, 58.842701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177795, 35.169682, 59.000587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.920437, 34.873936, 58.921211>,  <27.766022, 34.696487, 58.873585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.920437, 34.873936, 58.921211>,  <28.177795, 35.169682, 59.000587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920437, 34.873936, 58.921211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677150, -0.428746, -0.598034,
		0.357083, -0.519150, 0.776515,
		-0.643397, -0.739365, -0.198444,
		27.727417, 34.652126, 58.861679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544352, 34.480133, 59.040119>,  <28.177795, 35.169682, 59.000587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544352, 34.480133, 59.040119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.236031, 34.427284, 58.790829>,  <28.051037, 34.395576, 58.641254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.236031, 34.427284, 58.790829>,  <28.544352, 34.480133, 59.040119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236031, 34.427284, 58.790829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606921, -0.449684, -0.655310,
		-0.193673, -0.883362, 0.426805,
		-0.770803, -0.132121, -0.623222,
		28.004789, 34.387650, 58.603863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998365, 34.021976, 59.400795>,  <28.544352, 34.480133, 59.040119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998365, 34.021976, 59.400795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.371187, 34.036701, 59.544975>,  <29.594879, 34.045536, 59.631481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.371187, 34.036701, 59.544975>,  <28.998365, 34.021976, 59.400795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371187, 34.036701, 59.544975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359549, 0.216812, 0.907589,
		-0.044740, -0.975519, 0.215315,
		0.932053, 0.036811, 0.360447,
		29.650803, 34.047745, 59.653111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986738, 33.698555, 60.054653>,  <28.998365, 34.021976, 59.400795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986738, 33.698555, 60.054653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.298376, 33.948956, 60.041199>,  <29.485359, 34.099197, 60.033127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.298376, 33.948956, 60.041199>,  <28.986738, 33.698555, 60.054653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298376, 33.948956, 60.041199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220342, 0.323664, 0.920158,
		0.586909, -0.709478, 0.390100,
		0.779093, 0.626005, -0.033634,
		29.532104, 34.136757, 60.031109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174372, 33.710041, 60.753960>,  <28.986738, 33.698555, 60.054653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174372, 33.710041, 60.753960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.392891, 34.014008, 60.613056>,  <29.524002, 34.196388, 60.528515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.392891, 34.014008, 60.613056>,  <29.174372, 33.710041, 60.753960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392891, 34.014008, 60.613056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131917, 0.493374, 0.859756,
		0.827139, -0.423212, 0.369774,
		0.546296, 0.759917, -0.352260,
		29.556780, 34.241982, 60.507378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756706, 33.894424, 61.234432>,  <29.174372, 33.710041, 60.753960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756706, 33.894424, 61.234432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.663193, 34.216053, 61.015778>,  <29.607084, 34.409031, 60.884586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.663193, 34.216053, 61.015778>,  <29.756706, 33.894424, 61.234432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663193, 34.216053, 61.015778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086620, 0.542757, 0.835411,
		0.968423, 0.242655, -0.057239,
		-0.233784, 0.804073, -0.546637,
		29.593058, 34.457275, 60.851788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094496, 34.451126, 61.606873>,  <29.756706, 33.894424, 61.234432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094496, 34.451126, 61.606873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.830643, 34.651196, 61.382477>,  <29.672331, 34.771236, 61.247841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.830643, 34.651196, 61.382477>,  <30.094496, 34.451126, 61.606873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830643, 34.651196, 61.382477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247902, 0.559842, 0.790647,
		0.709526, 0.660608, -0.245297,
		-0.659635, 0.500175, -0.560988,
		29.632751, 34.801247, 61.214180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129234, 35.123173, 61.746105>,  <30.094496, 34.451126, 61.606873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129234, 35.123173, 61.746105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.756418, 35.094517, 61.604023>,  <29.532728, 35.077324, 61.518772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.756418, 35.094517, 61.604023>,  <30.129234, 35.123173, 61.746105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756418, 35.094517, 61.604023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352374, 0.407710, 0.842380,
		0.084471, 0.910296, -0.405246,
		-0.932039, -0.071642, -0.355205,
		29.476807, 35.073025, 61.497463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847204, 35.717857, 61.989918>,  <30.129234, 35.123173, 61.746105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847204, 35.717857, 61.989918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.551699, 35.463264, 61.901264>,  <29.374395, 35.310509, 61.848072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.551699, 35.463264, 61.901264>,  <29.847204, 35.717857, 61.989918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551699, 35.463264, 61.901264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444240, 0.212565, 0.870326,
		-0.506831, 0.741426, -0.439784,
		-0.738765, -0.636478, -0.221637,
		29.330069, 35.272320, 61.834774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699409, 36.453289, 62.142647>,  <29.847204, 35.717857, 61.989918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699409, 36.453289, 62.142647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.979647, 36.584648, 62.396049>,  <30.147789, 36.663464, 62.548092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.979647, 36.584648, 62.396049>,  <29.699409, 36.453289, 62.142647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979647, 36.584648, 62.396049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713118, -0.353521, -0.605380,
		0.025152, 0.875888, -0.481859,
		0.700592, 0.328396, 0.633503,
		30.189825, 36.683167, 62.586102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185314, 36.787716, 61.800461>,  <29.699409, 36.453289, 62.142647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185314, 36.787716, 61.800461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.385418, 36.668552, 62.125668>,  <30.505480, 36.597054, 62.320789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.385418, 36.668552, 62.125668>,  <30.185314, 36.787716, 61.800461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385418, 36.668552, 62.125668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773399, -0.268473, -0.574261,
		0.389349, 0.916064, 0.096095,
		0.500261, -0.297908, 0.813013,
		30.535496, 36.579182, 62.369572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890535, 37.020435, 61.663193>,  <30.185314, 36.787716, 61.800461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890535, 37.020435, 61.663193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.949726, 36.765732, 61.965885>,  <30.985241, 36.612907, 62.147499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.949726, 36.765732, 61.965885>,  <30.890535, 37.020435, 61.663193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949726, 36.765732, 61.965885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756648, -0.419824, -0.501230,
		0.636857, 0.646746, 0.419682,
		0.147976, -0.636763, 0.756727,
		30.994120, 36.574703, 62.192902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577688, 37.107780, 61.942234>,  <30.890535, 37.020435, 61.663193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577688, 37.107780, 61.942234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.449347, 36.740013, 62.033203>,  <31.372341, 36.519352, 62.087784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.449347, 36.740013, 62.033203>,  <31.577688, 37.107780, 61.942234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449347, 36.740013, 62.033203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749426, -0.393280, -0.532627,
		0.579147, -0.000461, 0.815223,
		-0.320856, -0.919419, 0.227422,
		31.353090, 36.464188, 62.101429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200451, 36.778709, 62.221443>,  <31.577688, 37.107780, 61.942234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200451, 36.778709, 62.221443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.946136, 36.486481, 62.121815>,  <31.793547, 36.311142, 62.062038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.946136, 36.486481, 62.121815>,  <32.200451, 36.778709, 62.221443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946136, 36.486481, 62.121815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752661, -0.515274, -0.409871,
		0.171101, -0.448057, 0.877478,
		-0.635788, -0.730573, -0.249072,
		31.755400, 36.267307, 62.047092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571098, 36.044270, 62.396057>,  <32.200451, 36.778709, 62.221443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571098, 36.044270, 62.396057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.284920, 35.948997, 62.133335>,  <32.113213, 35.891834, 61.975700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.284920, 35.948997, 62.133335>,  <32.571098, 36.044270, 62.396057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284920, 35.948997, 62.133335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625462, -0.637269, -0.450205,
		-0.311332, -0.732909, 0.604910,
		-0.715451, -0.238185, -0.656809,
		32.070286, 35.877541, 61.936291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774231, 35.403690, 62.190266>,  <32.571098, 36.044270, 62.396057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774231, 35.403690, 62.190266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515335, 35.499256, 61.900711>,  <32.359997, 35.556595, 61.726978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515335, 35.499256, 61.900711>,  <32.774231, 35.403690, 62.190266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515335, 35.499256, 61.900711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473458, -0.618253, -0.627377,
		-0.597428, -0.748790, 0.287043,
		-0.647238, 0.238910, -0.723882,
		32.321163, 35.570930, 61.683544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.542364, 41.414410, 61.364944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263317, 41.221863, 61.152672>,  <27.095890, 41.106335, 61.025311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263317, 41.221863, 61.152672>,  <27.542364, 41.414410, 61.364944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263317, 41.221863, 61.152672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642435, -0.092355, -0.760755,
		0.317190, -0.871641, 0.373674,
		-0.697616, -0.481365, -0.530679,
		27.054033, 41.077454, 60.993469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855913, 40.926743, 61.140377>,  <27.542364, 41.414410, 61.364944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855913, 40.926743, 61.140377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561438, 40.878151, 60.874065>,  <27.384752, 40.848995, 60.714279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561438, 40.878151, 60.874065>,  <27.855913, 40.926743, 61.140377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561438, 40.878151, 60.874065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673889, -0.222316, -0.704591,
		-0.062417, -0.967377, 0.245534,
		-0.736191, -0.121484, -0.665781,
		27.340580, 40.841705, 60.674332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982685, 40.235661, 60.818111>,  <27.855913, 40.926743, 61.140377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982685, 40.235661, 60.818111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756096, 40.449268, 60.567055>,  <27.620142, 40.577435, 60.416420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756096, 40.449268, 60.567055>,  <27.982685, 40.235661, 60.818111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756096, 40.449268, 60.567055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596222, -0.260181, -0.759490,
		-0.568884, -0.804442, -0.171010,
		-0.566472, 0.534022, -0.627638,
		27.586155, 40.609474, 60.378761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955061, 39.802719, 60.254307>,  <27.982685, 40.235661, 60.818111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955061, 39.802719, 60.254307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855209, 40.173744, 60.143082>,  <27.795300, 40.396358, 60.076347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855209, 40.173744, 60.143082>,  <27.955061, 39.802719, 60.254307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855209, 40.173744, 60.143082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455586, -0.140891, -0.878972,
		-0.854475, -0.346098, -0.387412,
		-0.249628, 0.927559, -0.278065,
		27.780321, 40.452011, 60.059662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776869, 39.761951, 59.659840>,  <27.955061, 39.802719, 60.254307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776869, 39.761951, 59.659840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852585, 40.154720, 59.660248>,  <27.898014, 40.390381, 59.660492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852585, 40.154720, 59.660248>,  <27.776869, 39.761951, 59.659840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852585, 40.154720, 59.660248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464236, -0.088574, -0.881272,
		-0.865248, 0.167291, -0.472609,
		0.189290, 0.981921, 0.001024,
		27.909372, 40.449295, 59.660557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526834, 39.962120, 59.001205>,  <27.776869, 39.761951, 59.659840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526834, 39.962120, 59.001205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784887, 40.237408, 59.133972>,  <27.939718, 40.402580, 59.213631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784887, 40.237408, 59.133972>,  <27.526834, 39.962120, 59.001205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784887, 40.237408, 59.133972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418777, 0.044857, -0.906980,
		-0.639086, 0.724119, -0.259270,
		0.645132, 0.688214, 0.331912,
		27.978426, 40.443871, 59.233547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460266, 40.521107, 58.525581>,  <27.526834, 39.962120, 59.001205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460266, 40.521107, 58.525581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812639, 40.568710, 58.708797>,  <28.024063, 40.597271, 58.818726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812639, 40.568710, 58.708797>,  <27.460266, 40.521107, 58.525581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812639, 40.568710, 58.708797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439224, 0.154739, -0.884951,
		-0.176192, 0.980761, 0.084043,
		0.880931, 0.119007, 0.458038,
		28.076918, 40.604412, 58.846210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841557, 41.167683, 58.200493>,  <27.460266, 40.521107, 58.525581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841557, 41.167683, 58.200493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101095, 40.918190, 58.374828>,  <28.256819, 40.768494, 58.479431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101095, 40.918190, 58.374828>,  <27.841557, 41.167683, 58.200493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101095, 40.918190, 58.374828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606442, 0.077927, -0.791300,
		0.459595, 0.777744, 0.428820,
		0.648845, -0.623732, 0.435842,
		28.295750, 40.731071, 58.505581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527380, 41.519058, 58.226109>,  <27.841557, 41.167683, 58.200493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527380, 41.519058, 58.226109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593525, 41.130547, 58.294548>,  <28.633211, 40.897438, 58.335609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593525, 41.130547, 58.294548>,  <28.527380, 41.519058, 58.226109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593525, 41.130547, 58.294548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664544, -0.018454, -0.747021,
		0.728723, 0.237229, 0.642406,
		0.165361, -0.971278, 0.171097,
		28.643133, 40.839165, 58.345879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243065, 41.478592, 58.068836>,  <28.527380, 41.519058, 58.226109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243065, 41.478592, 58.068836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109594, 41.102024, 58.049301>,  <29.029512, 40.876083, 58.037582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109594, 41.102024, 58.049301>,  <29.243065, 41.478592, 58.068836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109594, 41.102024, 58.049301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569757, -0.160131, -0.806061,
		0.751024, -0.296787, 0.589814,
		-0.333676, -0.941422, -0.048834,
		29.009491, 40.819599, 58.034653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863911, 41.084549, 57.934025>,  <29.243065, 41.478592, 58.068836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863911, 41.084549, 57.934025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532452, 40.892773, 57.818451>,  <29.333576, 40.777706, 57.749107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532452, 40.892773, 57.818451>,  <29.863911, 41.084549, 57.934025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532452, 40.892773, 57.818451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455262, -0.276892, -0.846208,
		0.325702, -0.832748, 0.447716,
		-0.828646, -0.479440, -0.288934,
		29.283857, 40.748940, 57.731770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116377, 40.509052, 57.671387>,  <29.863911, 41.084549, 57.934025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116377, 40.509052, 57.671387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748558, 40.545380, 57.518448>,  <29.527866, 40.567177, 57.426685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748558, 40.545380, 57.518448>,  <30.116377, 40.509052, 57.671387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748558, 40.545380, 57.518448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331624, -0.342691, -0.878970,
		-0.210853, -0.935048, 0.285002,
		-0.919547, 0.090820, -0.382342,
		29.472694, 40.572624, 57.403744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192701, 40.362667, 58.518761>,  <30.116377, 40.509052, 57.671387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192701, 40.362667, 58.518761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457758, 40.546906, 58.754986>,  <30.616793, 40.657448, 58.896721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457758, 40.546906, 58.754986>,  <30.192701, 40.362667, 58.518761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457758, 40.546906, 58.754986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582657, -0.178383, 0.792899,
		0.470549, -0.869502, 0.150163,
		0.662641, 0.460592, 0.590560,
		30.656551, 40.685081, 58.932156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058680, 40.127834, 59.124039>,  <30.192701, 40.362667, 58.518761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058680, 40.127834, 59.124039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334902, 40.399517, 59.223484>,  <30.500635, 40.562527, 59.283150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334902, 40.399517, 59.223484>,  <30.058680, 40.127834, 59.124039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334902, 40.399517, 59.223484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280550, -0.065279, 0.957617,
		0.666653, -0.731034, 0.145474,
		0.690554, 0.679211, 0.248610,
		30.542068, 40.603279, 59.298065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404163, 39.852615, 59.733189>,  <30.058680, 40.127834, 59.124039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404163, 39.852615, 59.733189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495699, 40.241024, 59.760754>,  <30.550621, 40.474068, 59.777290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495699, 40.241024, 59.760754>,  <30.404163, 39.852615, 59.733189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495699, 40.241024, 59.760754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118000, -0.042595, 0.992100,
		0.966286, -0.235163, 0.104833,
		0.228839, 0.971022, 0.068908,
		30.564350, 40.532330, 59.781425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093483, 39.988045, 60.161789>,  <30.404163, 39.852615, 59.733189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093483, 39.988045, 60.161789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838413, 40.296074, 60.169304>,  <30.685371, 40.480892, 60.173813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838413, 40.296074, 60.169304>,  <31.093483, 39.988045, 60.161789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838413, 40.296074, 60.169304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006243, -0.029553, 0.999544,
		0.770280, 0.637267, 0.023653,
		-0.637675, 0.770076, 0.018785,
		30.647110, 40.527096, 60.174938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284626, 40.282612, 60.754318>,  <31.093483, 39.988045, 60.161789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284626, 40.282612, 60.754318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933239, 40.466686, 60.702900>,  <30.722406, 40.577129, 60.672047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933239, 40.466686, 60.702900>,  <31.284626, 40.282612, 60.754318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933239, 40.466686, 60.702900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155766, -0.021481, 0.987560,
		0.451701, 0.887562, 0.090552,
		-0.878467, 0.460187, -0.128549,
		30.669699, 40.604744, 60.664337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216005, 40.733677, 61.269104>,  <31.284626, 40.282612, 60.754318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216005, 40.733677, 61.269104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830292, 40.708836, 61.166111>,  <30.598864, 40.693932, 61.104313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830292, 40.708836, 61.166111>,  <31.216005, 40.733677, 61.269104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830292, 40.708836, 61.166111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239194, -0.213376, 0.947237,
		-0.113765, 0.974995, 0.190902,
		-0.964284, -0.062100, -0.257487,
		30.541006, 40.690205, 61.088863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868769, 41.031651, 61.844128>,  <31.216005, 40.733677, 61.269104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868769, 41.031651, 61.844128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578966, 40.851616, 61.635319>,  <30.405085, 40.743595, 61.510033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578966, 40.851616, 61.635319>,  <30.868769, 41.031651, 61.844128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578966, 40.851616, 61.635319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487216, -0.201307, 0.849762,
		-0.487557, 0.869997, -0.073442,
		-0.724506, -0.450090, -0.522025,
		30.361614, 40.716591, 61.478710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275393, 41.371456, 61.989296>,  <30.868769, 41.031651, 61.844128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275393, 41.371456, 61.989296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138952, 41.011402, 61.880920>,  <30.057089, 40.795368, 61.815895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138952, 41.011402, 61.880920>,  <30.275393, 41.371456, 61.989296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138952, 41.011402, 61.880920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548239, -0.043639, 0.835182,
		-0.763599, 0.433422, -0.478604,
		-0.341100, -0.900134, -0.270942,
		30.036623, 40.741364, 61.799637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624002, 41.497158, 62.041416>,  <30.275393, 41.371456, 61.989296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624002, 41.497158, 62.041416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675848, 41.100864, 62.057659>,  <29.706955, 40.863091, 62.067406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675848, 41.100864, 62.057659>,  <29.624002, 41.497158, 62.041416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675848, 41.100864, 62.057659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768725, -0.074535, 0.635222,
		-0.626308, -0.113550, -0.771261,
		0.129615, -0.990733, 0.040607,
		29.714733, 40.803646, 62.069839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872108, 41.233593, 61.994217>,  <29.624002, 41.497158, 62.041416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872108, 41.233593, 61.994217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115412, 40.966480, 62.165840>,  <29.261393, 40.806213, 62.268814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115412, 40.966480, 62.165840>,  <28.872108, 41.233593, 61.994217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115412, 40.966480, 62.165840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606259, -0.041965, 0.794159,
		-0.512322, -0.743171, -0.430376,
		0.608257, -0.667784, 0.429054,
		29.297890, 40.766144, 62.294556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390358, 40.735035, 62.345749>,  <28.872108, 41.233593, 61.994217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390358, 40.735035, 62.345749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759504, 40.737648, 62.499779>,  <28.980991, 40.739216, 62.592197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759504, 40.737648, 62.499779>,  <28.390358, 40.735035, 62.345749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759504, 40.737648, 62.499779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385101, 0.004350, 0.922864,
		0.004350, -0.999969, 0.006529,
		-0.922864, -0.006529, -0.385070,
		29.036364, 40.739605, 62.615299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346235, 40.285324, 62.870312>,  <28.390358, 40.735035, 62.345749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346235, 40.285324, 62.870312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679115, 40.483746, 62.969410>,  <28.878843, 40.602798, 63.028870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679115, 40.483746, 62.969410>,  <28.346235, 40.285324, 62.870312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679115, 40.483746, 62.969410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288319, 0.005488, 0.957519,
		0.473619, -0.868276, 0.147588,
		0.832200, 0.496051, 0.247741,
		28.928776, 40.632561, 63.043732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612116, 39.892418, 63.406246>,  <28.346235, 40.285324, 62.870312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612116, 39.892418, 63.406246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767490, 40.258602, 63.448311>,  <28.860714, 40.478313, 63.473549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767490, 40.258602, 63.448311>,  <28.612116, 39.892418, 63.406246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767490, 40.258602, 63.448311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417253, 0.072987, 0.905855,
		0.821595, -0.395744, 0.410328,
		0.388435, 0.915456, 0.105159,
		28.884022, 40.533237, 63.479858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961433, 39.852551, 63.989677>,  <28.612116, 39.892418, 63.406246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961433, 39.852551, 63.989677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924372, 40.249123, 63.952835>,  <28.902136, 40.487064, 63.930729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924372, 40.249123, 63.952835>,  <28.961433, 39.852551, 63.989677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924372, 40.249123, 63.952835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543367, 0.027172, 0.839056,
		0.834367, 0.127790, 0.536192,
		-0.092653, 0.991429, -0.092108,
		28.896576, 40.546551, 63.925201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327663, 39.207066, 64.008080>,  <28.961433, 39.852551, 63.989677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327663, 39.207066, 64.008080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082365, 38.910595, 64.117317>,  <28.935186, 38.732712, 64.182861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082365, 38.910595, 64.117317>,  <29.327663, 39.207066, 64.008080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082365, 38.910595, 64.117317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491055, -0.628539, -0.603161,
		0.618701, -0.235783, 0.749410,
		-0.613248, -0.741178, 0.273096,
		28.898390, 38.688240, 64.199249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672203, 38.711689, 64.231354>,  <29.327663, 39.207066, 64.008080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672203, 38.711689, 64.231354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342831, 38.516300, 64.115868>,  <29.145206, 38.399067, 64.046577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342831, 38.516300, 64.115868>,  <29.672203, 38.711689, 64.231354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342831, 38.516300, 64.115868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566017, -0.671402, -0.478376,
		0.039834, -0.557325, 0.829338,
		-0.823430, -0.488475, -0.288711,
		29.095802, 38.369759, 64.029251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833830, 38.058399, 64.418991>,  <29.672203, 38.711689, 64.231354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833830, 38.058399, 64.418991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557310, 37.989365, 64.138329>,  <29.391397, 37.947945, 63.969933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557310, 37.989365, 64.138329>,  <29.833830, 38.058399, 64.418991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557310, 37.989365, 64.138329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573746, -0.721384, -0.387841,
		-0.439226, -0.670686, 0.597713,
		-0.691300, -0.172586, -0.701654,
		29.349920, 37.937588, 63.927834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739180, 37.368786, 64.351776>,  <29.833830, 38.058399, 64.418991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739180, 37.368786, 64.351776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614040, 37.533470, 64.009399>,  <29.538956, 37.632278, 63.803974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614040, 37.533470, 64.009399>,  <29.739180, 37.368786, 64.351776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614040, 37.533470, 64.009399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425865, -0.744704, -0.513863,
		-0.848978, -0.525274, 0.057648,
		-0.312850, 0.411708, -0.855933,
		29.520185, 37.656982, 63.752621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377047, 36.745983, 63.970940>,  <29.739180, 37.368786, 64.351776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377047, 36.745983, 63.970940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482672, 37.033829, 63.714058>,  <29.546047, 37.206535, 63.559929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482672, 37.033829, 63.714058>,  <29.377047, 36.745983, 63.970940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482672, 37.033829, 63.714058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492557, -0.673081, -0.551680,
		-0.829252, -0.170645, -0.532185,
		0.264063, 0.719613, -0.642206,
		29.561890, 37.249714, 63.521397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097797, 36.540352, 63.270813>,  <29.377047, 36.745983, 63.970940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097797, 36.540352, 63.270813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409681, 36.785538, 63.219700>,  <29.596813, 36.932648, 63.189034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409681, 36.785538, 63.219700>,  <29.097797, 36.540352, 63.270813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409681, 36.785538, 63.219700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460269, -0.699454, -0.546732,
		-0.424501, 0.367481, -0.827500,
		0.779712, 0.612961, -0.127779,
		29.643595, 36.969425, 63.181366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423857, 36.190582, 62.741520>,  <29.097797, 36.540352, 63.270813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423857, 36.190582, 62.741520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674047, 36.494949, 62.810547>,  <29.824162, 36.677570, 62.851963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674047, 36.494949, 62.810547>,  <29.423857, 36.190582, 62.741520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674047, 36.494949, 62.810547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648963, -0.384570, -0.656470,
		-0.433155, 0.522598, -0.734348,
		0.625479, 0.760918, 0.172568,
		29.861691, 36.723225, 62.862316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000488, 36.149670, 62.068848>,  <29.423857, 36.190582, 62.741520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000488, 36.149670, 62.068848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926029, 35.757221, 62.089825>,  <28.881353, 35.521751, 62.102409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926029, 35.757221, 62.089825>,  <29.000488, 36.149670, 62.068848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926029, 35.757221, 62.089825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676764, 0.166731, 0.717071,
		-0.712277, 0.097992, -0.695024,
		-0.186149, -0.981121, 0.052441,
		28.870184, 35.462883, 62.105556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283716, 36.139133, 62.190868>,  <29.000488, 36.149670, 62.068848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283716, 36.139133, 62.190868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424648, 35.778473, 62.291176>,  <28.509207, 35.562077, 62.351360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424648, 35.778473, 62.291176>,  <28.283716, 36.139133, 62.190868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424648, 35.778473, 62.291176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601457, -0.012858, 0.798802,
		-0.717018, -0.432268, -0.546836,
		0.352328, -0.901653, 0.250771,
		28.530346, 35.507977, 62.366405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746784, 35.697769, 62.303280>,  <28.283716, 36.139133, 62.190868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746784, 35.697769, 62.303280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043882, 35.495396, 62.478714>,  <28.222141, 35.373970, 62.583973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043882, 35.495396, 62.478714>,  <27.746784, 35.697769, 62.303280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043882, 35.495396, 62.478714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640260, -0.344973, 0.686338,
		-0.195942, -0.790585, -0.580157,
		0.742748, -0.505934, 0.438585,
		28.266706, 35.343616, 62.610291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590157, 34.889164, 62.368874>,  <27.746784, 35.697769, 62.303280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590157, 34.889164, 62.368874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859907, 34.991528, 62.645924>,  <28.021757, 35.052944, 62.812153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859907, 34.991528, 62.645924>,  <27.590157, 34.889164, 62.368874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859907, 34.991528, 62.645924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456048, -0.593376, 0.663269,
		0.580720, -0.763163, -0.283454,
		0.674377, 0.255905, 0.692624,
		28.062220, 35.068298, 62.853710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608566, 34.291821, 62.754780>,  <27.590157, 34.889164, 62.368874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608566, 34.291821, 62.754780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788157, 34.560947, 62.989979>,  <27.895910, 34.722424, 63.131096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788157, 34.560947, 62.989979>,  <27.608566, 34.291821, 62.754780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788157, 34.560947, 62.989979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410615, -0.429097, 0.804532,
		0.793610, -0.602654, 0.083615,
		0.448975, 0.672818, 0.587994,
		27.922850, 34.762794, 63.166378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895834, 33.928566, 63.313057>,  <27.608566, 34.291821, 62.754780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895834, 33.928566, 63.313057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829266, 34.302200, 63.439411>,  <27.789324, 34.526382, 63.515224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829266, 34.302200, 63.439411>,  <27.895834, 33.928566, 63.313057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829266, 34.302200, 63.439411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436635, -0.357040, 0.825756,
		0.884112, -0.000501, 0.467275,
		-0.166423, 0.934089, 0.315882,
		27.779339, 34.582428, 63.534176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090866, 34.042789, 63.998348>,  <27.895834, 33.928566, 63.313057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090866, 34.042789, 63.998348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803347, 34.317467, 63.954933>,  <27.630835, 34.482273, 63.928886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803347, 34.317467, 63.954933>,  <28.090866, 34.042789, 63.998348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803347, 34.317467, 63.954933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529900, -0.440099, 0.724927,
		0.450036, 0.578589, 0.680222,
		-0.718800, 0.686693, -0.108534,
		27.587708, 34.523476, 63.922375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785374, 33.903084, 64.600235>,  <28.090866, 34.042789, 63.998348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785374, 33.903084, 64.600235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545156, 34.169312, 64.422981>,  <27.401026, 34.329048, 64.316628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545156, 34.169312, 64.422981>,  <27.785374, 33.903084, 64.600235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545156, 34.169312, 64.422981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751434, -0.280347, 0.597288,
		0.273305, 0.691682, 0.668491,
		-0.600543, 0.665569, -0.443133,
		27.364994, 34.368980, 64.290039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558302, 34.386066, 65.139336>,  <27.785374, 33.903084, 64.600235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558302, 34.386066, 65.139336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323784, 34.328838, 64.820389>,  <27.183073, 34.294502, 64.629021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323784, 34.328838, 64.820389>,  <27.558302, 34.386066, 65.139336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323784, 34.328838, 64.820389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696351, -0.413949, 0.586295,
		-0.413949, 0.898987, 0.143069,
		-0.586295, -0.143069, -0.797364,
		27.147896, 34.285919, 64.581177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.441120, 35.472710, 51.034092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469475, 35.725033, 50.725014>,  <37.486488, 35.876427, 50.539566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469475, 35.725033, 50.725014>,  <37.441120, 35.472710, 51.034092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469475, 35.725033, 50.725014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982270, 0.178926, 0.055959,
		0.173554, 0.755026, 0.632309,
		0.070886, 0.630810, -0.772693,
		37.490742, 35.914276, 50.493206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062614, 35.948811, 51.302017>,  <37.441120, 35.472710, 51.034092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062614, 35.948811, 51.302017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077076, 36.048847, 50.914997>,  <37.085751, 36.108868, 50.682785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077076, 36.048847, 50.914997>,  <37.062614, 35.948811, 51.302017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077076, 36.048847, 50.914997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984718, 0.173961, 0.008173,
		0.170360, 0.952466, 0.252560,
		0.036151, 0.250093, -0.967547,
		37.087921, 36.123875, 50.624733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702423, 36.603737, 51.280994>,  <37.062614, 35.948811, 51.302017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702423, 36.603737, 51.280994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695641, 36.465839, 50.905579>,  <36.691570, 36.383099, 50.680328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695641, 36.465839, 50.905579>,  <36.702423, 36.603737, 51.280994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695641, 36.465839, 50.905579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982675, 0.179017, -0.048002,
		0.184564, 0.921467, -0.341810,
		-0.016957, -0.344747, -0.938542,
		36.690552, 36.362415, 50.624016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332279, 37.019562, 50.987549>,  <36.702423, 36.603737, 51.280994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332279, 37.019562, 50.987549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342533, 36.707279, 50.737801>,  <36.348686, 36.519909, 50.587952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342533, 36.707279, 50.737801>,  <36.332279, 37.019562, 50.987549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342533, 36.707279, 50.737801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984989, 0.086926, -0.149134,
		0.170704, 0.618820, -0.766761,
		0.025635, -0.780708, -0.624370,
		36.350224, 36.473068, 50.550491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934074, 37.197716, 50.403572>,  <36.332279, 37.019562, 50.987549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934074, 37.197716, 50.403572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941879, 36.797836, 50.409645>,  <35.946560, 36.557911, 50.413288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941879, 36.797836, 50.409645>,  <35.934074, 37.197716, 50.403572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941879, 36.797836, 50.409645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999745, -0.019333, 0.011699,
		-0.011401, -0.015408, -0.999816,
		0.019509, -0.999694, 0.015183,
		35.947731, 36.497929, 50.414200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447750, 36.998440, 49.937580>,  <35.934074, 37.197716, 50.403572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447750, 36.998440, 49.937580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.485062, 36.657097, 50.142746>,  <35.507450, 36.452290, 50.265846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.485062, 36.657097, 50.142746>,  <35.447750, 36.998440, 49.937580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485062, 36.657097, 50.142746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992181, -0.122580, -0.023496,
		0.082923, -0.506709, -0.858120,
		0.093283, -0.853358, 0.512912,
		35.513046, 36.401089, 50.296619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164814, 36.481663, 49.549740>,  <35.447750, 36.998440, 49.937580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164814, 36.481663, 49.549740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139534, 36.377464, 49.935101>,  <35.124367, 36.314945, 50.166317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139534, 36.377464, 49.935101>,  <35.164814, 36.481663, 49.549740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139534, 36.377464, 49.935101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995185, -0.056010, -0.080433,
		0.074913, -0.963847, -0.255707,
		-0.063203, -0.260501, 0.963403,
		35.120571, 36.299316, 50.224121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742584, 35.803127, 49.601372>,  <35.164814, 36.481663, 49.549740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742584, 35.803127, 49.601372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.737930, 35.989132, 49.955463>,  <34.735138, 36.100735, 50.167919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.737930, 35.989132, 49.955463>,  <34.742584, 35.803127, 49.601372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737930, 35.989132, 49.955463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973972, -0.205686, 0.095249,
		0.226371, -0.861079, 0.455300,
		-0.011632, 0.465011, 0.885228,
		34.734440, 36.128635, 50.221031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245701, 35.491974, 49.938946>,  <34.742584, 35.803127, 49.601372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245701, 35.491974, 49.938946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294266, 35.817928, 50.165653>,  <34.323406, 36.013500, 50.301678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294266, 35.817928, 50.165653>,  <34.245701, 35.491974, 49.938946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294266, 35.817928, 50.165653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915037, -0.129391, 0.382054,
		0.384664, -0.564997, 0.729940,
		0.121412, 0.814884, 0.566765,
		34.330688, 36.062393, 50.335682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122879, 35.228172, 50.540447>,  <34.245701, 35.491974, 49.938946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122879, 35.228172, 50.540447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.067936, 35.623264, 50.570179>,  <34.034969, 35.860321, 50.588017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.067936, 35.623264, 50.570179>,  <34.122879, 35.228172, 50.540447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067936, 35.623264, 50.570179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861051, -0.156157, 0.483948,
		0.489617, 0.002470, 0.871934,
		-0.137354, 0.987729, 0.074331,
		34.026730, 35.919582, 50.592480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897400, 35.352665, 51.216808>,  <34.122879, 35.228172, 50.540447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897400, 35.352665, 51.216808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.777462, 35.678509, 51.018215>,  <33.705498, 35.874016, 50.899059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.777462, 35.678509, 51.018215>,  <33.897400, 35.352665, 51.216808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777462, 35.678509, 51.018215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854382, 0.002222, 0.519640,
		0.424408, 0.580003, 0.695323,
		-0.299848, 0.814612, -0.496487,
		33.687508, 35.922894, 50.869270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546291, 35.778072, 51.604076>,  <33.897400, 35.352665, 51.216808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546291, 35.778072, 51.604076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.383102, 35.905678, 51.261898>,  <33.285187, 35.982243, 51.056591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.383102, 35.905678, 51.261898>,  <33.546291, 35.778072, 51.604076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383102, 35.905678, 51.261898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903310, -0.004944, 0.428960,
		0.132615, 0.947737, 0.290186,
		-0.407976, 0.319014, -0.855445,
		33.260708, 36.001381, 51.005264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126404, 36.437885, 51.727398>,  <33.546291, 35.778072, 51.604076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126404, 36.437885, 51.727398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.013317, 36.251659, 51.391941>,  <32.945465, 36.139923, 51.190666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.013317, 36.251659, 51.391941>,  <33.126404, 36.437885, 51.727398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013317, 36.251659, 51.391941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941283, -0.033563, 0.335946,
		-0.184552, 0.884377, -0.428740,
		-0.282713, -0.465565, -0.838643,
		32.928505, 36.111992, 51.140347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516262, 36.743851, 51.432297>,  <33.126404, 36.437885, 51.727398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516262, 36.743851, 51.432297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.551594, 36.367889, 51.300373>,  <32.572792, 36.142311, 51.221218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.551594, 36.367889, 51.300373>,  <32.516262, 36.743851, 51.432297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551594, 36.367889, 51.300373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962849, -0.165392, 0.213467,
		-0.255187, 0.298706, -0.919595,
		0.088330, -0.939904, -0.329814,
		32.578094, 36.085918, 51.201427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995710, 36.568008, 50.931503>,  <32.516262, 36.743851, 51.432297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995710, 36.568008, 50.931503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.112053, 36.236622, 51.122940>,  <32.181858, 36.037792, 51.237804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.112053, 36.236622, 51.122940>,  <31.995710, 36.568008, 50.931503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112053, 36.236622, 51.122940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951515, -0.302810, 0.054088,
		0.100114, -0.471123, -0.876368,
		0.290855, -0.828462, 0.478597,
		32.199310, 35.988083, 51.266518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498991, 36.125851, 50.840725>,  <31.995710, 36.568008, 50.931503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498991, 36.125851, 50.840725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.674456, 35.866962, 51.090103>,  <31.779736, 35.711632, 51.239731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.674456, 35.866962, 51.090103>,  <31.498991, 36.125851, 50.840725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674456, 35.866962, 51.090103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886461, -0.425529, 0.181969,
		0.147520, -0.632482, -0.760397,
		0.438663, -0.647218, 0.623445,
		31.806055, 35.672798, 51.277138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318300, 35.405121, 50.604000>,  <31.498991, 36.125851, 50.840725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318300, 35.405121, 50.604000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.381144, 35.479210, 50.992023>,  <31.418850, 35.523663, 51.224838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.381144, 35.479210, 50.992023>,  <31.318300, 35.405121, 50.604000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381144, 35.479210, 50.992023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900737, -0.375898, 0.217653,
		0.404956, -0.907962, 0.107776,
		0.157107, 0.185218, 0.970058,
		31.428276, 35.534775, 51.283039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005552, 34.815220, 50.863251>,  <31.318300, 35.405121, 50.604000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005552, 34.815220, 50.863251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.056170, 35.034378, 51.194019>,  <31.086540, 35.165874, 51.392479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.056170, 35.034378, 51.194019>,  <31.005552, 34.815220, 50.863251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056170, 35.034378, 51.194019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910780, -0.266112, 0.315698,
		0.393023, -0.793089, 0.465341,
		0.126544, 0.547900, 0.826917,
		31.094133, 35.198750, 51.442093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714981, 34.353291, 51.467373>,  <31.005552, 34.815220, 50.863251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714981, 34.353291, 51.467373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.716066, 34.730194, 51.601326>,  <30.716717, 34.956337, 51.681698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.716066, 34.730194, 51.601326>,  <30.714981, 34.353291, 51.467373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716066, 34.730194, 51.601326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874043, -0.160467, 0.458584,
		0.485841, -0.293944, 0.823138,
		0.002711, 0.942256, 0.334881,
		30.716879, 35.012871, 51.701790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510242, 34.351471, 52.191029>,  <30.714981, 34.353291, 51.467373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510242, 34.351471, 52.191029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.431417, 34.721653, 52.061596>,  <30.384123, 34.943760, 51.983936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.431417, 34.721653, 52.061596>,  <30.510242, 34.351471, 52.191029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431417, 34.721653, 52.061596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913140, -0.053127, 0.404169,
		0.356848, 0.375120, 0.855537,
		-0.197064, 0.925453, -0.323579,
		30.372297, 34.999290, 51.964523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106741, 34.628777, 52.720200>,  <30.510242, 34.351471, 52.191029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106741, 34.628777, 52.720200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.049545, 34.862614, 52.400749>,  <30.015228, 35.002918, 52.209080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.049545, 34.862614, 52.400749>,  <30.106741, 34.628777, 52.720200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049545, 34.862614, 52.400749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926753, 0.204143, 0.315365,
		0.347395, 0.785221, 0.512587,
		-0.142991, 0.584597, -0.798624,
		30.006649, 35.037994, 52.161163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638702, 35.105640, 53.028492>,  <30.106741, 34.628777, 52.720200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638702, 35.105640, 53.028492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597998, 35.185230, 52.638611>,  <29.573574, 35.232986, 52.404682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597998, 35.185230, 52.638611>,  <29.638702, 35.105640, 53.028492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597998, 35.185230, 52.638611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948418, 0.276309, 0.155423,
		0.300246, 0.940245, 0.160597,
		-0.101761, 0.198978, -0.974706,
		29.567469, 35.244923, 52.346199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335312, 35.803768, 52.939541>,  <29.638702, 35.105640, 53.028492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335312, 35.803768, 52.939541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.239092, 35.605141, 52.605942>,  <29.181360, 35.485962, 52.405781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.239092, 35.605141, 52.605942>,  <29.335312, 35.803768, 52.939541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239092, 35.605141, 52.605942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956135, 0.269199, 0.115491,
		0.167161, 0.825195, -0.539547,
		-0.240548, -0.496573, -0.833997,
		29.166927, 35.456169, 52.355743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705215, 36.254189, 52.516994>,  <29.335312, 35.803768, 52.939541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705215, 36.254189, 52.516994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.692299, 35.886547, 52.359921>,  <28.684549, 35.665962, 52.265675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.692299, 35.886547, 52.359921>,  <28.705215, 36.254189, 52.516994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692299, 35.886547, 52.359921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999297, 0.022202, 0.030211,
		-0.019048, 0.393388, -0.919175,
		-0.032292, -0.919104, -0.392689,
		28.682611, 35.610817, 52.242115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188229, 36.311989, 51.990379>,  <28.705215, 36.254189, 52.516994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188229, 36.311989, 51.990379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.232409, 35.931713, 52.106308>,  <28.258917, 35.703548, 52.175865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.232409, 35.931713, 52.106308>,  <28.188229, 36.311989, 51.990379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232409, 35.931713, 52.106308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992397, -0.089555, 0.084430,
		-0.054311, -0.296944, -0.953349,
		0.110448, -0.950686, 0.289822,
		28.265543, 35.646507, 52.193256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626133, 36.140053, 51.739113>,  <28.188229, 36.311989, 51.990379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626133, 36.140053, 51.739113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.720459, 35.832905, 51.977364>,  <27.777054, 35.648617, 52.120316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.720459, 35.832905, 51.977364>,  <27.626133, 36.140053, 51.739113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720459, 35.832905, 51.977364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938880, -0.338191, -0.064277,
		0.250792, -0.544066, -0.800685,
		0.235814, -0.767866, 0.595628,
		27.791203, 35.602547, 52.156052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378021, 35.489445, 51.332020>,  <27.626133, 36.140053, 51.739113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378021, 35.489445, 51.332020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.403128, 35.461563, 51.730255>,  <27.418192, 35.444832, 51.969196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.403128, 35.461563, 51.730255>,  <27.378021, 35.489445, 51.332020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403128, 35.461563, 51.730255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929593, -0.367116, 0.032903,
		0.363204, -0.927559, -0.087842,
		0.062768, -0.069707, 0.995591,
		27.421957, 35.440651, 52.028931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038445, 34.899731, 51.505985>,  <27.378021, 35.489445, 51.332020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038445, 34.899731, 51.505985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.029442, 35.109062, 51.846718>,  <27.024040, 35.234661, 52.051159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.029442, 35.109062, 51.846718>,  <27.038445, 34.899731, 51.505985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029442, 35.109062, 51.846718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949672, -0.277469, 0.145375,
		0.312437, -0.805691, 0.503234,
		-0.022504, 0.523328, 0.851834,
		27.022690, 35.266060, 52.102268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753746, 34.532185, 52.016773>,  <27.038445, 34.899731, 51.505985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753746, 34.532185, 52.016773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.706331, 34.917526, 52.113026>,  <26.677883, 35.148731, 52.170776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.706331, 34.917526, 52.113026>,  <26.753746, 34.532185, 52.016773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706331, 34.917526, 52.113026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982183, -0.149346, 0.114070,
		0.145827, -0.222825, 0.963890,
		-0.118536, 0.963351, 0.240634,
		26.670771, 35.206532, 52.185215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237303, 34.554783, 52.521679>,  <26.753746, 34.532185, 52.016773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237303, 34.554783, 52.521679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.250198, 34.933449, 52.393440>,  <26.257936, 35.160648, 52.316498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.250198, 34.933449, 52.393440>,  <26.237303, 34.554783, 52.521679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250198, 34.933449, 52.393440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975152, 0.100134, 0.197617,
		0.219180, 0.306261, 0.926372,
		0.032239, 0.946667, -0.320598,
		26.259871, 35.217449, 52.297260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742699, 34.914074, 52.857662>,  <26.237303, 34.554783, 52.521679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742699, 34.914074, 52.857662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.795918, 35.175827, 52.559917>,  <25.827848, 35.332878, 52.381271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.795918, 35.175827, 52.559917>,  <25.742699, 34.914074, 52.857662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795918, 35.175827, 52.559917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923137, 0.355164, 0.147229,
		0.360716, 0.667560, 0.651343,
		0.133049, 0.654387, -0.744362,
		25.835833, 35.372143, 52.336609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429638, 35.526875, 53.082825>,  <25.742699, 34.914074, 52.857662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429638, 35.526875, 53.082825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.454300, 35.562943, 52.685219>,  <25.469097, 35.584583, 52.446655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.454300, 35.562943, 52.685219>,  <25.429638, 35.526875, 53.082825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.454300, 35.562943, 52.685219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943594, 0.329865, -0.028608,
		0.325312, 0.939712, 0.105418,
		0.061657, 0.090166, -0.994016,
		25.472797, 35.589993, 52.387012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.079346, 36.125477, 52.869606>,  <25.429638, 35.526875, 53.082825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.079346, 36.125477, 52.869606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.079607, 35.912670, 52.530914>,  <25.079763, 35.784985, 52.327698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.079607, 35.912670, 52.530914>,  <25.079346, 36.125477, 52.869606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079607, 35.912670, 52.530914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986584, 0.137886, -0.087399,
		0.163251, 0.835428, -0.524794,
		0.000654, -0.532021, -0.846731,
		25.079803, 35.753063, 52.276894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559549, 36.458225, 52.434780>,  <25.079346, 36.125477, 52.869606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559549, 36.458225, 52.434780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.594477, 36.119644, 52.224682>,  <24.615433, 35.916496, 52.098621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.594477, 36.119644, 52.224682>,  <24.559549, 36.458225, 52.434780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594477, 36.119644, 52.224682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920848, 0.132554, -0.366700,
		0.380019, 0.515695, -0.767883,
		0.087319, -0.846456, -0.525249,
		24.620672, 35.865707, 52.067108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.152784, 36.516586, 51.903755>,  <24.559549, 36.458225, 52.434780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.152784, 36.516586, 51.903755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.186924, 36.118168, 51.893921>,  <24.207407, 35.879116, 51.888020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.186924, 36.118168, 51.893921>,  <24.152784, 36.516586, 51.903755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.186924, 36.118168, 51.893921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946263, -0.073305, -0.314981,
		0.311934, 0.050151, -0.948779,
		0.085347, -0.996048, -0.024590,
		24.212528, 35.819355, 51.886543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.200100, 33.770653, 51.799805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868896, 33.722118, 51.580830>,  <35.670174, 33.692997, 51.449444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868896, 33.722118, 51.580830>,  <36.200100, 33.770653, 51.799805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868896, 33.722118, 51.580830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560435, 0.147859, 0.814893,
		-0.017932, 0.981537, -0.190428,
		-0.828004, -0.121336, -0.547436,
		35.620495, 33.685719, 51.416599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717056, 34.368561, 51.908272>,  <36.200100, 33.770653, 51.799805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717056, 34.368561, 51.908272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543327, 34.020741, 51.814255>,  <35.439091, 33.812050, 51.757843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543327, 34.020741, 51.814255>,  <35.717056, 34.368561, 51.908272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543327, 34.020741, 51.814255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491611, 0.010177, 0.870755,
		-0.754774, 0.493738, -0.431901,
		-0.434321, -0.869551, -0.235045,
		35.413033, 33.759876, 51.743740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093479, 34.378551, 52.219631>,  <35.717056, 34.368561, 51.908272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093479, 34.378551, 52.219631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117195, 33.986553, 52.143646>,  <35.131424, 33.751354, 52.098057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117195, 33.986553, 52.143646>,  <35.093479, 34.378551, 52.219631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117195, 33.986553, 52.143646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387180, -0.197972, 0.900499,
		-0.920096, 0.020162, -0.391173,
		0.059286, -0.980000, -0.189960,
		35.134979, 33.692554, 52.086658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582619, 34.078751, 52.604351>,  <35.093479, 34.378551, 52.219631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582619, 34.078751, 52.604351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.775375, 33.738651, 52.519623>,  <34.891029, 33.534592, 52.468788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.775375, 33.738651, 52.519623>,  <34.582619, 34.078751, 52.604351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775375, 33.738651, 52.519623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307782, -0.390577, 0.867594,
		-0.820399, -0.352889, -0.449904,
		0.481887, -0.850246, -0.211817,
		34.919941, 33.483578, 52.456078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112465, 33.510399, 52.628433>,  <34.582619, 34.078751, 52.604351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112465, 33.510399, 52.628433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.467628, 33.342831, 52.704464>,  <34.680725, 33.242290, 52.750080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.467628, 33.342831, 52.704464>,  <34.112465, 33.510399, 52.628433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467628, 33.342831, 52.704464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358664, -0.371676, 0.856281,
		-0.288069, -0.828469, -0.480266,
		0.887906, -0.418922, 0.190074,
		34.734001, 33.217152, 52.761486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938313, 32.818005, 52.851776>,  <34.112465, 33.510399, 52.628433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938313, 32.818005, 52.851776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.309761, 32.896549, 52.977703>,  <34.532631, 32.943676, 53.053261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.309761, 32.896549, 52.977703>,  <33.938313, 32.818005, 52.851776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309761, 32.896549, 52.977703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294082, -0.127852, 0.947190,
		0.226241, -0.972161, -0.060980,
		0.928618, 0.196361, 0.314820,
		34.588345, 32.955456, 53.072147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046055, 32.360058, 53.394142>,  <33.938313, 32.818005, 52.851776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046055, 32.360058, 53.394142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332714, 32.628822, 53.468922>,  <34.504711, 32.790081, 53.513790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332714, 32.628822, 53.468922>,  <34.046055, 32.360058, 53.394142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332714, 32.628822, 53.468922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299183, 0.054035, 0.952665,
		0.630004, -0.738658, 0.239749,
		0.716648, 0.671912, 0.186951,
		34.547707, 32.830395, 53.525005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387390, 32.119652, 53.932049>,  <34.046055, 32.360058, 53.394142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387390, 32.119652, 53.932049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489429, 32.506226, 53.944202>,  <34.550655, 32.738171, 53.951496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489429, 32.506226, 53.944202>,  <34.387390, 32.119652, 53.932049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489429, 32.506226, 53.944202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254571, 0.036812, 0.966353,
		0.932801, -0.254253, 0.255418,
		0.255101, 0.966437, 0.030387,
		34.565960, 32.796158, 53.953320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710041, 32.219746, 54.490692>,  <34.387390, 32.119652, 53.932049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710041, 32.219746, 54.490692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605072, 32.598164, 54.414658>,  <34.542091, 32.825214, 54.369038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605072, 32.598164, 54.414658>,  <34.710041, 32.219746, 54.490692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605072, 32.598164, 54.414658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393632, 0.074904, 0.916211,
		0.881015, 0.315260, 0.352737,
		-0.262423, 0.946045, -0.190088,
		34.526344, 32.881977, 54.357632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001118, 32.636929, 55.005756>,  <34.710041, 32.219746, 54.490692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001118, 32.636929, 55.005756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.683990, 32.824432, 54.849960>,  <34.493713, 32.936935, 54.756485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.683990, 32.824432, 54.849960>,  <35.001118, 32.636929, 55.005756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683990, 32.824432, 54.849960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357607, 0.159691, 0.920118,
		0.493511, 0.868771, 0.041025,
		-0.792820, 0.468759, -0.389488,
		34.446144, 32.965061, 54.733112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891857, 33.140579, 55.392521>,  <35.001118, 32.636929, 55.005756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891857, 33.140579, 55.392521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533577, 33.084812, 55.223629>,  <34.318607, 33.051353, 55.122295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533577, 33.084812, 55.223629>,  <34.891857, 33.140579, 55.392521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533577, 33.084812, 55.223629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435142, 0.079496, 0.896846,
		-0.091471, 0.987037, -0.131872,
		-0.895704, -0.139418, -0.422229,
		34.264866, 33.042988, 55.096962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450489, 33.643986, 55.732708>,  <34.891857, 33.140579, 55.392521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450489, 33.643986, 55.732708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193100, 33.387657, 55.565235>,  <34.038666, 33.233860, 55.464752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193100, 33.387657, 55.565235>,  <34.450489, 33.643986, 55.732708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193100, 33.387657, 55.565235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547983, 0.003736, 0.836481,
		-0.534469, 0.767682, -0.353562,
		-0.643472, -0.640820, -0.418681,
		34.000057, 33.195412, 55.439632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358154, 34.446552, 55.886772>,  <34.450489, 33.643986, 55.732708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358154, 34.446552, 55.886772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695805, 34.481068, 56.098431>,  <34.898396, 34.501778, 56.225426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695805, 34.481068, 56.098431>,  <34.358154, 34.446552, 55.886772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695805, 34.481068, 56.098431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507903, 0.187377, -0.840788,
		-0.171699, 0.978491, 0.114346,
		0.844129, 0.086286, 0.529151,
		34.949043, 34.506954, 56.257175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648441, 35.062271, 55.744312>,  <34.358154, 34.446552, 55.886772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648441, 35.062271, 55.744312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969845, 34.862164, 55.873375>,  <35.162685, 34.742100, 55.950813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969845, 34.862164, 55.873375>,  <34.648441, 35.062271, 55.744312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969845, 34.862164, 55.873375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521475, 0.330078, -0.786837,
		0.287125, 0.800489, 0.526096,
		0.803507, -0.500266, 0.322661,
		35.210896, 34.712082, 55.970173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121838, 35.443775, 55.514404>,  <34.648441, 35.062271, 55.744312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121838, 35.443775, 55.514404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311710, 35.103245, 55.603779>,  <35.425632, 34.898926, 55.657406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311710, 35.103245, 55.603779>,  <35.121838, 35.443775, 55.514404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311710, 35.103245, 55.603779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662887, 0.178785, -0.727061,
		0.579017, 0.493237, 0.649197,
		0.474680, -0.851324, 0.223441,
		35.454113, 34.847847, 55.670811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740101, 35.585197, 55.671799>,  <35.121838, 35.443775, 55.514404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740101, 35.585197, 55.671799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763340, 35.208858, 55.538269>,  <35.777283, 34.983055, 55.458153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763340, 35.208858, 55.538269>,  <35.740101, 35.585197, 55.671799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763340, 35.208858, 55.538269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646910, 0.290160, -0.705205,
		0.760350, -0.174983, 0.625499,
		0.058095, -0.940844, -0.333822,
		35.780769, 34.926605, 55.438122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475700, 35.541599, 55.526779>,  <35.740101, 35.585197, 55.671799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475700, 35.541599, 55.526779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.324329, 35.232193, 55.323418>,  <36.233509, 35.046551, 55.201401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.324329, 35.232193, 55.323418>,  <36.475700, 35.541599, 55.526779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324329, 35.232193, 55.323418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764122, 0.048929, -0.643213,
		0.522411, -0.631886, 0.572544,
		-0.378423, -0.773515, -0.508400,
		36.210804, 35.000137, 55.170898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053059, 35.130276, 55.237213>,  <36.475700, 35.541599, 55.526779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053059, 35.130276, 55.237213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732021, 35.017132, 55.027138>,  <36.539398, 34.949245, 54.901093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732021, 35.017132, 55.027138>,  <37.053059, 35.130276, 55.237213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732021, 35.017132, 55.027138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540958, 0.025916, -0.840650,
		0.251399, -0.958810, 0.132217,
		-0.802598, -0.282863, -0.525191,
		36.491241, 34.932274, 54.869579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231438, 34.602043, 54.894524>,  <37.053059, 35.130276, 55.237213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231438, 34.602043, 54.894524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916031, 34.726242, 54.682175>,  <36.726788, 34.800762, 54.554764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916031, 34.726242, 54.682175>,  <37.231438, 34.602043, 54.894524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916031, 34.726242, 54.682175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555742, -0.009992, -0.831295,
		-0.263420, -0.950521, -0.164678,
		-0.788518, 0.310498, -0.530877,
		36.679474, 34.819389, 54.522911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985725, 34.101284, 54.416573>,  <37.231438, 34.602043, 54.894524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985725, 34.101284, 54.416573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898674, 34.468399, 54.283718>,  <36.846443, 34.688667, 54.204006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898674, 34.468399, 54.283718>,  <36.985725, 34.101284, 54.416573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898674, 34.468399, 54.283718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552393, -0.164727, -0.817146,
		-0.804674, -0.361301, -0.471128,
		-0.217628, 0.917783, -0.332131,
		36.833385, 34.743732, 54.184078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368679, 34.143703, 53.874924>,  <36.985725, 34.101284, 54.416573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368679, 34.143703, 53.874924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220451, 34.512524, 53.830204>,  <37.131516, 34.733814, 53.803371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220451, 34.512524, 53.830204>,  <37.368679, 34.143703, 53.874924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220451, 34.512524, 53.830204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432113, 0.064602, -0.899503,
		-0.822164, -0.381640, -0.422370,
		-0.370572, 0.922050, -0.111798,
		37.109280, 34.789139, 53.796665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016876, 34.176064, 53.209728>,  <37.368679, 34.143703, 53.874924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016876, 34.176064, 53.209728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145710, 34.536816, 53.324886>,  <37.223011, 34.753265, 53.393982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145710, 34.536816, 53.324886>,  <37.016876, 34.176064, 53.209728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145710, 34.536816, 53.324886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411330, 0.140581, -0.900580,
		-0.852684, 0.408479, -0.325691,
		0.322082, 0.901877, 0.287891,
		37.242336, 34.807377, 53.411255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035564, 34.502434, 52.629219>,  <37.016876, 34.176064, 53.209728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035564, 34.502434, 52.629219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243313, 34.762798, 52.850697>,  <37.367962, 34.919018, 52.983582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243313, 34.762798, 52.850697>,  <37.035564, 34.502434, 52.629219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243313, 34.762798, 52.850697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416295, 0.373131, -0.829139,
		-0.746292, 0.661129, -0.077177,
		0.519371, 0.650908, 0.553690,
		37.399124, 34.958073, 53.016804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136120, 35.175827, 52.267452>,  <37.035564, 34.502434, 52.629219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136120, 35.175827, 52.267452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432602, 35.195309, 52.535255>,  <37.610493, 35.206997, 52.695938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432602, 35.195309, 52.535255>,  <37.136120, 35.175827, 52.267452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432602, 35.195309, 52.535255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606728, 0.378139, -0.699208,
		-0.287218, 0.924467, 0.250731,
		0.741206, 0.048700, 0.669509,
		37.654964, 35.209919, 52.736107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547707, 35.872078, 52.149189>,  <37.136120, 35.175827, 52.267452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547707, 35.872078, 52.149189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.778992, 35.617741, 52.353687>,  <37.917763, 35.465137, 52.476387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.778992, 35.617741, 52.353687>,  <37.547707, 35.872078, 52.149189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778992, 35.617741, 52.353687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761337, 0.195229, -0.618265,
		0.293311, 0.746718, 0.596977,
		0.578217, -0.635844, 0.511241,
		37.952457, 35.426987, 52.507061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242958, 36.055344, 52.074471>,  <37.547707, 35.872078, 52.149189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242958, 36.055344, 52.074471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.311642, 35.681267, 52.198357>,  <38.352852, 35.456821, 52.272690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.311642, 35.681267, 52.198357>,  <38.242958, 36.055344, 52.074471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311642, 35.681267, 52.198357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747615, -0.081033, -0.659170,
		0.641549, 0.344739, 0.685252,
		0.171714, -0.935194, 0.309719,
		38.363155, 35.400707, 52.291271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155361, 36.508682, 51.481876>,  <38.242958, 36.055344, 52.074471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155361, 36.508682, 51.481876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083748, 36.863453, 51.311554>,  <38.040779, 37.076313, 51.209362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083748, 36.863453, 51.311554>,  <38.155361, 36.508682, 51.481876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083748, 36.863453, 51.311554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980419, -0.124763, 0.152356,
		0.082003, 0.444746, 0.891895,
		-0.179035, 0.886925, -0.425806,
		38.030037, 37.129532, 51.183811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735153, 36.864956, 52.018169>,  <38.155361, 36.508682, 51.481876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735153, 36.864956, 52.018169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700577, 36.981213, 51.637001>,  <37.679829, 37.050968, 51.408302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700577, 36.981213, 51.637001>,  <37.735153, 36.864956, 52.018169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700577, 36.981213, 51.637001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981458, -0.189098, 0.031356,
		-0.171081, 0.937959, 0.301602,
		-0.086443, 0.290645, -0.952918,
		37.674644, 37.068405, 51.351124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263023, 37.359974, 51.932816>,  <37.735153, 36.864956, 52.018169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263023, 37.359974, 51.932816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260258, 37.220650, 51.557873>,  <37.258598, 37.137054, 51.332909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260258, 37.220650, 51.557873>,  <37.263023, 37.359974, 51.932816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260258, 37.220650, 51.557873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991438, 0.124621, -0.038999,
		0.130398, 0.929057, -0.346193,
		-0.006910, -0.348314, -0.937352,
		37.258186, 37.116154, 51.276669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050034, 38.031368, 51.487209>,  <37.263023, 37.359974, 51.932816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050034, 38.031368, 51.487209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724594, 38.147629, 51.285782>,  <36.529331, 38.217384, 51.164925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724594, 38.147629, 51.285782>,  <37.050034, 38.031368, 51.487209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724594, 38.147629, 51.285782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308577, 0.518199, 0.797653,
		0.492786, 0.804359, -0.331917,
		-0.813598, 0.290651, -0.503567,
		36.480515, 38.234825, 51.134712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907383, 38.692081, 51.661652>,  <37.050034, 38.031368, 51.487209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907383, 38.692081, 51.661652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553764, 38.542568, 51.549408>,  <36.341591, 38.452862, 51.482059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553764, 38.542568, 51.549408>,  <36.907383, 38.692081, 51.661652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553764, 38.542568, 51.549408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401295, 0.299212, 0.865699,
		-0.239618, 0.877930, -0.414514,
		-0.884050, -0.373780, -0.280612,
		36.288548, 38.430435, 51.465225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304985, 39.263664, 51.622276>,  <36.907383, 38.692081, 51.661652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304985, 39.263664, 51.622276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137650, 38.901714, 51.653755>,  <36.037247, 38.684544, 51.672642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137650, 38.901714, 51.653755>,  <36.304985, 39.263664, 51.622276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137650, 38.901714, 51.653755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585969, 0.335074, 0.737812,
		-0.693996, 0.262544, -0.670403,
		-0.418343, -0.904873, 0.078698,
		36.012146, 38.630253, 51.677364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535450, 39.361813, 51.827496>,  <36.304985, 39.263664, 51.622276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535450, 39.361813, 51.827496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553463, 38.966667, 51.886955>,  <35.564270, 38.729580, 51.922630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553463, 38.966667, 51.886955>,  <35.535450, 39.361813, 51.827496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553463, 38.966667, 51.886955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715812, 0.071884, 0.694583,
		-0.696840, -0.137680, -0.703888,
		0.045031, -0.987865, 0.148644,
		35.566971, 38.670307, 51.931549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816639, 39.060654, 51.851170>,  <35.535450, 39.361813, 51.827496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816639, 39.060654, 51.851170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.046001, 38.802822, 52.053448>,  <35.183617, 38.648121, 52.174812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.046001, 38.802822, 52.053448>,  <34.816639, 39.060654, 51.851170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046001, 38.802822, 52.053448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609495, 0.076847, 0.789057,
		-0.547472, -0.760664, -0.348805,
		0.573402, -0.644581, 0.505692,
		35.218021, 38.609447, 52.205154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295216, 38.779667, 52.214737>,  <34.816639, 39.060654, 51.851170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295216, 38.779667, 52.214737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.645943, 38.686337, 52.382904>,  <34.856380, 38.630337, 52.483803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.645943, 38.686337, 52.382904>,  <34.295216, 38.779667, 52.214737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645943, 38.686337, 52.382904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438521, -0.029434, 0.898239,
		-0.197209, -0.971953, -0.128127,
		0.876817, -0.233327, 0.420417,
		34.908989, 38.616337, 52.509029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152939, 38.145199, 52.564869>,  <34.295216, 38.779667, 52.214737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152939, 38.145199, 52.564869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476395, 38.314301, 52.728519>,  <34.670467, 38.415760, 52.826710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476395, 38.314301, 52.728519>,  <34.152939, 38.145199, 52.564869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476395, 38.314301, 52.728519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485441, 0.086637, 0.869966,
		0.332335, -0.902094, 0.275280,
		0.808641, 0.422753, 0.409122,
		34.718987, 38.441124, 52.851257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319164, 37.697445, 53.200935>,  <34.152939, 38.145199, 52.564869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319164, 37.697445, 53.200935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462887, 38.069508, 53.231140>,  <34.549122, 38.292747, 53.249264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462887, 38.069508, 53.231140>,  <34.319164, 37.697445, 53.200935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462887, 38.069508, 53.231140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442720, 0.098665, 0.891215,
		0.821523, -0.353648, 0.447251,
		0.359305, 0.930160, 0.075512,
		34.570679, 38.348557, 53.253792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470222, 37.772442, 53.921852>,  <34.319164, 37.697445, 53.200935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470222, 37.772442, 53.921852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470020, 38.149929, 53.789551>,  <34.469898, 38.376423, 53.710171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470020, 38.149929, 53.789551>,  <34.470222, 37.772442, 53.921852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470020, 38.149929, 53.789551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455934, 0.294158, 0.839997,
		0.890014, 0.151222, 0.430125,
		-0.000501, 0.943717, -0.330752,
		34.469872, 38.433044, 53.690327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706203, 38.150330, 54.488991>,  <34.470222, 37.772442, 53.921852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706203, 38.150330, 54.488991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493107, 38.404293, 54.265179>,  <34.365250, 38.556671, 54.130890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493107, 38.404293, 54.265179>,  <34.706203, 38.150330, 54.488991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493107, 38.404293, 54.265179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535266, 0.259317, 0.803894,
		0.655498, 0.727763, 0.201699,
		-0.532740, 0.634913, -0.559529,
		34.333286, 38.594769, 54.097321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753956, 38.819653, 54.855854>,  <34.706203, 38.150330, 54.488991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753956, 38.819653, 54.855854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430347, 38.826511, 54.620842>,  <34.236183, 38.830627, 54.479836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430347, 38.826511, 54.620842>,  <34.753956, 38.819653, 54.855854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430347, 38.826511, 54.620842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537878, 0.381461, 0.751782,
		0.237013, 0.924226, -0.299385,
		-0.809020, 0.017150, -0.587532,
		34.187641, 38.831657, 54.444584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562752, 39.456169, 55.000282>,  <34.753956, 38.819653, 54.855854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562752, 39.456169, 55.000282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.246708, 39.266968, 54.844334>,  <34.057083, 39.153446, 54.750767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.246708, 39.266968, 54.844334>,  <34.562752, 39.456169, 55.000282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246708, 39.266968, 54.844334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601487, 0.475765, 0.641764,
		-0.118071, 0.741564, -0.660411,
		-0.790110, -0.473002, -0.389867,
		34.009674, 39.125069, 54.727375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144547, 40.023216, 54.829025>,  <34.562752, 39.456169, 55.000282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144547, 40.023216, 54.829025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.898460, 39.709469, 54.860687>,  <33.750809, 39.521221, 54.879684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.898460, 39.709469, 54.860687>,  <34.144547, 40.023216, 54.829025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898460, 39.709469, 54.860687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655228, 0.564578, 0.501924,
		-0.438386, 0.256926, -0.861282,
		-0.615218, -0.784373, 0.079158,
		33.713894, 39.474155, 54.884434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565304, 40.309753, 54.899483>,  <34.144547, 40.023216, 54.829025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565304, 40.309753, 54.899483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459045, 39.937965, 55.001877>,  <33.395290, 39.714893, 55.063313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459045, 39.937965, 55.001877>,  <33.565304, 40.309753, 54.899483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459045, 39.937965, 55.001877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637102, 0.368527, 0.676970,
		-0.723557, 0.016745, -0.690061,
		-0.265642, -0.929466, 0.255982,
		33.379353, 39.659126, 55.078671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854786, 40.148125, 54.727974>,  <33.565304, 40.309753, 54.899483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854786, 40.148125, 54.727974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.987701, 39.936363, 55.040207>,  <33.067451, 39.809307, 55.227547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.987701, 39.936363, 55.040207>,  <32.854786, 40.148125, 54.727974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987701, 39.936363, 55.040207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595742, 0.523812, 0.608862,
		-0.731215, -0.667345, -0.141333,
		0.332290, -0.529407, 0.780585,
		33.087387, 39.777542, 55.274384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262386, 39.848240, 55.133022>,  <32.854786, 40.148125, 54.727974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262386, 39.848240, 55.133022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565163, 39.847637, 55.394417>,  <32.746826, 39.847275, 55.551254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565163, 39.847637, 55.394417>,  <32.262386, 39.848240, 55.133022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565163, 39.847637, 55.394417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594499, 0.413604, 0.689567,
		-0.271324, -0.910456, 0.312176,
		0.756937, -0.001508, 0.653486,
		32.792244, 39.847183, 55.590462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886040, 39.931770, 55.676846>,  <32.262386, 39.848240, 55.133022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886040, 39.931770, 55.676846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.257362, 39.978630, 55.817993>,  <32.480156, 40.006744, 55.902683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.257362, 39.978630, 55.817993>,  <31.886040, 39.931770, 55.676846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257362, 39.978630, 55.817993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365097, 0.466749, 0.805512,
		-0.070336, -0.876596, 0.476059,
		0.928309, 0.117151, 0.352872,
		32.535854, 40.013775, 55.923855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820518, 39.685631, 56.331215>,  <31.886040, 39.931770, 55.676846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820518, 39.685631, 56.331215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.144722, 39.919304, 56.348228>,  <32.339245, 40.059505, 56.358437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.144722, 39.919304, 56.348228>,  <31.820518, 39.685631, 56.331215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144722, 39.919304, 56.348228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361461, 0.441716, 0.821117,
		0.460892, -0.680897, 0.569173,
		0.810509, 0.584180, 0.042534,
		32.387875, 40.094559, 56.360989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104282, 39.694542, 57.104473>,  <31.820518, 39.685631, 56.331215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104282, 39.694542, 57.104473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251701, 40.020023, 56.924667>,  <32.340153, 40.215313, 56.816784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251701, 40.020023, 56.924667>,  <32.104282, 39.694542, 57.104473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251701, 40.020023, 56.924667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298793, 0.561577, 0.771591,
		0.880283, -0.150055, 0.450096,
		0.368544, 0.813704, -0.449511,
		32.362263, 40.264133, 56.789814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484726, 39.944241, 57.740192>,  <32.104282, 39.694542, 57.104473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484726, 39.944241, 57.740192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436123, 40.245857, 57.481998>,  <32.406960, 40.426826, 57.327080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436123, 40.245857, 57.481998>,  <32.484726, 39.944241, 57.740192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436123, 40.245857, 57.481998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074559, 0.641537, 0.763460,
		0.989786, 0.140893, -0.021731,
		-0.121508, 0.754042, -0.645489,
		32.399670, 40.472069, 57.288353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823410, 40.538219, 57.930019>,  <32.484726, 39.944241, 57.740192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823410, 40.538219, 57.930019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580112, 40.727745, 57.675289>,  <32.434135, 40.841461, 57.522453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580112, 40.727745, 57.675289>,  <32.823410, 40.538219, 57.930019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580112, 40.727745, 57.675289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276806, 0.625312, 0.729632,
		0.743920, 0.620070, -0.249189,
		-0.608244, 0.473811, -0.636821,
		32.397640, 40.869888, 57.484241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798389, 41.235607, 58.038338>,  <32.823410, 40.538219, 57.930019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798389, 41.235607, 58.038338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443352, 41.178753, 57.863083>,  <32.230328, 41.144642, 57.757931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443352, 41.178753, 57.863083>,  <32.798389, 41.235607, 58.038338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443352, 41.178753, 57.863083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437093, 0.560008, 0.703805,
		0.145326, 0.816204, -0.559189,
		-0.887598, -0.142137, -0.438140,
		32.177071, 41.136112, 57.731640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401440, 41.869530, 58.131783>,  <32.798389, 41.235607, 58.038338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401440, 41.869530, 58.131783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124702, 41.596260, 58.038288>,  <31.958660, 41.432297, 57.982193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124702, 41.596260, 58.038288>,  <32.401440, 41.869530, 58.131783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124702, 41.596260, 58.038288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632675, 0.417567, 0.652197,
		-0.347965, 0.599093, -0.721116,
		-0.691841, -0.683174, -0.233732,
		31.917150, 41.391308, 57.968170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765188, 42.186512, 57.894505>,  <32.401440, 41.869530, 58.131783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765188, 42.186512, 57.894505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.674612, 41.830135, 58.051960>,  <31.620266, 41.616310, 58.146435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.674612, 41.830135, 58.051960>,  <31.765188, 42.186512, 57.894505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674612, 41.830135, 58.051960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589646, 0.447060, 0.672647,
		-0.775269, -0.079794, -0.626571,
		-0.226442, -0.890938, 0.393642,
		31.606680, 41.562855, 58.170052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100073, 41.878021, 57.768517>,  <31.765188, 42.186512, 57.894505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100073, 41.878021, 57.768517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.291002, 41.812122, 58.113777>,  <31.405560, 41.772583, 58.320934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.291002, 41.812122, 58.113777>,  <31.100073, 41.878021, 57.768517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291002, 41.812122, 58.113777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730309, 0.471893, 0.493929,
		-0.488685, -0.866127, 0.104930,
		0.477322, -0.164744, 0.863148,
		31.434198, 41.762699, 58.372723>
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
