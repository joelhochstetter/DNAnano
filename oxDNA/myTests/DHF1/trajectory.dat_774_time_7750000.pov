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
	<4.326365, 3.696794, 3.190045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.547455, 3.979565, 3.013523>,  <4.680109, 4.149227, 2.907610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.547455, 3.979565, 3.013523>,  <4.326365, 3.696794, 3.190045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.547455, 3.979565, 3.013523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670169, 0.062289, -0.739590,
		-0.495347, 0.704539, 0.508189,
		0.552724, 0.706927, -0.441305,
		4.713272, 4.191643, 2.881131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.728413, 4.218675, 2.948040>,  <4.326365, 3.696794, 3.190045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.728413, 4.218675, 2.948040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074978, 4.327457, 2.780531>,  <4.282917, 4.392727, 2.680026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074978, 4.327457, 2.780531>,  <3.728413, 4.218675, 2.948040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.074978, 4.327457, 2.780531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497358, 0.395565, -0.772116,
		-0.044330, 0.877250, 0.477982,
		0.866412, 0.271956, -0.418772,
		4.334902, 4.409044, 2.654899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.666795, 4.883475, 2.996419>,  <3.728413, 4.218675, 2.948040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.666795, 4.883475, 2.996419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.863979, 4.736641, 2.680891>,  <3.982290, 4.648540, 2.491574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.863979, 4.736641, 2.680891>,  <3.666795, 4.883475, 2.996419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.863979, 4.736641, 2.680891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732005, 0.315063, -0.604073,
		0.470274, 0.875205, -0.113394,
		0.492962, -0.367085, -0.788820,
		4.011868, 4.626515, 2.444245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.896223, 5.471040, 2.575869>,  <3.666795, 4.883475, 2.996419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.896223, 5.471040, 2.575869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.834648, 5.120983, 2.392380>,  <3.797703, 4.910949, 2.282286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.834648, 5.120983, 2.392380>,  <3.896223, 5.471040, 2.575869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.834648, 5.120983, 2.392380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759044, 0.401960, -0.512132,
		0.632578, 0.269355, -0.726149,
		-0.153938, -0.875143, -0.458724,
		3.788467, 4.858440, 2.254763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.937683, 5.579814, 1.765183>,  <3.896223, 5.471040, 2.575869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.937683, 5.579814, 1.765183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.707314, 5.264641, 1.852335>,  <3.569092, 5.075537, 1.904626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.707314, 5.264641, 1.852335>,  <3.937683, 5.579814, 1.765183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.707314, 5.264641, 1.852335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787856, 0.463839, -0.405138,
		0.218161, -0.404986, -0.887915,
		-0.575925, -0.787934, 0.217879,
		3.534536, 5.028261, 1.917699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.539311, 5.399292, 1.172901>,  <3.937683, 5.579814, 1.765183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.539311, 5.399292, 1.172901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.339622, 5.236095, 1.478664>,  <3.219809, 5.138177, 1.662122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.339622, 5.236095, 1.478664>,  <3.539311, 5.399292, 1.172901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.339622, 5.236095, 1.478664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860396, 0.337728, -0.381653,
		-0.102451, -0.848224, -0.519635,
		-0.499222, -0.407991, 0.764409,
		3.189856, 5.113698, 1.707987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.922172, 5.389448, 0.863180>,  <3.539311, 5.399292, 1.172901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.922172, 5.389448, 0.863180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.834625, 5.295918, 1.242109>,  <2.782097, 5.239799, 1.469467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.834625, 5.295918, 1.242109>,  <2.922172, 5.389448, 0.863180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.834625, 5.295918, 1.242109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975289, 0.082409, -0.204987,
		-0.030139, -0.968782, -0.246076,
		-0.218867, -0.233818, 0.947326,
		2.768965, 5.225770, 1.526307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.597165, 4.760256, 0.970308>,  <2.922172, 5.389448, 0.863180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.597165, 4.760256, 0.970308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.479446, 4.999538, 1.268446>,  <2.408815, 5.143108, 1.447329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.479446, 4.999538, 1.268446>,  <2.597165, 4.760256, 0.970308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.479446, 4.999538, 1.268446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943278, -0.056407, -0.327177,
		-0.153676, -0.799355, 0.580875,
		-0.294296, 0.598206, 0.745346,
		2.391158, 5.179000, 1.492050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.271071, 1.048496, 1.025475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.217262, 0.943977, 1.407810>,  <1.184977, 0.881266, 1.637212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.217262, 0.943977, 1.407810>,  <1.271071, 1.048496, 1.025475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.217262, 0.943977, 1.407810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890627, -0.454734, 0.001035,
		0.434382, 0.851435, 0.293890,
		-0.134523, -0.261296, 0.955839,
		1.176905, 0.865588, 1.694562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.808286, 1.236529, 1.444363>,  <1.271071, 1.048496, 1.025475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.808286, 1.236529, 1.444363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.645592, 0.921188, 1.629002>,  <1.547975, 0.731984, 1.739785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.645592, 0.921188, 1.629002>,  <1.808286, 1.236529, 1.444363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.645592, 0.921188, 1.629002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884408, -0.466395, -0.017251,
		0.228886, 0.401222, 0.886923,
		-0.406735, -0.788350, 0.461596,
		1.523571, 0.684683, 1.767480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.952892, 1.092849, 2.231830>,  <1.808286, 1.236529, 1.444363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.952892, 1.092849, 2.231830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.888908, 0.750069, 2.035851>,  <1.850518, 0.544401, 1.918263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.888908, 0.750069, 2.035851>,  <1.952892, 1.092849, 2.231830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.888908, 0.750069, 2.035851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906443, -0.324046, 0.270843,
		-0.390865, -0.400786, 0.828611,
		-0.159958, -0.856951, -0.489948,
		1.840921, 0.492983, 1.888866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.116556, 0.517649, 2.649848>,  <1.952892, 1.092849, 2.231830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.116556, 0.517649, 2.649848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.148819, 0.385574, 2.273663>,  <2.168177, 0.306330, 2.047951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.148819, 0.385574, 2.273663>,  <2.116556, 0.517649, 2.649848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.148819, 0.385574, 2.273663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956311, -0.240370, 0.166407,
		-0.281005, -0.912798, 0.296373,
		0.080657, -0.330186, -0.940464,
		2.173016, 0.286519, 1.991524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.469513, -0.025546, 2.759185>,  <2.116556, 0.517649, 2.649848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.469513, -0.025546, 2.759185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.536346, 0.015480, 2.366947>,  <2.576446, 0.040096, 2.131605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.536346, 0.015480, 2.366947>,  <2.469513, -0.025546, 2.759185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.536346, 0.015480, 2.366947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856279, -0.508118, 0.092754,
		-0.488744, -0.855159, -0.172723,
		0.167083, 0.102566, -0.980594,
		2.586471, 0.046250, 2.072769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.598907, -0.641959, 2.549572>,  <2.469513, -0.025546, 2.759185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.598907, -0.641959, 2.549572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.774574, -0.408234, 2.276600>,  <2.879974, -0.267998, 2.112817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.774574, -0.408234, 2.276600>,  <2.598907, -0.641959, 2.549572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.774574, -0.408234, 2.276600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819763, -0.571422, 0.038279,
		-0.367587, -0.576241, -0.729949,
		0.439167, 0.584314, -0.682429,
		2.906324, -0.232939, 2.071871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.924294, -1.107320, 2.067785>,  <2.598907, -0.641959, 2.549572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.924294, -1.107320, 2.067785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.103851, -0.751900, 2.029892>,  <3.211586, -0.538648, 2.007156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.103851, -0.751900, 2.029892>,  <2.924294, -1.107320, 2.067785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.103851, -0.751900, 2.029892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893524, -0.447581, 0.035860,
		-0.010536, -0.100742, -0.994857,
		0.448892, 0.888551, -0.094731,
		3.238519, -0.485335, 2.001473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.405002, -1.258226, 1.691195>,  <2.924294, -1.107320, 2.067785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.405002, -1.258226, 1.691195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.516151, -0.929688, 1.890465>,  <3.582841, -0.732565, 2.010027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.516151, -0.929688, 1.890465>,  <3.405002, -1.258226, 1.691195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.516151, -0.929688, 1.890465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903096, -0.400120, 0.155952,
		0.327420, 0.406565, -0.852937,
		0.277873, 0.821346, 0.498175,
		3.599513, -0.683284, 2.039917>
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
