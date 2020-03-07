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
	<0.981811, 1.075737, 3.800884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.002190, 1.467613, 3.723312>,  <1.014417, 1.702739, 3.676769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.002190, 1.467613, 3.723312>,  <0.981811, 1.075737, 3.800884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.002190, 1.467613, 3.723312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627706, 0.119621, 0.769205,
		0.776782, -0.160919, -0.608864,
		0.050946, 0.979692, -0.193929,
		1.017474, 1.761521, 3.665133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.713116, 1.369920, 3.700702>,  <0.981811, 1.075737, 3.800884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.713116, 1.369920, 3.700702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.465187, 1.625542, 3.882881>,  <1.316430, 1.778914, 3.992189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.465187, 1.625542, 3.882881>,  <1.713116, 1.369920, 3.700702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.465187, 1.625542, 3.882881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607786, 0.023800, 0.793744,
		0.496405, 0.768794, -0.403159,
		-0.619821, 0.639053, 0.455448,
		1.279241, 1.817258, 4.019516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.280036, 1.679664, 4.177614>,  <1.713116, 1.369920, 3.700702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.280036, 1.679664, 4.177614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.915325, 1.800980, 4.288376>,  <1.696498, 1.873769, 4.354833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.915325, 1.800980, 4.288376>,  <2.280036, 1.679664, 4.177614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.915325, 1.800980, 4.288376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327757, 0.131111, 0.935620,
		0.247459, 0.943835, -0.218950,
		-0.911778, 0.303290, 0.276904,
		1.641792, 1.891967, 4.371447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.278121, 2.397478, 4.443185>,  <2.280036, 1.679664, 4.177614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.278121, 2.397478, 4.443185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.968914, 2.193520, 4.594154>,  <1.783390, 2.071144, 4.684736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.968914, 2.193520, 4.594154>,  <2.278121, 2.397478, 4.443185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.968914, 2.193520, 4.594154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261439, 0.286016, 0.921870,
		-0.578007, 0.811296, -0.087788,
		-0.773018, -0.509896, 0.377423,
		1.737009, 2.040551, 4.707381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.820253, 2.803937, 4.952430>,  <2.278121, 2.397478, 4.443185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.820253, 2.803937, 4.952430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.869339, 2.411957, 5.015213>,  <1.898791, 2.176768, 5.052883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.869339, 2.411957, 5.015213>,  <1.820253, 2.803937, 4.952430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.869339, 2.411957, 5.015213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479461, 0.197011, 0.855163,
		-0.868941, -0.029687, 0.494025,
		0.122716, -0.979952, 0.156957,
		1.906154, 2.117971, 5.062300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.670037, 2.606974, 5.705025>,  <1.820253, 2.803937, 4.952430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.670037, 2.606974, 5.705025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.901798, 2.312820, 5.564453>,  <2.040855, 2.136328, 5.480110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.901798, 2.312820, 5.564453>,  <1.670037, 2.606974, 5.705025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.901798, 2.312820, 5.564453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589860, 0.080787, 0.803454,
		-0.562457, -0.672817, 0.480582,
		0.579403, -0.735384, -0.351429,
		2.075619, 2.092205, 5.459024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.842916, 2.199414, 6.314018>,  <1.670037, 2.606974, 5.705025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.842916, 2.199414, 6.314018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.111874, 2.103149, 6.034027>,  <2.273248, 2.045390, 5.866033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.111874, 2.103149, 6.034027>,  <1.842916, 2.199414, 6.314018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.111874, 2.103149, 6.034027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720033, -0.006537, 0.693909,
		-0.171574, -0.970587, 0.168890,
		0.672394, -0.240663, -0.699976,
		2.313592, 2.030951, 5.824034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.192339, 1.582640, 6.557383>,  <1.842916, 2.199414, 6.314018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.192339, 1.582640, 6.557383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.442581, 1.692886, 6.265450>,  <2.592726, 1.759034, 6.090290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.442581, 1.692886, 6.265450>,  <2.192339, 1.582640, 6.557383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.442581, 1.692886, 6.265450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768049, -0.053523, 0.638151,
		0.136821, -0.959777, -0.245170,
		0.625605, 0.275615, -0.729832,
		2.630263, 1.775571, 6.046500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.702675, 1.350389, 2.357616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.916139, 1.637413, 2.178589>,  <4.044217, 1.809628, 2.071173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.916139, 1.637413, 2.178589>,  <3.702675, 1.350389, 2.357616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.916139, 1.637413, 2.178589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707646, 0.089092, -0.700928,
		-0.463083, 0.690775, 0.555323,
		0.533658, 0.717560, -0.447567,
		4.076236, 1.852681, 2.044319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.305796, 1.941699, 2.106435>,  <3.702675, 1.350389, 2.357616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.305796, 1.941699, 2.106435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.623790, 1.980545, 1.866913>,  <3.814586, 2.003853, 1.723199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.623790, 1.980545, 1.866913>,  <3.305796, 1.941699, 2.106435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.623790, 1.980545, 1.866913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594000, -0.075750, -0.800891,
		-0.123138, 0.992386, -0.002533,
		0.794985, 0.097115, -0.598805,
		3.862285, 2.009680, 1.687271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.280859, 2.626302, 1.534611>,  <3.305796, 1.941699, 2.106435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.280859, 2.626302, 1.534611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.437463, 2.273819, 1.428635>,  <3.531425, 2.062329, 1.365049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.437463, 2.273819, 1.428635>,  <3.280859, 2.626302, 1.534611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.437463, 2.273819, 1.428635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721337, -0.115151, -0.682944,
		0.571307, 0.458491, -0.680731,
		0.391510, -0.881208, -0.264940,
		3.554916, 2.009457, 1.349153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.431589, 2.683996, 0.858728>,  <3.280859, 2.626302, 1.534611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.431589, 2.683996, 0.858728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.359948, 2.303879, 0.960602>,  <3.316964, 2.075808, 1.021726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.359948, 2.303879, 0.960602>,  <3.431589, 2.683996, 0.858728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.359948, 2.303879, 0.960602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666487, -0.073224, -0.741912,
		0.723683, -0.302622, -0.620244,
		-0.179102, -0.950294, 0.254685,
		3.306217, 2.018791, 1.037007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.512183, 2.287397, 0.211505>,  <3.431589, 2.683996, 0.858728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.512183, 2.287397, 0.211505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.250384, 2.123604, 0.465736>,  <3.093305, 2.025328, 0.618275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.250384, 2.123604, 0.465736>,  <3.512183, 2.287397, 0.211505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.250384, 2.123604, 0.465736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652461, -0.118838, -0.748446,
		0.382007, -0.904544, -0.189394,
		-0.654495, -0.409484, 0.635577,
		3.054036, 2.000759, 0.656410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.273503, 1.742014, -0.035928>,  <3.512183, 2.287397, 0.211505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.273503, 1.742014, -0.035928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.967811, 1.824867, 0.208382>,  <2.784395, 1.874579, 0.354968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.967811, 1.824867, 0.208382>,  <3.273503, 1.742014, -0.035928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.967811, 1.824867, 0.208382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644722, -0.220595, -0.731896,
		-0.016866, -0.953118, 0.302129,
		-0.764232, 0.207134, 0.610775,
		2.738541, 1.887008, 0.391614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.793842, 1.133175, -0.017919>,  <3.273503, 1.742014, -0.035928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.793842, 1.133175, -0.017919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.578036, 1.447479, 0.103081>,  <2.448553, 1.636062, 0.175680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.578036, 1.447479, 0.103081>,  <2.793842, 1.133175, -0.017919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.578036, 1.447479, 0.103081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743723, -0.276313, -0.608709,
		-0.394717, -0.553380, 0.733464,
		-0.539513, 0.785761, 0.302496,
		2.416182, 1.683207, 0.193830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.154538, 0.833760, -0.110584>,  <2.793842, 1.133175, -0.017919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.154538, 0.833760, -0.110584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.088107, 1.224365, -0.055679>,  <2.048249, 1.458728, -0.022737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.088107, 1.224365, -0.055679>,  <2.154538, 0.833760, -0.110584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.088107, 1.224365, -0.055679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763973, -0.039401, -0.644044,
		-0.623510, -0.211824, 0.752573,
		-0.166076, 0.976513, 0.137261,
		2.038284, 1.517319, -0.014501>
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
