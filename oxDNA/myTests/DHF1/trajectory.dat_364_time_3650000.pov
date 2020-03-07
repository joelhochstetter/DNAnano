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
	<1.016430, 2.874116, -0.207785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.991234, 2.536461, 0.005180>,  <0.976116, 2.333868, 0.132960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.991234, 2.536461, 0.005180>,  <1.016430, 2.874116, -0.207785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.991234, 2.536461, 0.005180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983573, 0.037916, 0.176485,
		-0.169164, 0.534785, 0.827882,
		-0.062992, -0.844137, 0.532414,
		0.972336, 2.283220, 0.164904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.133902, 3.001345, 0.511074>,  <1.016430, 2.874116, -0.207785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.133902, 3.001345, 0.511074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.246761, 2.652908, 0.350281>,  <1.314477, 2.443846, 0.253805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.246761, 2.652908, 0.350281>,  <1.133902, 3.001345, 0.511074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.246761, 2.652908, 0.350281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954793, 0.295846, 0.029067,
		0.093605, -0.392011, 0.915186,
		0.282149, -0.871093, -0.401982,
		1.331406, 2.391581, 0.229686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.639718, 2.690246, 0.942256>,  <1.133902, 3.001345, 0.511074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.639718, 2.690246, 0.942256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.663082, 2.564842, 0.563141>,  <1.677101, 2.489600, 0.335672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.663082, 2.564842, 0.563141>,  <1.639718, 2.690246, 0.942256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.663082, 2.564842, 0.563141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953083, 0.299989, -0.040494,
		0.297021, -0.900954, 0.316323,
		0.058411, -0.313510, -0.947787,
		1.680605, 2.470789, 0.278805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.343826, 2.401087, 0.966170>,  <1.639718, 2.690246, 0.942256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.343826, 2.401087, 0.966170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.226963, 2.493851, 0.595039>,  <2.156845, 2.549509, 0.372361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.226963, 2.493851, 0.595039>,  <2.343826, 2.401087, 0.966170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.226963, 2.493851, 0.595039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907484, 0.373429, -0.192414,
		0.301854, -0.898203, -0.319555,
		-0.292158, 0.231910, -0.927826,
		2.139316, 2.563424, 0.316691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.789869, 2.076225, 0.579608>,  <2.343826, 2.401087, 0.966170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.789869, 2.076225, 0.579608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.638100, 2.376923, 0.363861>,  <2.547038, 2.557341, 0.234413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.638100, 2.376923, 0.363861>,  <2.789869, 2.076225, 0.579608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.638100, 2.376923, 0.363861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918958, 0.373921, -0.125298,
		0.107489, -0.543197, -0.832696,
		-0.379424, 0.751745, -0.539368,
		2.524272, 2.602446, 0.202051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.103314, 1.945501, -0.098868>,  <2.789869, 2.076225, 0.579608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.103314, 1.945501, -0.098868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.989304, 2.325005, -0.044289>,  <2.920897, 2.552706, -0.011541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.989304, 2.325005, -0.044289>,  <3.103314, 1.945501, -0.098868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.989304, 2.325005, -0.044289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888479, 0.314925, -0.333806,
		-0.359672, 0.026088, -0.932714,
		-0.285027, 0.948758, 0.136449,
		2.903795, 2.609632, -0.003354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.464649, 2.241079, -0.634369>,  <3.103314, 1.945501, -0.098868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.464649, 2.241079, -0.634369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.367409, 2.549881, -0.399452>,  <3.309064, 2.735162, -0.258502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.367409, 2.549881, -0.399452>,  <3.464649, 2.241079, -0.634369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.367409, 2.549881, -0.399452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853264, 0.458158, -0.249059,
		-0.461347, 0.440568, -0.770103,
		-0.243102, 0.772004, 0.587291,
		3.294478, 2.781482, -0.223265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.671318, 2.894084, -0.953722>,  <3.464649, 2.241079, -0.634369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.671318, 2.894084, -0.953722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.658073, 3.011940, -0.571709>,  <3.650127, 3.082654, -0.342500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.658073, 3.011940, -0.571709>,  <3.671318, 2.894084, -0.953722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.658073, 3.011940, -0.571709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795485, 0.586263, -0.153291,
		-0.605067, 0.754641, -0.253794,
		-0.033111, 0.294640, 0.955034,
		3.648140, 3.100332, -0.285198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.737582, 3.575802, 1.304324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.863789, 3.311745, 1.576988>,  <4.939513, 3.153310, 1.740587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.863789, 3.311745, 1.576988>,  <4.737582, 3.575802, 1.304324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.863789, 3.311745, 1.576988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863421, -0.497716, -0.082357,
		0.393640, -0.562575, -0.727019,
		0.315517, -0.660143, 0.681660,
		4.958444, 3.113702, 1.781486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.693551, 2.831536, 1.005752>,  <4.737582, 3.575802, 1.304324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.693551, 2.831536, 1.005752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.635805, 2.886055, 1.397789>,  <4.601158, 2.918766, 1.633011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.635805, 2.886055, 1.397789>,  <4.693551, 2.831536, 1.005752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.635805, 2.886055, 1.397789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887822, -0.455215, -0.067468,
		0.436957, -0.879888, 0.186724,
		-0.144364, 0.136297, 0.980093,
		4.592496, 2.926944, 1.691817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.985350, 2.781681, 0.704033>,  <4.693551, 2.831536, 1.005752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.985350, 2.781681, 0.704033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.919089, 3.116486, 0.495430>,  <3.879333, 3.317369, 0.370268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.919089, 3.116486, 0.495430>,  <3.985350, 2.781681, 0.704033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.919089, 3.116486, 0.495430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958554, -0.260955, -0.114352,
		-0.231803, 0.480950, 0.845550,
		-0.165653, 0.837012, -0.521507,
		3.869394, 3.367589, 0.338978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.484508, 3.406350, 0.927210>,  <3.985350, 2.781681, 0.704033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.484508, 3.406350, 0.927210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.501594, 3.334160, 0.534149>,  <3.511845, 3.290846, 0.298313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.501594, 3.334160, 0.534149>,  <3.484508, 3.406350, 0.927210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.501594, 3.334160, 0.534149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991099, -0.131777, -0.018878,
		-0.126084, 0.974712, -0.184497,
		0.042713, -0.180475, -0.982652,
		3.514408, 3.280017, 0.239354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.965184, 3.823418, 0.591875>,  <3.484508, 3.406350, 0.927210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.965184, 3.823418, 0.591875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.052358, 3.538353, 0.325157>,  <3.104662, 3.367314, 0.165126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.052358, 3.538353, 0.325157>,  <2.965184, 3.823418, 0.591875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.052358, 3.538353, 0.325157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974764, -0.192805, -0.112521,
		-0.048372, 0.674491, -0.736697,
		0.217933, -0.712663, -0.666796,
		3.117738, 3.324554, 0.125118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.609296, 3.872304, 0.012372>,  <2.965184, 3.823418, 0.591875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.609296, 3.872304, 0.012372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.671817, 3.478004, -0.012512>,  <2.709330, 3.241425, -0.027443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.671817, 3.478004, -0.012512>,  <2.609296, 3.872304, 0.012372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.671817, 3.478004, -0.012512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983518, -0.149534, -0.101648,
		0.090896, 0.077074, -0.992873,
		0.156303, -0.985748, -0.062211,
		2.718708, 3.182280, -0.031176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.118294, 3.586114, -0.581643>,  <2.609296, 3.872304, 0.012372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.118294, 3.586114, -0.581643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.235620, 3.303795, -0.323708>,  <2.306015, 3.134403, -0.168947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.235620, 3.303795, -0.323708>,  <2.118294, 3.586114, -0.581643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.235620, 3.303795, -0.323708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933390, -0.357296, 0.033490,
		0.206761, -0.611709, -0.763586,
		0.293313, -0.705799, 0.644838,
		2.323613, 3.092055, -0.130256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.594649, 3.061668, -0.736473>,  <2.118294, 3.586114, -0.581643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.594649, 3.061668, -0.736473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.783350, 2.892342, -0.427086>,  <1.896571, 2.790746, -0.241454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.783350, 2.892342, -0.427086>,  <1.594649, 3.061668, -0.736473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.783350, 2.892342, -0.427086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803489, -0.567647, 0.179393,
		0.363117, -0.706103, -0.607919,
		0.471753, -0.423316, 0.773468,
		1.924876, 2.765347, -0.195045>
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
