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
	<2.375754, -0.342083, 2.929228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.370302, -0.731007, 2.835907>,  <2.367031, -0.964361, 2.779915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.370302, -0.731007, 2.835907>,  <2.375754, -0.342083, 2.929228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.370302, -0.731007, 2.835907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839704, -0.137806, 0.525269,
		-0.542874, -0.188745, 0.818329,
		-0.013628, -0.972309, -0.233301,
		2.366214, -1.022699, 2.765917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.677225, -0.164118, 3.604395>,  <2.375754, -0.342083, 2.929228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.677225, -0.164118, 3.604395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.438051, -0.080074, 3.913801>,  <2.294547, -0.029648, 4.099445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.438051, -0.080074, 3.913801>,  <2.677225, -0.164118, 3.604395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.438051, -0.080074, 3.913801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153515, -0.977186, 0.146765,
		0.786706, -0.030990, 0.616549,
		-0.597935, 0.210110, 0.773516,
		2.258671, -0.017041, 4.145856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.359076, 0.080437, 3.653120>,  <2.677225, -0.164118, 3.604395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.359076, 0.080437, 3.653120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.756624, 0.052071, 3.619190>,  <3.995153, 0.035051, 3.598832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.756624, 0.052071, 3.619190>,  <3.359076, 0.080437, 3.653120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.756624, 0.052071, 3.619190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044487, 0.958856, -0.280385,
		0.101219, 0.274892, 0.956132,
		0.993869, -0.070916, -0.084825,
		4.054785, 0.030796, 3.593743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.676615, 0.650332, 4.026128>,  <3.359076, 0.080437, 3.653120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.676615, 0.650332, 4.026128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.929050, 0.542862, 3.735050>,  <4.080512, 0.478380, 3.560404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.929050, 0.542862, 3.735050>,  <3.676615, 0.650332, 4.026128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.929050, 0.542862, 3.735050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131385, 0.961570, -0.241083,
		0.764502, 0.056537, 0.642137,
		0.631090, -0.268675, -0.727694,
		4.118378, 0.462259, 3.516742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.283167, 1.121840, 4.031868>,  <3.676615, 0.650332, 4.026128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.283167, 1.121840, 4.031868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.220808, 0.974514, 3.665253>,  <4.183393, 0.886119, 3.445284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.220808, 0.974514, 3.665253>,  <4.283167, 1.121840, 4.031868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.220808, 0.974514, 3.665253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059189, 0.922731, -0.380872,
		0.985998, -0.113626, -0.122052,
		-0.155898, -0.368315, -0.916537,
		4.174038, 0.864020, 3.390292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.574962, 1.580770, 3.666409>,  <4.283167, 1.121840, 4.031868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.574962, 1.580770, 3.666409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.356802, 1.393169, 3.388538>,  <4.225906, 1.280609, 3.221816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.356802, 1.393169, 3.388538>,  <4.574962, 1.580770, 3.666409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.356802, 1.393169, 3.388538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089651, 0.791400, -0.604689,
		0.833370, -0.392074, -0.389580,
		-0.545396, -0.469004, -0.694679,
		4.193182, 1.252469, 3.180135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.898090, 1.585143, 3.055068>,  <4.574962, 1.580770, 3.666409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.898090, 1.585143, 3.055068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.510092, 1.569702, 2.959053>,  <4.277293, 1.560437, 2.901444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.510092, 1.569702, 2.959053>,  <4.898090, 1.585143, 3.055068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.510092, 1.569702, 2.959053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094233, 0.850440, -0.517564,
		0.224117, -0.524654, -0.821285,
		-0.969995, -0.038603, -0.240038,
		4.219093, 1.558121, 2.887042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.825581, 1.584699, 2.397218>,  <4.898090, 1.585143, 3.055068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.825581, 1.584699, 2.397218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.473286, 1.726994, 2.522280>,  <4.261909, 1.812370, 2.597317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.473286, 1.726994, 2.522280>,  <4.825581, 1.584699, 2.397218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.473286, 1.726994, 2.522280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020324, 0.687942, -0.725481,
		-0.473168, -0.632604, -0.613126,
		-0.880738, 0.355736, 0.312655,
		4.209064, 1.833714, 2.616076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.820159, 1.195654, 3.383033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.074054, 1.482056, 3.266792>,  <2.226390, 1.653897, 3.197048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.074054, 1.482056, 3.266792>,  <1.820159, 1.195654, 3.383033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.074054, 1.482056, 3.266792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586306, -0.691217, -0.422450,
		-0.503344, 0.097763, -0.858538,
		0.634736, 0.716004, -0.290601,
		2.264475, 1.696857, 3.179612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.927408, 1.093540, 2.636747>,  <1.820159, 1.195654, 3.383033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.927408, 1.093540, 2.636747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.233606, 1.273827, 2.820431>,  <2.417325, 1.381999, 2.930641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.233606, 1.273827, 2.820431>,  <1.927408, 1.093540, 2.636747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.233606, 1.273827, 2.820431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640182, -0.605247, -0.473121,
		0.064691, 0.656149, -0.751854,
		0.765495, 0.450716, 0.459208,
		2.463255, 1.409042, 2.958193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.495187, 1.301754, 2.198880>,  <1.927408, 1.093540, 2.636747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.495187, 1.301754, 2.198880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624513, 1.195992, 2.562321>,  <2.702108, 1.132534, 2.780385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624513, 1.195992, 2.562321>,  <2.495187, 1.301754, 2.198880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.624513, 1.195992, 2.562321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608008, -0.677708, -0.413568,
		0.725116, 0.686150, -0.058352,
		0.323315, -0.264406, 0.908601,
		2.721507, 1.116670, 2.834901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.266541, 1.361341, 2.200504>,  <2.495187, 1.301754, 2.198880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.266541, 1.361341, 2.200504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.135325, 1.071983, 2.443516>,  <3.056596, 0.898369, 2.589323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.135325, 1.071983, 2.443516>,  <3.266541, 1.361341, 2.200504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.135325, 1.071983, 2.443516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607067, -0.654172, -0.451142,
		0.723782, 0.220818, 0.653743,
		-0.328040, -0.723393, 0.607529,
		3.036913, 0.854965, 2.625775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.626278, 1.407009, 1.514139>,  <3.266541, 1.361341, 2.200504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.626278, 1.407009, 1.514139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.977802, 1.343727, 1.694210>,  <4.188717, 1.305758, 1.802253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.977802, 1.343727, 1.694210>,  <3.626278, 1.407009, 1.514139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.977802, 1.343727, 1.694210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475915, -0.358948, 0.802908,
		0.034566, -0.919852, -0.390741,
		0.878812, -0.158206, 0.450179,
		4.241446, 1.296265, 1.829264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.717217, 0.704990, 1.768668>,  <3.626278, 1.407009, 1.514139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.717217, 0.704990, 1.768668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.940777, 0.920311, 2.020973>,  <4.074913, 1.049504, 2.172356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.940777, 0.920311, 2.020973>,  <3.717217, 0.704990, 1.768668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.940777, 0.920311, 2.020973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426526, -0.465703, 0.775369,
		0.711132, -0.702389, -0.030680,
		0.558898, 0.538304, 0.630763,
		4.108447, 1.081802, 2.210202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.015462, 0.266858, 2.263570>,  <3.717217, 0.704990, 1.768668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.015462, 0.266858, 2.263570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.970457, 0.637070, 2.408199>,  <3.943454, 0.859197, 2.494977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.970457, 0.637070, 2.408199>,  <4.015462, 0.266858, 2.263570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.970457, 0.637070, 2.408199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460568, -0.371010, 0.806368,
		0.880465, -0.075801, 0.468013,
		-0.112514, 0.925530, 0.361573,
		3.936703, 0.914729, 2.516671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.839937, 0.146494, 2.968274>,  <4.015462, 0.266858, 2.263570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.839937, 0.146494, 2.968274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.487030, 0.333611, 2.947197>,  <3.275286, 0.445881, 2.934551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.487030, 0.333611, 2.947197>,  <3.839937, 0.146494, 2.968274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.487030, 0.333611, 2.947197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174432, 0.428825, 0.886387,
		0.437240, 0.772839, -0.459936,
		-0.882266, 0.467792, -0.052692,
		3.222350, 0.473948, 2.931389>
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
