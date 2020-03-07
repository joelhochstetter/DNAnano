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
	<2.173455, 4.238566, 0.345914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.356003, 4.395687, 0.665272>,  <2.465532, 4.489960, 0.856886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.356003, 4.395687, 0.665272>,  <2.173455, 4.238566, 0.345914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.356003, 4.395687, 0.665272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026160, -0.902819, 0.429225,
		0.889406, -0.174999, -0.422295,
		0.456369, 0.392802, 0.798394,
		2.492914, 4.513528, 0.904790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.703108, 3.953346, 0.597419>,  <2.173455, 4.238566, 0.345914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.703108, 3.953346, 0.597419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.519875, 4.075920, 0.931187>,  <2.409935, 4.149465, 1.131448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.519875, 4.075920, 0.931187>,  <2.703108, 3.953346, 0.597419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.519875, 4.075920, 0.931187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181375, -0.951174, 0.249741,
		0.870209, -0.036941, 0.491297,
		-0.458083, 0.306436, 0.834420,
		2.382450, 4.167851, 1.181513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.022219, 3.685811, 1.304736>,  <2.703108, 3.953346, 0.597419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.022219, 3.685811, 1.304736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.622902, 3.706593, 1.315393>,  <2.383311, 3.719062, 1.321788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.622902, 3.706593, 1.315393>,  <3.022219, 3.685811, 1.304736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.622902, 3.706593, 1.315393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050640, -0.997571, 0.047827,
		0.029065, 0.046396, 0.998500,
		-0.998294, 0.051954, 0.026645,
		2.323414, 3.722179, 1.323387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.892683, 3.451827, 1.920337>,  <3.022219, 3.685811, 1.304736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.892683, 3.451827, 1.920337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595146, 3.387501, 1.660849>,  <2.416624, 3.348905, 1.505156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595146, 3.387501, 1.660849>,  <2.892683, 3.451827, 1.920337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.595146, 3.387501, 1.660849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119810, -0.986982, 0.107294,
		-0.657530, 0.002087, 0.753425,
		-0.743841, -0.160817, -0.648721,
		2.371994, 3.339256, 1.466233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.338384, 3.046105, 2.351622>,  <2.892683, 3.451827, 1.920337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.338384, 3.046105, 2.351622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.429741, 2.987625, 1.966610>,  <2.484555, 2.952538, 1.735603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.429741, 2.987625, 1.966610>,  <2.338384, 3.046105, 2.351622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.429741, 2.987625, 1.966610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231772, -0.952071, 0.199606,
		-0.945579, -0.268675, -0.183560,
		0.228391, -0.146199, -0.962529,
		2.498259, 2.943765, 1.677851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.886546, 2.499263, 2.138099>,  <2.338384, 3.046105, 2.351622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.886546, 2.499263, 2.138099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.207802, 2.510708, 1.900057>,  <2.400555, 2.517575, 1.757232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.207802, 2.510708, 1.900057>,  <1.886546, 2.499263, 2.138099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.207802, 2.510708, 1.900057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179874, -0.963882, 0.196411,
		-0.567990, -0.264789, -0.779278,
		0.803139, 0.028613, -0.595104,
		2.448744, 2.519292, 1.721525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.772732, 1.911356, 1.600408>,  <1.886546, 2.499263, 2.138099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.772732, 1.911356, 1.600408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.162277, 1.997589, 1.629019>,  <2.396004, 2.049329, 1.646185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.162277, 1.997589, 1.629019>,  <1.772732, 1.911356, 1.600408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.162277, 1.997589, 1.629019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193671, -0.952653, 0.234402,
		0.118674, -0.214423, -0.969505,
		0.973862, 0.215582, 0.071527,
		2.454436, 2.062264, 1.650477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.135622, 1.359842, 1.365450>,  <1.772732, 1.911356, 1.600408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.135622, 1.359842, 1.365450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.437683, 1.541370, 1.554676>,  <2.618920, 1.650287, 1.668211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.437683, 1.541370, 1.554676>,  <2.135622, 1.359842, 1.365450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.437683, 1.541370, 1.554676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374761, -0.890943, 0.256468,
		0.537863, -0.016387, -0.842873,
		0.755154, 0.453820, 0.473064,
		2.664229, 1.677516, 1.696595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.674409, 0.133140, 1.164058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.029503, 0.306702, 1.225576>,  <4.242559, 0.410839, 1.262487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.029503, 0.306702, 1.225576>,  <3.674409, 0.133140, 1.164058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.029503, 0.306702, 1.225576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456519, 0.872793, 0.172693,
		-0.059299, -0.223516, 0.972895,
		0.887736, 0.433904, 0.153795,
		4.295824, 0.436873, 1.271715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.773879, 0.521676, 1.812825>,  <3.674409, 0.133140, 1.164058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.773879, 0.521676, 1.812825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.003540, 0.691601, 1.532858>,  <4.141337, 0.793556, 1.364878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.003540, 0.691601, 1.532858>,  <3.773879, 0.521676, 1.812825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.003540, 0.691601, 1.532858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536115, 0.841174, 0.070763,
		0.618813, 0.334607, 0.710710,
		0.574153, 0.424811, -0.699917,
		4.175786, 0.819044, 1.322883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.104208, 1.271309, 2.017825>,  <3.773879, 0.521676, 1.812825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.104208, 1.271309, 2.017825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.012367, 1.201313, 1.634855>,  <3.957263, 1.159316, 1.405073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.012367, 1.201313, 1.634855>,  <4.104208, 1.271309, 2.017825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.012367, 1.201313, 1.634855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615884, 0.787828, 0.003705,
		0.753637, 0.590513, -0.288661,
		-0.229603, -0.174990, -0.957424,
		3.943486, 1.148816, 1.347628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.212143, 1.884274, 1.524048>,  <4.104208, 1.271309, 2.017825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.212143, 1.884274, 1.524048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.937645, 1.641438, 1.363794>,  <3.772946, 1.495736, 1.267642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.937645, 1.641438, 1.363794>,  <4.212143, 1.884274, 1.524048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.937645, 1.641438, 1.363794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671806, 0.740153, 0.029163,
		0.278826, 0.289161, -0.915774,
		-0.686245, -0.607091, -0.400634,
		3.731771, 1.459310, 1.243604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.713870, 2.388152, 1.659187>,  <4.212143, 1.884274, 1.524048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.713870, 2.388152, 1.659187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327141, 2.286083, 1.654449>,  <3.095103, 2.224842, 1.651607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327141, 2.286083, 1.654449>,  <3.713870, 2.388152, 1.659187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.327141, 2.286083, 1.654449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203457, 0.797258, -0.568318,
		0.154460, -0.547053, -0.822724,
		-0.966823, -0.255171, -0.011843,
		3.037094, 2.209532, 1.650897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.512813, 2.490144, 0.940882>,  <3.713870, 2.388152, 1.659187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.512813, 2.490144, 0.940882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.181046, 2.493168, 1.164312>,  <2.981985, 2.494982, 1.298370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.181046, 2.493168, 1.164312>,  <3.512813, 2.490144, 0.940882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.181046, 2.493168, 1.164312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304189, 0.832552, -0.462953,
		-0.468542, -0.553895, -0.688236,
		-0.829419, 0.007559, 0.558575,
		2.932220, 2.495435, 1.331885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.012129, 2.629241, 0.524054>,  <3.512813, 2.490144, 0.940882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.012129, 2.629241, 0.524054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.870857, 2.753510, 0.877041>,  <2.786094, 2.828070, 1.088833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.870857, 2.753510, 0.877041>,  <3.012129, 2.629241, 0.524054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.870857, 2.753510, 0.877041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346897, 0.832529, -0.431923,
		-0.868866, -0.458671, -0.186261,
		-0.353179, 0.310670, 0.882468,
		2.764904, 2.846710, 1.141781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.278533, 2.562917, 0.529440>,  <3.012129, 2.629241, 0.524054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.278533, 2.562917, 0.529440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.491333, 2.857082, 0.697317>,  <2.619013, 3.033582, 0.798044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.491333, 2.857082, 0.697317>,  <2.278533, 2.562917, 0.529440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.491333, 2.857082, 0.697317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268645, 0.616642, -0.739988,
		-0.802998, 0.280925, 0.525619,
		0.532000, 0.735414, 0.419693,
		2.650933, 3.077707, 0.823225>
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
