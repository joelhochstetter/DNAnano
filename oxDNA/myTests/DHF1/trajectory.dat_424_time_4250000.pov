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
	<3.851246, 2.828999, 2.954133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.621967, 3.077999, 2.740990>,  <3.484400, 3.227399, 2.613104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.621967, 3.077999, 2.740990>,  <3.851246, 2.828999, 2.954133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.621967, 3.077999, 2.740990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718161, -0.068506, 0.692497,
		0.394576, 0.779615, 0.486323,
		-0.573197, 0.622501, -0.532858,
		3.450008, 3.264750, 2.581132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.561570, 3.397960, 3.279779>,  <3.851246, 2.828999, 2.954133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.561570, 3.397960, 3.279779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.289486, 3.313755, 2.998924>,  <3.126235, 3.263232, 2.830411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.289486, 3.313755, 2.998924>,  <3.561570, 3.397960, 3.279779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.289486, 3.313755, 2.998924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703001, -0.083950, 0.706216,
		-0.207613, 0.973980, -0.090888,
		-0.680210, -0.210514, -0.702138,
		3.085423, 3.250601, 2.788283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.008425, 3.819875, 3.463255>,  <3.561570, 3.397960, 3.279779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.008425, 3.819875, 3.463255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.875710, 3.495197, 3.270977>,  <2.796080, 3.300390, 3.155611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.875710, 3.495197, 3.270977>,  <3.008425, 3.819875, 3.463255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.875710, 3.495197, 3.270977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660946, -0.163561, 0.732392,
		-0.673102, 0.560713, -0.482219,
		-0.331789, -0.811695, -0.480694,
		2.776173, 3.251689, 3.126769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.221741, 3.891166, 3.502410>,  <3.008425, 3.819875, 3.463255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.221741, 3.891166, 3.502410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.295403, 3.505241, 3.427338>,  <2.339600, 3.273686, 3.382294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.295403, 3.505241, 3.427338>,  <2.221741, 3.891166, 3.502410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.295403, 3.505241, 3.427338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722120, -0.262346, 0.640092,
		-0.666806, 0.017652, -0.745022,
		0.184155, -0.964812, -0.187681,
		2.350649, 3.215798, 3.371033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.598592, 3.542833, 3.265741>,  <2.221741, 3.891166, 3.502410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.598592, 3.542833, 3.265741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825970, 3.272266, 3.453072>,  <1.962396, 3.109926, 3.565470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825970, 3.272266, 3.453072>,  <1.598592, 3.542833, 3.265741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.825970, 3.272266, 3.453072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734783, -0.161340, 0.658834,
		-0.370088, -0.718629, -0.588734,
		0.568444, -0.676419, 0.468326,
		1.996503, 3.069341, 3.593570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.190639, 2.917260, 3.275008>,  <1.598592, 3.542833, 3.265741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.190639, 2.917260, 3.275008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.469067, 2.876480, 3.559288>,  <1.636123, 2.852012, 3.729856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.469067, 2.876480, 3.559288>,  <1.190639, 2.917260, 3.275008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.469067, 2.876480, 3.559288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716177, -0.168592, 0.677250,
		0.050774, -0.980399, -0.190365,
		0.696070, -0.101949, 0.710700,
		1.677888, 2.845895, 3.772498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.902409, 2.333014, 3.711828>,  <1.190639, 2.917260, 3.275008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.902409, 2.333014, 3.711828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.169159, 2.513103, 3.949341>,  <1.329209, 2.621157, 4.091848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.169159, 2.513103, 3.949341>,  <0.902409, 2.333014, 3.711828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.169159, 2.513103, 3.949341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584490, -0.178235, 0.791583,
		0.462223, -0.874945, 0.144292,
		0.666874, 0.450225, 0.593781,
		1.369221, 2.648171, 4.127475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.070641, 1.789324, 4.240331>,  <0.902409, 2.333014, 3.711828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.070641, 1.789324, 4.240331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.164745, 2.156982, 4.366711>,  <1.221208, 2.377577, 4.442539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.164745, 2.156982, 4.366711>,  <1.070641, 1.789324, 4.240331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.164745, 2.156982, 4.366711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527454, -0.152303, 0.835821,
		0.816361, -0.363284, 0.448976,
		0.235260, 0.919145, 0.315950,
		1.235323, 2.432726, 4.461496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.138080, 2.608610, 4.998609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.358469, 2.786957, 5.280781>,  <0.490702, 2.893965, 5.450084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.358469, 2.786957, 5.280781>,  <0.138080, 2.608610, 4.998609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.358469, 2.786957, 5.280781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765080, 0.067721, -0.640364,
		-0.333290, 0.892533, -0.303813,
		0.550972, 0.445868, 0.705431,
		0.523760, 2.920717, 5.492410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.400140, 3.264804, 4.738405>,  <0.138080, 2.608610, 4.998609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.400140, 3.264804, 4.738405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.632883, 3.109131, 5.024055>,  <0.772529, 3.015727, 5.195446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.632883, 3.109131, 5.024055>,  <0.400140, 3.264804, 4.738405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.632883, 3.109131, 5.024055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798846, 0.108740, -0.591625,
		0.152596, 0.914720, 0.374169,
		0.581858, -0.389183, 0.714127,
		0.807441, 2.992376, 5.238294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.063294, 3.660219, 4.837562>,  <0.400140, 3.264804, 4.738405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.063294, 3.660219, 4.837562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.098735, 3.275948, 4.942822>,  <1.119999, 3.045385, 5.005977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.098735, 3.275948, 4.942822>,  <1.063294, 3.660219, 4.837562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.098735, 3.275948, 4.942822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760099, -0.105529, -0.641180,
		0.643738, 0.256829, 0.720861,
		0.088602, -0.960678, 0.263149,
		1.125316, 2.987744, 5.021766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.752349, 3.488097, 5.092037>,  <1.063294, 3.660219, 4.837562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.752349, 3.488097, 5.092037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.601019, 3.153885, 4.932659>,  <1.510222, 2.953357, 4.837032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.601019, 3.153885, 4.932659>,  <1.752349, 3.488097, 5.092037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.601019, 3.153885, 4.932659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721365, 0.003628, -0.692545,
		0.580089, -0.549430, 0.601351,
		-0.378324, -0.835531, -0.398445,
		1.487522, 2.903225, 4.813126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.368217, 3.161084, 4.902072>,  <1.752349, 3.488097, 5.092037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.368217, 3.161084, 4.902072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.069694, 3.011536, 4.681801>,  <1.890580, 2.921807, 4.549638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.069694, 3.011536, 4.681801>,  <2.368217, 3.161084, 4.902072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.069694, 3.011536, 4.681801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605150, -0.036619, -0.795269,
		0.277163, -0.926757, 0.253577,
		-0.746307, -0.373872, -0.550677,
		1.845801, 2.899374, 4.516598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.708337, 2.728500, 4.524901>,  <2.368217, 3.161084, 4.902072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.708337, 2.728500, 4.524901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.368633, 2.736458, 4.313862>,  <2.164810, 2.741233, 4.187238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.368633, 2.736458, 4.313862>,  <2.708337, 2.728500, 4.524901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.368633, 2.736458, 4.313862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517336, -0.168223, -0.839085,
		-0.105445, -0.985548, 0.132575,
		-0.849261, 0.019892, -0.527598,
		2.113854, 2.742426, 4.155582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.670602, 2.134924, 4.100951>,  <2.708337, 2.728500, 4.524901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.670602, 2.134924, 4.100951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.480535, 2.449226, 3.942558>,  <2.366494, 2.637808, 3.847522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.480535, 2.449226, 3.942558>,  <2.670602, 2.134924, 4.100951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.480535, 2.449226, 3.942558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532734, -0.101261, -0.840203,
		-0.700292, -0.610191, -0.370483,
		-0.475169, 0.785756, -0.395983,
		2.337984, 2.684953, 3.823764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.852431, 2.030568, 3.437126>,  <2.670602, 2.134924, 4.100951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.852431, 2.030568, 3.437126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.713316, 2.405388, 3.424591>,  <2.629848, 2.630280, 3.417070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.713316, 2.405388, 3.424591>,  <2.852431, 2.030568, 3.437126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.713316, 2.405388, 3.424591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606207, 0.199245, -0.769944,
		-0.715233, -0.286773, -0.637341,
		-0.347787, 0.937050, -0.031337,
		2.608980, 2.686503, 3.415190>
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
