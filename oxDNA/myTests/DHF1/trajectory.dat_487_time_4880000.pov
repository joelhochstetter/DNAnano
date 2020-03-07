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
	<4.492610, 2.590476, 3.956132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.582270, 2.824944, 3.644707>,  <4.636066, 2.965624, 3.457851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.582270, 2.824944, 3.644707>,  <4.492610, 2.590476, 3.956132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.582270, 2.824944, 3.644707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345414, 0.794814, 0.498959,
		0.911288, 0.157086, 0.380628,
		0.224149, 0.586170, -0.778564,
		4.649515, 3.000794, 3.411137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.989447, 3.091221, 4.111056>,  <4.492610, 2.590476, 3.956132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.989447, 3.091221, 4.111056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.756070, 3.225033, 3.815033>,  <4.616044, 3.305320, 3.637419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.756070, 3.225033, 3.815033>,  <4.989447, 3.091221, 4.111056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.756070, 3.225033, 3.815033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259285, 0.786818, 0.560079,
		0.769654, 0.518660, -0.372325,
		-0.583442, 0.334529, -0.740058,
		4.581037, 3.325392, 3.593015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.156523, 3.773891, 3.832880>,  <4.989447, 3.091221, 4.111056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.156523, 3.773891, 3.832880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.761431, 3.717529, 3.805939>,  <4.524375, 3.683712, 3.789774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.761431, 3.717529, 3.805939>,  <5.156523, 3.773891, 3.832880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.761431, 3.717529, 3.805939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156128, 0.901308, 0.404063,
		0.003771, 0.409621, -0.912248,
		-0.987729, -0.140904, -0.067352,
		4.465112, 3.675258, 3.785733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.770395, 4.428903, 3.637777>,  <5.156523, 3.773891, 3.832880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.770395, 4.428903, 3.637777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498853, 4.208633, 3.832062>,  <4.335928, 4.076472, 3.948633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498853, 4.208633, 3.832062>,  <4.770395, 4.428903, 3.637777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.498853, 4.208633, 3.832062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279934, 0.805622, 0.522120,
		-0.678818, 0.218476, -0.701052,
		-0.678854, -0.550673, 0.485712,
		4.295197, 4.043432, 3.977775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.038063, 4.727190, 3.500797>,  <4.770395, 4.428903, 3.637777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.038063, 4.727190, 3.500797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.035751, 4.520546, 3.843277>,  <4.034364, 4.396559, 4.048765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.035751, 4.520546, 3.843277>,  <4.038063, 4.727190, 3.500797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.035751, 4.520546, 3.843277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405450, 0.783888, 0.470244,
		-0.914099, -0.344429, -0.213990,
		-0.005779, -0.516612, 0.856200,
		4.034018, 4.365562, 4.100137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.415913, 4.866285, 3.756706>,  <4.038063, 4.727190, 3.500797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.415913, 4.866285, 3.756706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.634699, 4.753853, 4.072128>,  <3.765971, 4.686393, 4.261382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.634699, 4.753853, 4.072128>,  <3.415913, 4.866285, 3.756706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.634699, 4.753853, 4.072128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417354, 0.724989, 0.547912,
		-0.725702, -0.628796, 0.279234,
		0.546966, -0.281081, 0.788557,
		3.798789, 4.669528, 4.308695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.983158, 4.909553, 4.285373>,  <3.415913, 4.866285, 3.756706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.983158, 4.909553, 4.285373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.349194, 4.921913, 4.446198>,  <3.568816, 4.929329, 4.542692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.349194, 4.921913, 4.446198>,  <2.983158, 4.909553, 4.285373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.349194, 4.921913, 4.446198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271422, 0.784586, 0.557454,
		-0.298225, -0.619249, 0.726355,
		0.915091, 0.030902, 0.402061,
		3.623721, 4.931184, 4.566816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.926798, 4.849524, 5.028306>,  <2.983158, 4.909553, 4.285373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.926798, 4.849524, 5.028306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.269766, 5.040257, 4.950882>,  <3.475546, 5.154696, 4.904427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.269766, 5.040257, 4.950882>,  <2.926798, 4.849524, 5.028306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.269766, 5.040257, 4.950882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351516, 0.817370, 0.456445,
		0.375858, -0.323325, 0.868442,
		0.857419, 0.476830, -0.193562,
		3.526992, 5.183305, 4.892813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.677257, 1.849984, 4.979910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.805958, 1.599026, 5.263557>,  <3.883178, 1.448451, 5.433746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.805958, 1.599026, 5.263557>,  <3.677257, 1.849984, 4.979910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.805958, 1.599026, 5.263557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206584, -0.777419, -0.594090,
		0.924012, 0.044658, -0.379747,
		0.321753, -0.627396, 0.709119,
		3.902484, 1.410807, 5.476293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.793441, 1.285329, 4.686689>,  <3.677257, 1.849984, 4.979910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.793441, 1.285329, 4.686689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.902199, 1.106468, 5.027542>,  <3.967453, 0.999152, 5.232054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.902199, 1.106468, 5.027542>,  <3.793441, 1.285329, 4.686689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.902199, 1.106468, 5.027542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013719, -0.887202, -0.461177,
		0.962229, 0.113701, -0.247360,
		0.271894, -0.447152, 0.852132,
		3.983767, 0.972323, 5.283182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.445011, 1.012781, 4.557582>,  <3.793441, 1.285329, 4.686689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.445011, 1.012781, 4.557582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.221828, 0.814533, 4.823830>,  <4.087919, 0.695585, 4.983578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.221828, 0.814533, 4.823830>,  <4.445011, 1.012781, 4.557582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.221828, 0.814533, 4.823830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218208, -0.861470, -0.458536,
		0.800669, -0.110600, 0.588810,
		-0.557956, -0.495618, 0.665618,
		4.054441, 0.665848, 5.023515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.789838, 0.372725, 4.741096>,  <4.445011, 1.012781, 4.557582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.789838, 0.372725, 4.741096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.401981, 0.308777, 4.815109>,  <4.169267, 0.270408, 4.859517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.401981, 0.308777, 4.815109>,  <4.789838, 0.372725, 4.741096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.401981, 0.308777, 4.815109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098504, -0.947940, -0.302832,
		0.223813, -0.275412, 0.934910,
		-0.969642, -0.159870, 0.185032,
		4.111089, 0.260816, 4.870619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.751251, -0.164808, 5.252791>,  <4.789838, 0.372725, 4.741096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.751251, -0.164808, 5.252791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.399391, -0.150620, 5.063072>,  <4.188275, -0.142106, 4.949241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.399391, -0.150620, 5.063072>,  <4.751251, -0.164808, 5.252791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.399391, -0.150620, 5.063072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097564, -0.962553, -0.252931,
		-0.465508, -0.268765, 0.843248,
		-0.879650, 0.035471, -0.474297,
		4.135496, -0.139978, 4.920783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.331096, -0.747252, 5.452650>,  <4.751251, -0.164808, 5.252791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.331096, -0.747252, 5.452650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.189133, -0.624256, 5.099495>,  <4.103955, -0.550459, 4.887602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.189133, -0.624256, 5.099495>,  <4.331096, -0.747252, 5.452650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.189133, -0.624256, 5.099495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212576, -0.893087, -0.396493,
		-0.910415, -0.328398, 0.251595,
		-0.354904, 0.307490, -0.882889,
		4.082661, -0.532009, 4.834629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.048882, -1.311308, 5.182378>,  <4.331096, -0.747252, 5.452650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.048882, -1.311308, 5.182378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.075539, -1.086651, 4.852501>,  <4.091533, -0.951857, 4.654575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.075539, -1.086651, 4.852501>,  <4.048882, -1.311308, 5.182378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.075539, -1.086651, 4.852501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143115, -0.823363, -0.549173,
		-0.987460, -0.081427, -0.135251,
		0.066643, 0.561643, -0.824692,
		4.095531, -0.918158, 4.605093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.618898, -1.610408, 4.797134>,  <4.048882, -1.311308, 5.182378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.618898, -1.610408, 4.797134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.860977, -1.418652, 4.542915>,  <4.006225, -1.303598, 4.390384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.860977, -1.418652, 4.542915>,  <3.618898, -1.610408, 4.797134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.860977, -1.418652, 4.542915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177949, -0.859615, -0.478953,
		-0.775931, 0.176766, -0.605545,
		0.605199, 0.479391, -0.635546,
		4.042537, -1.274834, 4.352252>
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
