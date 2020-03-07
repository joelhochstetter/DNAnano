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
	<0.323094, -0.019620, 3.267834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.497913, 0.127975, 2.939728>,  <0.602805, 0.216533, 2.742864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.497913, 0.127975, 2.939728>,  <0.323094, -0.019620, 3.267834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.497913, 0.127975, 2.939728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897379, -0.240565, 0.369919,
		-0.060831, -0.897761, -0.436263,
		0.437048, 0.368990, -0.820265,
		0.629028, 0.238672, 2.693648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.780706, -0.537814, 3.120883>,  <0.323094, -0.019620, 3.267834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.780706, -0.537814, 3.120883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.893353, -0.185501, 2.968613>,  <0.960940, 0.025887, 2.877251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.893353, -0.185501, 2.968613>,  <0.780706, -0.537814, 3.120883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.893353, -0.185501, 2.968613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928386, -0.149862, 0.340060,
		0.242471, -0.449179, -0.859911,
		0.281616, 0.880783, -0.380675,
		0.977837, 0.078734, 2.854410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.402391, -0.612954, 2.729509>,  <0.780706, -0.537814, 3.120883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.402391, -0.612954, 2.729509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.404629, -0.239227, 2.872070>,  <1.405972, -0.014991, 2.957607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.404629, -0.239227, 2.872070>,  <1.402391, -0.612954, 2.729509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.404629, -0.239227, 2.872070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849891, -0.192247, 0.490638,
		0.526929, 0.300158, -0.795142,
		0.005595, 0.934316, 0.356402,
		1.406307, 0.041067, 2.978991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.087487, -0.402682, 2.758529>,  <1.402391, -0.612954, 2.729509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.087487, -0.402682, 2.758529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.890625, -0.158783, 3.007042>,  <1.772508, -0.012443, 3.156150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.890625, -0.158783, 3.007042>,  <2.087487, -0.402682, 2.758529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.890625, -0.158783, 3.007042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851526, 0.188985, 0.489068,
		0.180796, 0.769735, -0.612226,
		-0.492154, 0.609748, 0.621282,
		1.742979, 0.024142, 3.193427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.245890, 0.365588, 2.750133>,  <2.087487, -0.402682, 2.758529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.245890, 0.365588, 2.750133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.138374, 0.200806, 3.098396>,  <2.073865, 0.101936, 3.307354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.138374, 0.200806, 3.098396>,  <2.245890, 0.365588, 2.750133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.138374, 0.200806, 3.098396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893212, 0.231663, 0.385364,
		-0.360452, 0.881263, 0.305696,
		-0.268788, -0.411957, 0.870658,
		2.057738, 0.077219, 3.359594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.242999, 0.862832, 3.347707>,  <2.245890, 0.365588, 2.750133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.242999, 0.862832, 3.347707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.308411, 0.484146, 3.458694>,  <2.347657, 0.256934, 3.525287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.308411, 0.484146, 3.458694>,  <2.242999, 0.862832, 3.347707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.308411, 0.484146, 3.458694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844234, 0.279807, 0.457140,
		-0.510419, 0.159493, 0.845006,
		0.163528, -0.946715, 0.277468,
		2.357469, 0.200131, 3.541935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.336816, 0.806913, 4.109449>,  <2.242999, 0.862832, 3.347707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.336816, 0.806913, 4.109449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.517044, 0.484619, 3.955681>,  <2.625181, 0.291243, 3.863420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.517044, 0.484619, 3.955681>,  <2.336816, 0.806913, 4.109449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.517044, 0.484619, 3.955681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848362, 0.252364, 0.465398,
		-0.277973, -0.535822, 0.797262,
		0.450571, -0.805734, -0.384420,
		2.652215, 0.242899, 3.840355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.729152, 0.664017, 4.631401>,  <2.336816, 0.806913, 4.109449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.729152, 0.664017, 4.631401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.886822, 0.450775, 4.331955>,  <2.981424, 0.322830, 4.152287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.886822, 0.450775, 4.331955>,  <2.729152, 0.664017, 4.631401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.886822, 0.450775, 4.331955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913930, 0.313116, 0.258243,
		0.096733, -0.785976, 0.610643,
		0.394175, -0.533105, -0.748616,
		3.005074, 0.290844, 4.107370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.523297, 5.063123, 4.885006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.651039, 5.100327, 4.507782>,  <4.727684, 5.122649, 4.281448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.651039, 5.100327, 4.507782>,  <4.523297, 5.063123, 4.885006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.651039, 5.100327, 4.507782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906006, -0.261753, -0.332624,
		-0.277786, 0.960643, 0.000674,
		0.319356, 0.093009, -0.943059,
		4.746846, 5.128229, 4.224864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.233436, 5.666304, 4.681329>,  <4.523297, 5.063123, 4.885006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.233436, 5.666304, 4.681329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.287998, 5.406601, 4.382034>,  <4.320736, 5.250779, 4.202457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.287998, 5.406601, 4.382034>,  <4.233436, 5.666304, 4.681329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.287998, 5.406601, 4.382034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960003, 0.099791, -0.261602,
		0.244514, 0.753994, -0.609676,
		0.136406, -0.649257, -0.748237,
		4.328920, 5.211824, 4.157563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.927830, 5.821458, 4.030203>,  <4.233436, 5.666304, 4.681329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.927830, 5.821458, 4.030203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.943100, 5.424118, 4.073654>,  <3.952262, 5.185714, 4.099725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.943100, 5.424118, 4.073654>,  <3.927830, 5.821458, 4.030203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.943100, 5.424118, 4.073654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951129, -0.069454, -0.300881,
		0.306424, -0.091832, -0.947455,
		0.038174, -0.993349, 0.108627,
		3.954552, 5.126113, 4.106242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.621730, 5.540791, 3.415650>,  <3.927830, 5.821458, 4.030203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.621730, 5.540791, 3.415650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.590570, 5.266495, 3.705116>,  <3.571875, 5.101917, 3.878796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.590570, 5.266495, 3.705116>,  <3.621730, 5.540791, 3.415650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.590570, 5.266495, 3.705116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893441, -0.274069, -0.355879,
		0.442375, -0.674275, -0.591318,
		-0.077898, -0.685740, 0.723667,
		3.567201, 5.060773, 3.922216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.574224, 4.825104, 3.164463>,  <3.621730, 5.540791, 3.415650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.574224, 4.825104, 3.164463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.383200, 4.869461, 3.513092>,  <3.268585, 4.896076, 3.722270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.383200, 4.869461, 3.513092>,  <3.574224, 4.825104, 3.164463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.383200, 4.869461, 3.513092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830013, -0.382254, -0.406152,
		0.288123, -0.917379, 0.274592,
		-0.477560, 0.110893, 0.871573,
		3.239932, 4.902729, 3.774564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.173862, 4.185127, 3.412566>,  <3.574224, 4.825104, 3.164463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.173862, 4.185127, 3.412566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.990917, 4.500198, 3.577675>,  <2.881150, 4.689241, 3.676740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.990917, 4.500198, 3.577675>,  <3.173862, 4.185127, 3.412566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.990917, 4.500198, 3.577675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887468, -0.374665, -0.268378,
		-0.056744, -0.489068, 0.870398,
		-0.457363, 0.787679, 0.412772,
		2.853708, 4.736502, 3.701506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.643574, 3.976514, 3.844586>,  <3.173862, 4.185127, 3.412566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.643574, 3.976514, 3.844586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.572952, 4.351578, 3.724838>,  <2.530579, 4.576616, 3.652990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.572952, 4.351578, 3.724838>,  <2.643574, 3.976514, 3.844586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.572952, 4.351578, 3.724838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868034, -0.291719, -0.401768,
		-0.464053, 0.188928, 0.865425,
		-0.176555, 0.937660, -0.299369,
		2.519986, 4.632876, 3.635028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.984772, 4.218608, 4.143224>,  <2.643574, 3.976514, 3.844586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.984772, 4.218608, 4.143224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.058327, 4.416168, 3.803284>,  <2.102460, 4.534705, 3.599319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.058327, 4.416168, 3.803284>,  <1.984772, 4.218608, 4.143224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.058327, 4.416168, 3.803284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884901, -0.293236, -0.361889,
		-0.427944, 0.818581, 0.383131,
		0.183887, 0.493901, -0.849851,
		2.113493, 4.564339, 3.548328>
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
