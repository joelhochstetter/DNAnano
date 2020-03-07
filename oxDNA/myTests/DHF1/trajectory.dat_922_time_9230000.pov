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
	<3.151704, 2.397284, 0.738430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.949593, 2.710697, 0.593781>,  <2.828326, 2.898745, 0.506991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.949593, 2.710697, 0.593781>,  <3.151704, 2.397284, 0.738430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.949593, 2.710697, 0.593781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503189, -0.072928, -0.861094,
		-0.701068, -0.617056, -0.357416,
		-0.505278, 0.783532, -0.361623,
		2.798009, 2.945757, 0.485294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.078952, 3.147353, 1.050798>,  <3.151704, 2.397284, 0.738430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.078952, 3.147353, 1.050798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.273956, 3.422638, 1.265720>,  <3.390959, 3.587809, 1.394674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.273956, 3.422638, 1.265720>,  <3.078952, 3.147353, 1.050798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.273956, 3.422638, 1.265720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872910, -0.370777, -0.317100,
		-0.019010, 0.623610, -0.781505,
		0.487511, 0.688212, 0.537306,
		3.420209, 3.629102, 1.426912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.752173, 3.058682, 0.771464>,  <3.078952, 3.147353, 1.050798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.752173, 3.058682, 0.771464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.817207, 3.342278, 1.045952>,  <3.856228, 3.512435, 1.210645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.817207, 3.342278, 1.045952>,  <3.752173, 3.058682, 0.771464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.817207, 3.342278, 1.045952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984323, -0.068361, -0.162587,
		-0.068361, 0.701898, -0.708990,
		0.162587, 0.708990, 0.686221,
		3.865983, 3.554975, 1.251818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.159173, 3.592837, 0.480744>,  <3.752173, 3.058682, 0.771464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.159173, 3.592837, 0.480744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.253822, 3.592556, 0.869385>,  <4.310612, 3.592388, 1.102569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.253822, 3.592556, 0.869385>,  <4.159173, 3.592837, 0.480744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.253822, 3.592556, 0.869385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950987, 0.205066, -0.231454,
		-0.199080, 0.978748, 0.049190,
		0.236622, -0.000702, 0.971601,
		4.324809, 3.592345, 1.160865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.519390, 4.189534, 0.774368>,  <4.159173, 3.592837, 0.480744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.519390, 4.189534, 0.774368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.623741, 3.905865, 1.036366>,  <4.686352, 3.735663, 1.193564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.623741, 3.905865, 1.036366>,  <4.519390, 4.189534, 0.774368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.623741, 3.905865, 1.036366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962702, 0.241542, -0.121914,
		-0.071750, 0.662368, 0.745735,
		0.260878, -0.709173, 0.654994,
		4.702005, 3.693113, 1.232864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.984209, 4.499261, 1.209776>,  <4.519390, 4.189534, 0.774368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.984209, 4.499261, 1.209776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.045227, 4.107048, 1.259228>,  <5.081838, 3.871720, 1.288899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.045227, 4.107048, 1.259228>,  <4.984209, 4.499261, 1.209776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.045227, 4.107048, 1.259228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987423, 0.145955, -0.060767,
		0.041539, 0.131345, 0.990466,
		0.152544, -0.980533, 0.123630,
		5.090991, 3.812888, 1.296317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.607563, 4.457153, 1.598186>,  <4.984209, 4.499261, 1.209776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.607563, 4.457153, 1.598186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.567406, 4.088524, 1.448185>,  <5.543312, 3.867347, 1.358185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.567406, 4.088524, 1.448185>,  <5.607563, 4.457153, 1.598186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.567406, 4.088524, 1.448185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993004, -0.069256, -0.095639,
		0.062167, -0.381980, 0.922077,
		-0.100392, -0.921572, -0.375002,
		5.537288, 3.812052, 1.335684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.963404, 4.091985, 2.007427>,  <5.607563, 4.457153, 1.598186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.963404, 4.091985, 2.007427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.940742, 3.859180, 1.682945>,  <5.927146, 3.719498, 1.488256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.940742, 3.859180, 1.682945>,  <5.963404, 4.091985, 2.007427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.940742, 3.859180, 1.682945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994183, 0.041664, -0.099324,
		0.091605, -0.812113, 0.576265,
		-0.056653, -0.582011, -0.811205,
		5.923747, 3.684577, 1.439584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.026263, 4.573968, 0.510428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.125504, 4.644142, 0.129341>,  <2.185048, 4.686247, -0.099311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.125504, 4.644142, 0.129341>,  <2.026263, 4.573968, 0.510428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.125504, 4.644142, 0.129341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704008, -0.708218, 0.052921,
		-0.665446, -0.683849, -0.299218,
		0.248101, 0.175436, -0.952716,
		2.199934, 4.696773, -0.156474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.833427, 4.002461, 0.062196>,  <2.026263, 4.573968, 0.510428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.833427, 4.002461, 0.062196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.152878, 4.215591, -0.049728>,  <2.344548, 4.343470, -0.116883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.152878, 4.215591, -0.049728>,  <1.833427, 4.002461, 0.062196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.152878, 4.215591, -0.049728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547993, -0.836017, -0.027912,
		-0.248798, -0.131043, -0.959649,
		0.798626, 0.532826, -0.279810,
		2.392466, 4.375439, -0.133671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.232382, 3.601527, 0.174232>,  <1.833427, 4.002461, 0.062196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.232382, 3.601527, 0.174232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.268524, 3.517536, 0.563641>,  <1.290209, 3.467141, 0.797286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.268524, 3.517536, 0.563641>,  <1.232382, 3.601527, 0.174232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.268524, 3.517536, 0.563641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974041, -0.222359, 0.042443,
		0.207559, -0.952085, -0.224618,
		0.090355, -0.209978, 0.973522,
		1.295631, 3.454543, 0.855697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.802277, 3.034722, 0.252836>,  <1.232382, 3.601527, 0.174232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.802277, 3.034722, 0.252836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843529, 3.249271, 0.587898>,  <0.868280, 3.378001, 0.788936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843529, 3.249271, 0.587898>,  <0.802277, 3.034722, 0.252836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.843529, 3.249271, 0.587898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943791, -0.213119, 0.252664,
		0.314042, -0.816629, 0.484246,
		0.103130, 0.536374, 0.837655,
		0.874468, 3.410184, 0.839195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.423642, 2.672399, 0.767978>,  <0.802277, 3.034722, 0.252836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.423642, 2.672399, 0.767978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.473732, 3.022068, 0.955654>,  <0.503786, 3.231870, 1.068260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.473732, 3.022068, 0.955654>,  <0.423642, 2.672399, 0.767978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.473732, 3.022068, 0.955654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880274, -0.120244, 0.458976,
		0.457642, -0.470491, 0.754455,
		0.125226, 0.874174, 0.469189,
		0.511300, 3.284320, 1.096411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.196038, 2.551939, 1.462368>,  <0.423642, 2.672399, 0.767978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.196038, 2.551939, 1.462368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.175728, 2.946140, 1.397617>,  <0.163542, 3.182661, 1.358767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.175728, 2.946140, 1.397617>,  <0.196038, 2.551939, 1.462368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.175728, 2.946140, 1.397617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961494, -0.004401, 0.274790,
		0.270095, 0.169597, 0.947779,
		-0.050775, 0.985504, -0.161878,
		0.160495, 3.241791, 1.349054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.100097, 2.768329, 2.109020>,  <0.196038, 2.551939, 1.462368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.100097, 2.768329, 2.109020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.141190, 3.050060, 1.828060>,  <-0.165845, 3.219099, 1.659484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.141190, 3.050060, 1.828060>,  <-0.100097, 2.768329, 2.109020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.141190, 3.050060, 1.828060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983725, 0.032709, 0.176675,
		0.147413, 0.709120, 0.689506,
		-0.102731, 0.704329, -0.702401,
		-0.172009, 3.261359, 1.617340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.348237, 3.465534, 2.502115>,  <-0.100097, 2.768329, 2.109020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.348237, 3.465534, 2.502115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.475983, 3.424110, 2.125332>,  <-0.552630, 3.399256, 1.899262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.475983, 3.424110, 2.125332>,  <-0.348237, 3.465534, 2.502115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.475983, 3.424110, 2.125332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944453, 0.116136, 0.307441,
		0.077557, 0.987819, -0.134897,
		-0.319363, -0.103560, -0.941957,
		-0.571792, 3.393042, 1.842745>
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
