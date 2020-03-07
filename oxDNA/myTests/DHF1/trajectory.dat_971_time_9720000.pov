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
	<-0.064272, 1.470214, 4.829977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.039925, 1.499851, 4.444925>,  <0.102443, 1.517633, 4.213894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.039925, 1.499851, 4.444925>,  <-0.064272, 1.470214, 4.829977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.039925, 1.499851, 4.444925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953974, -0.173198, 0.244820,
		-0.148585, -0.982096, -0.115799,
		0.260493, 0.074093, -0.962629,
		0.118072, 1.522079, 4.156137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.329820, 0.895927, 4.632524>,  <-0.064272, 1.470214, 4.829977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.329820, 0.895927, 4.632524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.464523, 1.193651, 4.401839>,  <0.545345, 1.372286, 4.263429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.464523, 1.193651, 4.401839>,  <0.329820, 0.895927, 4.632524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.464523, 1.193651, 4.401839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901174, -0.077252, 0.426517,
		0.272909, -0.663351, -0.696768,
		0.336757, 0.744310, -0.576712,
		0.565551, 1.416944, 4.228826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.983249, 0.687426, 4.351630>,  <0.329820, 0.895927, 4.632524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.983249, 0.687426, 4.351630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.971558, 1.086786, 4.332267>,  <0.964543, 1.326402, 4.320649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.971558, 1.086786, 4.332267>,  <0.983249, 0.687426, 4.351630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.971558, 1.086786, 4.332267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955115, 0.042177, 0.293218,
		0.294791, -0.037664, -0.954819,
		-0.029227, 0.998400, -0.048407,
		0.962789, 1.386306, 4.317745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.577972, 0.970520, 3.906612>,  <0.983249, 0.687426, 4.351630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.577972, 0.970520, 3.906612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.457039, 1.248089, 4.168014>,  <1.384479, 1.414630, 4.324854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.457039, 1.248089, 4.168014>,  <1.577972, 0.970520, 3.906612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.457039, 1.248089, 4.168014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944720, 0.126880, 0.302334,
		0.126880, 0.708783, -0.693922,
		-0.302334, 0.693922, 0.653503,
		1.366339, 1.456266, 4.364064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.046372, 1.450703, 3.828074>,  <1.577972, 0.970520, 3.906612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.046372, 1.450703, 3.828074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.904404, 1.524195, 4.194740>,  <1.819223, 1.568290, 4.414740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.904404, 1.524195, 4.194740>,  <2.046372, 1.450703, 3.828074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.904404, 1.524195, 4.194740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929757, 0.172032, 0.325509,
		-0.097891, 0.967806, -0.231882,
		-0.354921, 0.183730, 0.916665,
		1.797927, 1.579314, 4.469740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.460789, 2.068017, 4.144106>,  <2.046372, 1.450703, 3.828074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.460789, 2.068017, 4.144106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.296158, 1.879324, 4.456022>,  <2.197379, 1.766108, 4.643172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.296158, 1.879324, 4.456022>,  <2.460789, 2.068017, 4.144106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.296158, 1.879324, 4.456022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813523, 0.195539, 0.547673,
		-0.410834, 0.859787, 0.303285,
		-0.411578, -0.471731, 0.779790,
		2.172684, 1.737805, 4.689960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.516272, 2.523722, 4.712621>,  <2.460789, 2.068017, 4.144106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.516272, 2.523722, 4.712621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.457481, 2.169579, 4.889046>,  <2.422207, 1.957092, 4.994901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.457481, 2.169579, 4.889046>,  <2.516272, 2.523722, 4.712621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.457481, 2.169579, 4.889046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805120, 0.151955, 0.573317,
		-0.574613, 0.439373, 0.690486,
		-0.146977, -0.885359, 0.441063,
		2.413388, 1.903971, 5.021365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.526140, 2.624684, 5.442626>,  <2.516272, 2.523722, 4.712621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.526140, 2.624684, 5.442626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.612953, 2.236624, 5.399349>,  <2.665041, 2.003788, 5.373383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.612953, 2.236624, 5.399349>,  <2.526140, 2.624684, 5.442626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.612953, 2.236624, 5.399349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806923, 0.115927, 0.579168,
		-0.549337, -0.213002, 0.807997,
		0.217033, -0.970150, -0.108193,
		2.678063, 1.945579, 5.366891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.118370, 2.043545, 0.598581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.911690, 1.751198, 0.776953>,  <3.787682, 1.575789, 0.883976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.911690, 1.751198, 0.776953>,  <4.118370, 2.043545, 0.598581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.911690, 1.751198, 0.776953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580463, -0.083820, -0.809961,
		0.629353, -0.677352, -0.380932,
		-0.516699, -0.730868, 0.445930,
		3.756680, 1.531937, 0.910732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.799906, 1.562329, 0.012977>,  <4.118370, 2.043545, 0.598581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.799906, 1.562329, 0.012977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.601418, 1.501350, 0.354860>,  <3.482325, 1.464764, 0.559990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.601418, 1.501350, 0.354860>,  <3.799906, 1.562329, 0.012977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.601418, 1.501350, 0.354860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804566, -0.289196, -0.518690,
		0.326250, -0.945053, 0.020852,
		-0.496220, -0.152446, 0.854708,
		3.452551, 1.455617, 0.611273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.461744, 0.928766, -0.053778>,  <3.799906, 1.562329, 0.012977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.461744, 0.928766, -0.053778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.291931, 1.178776, 0.208250>,  <3.190043, 1.328782, 0.365467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.291931, 1.178776, 0.208250>,  <3.461744, 0.928766, -0.053778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.291931, 1.178776, 0.208250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859866, -0.051734, -0.507893,
		-0.283557, -0.778888, 0.559401,
		-0.424531, 0.625026, 0.655069,
		3.164572, 1.366283, 0.404771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.772208, 0.656413, 0.191262>,  <3.461744, 0.928766, -0.053778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.772208, 0.656413, 0.191262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.746552, 1.046547, 0.275745>,  <2.731158, 1.280627, 0.326436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.746552, 1.046547, 0.275745>,  <2.772208, 0.656413, 0.191262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.746552, 1.046547, 0.275745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825896, 0.066920, -0.559837,
		-0.560162, -0.210346, 0.801233,
		-0.064141, 0.975334, 0.211210,
		2.727309, 1.339147, 0.339108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.143667, 0.720529, 0.508856>,  <2.772208, 0.656413, 0.191262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.143667, 0.720529, 0.508856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.230469, 1.083904, 0.365944>,  <2.282550, 1.301929, 0.280197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.230469, 1.083904, 0.365944>,  <2.143667, 0.720529, 0.508856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.230469, 1.083904, 0.365944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851059, -0.003204, -0.525060,
		-0.478129, 0.418007, 0.772439,
		0.217004, 0.908438, -0.357280,
		2.295570, 1.356436, 0.258760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.615842, 1.148248, 0.673470>,  <2.143667, 0.720529, 0.508856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.615842, 1.148248, 0.673470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.783897, 1.327137, 0.357628>,  <1.884731, 1.434470, 0.168123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.783897, 1.327137, 0.357628>,  <1.615842, 1.148248, 0.673470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.783897, 1.327137, 0.357628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895645, 0.064410, -0.440080,
		-0.145955, 0.892101, 0.427613,
		0.420139, 0.447222, -0.789605,
		1.909939, 1.461303, 0.120746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.209695, 1.711581, 0.629092>,  <1.615842, 1.148248, 0.673470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.209695, 1.711581, 0.629092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.401703, 1.686756, 0.279068>,  <1.516907, 1.671861, 0.069054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.401703, 1.686756, 0.279068>,  <1.209695, 1.711581, 0.629092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.401703, 1.686756, 0.279068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876188, 0.015327, -0.481725,
		0.043309, 0.997955, -0.047021,
		0.480019, -0.062063, -0.875060,
		1.545709, 1.668137, 0.016550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.935594, 2.281332, 0.256156>,  <1.209695, 1.711581, 0.629092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.935594, 2.281332, 0.256156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.086044, 2.023117, -0.009720>,  <1.176314, 1.868188, -0.169245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.086044, 2.023117, -0.009720>,  <0.935594, 2.281332, 0.256156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.086044, 2.023117, -0.009720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804139, 0.128965, -0.580283,
		0.460315, 0.752762, -0.470594,
		0.376125, -0.645537, -0.664690,
		1.198882, 1.829456, -0.209127>
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
