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
	<5.477901, 1.525483, 4.820057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.261745, 1.442276, 5.146175>,  <5.132052, 1.392352, 5.341846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.261745, 1.442276, 5.146175>,  <5.477901, 1.525483, 4.820057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.261745, 1.442276, 5.146175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840682, 0.173913, -0.512843,
		-0.035110, -0.962540, -0.268857,
		-0.540390, -0.208018, 0.815296,
		5.099628, 1.379871, 5.390764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.020841, 0.986617, 4.745991>,  <5.477901, 1.525483, 4.820057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.020841, 0.986617, 4.745991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.853896, 1.194710, 5.044029>,  <4.753729, 1.319566, 5.222852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.853896, 1.194710, 5.044029>,  <5.020841, 0.986617, 4.745991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.853896, 1.194710, 5.044029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839889, 0.092240, -0.534863,
		-0.346980, -0.849029, 0.398440,
		-0.417362, 0.520233, 0.745096,
		4.728687, 1.350779, 5.267558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.323603, 0.692939, 5.070755>,  <5.020841, 0.986617, 4.745991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.323603, 0.692939, 5.070755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.380303, 1.088745, 5.059679>,  <4.414324, 1.326229, 5.053033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.380303, 1.088745, 5.059679>,  <4.323603, 0.692939, 5.070755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.380303, 1.088745, 5.059679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761074, 0.091055, -0.642242,
		-0.632987, 0.112113, 0.766002,
		0.141752, 0.989515, -0.027690,
		4.422829, 1.385600, 5.051372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.737618, 0.857525, 4.801138>,  <4.323603, 0.692939, 5.070755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.737618, 0.857525, 4.801138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.983516, 1.163879, 4.725765>,  <4.131054, 1.347692, 4.680541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.983516, 1.163879, 4.725765>,  <3.737618, 0.857525, 4.801138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.983516, 1.163879, 4.725765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518721, 0.212619, -0.828083,
		-0.594154, 0.606803, 0.527987,
		0.614744, 0.765887, -0.188433,
		4.167939, 1.393646, 4.669235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.420645, 1.515442, 4.690555>,  <3.737618, 0.857525, 4.801138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.420645, 1.515442, 4.690555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.756922, 1.534943, 4.474829>,  <3.958688, 1.546643, 4.345393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.756922, 1.534943, 4.474829>,  <3.420645, 1.515442, 4.690555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.756922, 1.534943, 4.474829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533955, 0.240455, -0.810600,
		0.090163, 0.969435, 0.228180,
		0.840692, 0.048752, -0.539315,
		4.009129, 1.549568, 4.313034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.468269, 2.223083, 4.290614>,  <3.420645, 1.515442, 4.690555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.468269, 2.223083, 4.290614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.720531, 1.982277, 4.094715>,  <3.871887, 1.837793, 3.977176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.720531, 1.982277, 4.094715>,  <3.468269, 2.223083, 4.290614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.720531, 1.982277, 4.094715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379163, 0.311603, -0.871286,
		0.677134, 0.735174, -0.031748,
		0.630654, -0.602016, -0.489747,
		3.909727, 1.801672, 3.947791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.738418, 2.610159, 3.780194>,  <3.468269, 2.223083, 4.290614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.738418, 2.610159, 3.780194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.778818, 2.232178, 3.655704>,  <3.803058, 2.005389, 3.581011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.778818, 2.232178, 3.655704>,  <3.738418, 2.610159, 3.780194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.778818, 2.232178, 3.655704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383924, 0.251572, -0.888434,
		0.917824, 0.209219, -0.337381,
		0.101002, -0.944955, -0.311223,
		3.809119, 1.948691, 3.562338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.063270, 2.648886, 3.194041>,  <3.738418, 2.610159, 3.780194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.063270, 2.648886, 3.194041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.873445, 2.298378, 3.160713>,  <3.759550, 2.088073, 3.140716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.873445, 2.298378, 3.160713>,  <4.063270, 2.648886, 3.194041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.873445, 2.298378, 3.160713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279762, 0.239904, -0.929613,
		0.834580, -0.417849, -0.358996,
		-0.474563, -0.876269, -0.083321,
		3.731076, 2.035497, 3.135717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.072839, 2.739102, 3.275710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.697681, 2.616837, 3.210075>,  <2.472587, 2.543478, 3.170695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.697681, 2.616837, 3.210075>,  <3.072839, 2.739102, 3.275710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.697681, 2.616837, 3.210075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226512, 0.897791, -0.377709,
		0.262766, -0.317084, -0.911269,
		-0.937894, -0.305663, -0.164086,
		2.416313, 2.525138, 3.160850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.003870, 2.656359, 2.513721>,  <3.072839, 2.739102, 3.275710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.003870, 2.656359, 2.513721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.101784, 2.332924, 2.299706>,  <3.160532, 2.138863, 2.171296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.101784, 2.332924, 2.299706>,  <3.003870, 2.656359, 2.513721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.101784, 2.332924, 2.299706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233094, -0.486565, 0.841975,
		-0.941142, -0.330815, 0.069374,
		0.244783, -0.808589, -0.535038,
		3.175219, 2.090347, 2.139194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.652199, 1.990068, 2.785108>,  <3.003870, 2.656359, 2.513721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.652199, 1.990068, 2.785108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.964167, 1.851204, 2.576797>,  <3.151347, 1.767886, 2.451811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.964167, 1.851204, 2.576797>,  <2.652199, 1.990068, 2.785108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.964167, 1.851204, 2.576797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366616, -0.420979, 0.829680,
		-0.507267, -0.838008, -0.201055,
		0.779919, -0.347159, -0.520776,
		3.198142, 1.747056, 2.420565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.682214, 1.305622, 2.873367>,  <2.652199, 1.990068, 2.785108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.682214, 1.305622, 2.873367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.044380, 1.457336, 2.797089>,  <3.261680, 1.548365, 2.751322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.044380, 1.457336, 2.797089>,  <2.682214, 1.305622, 2.873367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.044380, 1.457336, 2.797089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313579, -0.294720, 0.902667,
		0.286168, -0.877087, -0.385780,
		0.905415, 0.379287, -0.190696,
		3.316005, 1.571123, 2.739880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.225683, 0.831212, 3.185172>,  <2.682214, 1.305622, 2.873367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.225683, 0.831212, 3.185172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.387087, 1.195473, 3.149635>,  <3.483929, 1.414029, 3.128313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.387087, 1.195473, 3.149635>,  <3.225683, 0.831212, 3.185172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.387087, 1.195473, 3.149635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429874, -0.102967, 0.896998,
		0.807705, -0.400139, -0.433014,
		0.403510, 0.910652, -0.088842,
		3.508140, 1.468668, 3.122983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.975626, 0.686304, 3.274172>,  <3.225683, 0.831212, 3.185172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.975626, 0.686304, 3.274172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.946707, 1.077194, 3.353973>,  <3.929355, 1.311728, 3.401854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.946707, 1.077194, 3.353973>,  <3.975626, 0.686304, 3.274172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.946707, 1.077194, 3.353973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558089, -0.126144, 0.820137,
		0.826625, 0.170635, -0.536260,
		-0.072298, 0.977226, 0.199504,
		3.925017, 1.370362, 3.413825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.652990, 0.977958, 3.322738>,  <3.975626, 0.686304, 3.274172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.652990, 0.977958, 3.322738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.424023, 1.233437, 3.528419>,  <4.286642, 1.386724, 3.651828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.424023, 1.233437, 3.528419>,  <4.652990, 0.977958, 3.322738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.424023, 1.233437, 3.528419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621432, -0.071201, 0.780226,
		0.534939, 0.766158, -0.356149,
		-0.572418, 0.638696, 0.514203,
		4.252297, 1.425045, 3.682680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.127730, 1.448951, 3.735749>,  <4.652990, 0.977958, 3.322738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.127730, 1.448951, 3.735749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.763678, 1.464005, 3.900791>,  <4.545246, 1.473037, 3.999817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.763678, 1.464005, 3.900791>,  <5.127730, 1.448951, 3.735749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.763678, 1.464005, 3.900791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403439, -0.146225, 0.903247,
		0.094326, 0.988535, 0.117901,
		-0.910132, 0.037634, 0.412606,
		4.490638, 1.475295, 4.024573>
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
