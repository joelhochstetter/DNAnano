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
	<3.245085, 3.754806, 3.245518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.970573, 3.482727, 3.348553>,  <2.805866, 3.319479, 3.410374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.970573, 3.482727, 3.348553>,  <3.245085, 3.754806, 3.245518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.970573, 3.482727, 3.348553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666961, 0.447250, -0.595928,
		0.290143, -0.580775, -0.760604,
		-0.686280, -0.680197, 0.257588,
		2.764690, 3.278667, 3.425829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.890646, 3.299788, 2.649579>,  <3.245085, 3.754806, 3.245518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.890646, 3.299788, 2.649579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.670353, 3.393853, 2.969927>,  <2.538177, 3.450292, 3.162135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.670353, 3.393853, 2.969927>,  <2.890646, 3.299788, 2.649579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.670353, 3.393853, 2.969927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684505, 0.421820, -0.594576,
		-0.477645, -0.875652, -0.071340,
		-0.550734, 0.235163, 0.800869,
		2.505133, 3.464402, 3.210187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.190136, 2.987054, 2.492483>,  <2.890646, 3.299788, 2.649579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.190136, 2.987054, 2.492483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.182331, 3.285683, 2.758491>,  <2.177648, 3.464860, 2.918096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.182331, 3.285683, 2.758491>,  <2.190136, 2.987054, 2.492483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.182331, 3.285683, 2.758491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728036, 0.445276, -0.521242,
		-0.685261, -0.494329, 0.534841,
		-0.019512, 0.746570, 0.665020,
		2.176477, 3.509654, 2.957997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.478782, 3.145821, 2.511189>,  <2.190136, 2.987054, 2.492483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.478782, 3.145821, 2.511189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.686344, 3.444639, 2.677398>,  <1.810881, 3.623930, 2.777123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.686344, 3.444639, 2.677398>,  <1.478782, 3.145821, 2.511189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.686344, 3.444639, 2.677398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556613, 0.664197, -0.499024,
		-0.648782, 0.027661, 0.760471,
		0.518906, 0.747046, 0.415523,
		1.842016, 3.668753, 2.802054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.942392, 3.675564, 2.658390>,  <1.478782, 3.145821, 2.511189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.942392, 3.675564, 2.658390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.284153, 3.883410, 2.658815>,  <1.489209, 4.008117, 2.659070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.284153, 3.883410, 2.658815>,  <0.942392, 3.675564, 2.658390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.284153, 3.883410, 2.658815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477798, 0.786445, -0.391425,
		-0.204224, 0.333927, 0.920210,
		0.854401, 0.519613, 0.001061,
		1.540473, 4.039293, 2.659133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.818336, 4.268557, 2.939549>,  <0.942392, 3.675564, 2.658390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.818336, 4.268557, 2.939549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.147057, 4.361117, 2.731281>,  <1.344289, 4.416654, 2.606321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.147057, 4.361117, 2.731281>,  <0.818336, 4.268557, 2.939549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.147057, 4.361117, 2.731281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450192, 0.823830, -0.344427,
		0.349241, 0.517452, 0.781200,
		0.821801, 0.231402, -0.520668,
		1.393597, 4.430538, 2.575081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.877486, 4.903720, 3.058442>,  <0.818336, 4.268557, 2.939549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.877486, 4.903720, 3.058442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.094044, 4.854739, 2.725720>,  <1.223978, 4.825350, 2.526087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.094044, 4.854739, 2.725720>,  <0.877486, 4.903720, 3.058442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.094044, 4.854739, 2.725720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383017, 0.844794, -0.373659,
		0.748459, 0.520892, 0.410464,
		0.541393, -0.122453, -0.831804,
		1.256462, 4.818003, 2.476179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.182823, 5.550437, 3.015154>,  <0.877486, 4.903720, 3.058442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.182823, 5.550437, 3.015154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.177708, 5.354085, 2.666701>,  <1.174639, 5.236274, 2.457629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.177708, 5.354085, 2.666701>,  <1.182823, 5.550437, 3.015154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.177708, 5.354085, 2.666701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228242, 0.849638, -0.475417,
		0.973521, 0.192749, -0.122905,
		-0.012788, -0.490881, -0.871133,
		1.173871, 5.206821, 2.405361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.730191, 6.165089, 1.868854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.737404, 5.973063, 1.518034>,  <0.741732, 5.857849, 1.307542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.737404, 5.973063, 1.518034>,  <0.730191, 6.165089, 1.868854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.737404, 5.973063, 1.518034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409518, -0.796691, 0.444498,
		-0.912124, -0.367183, 0.182228,
		0.018033, -0.480063, -0.877049,
		0.742814, 5.829045, 1.254919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.293458, 5.438246, 1.867383>,  <0.730191, 6.165089, 1.868854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.293458, 5.438246, 1.867383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.602486, 5.491408, 1.619038>,  <0.787902, 5.523305, 1.470030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.602486, 5.491408, 1.619038>,  <0.293458, 5.438246, 1.867383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.602486, 5.491408, 1.619038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576465, -0.556686, 0.598155,
		-0.266128, -0.820023, -0.506695,
		0.772570, 0.132906, -0.620864,
		0.834257, 5.531280, 1.432778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.558778, 4.774072, 1.738373>,  <0.293458, 5.438246, 1.867383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.558778, 4.774072, 1.738373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.846092, 5.052264, 1.730658>,  <1.018481, 5.219180, 1.726028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.846092, 5.052264, 1.730658>,  <0.558778, 4.774072, 1.738373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.846092, 5.052264, 1.730658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591890, -0.596258, 0.542349,
		0.365692, -0.400978, -0.839932,
		0.718287, 0.695480, -0.019289,
		1.061578, 5.260908, 1.724871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.238623, 4.566606, 1.267640>,  <0.558778, 4.774072, 1.738373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.238623, 4.566606, 1.267640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.251320, 4.802282, 1.590588>,  <1.258938, 4.943688, 1.784356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.251320, 4.802282, 1.590588>,  <1.238623, 4.566606, 1.267640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.251320, 4.802282, 1.590588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585820, -0.665451, 0.462591,
		0.809820, 0.458289, -0.366283,
		0.031743, 0.589191, 0.807370,
		1.260843, 4.979040, 1.832799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.924716, 4.578940, 1.463518>,  <1.238623, 4.566606, 1.267640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.924716, 4.578940, 1.463518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.746658, 4.681785, 1.806620>,  <1.639824, 4.743491, 2.012480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.746658, 4.681785, 1.806620>,  <1.924716, 4.578940, 1.463518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.746658, 4.681785, 1.806620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501858, -0.721684, 0.476771,
		0.741610, 0.642702, 0.192220,
		-0.445144, 0.257111, 0.857753,
		1.613115, 4.758918, 2.063946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.432808, 4.800797, 1.981505>,  <1.924716, 4.578940, 1.463518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.432808, 4.800797, 1.981505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.106361, 4.650304, 2.156960>,  <1.910493, 4.560008, 2.262232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.106361, 4.650304, 2.156960>,  <2.432808, 4.800797, 1.981505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.106361, 4.650304, 2.156960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567944, -0.662377, 0.488564,
		0.106729, 0.647847, 0.754257,
		-0.816118, -0.376232, 0.438636,
		1.861526, 4.537434, 2.288550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.614964, 4.733103, 2.680812>,  <2.432808, 4.800797, 1.981505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.614964, 4.733103, 2.680812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.274147, 4.524182, 2.666798>,  <2.069657, 4.398830, 2.658389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.274147, 4.524182, 2.666798>,  <2.614964, 4.733103, 2.680812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.274147, 4.524182, 2.666798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402095, -0.695862, 0.595059,
		-0.335179, 0.492927, 0.802918,
		-0.852041, -0.522301, -0.035035,
		2.018535, 4.367492, 2.656287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.585563, 4.600014, 3.296244>,  <2.614964, 4.733103, 2.680812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.585563, 4.600014, 3.296244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.353127, 4.319031, 3.131862>,  <2.213665, 4.150441, 3.033232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.353127, 4.319031, 3.131862>,  <2.585563, 4.600014, 3.296244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.353127, 4.319031, 3.131862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499022, -0.706438, 0.501918,
		-0.642892, 0.086585, 0.761047,
		-0.581092, -0.702458, -0.410956,
		2.178799, 4.108293, 3.008575>
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
