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
	<1.912616, 1.961182, 0.197129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.518044, 1.958012, 0.262720>,  <1.281300, 1.956109, 0.302075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.518044, 1.958012, 0.262720>,  <1.912616, 1.961182, 0.197129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.518044, 1.958012, 0.262720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144845, -0.512165, 0.846586,
		0.077272, 0.858851, 0.506364,
		-0.986432, -0.007927, 0.163977,
		1.222114, 1.955634, 0.311913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.899272, 1.956380, 1.037101>,  <1.912616, 1.961182, 0.197129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.899272, 1.956380, 1.037101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.529442, 1.860809, 0.918393>,  <1.307544, 1.803467, 0.847168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.529442, 1.860809, 0.918393>,  <1.899272, 1.956380, 1.037101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.529442, 1.860809, 0.918393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009244, -0.764634, 0.644399,
		-0.380884, 0.598540, 0.704754,
		-0.924577, -0.238926, -0.296770,
		1.252069, 1.789131, 0.829362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.727237, 1.553755, 1.554663>,  <1.899272, 1.956380, 1.037101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.727237, 1.553755, 1.554663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.421303, 1.474510, 1.309459>,  <1.237743, 1.426963, 1.162337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.421303, 1.474510, 1.309459>,  <1.727237, 1.553755, 1.554663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.421303, 1.474510, 1.309459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096501, -0.905574, 0.413066,
		-0.636959, 0.375082, 0.673496,
		-0.764834, -0.198113, -0.613009,
		1.191853, 1.415076, 1.125556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.124614, 1.319477, 1.929642>,  <1.727237, 1.553755, 1.554663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.124614, 1.319477, 1.929642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.099163, 1.189556, 1.552186>,  <1.083892, 1.111604, 1.325712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.099163, 1.189556, 1.552186>,  <1.124614, 1.319477, 1.929642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.099163, 1.189556, 1.552186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010990, -0.945270, 0.326104,
		-0.997913, 0.031120, 0.056576,
		-0.063628, -0.324801, -0.943640,
		1.080075, 1.092116, 1.269094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.494328, 0.991408, 1.838805>,  <1.124614, 1.319477, 1.929642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.494328, 0.991408, 1.838805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.783058, 0.841785, 1.605894>,  <0.956296, 0.752012, 1.466147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.783058, 0.841785, 1.605894>,  <0.494328, 0.991408, 1.838805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.783058, 0.841785, 1.605894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180584, -0.914006, 0.363295,
		-0.668099, -0.157085, -0.727302,
		0.721826, -0.374056, -0.582279,
		0.999606, 0.729569, 1.431210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.201520, 0.509210, 1.455078>,  <0.494328, 0.991408, 1.838805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.201520, 0.509210, 1.455078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.593403, 0.434986, 1.424768>,  <0.828533, 0.390452, 1.406582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.593403, 0.434986, 1.424768>,  <0.201520, 0.509210, 1.455078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.593403, 0.434986, 1.424768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142334, -0.910262, 0.388797,
		-0.141119, -0.370122, -0.918202,
		0.979707, -0.185559, -0.075775,
		0.887315, 0.379318, 1.402035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.233473, -0.101866, 1.224545>,  <0.201520, 0.509210, 1.455078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.233473, -0.101866, 1.224545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.590282, -0.052532, 1.398479>,  <0.804368, -0.022932, 1.502840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.590282, -0.052532, 1.398479>,  <0.233473, -0.101866, 1.224545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.590282, -0.052532, 1.398479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073986, -0.909230, 0.409666,
		0.445892, -0.397603, -0.801930,
		0.892024, 0.123335, 0.434836,
		0.857890, -0.015532, 1.528930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.505466, -0.735408, 1.247784>,  <0.233473, -0.101866, 1.224545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.505466, -0.735408, 1.247784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.737900, -0.553833, 1.517979>,  <0.877360, -0.444888, 1.680096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.737900, -0.553833, 1.517979>,  <0.505466, -0.735408, 1.247784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.737900, -0.553833, 1.517979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077735, -0.795243, 0.601286,
		0.810122, -0.401907, -0.426817,
		0.581084, 0.453937, 0.675487,
		0.912225, -0.417652, 1.720625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.510594, 3.824664, 2.669263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.873955, 3.865335, 2.831481>,  <1.091971, 3.889737, 2.928811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.873955, 3.865335, 2.831481>,  <0.510594, 3.824664, 2.669263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.873955, 3.865335, 2.831481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320403, 0.453858, -0.831477,
		-0.268600, 0.885254, 0.379709,
		0.908403, 0.101675, 0.405545,
		1.146476, 3.895837, 2.953144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.475907, 4.603331, 2.944478>,  <0.510594, 3.824664, 2.669263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.475907, 4.603331, 2.944478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.769402, 4.391857, 2.773774>,  <0.945498, 4.264973, 2.671351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.769402, 4.391857, 2.773774>,  <0.475907, 4.603331, 2.944478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.769402, 4.391857, 2.773774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062255, 0.573154, -0.817079,
		0.676577, 0.626088, 0.387630,
		0.733735, -0.528685, -0.426761,
		0.989522, 4.233252, 2.645746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.928778, 5.042301, 2.831939>,  <0.475907, 4.603331, 2.944478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.928778, 5.042301, 2.831939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.989998, 4.745173, 2.571234>,  <1.026730, 4.566895, 2.414812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.989998, 4.745173, 2.571234>,  <0.928778, 5.042301, 2.831939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.989998, 4.745173, 2.571234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244468, 0.667491, -0.703342,
		0.957502, -0.051688, 0.283756,
		0.153051, -0.742821, -0.651761,
		1.035913, 4.522326, 2.375706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.597530, 5.182984, 2.644456>,  <0.928778, 5.042301, 2.831939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.597530, 5.182984, 2.644456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388481, 4.996387, 2.359009>,  <1.263052, 4.884428, 2.187741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388481, 4.996387, 2.359009>,  <1.597530, 5.182984, 2.644456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.388481, 4.996387, 2.359009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308977, 0.676489, -0.668503,
		0.794608, -0.569865, -0.209410,
		-0.522620, -0.466495, -0.713618,
		1.231695, 4.856439, 2.144924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.051914, 5.094267, 2.128862>,  <1.597530, 5.182984, 2.644456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.051914, 5.094267, 2.128862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.697685, 5.056056, 1.947033>,  <1.485148, 5.033129, 1.837936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.697685, 5.056056, 1.947033>,  <2.051914, 5.094267, 2.128862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.697685, 5.056056, 1.947033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254322, 0.719191, -0.646594,
		0.388692, -0.688214, -0.612601,
		-0.885573, -0.095528, -0.454572,
		1.432014, 5.027398, 1.810661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.178836, 5.140260, 1.315631>,  <2.051914, 5.094267, 2.128862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.178836, 5.140260, 1.315631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.790634, 5.217862, 1.372880>,  <1.557713, 5.264423, 1.407229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.790634, 5.217862, 1.372880>,  <2.178836, 5.140260, 1.315631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.790634, 5.217862, 1.372880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074510, 0.805963, -0.587257,
		-0.229283, -0.559272, -0.796646,
		-0.970504, 0.194006, 0.143123,
		1.499483, 5.276064, 1.415816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.941915, 5.365455, 0.637746>,  <2.178836, 5.140260, 1.315631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.941915, 5.365455, 0.637746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.655373, 5.470095, 0.896481>,  <1.483447, 5.532878, 1.051722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.655373, 5.470095, 0.896481>,  <1.941915, 5.365455, 0.637746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.655373, 5.470095, 0.896481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006706, 0.924430, -0.381292,
		-0.697702, -0.277478, -0.660468,
		-0.716357, 0.261599, 0.646838,
		1.440466, 5.548574, 1.090532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.309747, 5.610382, 0.211223>,  <1.941915, 5.365455, 0.637746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.309747, 5.610382, 0.211223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.367722, 5.783020, 0.567362>,  <1.402506, 5.886603, 0.781045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.367722, 5.783020, 0.567362>,  <1.309747, 5.610382, 0.211223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.367722, 5.783020, 0.567362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090343, 0.901863, -0.422471,
		-0.985308, -0.019205, 0.169704,
		0.144936, 0.431596, 0.890348,
		1.411202, 5.912498, 0.834466>
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
