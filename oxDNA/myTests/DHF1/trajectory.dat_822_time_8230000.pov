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
	<3.764578, 5.424746, 1.115251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.426357, 5.544556, 1.292033>,  <3.223424, 5.616442, 1.398103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.426357, 5.544556, 1.292033>,  <3.764578, 5.424746, 1.115251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.426357, 5.544556, 1.292033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176665, -0.938138, 0.297804,
		0.503815, 0.173731, 0.846161,
		-0.845553, 0.299525, 0.441956,
		3.172691, 5.634413, 1.424620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.665614, 5.373603, 1.817423>,  <3.764578, 5.424746, 1.115251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.665614, 5.373603, 1.817423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.321259, 5.266953, 1.644088>,  <3.114645, 5.202962, 1.540087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.321259, 5.266953, 1.644088>,  <3.665614, 5.373603, 1.817423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.321259, 5.266953, 1.644088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076701, -0.909971, 0.407517,
		-0.502979, 0.317590, 0.803834,
		-0.860889, -0.266627, -0.433337,
		3.062992, 5.186965, 1.514087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.303521, 4.867036, 2.291515>,  <3.665614, 5.373603, 1.817423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.303521, 4.867036, 2.291515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.205849, 4.797676, 1.909875>,  <3.147245, 4.756060, 1.680891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.205849, 4.797676, 1.909875>,  <3.303521, 4.867036, 2.291515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.205849, 4.797676, 1.909875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120404, -0.981691, 0.147601,
		-0.962225, -0.078836, 0.260589,
		-0.244182, -0.173401, -0.954100,
		3.132594, 4.745656, 1.623645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.710781, 4.449959, 2.282134>,  <3.303521, 4.867036, 2.291515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.710781, 4.449959, 2.282134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.887947, 4.386482, 1.929171>,  <2.994247, 4.348396, 1.717393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.887947, 4.386482, 1.929171>,  <2.710781, 4.449959, 2.282134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.887947, 4.386482, 1.929171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087465, -0.987164, 0.133628,
		-0.892287, 0.017994, -0.451110,
		0.442915, -0.158691, -0.882407,
		3.020822, 4.338875, 1.664448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.315776, 3.940953, 1.801591>,  <2.710781, 4.449959, 2.282134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.315776, 3.940953, 1.801591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.692699, 3.924988, 1.668648>,  <2.918853, 3.915409, 1.588882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.692699, 3.924988, 1.668648>,  <2.315776, 3.940953, 1.801591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.692699, 3.924988, 1.668648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045876, -0.998896, -0.010114,
		-0.331588, 0.024778, -0.943099,
		0.942308, -0.039912, -0.332359,
		2.975392, 3.913014, 1.568940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.314614, 3.399750, 1.250025>,  <2.315776, 3.940953, 1.801591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.314614, 3.399750, 1.250025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.697166, 3.445457, 1.357564>,  <2.926698, 3.472882, 1.422087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.697166, 3.445457, 1.357564>,  <2.314614, 3.399750, 1.250025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.697166, 3.445457, 1.357564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106684, -0.993376, 0.042701,
		0.271946, -0.012157, -0.962236,
		0.956381, 0.114267, 0.268848,
		2.984081, 3.479738, 1.438218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.653712, 2.828805, 0.953683>,  <2.314614, 3.399750, 1.250025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.653712, 2.828805, 0.953683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.922298, 2.965584, 1.216653>,  <3.083450, 3.047651, 1.374435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.922298, 2.965584, 1.216653>,  <2.653712, 2.828805, 0.953683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.922298, 2.965584, 1.216653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238169, -0.939683, 0.245502,
		0.701719, -0.008268, -0.712406,
		0.671466, 0.341947, 0.657424,
		3.123738, 3.068168, 1.413880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.422270, 2.545462, 0.740850>,  <2.653712, 2.828805, 0.953683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.422270, 2.545462, 0.740850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.411930, 2.640305, 1.129306>,  <3.405726, 2.697210, 1.362379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.411930, 2.640305, 1.129306>,  <3.422270, 2.545462, 0.740850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.411930, 2.640305, 1.129306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050055, -0.969939, 0.238145,
		0.998412, 0.054766, 0.013205,
		-0.025850, 0.237105, 0.971140,
		3.404175, 2.711436, 1.420648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.951864, 1.471419, 1.785313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.165077, 1.631355, 2.083576>,  <3.293005, 1.727317, 2.262533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.165077, 1.631355, 2.083576>,  <2.951864, 1.471419, 1.785313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.165077, 1.631355, 2.083576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201342, 0.915919, -0.347209,
		-0.821789, 0.034943, 0.568720,
		0.533034, 0.399840, 0.745656,
		3.324987, 1.751307, 2.307273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.662890, 1.990494, 2.335140>,  <2.951864, 1.471419, 1.785313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.662890, 1.990494, 2.335140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.050484, 2.070267, 2.276767>,  <3.283040, 2.118130, 2.241744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.050484, 2.070267, 2.276767>,  <2.662890, 1.990494, 2.335140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.050484, 2.070267, 2.276767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231163, 0.940257, -0.249961,
		0.087362, 0.275942, 0.957196,
		0.968985, 0.199431, -0.145930,
		3.341179, 2.130096, 2.232988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.778978, 2.698167, 2.510162>,  <2.662890, 1.990494, 2.335140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.778978, 2.698167, 2.510162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.075912, 2.597580, 2.261744>,  <3.254073, 2.537228, 2.112692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.075912, 2.597580, 2.261744>,  <2.778978, 2.698167, 2.510162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.075912, 2.597580, 2.261744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046301, 0.943936, -0.326866,
		0.668425, 0.213890, 0.712362,
		0.742337, -0.251468, -0.621047,
		3.298614, 2.522140, 2.075429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.329783, 3.090133, 2.664030>,  <2.778978, 2.698167, 2.510162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.329783, 3.090133, 2.664030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.371223, 2.971306, 2.284342>,  <3.396088, 2.900010, 2.056529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.371223, 2.971306, 2.284342>,  <3.329783, 3.090133, 2.664030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.371223, 2.971306, 2.284342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124081, 0.950760, -0.284007,
		0.986849, -0.088357, 0.135360,
		0.103600, -0.297067, -0.949220,
		3.402303, 2.882186, 1.999576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.955029, 3.431783, 2.425097>,  <3.329783, 3.090133, 2.664030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.955029, 3.431783, 2.425097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738556, 3.335129, 2.102922>,  <3.608672, 3.277136, 1.909617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738556, 3.335129, 2.102922>,  <3.955029, 3.431783, 2.425097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.738556, 3.335129, 2.102922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033997, 0.950755, -0.308075,
		0.840217, -0.194108, -0.506318,
		-0.541184, -0.241636, -0.805439,
		3.576201, 3.262638, 1.861290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.227059, 3.775818, 1.867957>,  <3.955029, 3.431783, 2.425097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.227059, 3.775818, 1.867957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.865387, 3.682076, 1.725109>,  <3.648384, 3.625830, 1.639399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.865387, 3.682076, 1.725109>,  <4.227059, 3.775818, 1.867957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.865387, 3.682076, 1.725109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073410, 0.908869, -0.410570,
		0.420797, -0.345013, -0.838985,
		-0.904180, -0.234356, -0.357122,
		3.594133, 3.611768, 1.617972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.196767, 3.900928, 1.107790>,  <4.227059, 3.775818, 1.867957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.196767, 3.900928, 1.107790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.828690, 3.904968, 1.264324>,  <3.607843, 3.907393, 1.358244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.828690, 3.904968, 1.264324>,  <4.196767, 3.900928, 1.107790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.828690, 3.904968, 1.264324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161372, 0.900990, -0.402711,
		-0.356657, -0.433722, -0.827455,
		-0.920193, 0.010102, 0.391335,
		3.552632, 3.907999, 1.381724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.820635, 4.195573, 0.632213>,  <4.196767, 3.900928, 1.107790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.820635, 4.195573, 0.632213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.603752, 4.243202, 0.964919>,  <3.473622, 4.271780, 1.164543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.603752, 4.243202, 0.964919>,  <3.820635, 4.195573, 0.632213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.603752, 4.243202, 0.964919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112669, 0.970665, -0.212404,
		-0.832656, -0.208881, -0.512886,
		-0.542208, 0.119073, 0.831765,
		3.441090, 4.278924, 1.214449>
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
