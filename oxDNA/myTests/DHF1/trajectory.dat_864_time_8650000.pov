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
	<2.303055, 5.347255, 1.877199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.250153, 4.956139, 1.812164>,  <2.218411, 4.721469, 1.773144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.250153, 4.956139, 1.812164>,  <2.303055, 5.347255, 1.877199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.250153, 4.956139, 1.812164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476163, -0.206535, 0.854759,
		-0.869354, 0.035629, 0.492903,
		-0.132255, -0.977790, -0.162587,
		2.210476, 4.662801, 1.763388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.591854, 5.087321, 2.431562>,  <2.303055, 5.347255, 1.877199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.591854, 5.087321, 2.431562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.460304, 4.748718, 2.264101>,  <2.381375, 4.545557, 2.163625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.460304, 4.748718, 2.264101>,  <2.591854, 5.087321, 2.431562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.460304, 4.748718, 2.264101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471415, -0.531283, 0.703922,
		-0.818297, 0.034143, 0.573781,
		-0.328874, -0.846506, -0.418652,
		2.361642, 4.494766, 2.138505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.309107, 4.610145, 2.900109>,  <2.591854, 5.087321, 2.431562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.309107, 4.610145, 2.900109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.458504, 4.408539, 2.588604>,  <2.548142, 4.287575, 2.401701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.458504, 4.408539, 2.588604>,  <2.309107, 4.610145, 2.900109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.458504, 4.408539, 2.588604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383094, -0.680775, 0.624328,
		-0.844833, -0.531521, -0.061178,
		0.373491, -0.504016, -0.778763,
		2.570551, 4.257334, 2.354975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.130496, 3.877817, 2.890824>,  <2.309107, 4.610145, 2.900109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.130496, 3.877817, 2.890824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.503159, 3.937576, 2.758343>,  <2.726756, 3.973432, 2.678854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.503159, 3.937576, 2.758343>,  <2.130496, 3.877817, 2.890824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.503159, 3.937576, 2.758343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354273, -0.575871, 0.736792,
		-0.080654, -0.803774, -0.589442,
		0.931657, 0.149398, -0.331202,
		2.782656, 3.982396, 2.658982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.452691, 3.213965, 2.832281>,  <2.130496, 3.877817, 2.890824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.452691, 3.213965, 2.832281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.764717, 3.461952, 2.866076>,  <2.951933, 3.610744, 2.886352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.764717, 3.461952, 2.866076>,  <2.452691, 3.213965, 2.832281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.764717, 3.461952, 2.866076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358545, -0.553569, 0.751670,
		0.512779, -0.556060, -0.654106,
		0.780066, 0.619967, 0.084486,
		2.998737, 3.647942, 2.891421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.059720, 2.794776, 2.900621>,  <2.452691, 3.213965, 2.832281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.059720, 2.794776, 2.900621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.171104, 3.146713, 3.054678>,  <3.237935, 3.357876, 3.147112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.171104, 3.146713, 3.054678>,  <3.059720, 2.794776, 2.900621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.171104, 3.146713, 3.054678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446314, -0.473617, 0.759270,
		0.850449, -0.039533, -0.524570,
		0.278461, 0.879843, 0.385143,
		3.254643, 3.410666, 3.170221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.801875, 2.796752, 3.085160>,  <3.059720, 2.794776, 2.900621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.801875, 2.796752, 3.085160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.688202, 3.088737, 3.333803>,  <3.619998, 3.263929, 3.482989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.688202, 3.088737, 3.333803>,  <3.801875, 2.796752, 3.085160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.688202, 3.088737, 3.333803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625283, -0.350381, 0.697320,
		0.726817, 0.586846, -0.356861,
		-0.284182, 0.729963, 0.621607,
		3.602947, 3.307726, 3.520285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.438473, 2.967305, 3.436440>,  <3.801875, 2.796752, 3.085160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.438473, 2.967305, 3.436440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.138855, 3.090111, 3.671276>,  <3.959084, 3.163795, 3.812177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.138855, 3.090111, 3.671276>,  <4.438473, 2.967305, 3.436440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.138855, 3.090111, 3.671276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541187, -0.227616, 0.809511,
		0.382163, 0.924085, 0.004342,
		-0.749045, 0.307015, 0.587089,
		3.914142, 3.182215, 3.847403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.369495, 2.492852, 4.641590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.254639, 2.785416, 4.889006>,  <4.185725, 2.960954, 5.037455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.254639, 2.785416, 4.889006>,  <4.369495, 2.492852, 4.641590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.254639, 2.785416, 4.889006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604813, 0.362301, -0.709182,
		-0.742799, -0.577737, 0.338334,
		-0.287142, 0.731408, 0.618540,
		4.168496, 3.004838, 5.074568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.629872, 2.508892, 4.703384>,  <4.369495, 2.492852, 4.641590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.629872, 2.508892, 4.703384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.785294, 2.874695, 4.748465>,  <3.878547, 3.094177, 4.775513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.785294, 2.874695, 4.748465>,  <3.629872, 2.508892, 4.703384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.785294, 2.874695, 4.748465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515632, 0.317170, -0.795944,
		-0.763641, 0.251156, 0.594788,
		0.388555, 0.914507, 0.112700,
		3.901860, 3.149047, 4.782275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.031672, 3.030154, 4.703415>,  <3.629872, 2.508892, 4.703384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.031672, 3.030154, 4.703415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.393150, 3.144608, 4.576002>,  <3.610037, 3.213279, 4.499554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.393150, 3.144608, 4.576002>,  <3.031672, 3.030154, 4.703415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.393150, 3.144608, 4.576002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423063, 0.482066, -0.767223,
		-0.065974, 0.828095, 0.556693,
		0.903695, 0.286133, -0.318532,
		3.664259, 3.230448, 4.480443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.985325, 3.732188, 4.555985>,  <3.031672, 3.030154, 4.703415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.985325, 3.732188, 4.555985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.289635, 3.586594, 4.341049>,  <3.472221, 3.499237, 4.212088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.289635, 3.586594, 4.341049>,  <2.985325, 3.732188, 4.555985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.289635, 3.586594, 4.341049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378194, 0.424211, -0.822809,
		0.527437, 0.829192, 0.185071,
		0.760775, -0.363987, -0.537340,
		3.517867, 3.477397, 4.179847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.336789, 4.283989, 4.262311>,  <2.985325, 3.732188, 4.555985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.336789, 4.283989, 4.262311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.378662, 3.958656, 4.033390>,  <3.403786, 3.763456, 3.896037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.378662, 3.958656, 4.033390>,  <3.336789, 4.283989, 4.262311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.378662, 3.958656, 4.033390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154529, 0.555173, -0.817253,
		0.982427, 0.173990, -0.067566,
		0.104683, -0.813333, -0.572304,
		3.410067, 3.714657, 3.861699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.681551, 4.489354, 3.660847>,  <3.336789, 4.283989, 4.262311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.681551, 4.489354, 3.660847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.534721, 4.151253, 3.505512>,  <3.446624, 3.948392, 3.412311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.534721, 4.151253, 3.505512>,  <3.681551, 4.489354, 3.660847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.534721, 4.151253, 3.505512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187769, 0.476218, -0.859046,
		0.911043, -0.242415, -0.333519,
		-0.367074, -0.845252, -0.388337,
		3.424599, 3.897677, 3.389011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.982251, 4.440935, 3.009872>,  <3.681551, 4.489354, 3.660847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.982251, 4.440935, 3.009872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.673225, 4.189903, 2.971321>,  <3.487810, 4.039285, 2.948190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.673225, 4.189903, 2.971321>,  <3.982251, 4.440935, 3.009872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.673225, 4.189903, 2.971321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160931, 0.340382, -0.926413,
		0.614203, -0.700204, -0.363964,
		-0.772565, -0.627579, -0.096379,
		3.441456, 4.001630, 2.942408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.037633, 4.095192, 2.327255>,  <3.982251, 4.440935, 3.009872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.037633, 4.095192, 2.327255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.648094, 4.068436, 2.414106>,  <3.414371, 4.052382, 2.466217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.648094, 4.068436, 2.414106>,  <4.037633, 4.095192, 2.327255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.648094, 4.068436, 2.414106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224510, 0.429899, -0.874518,
		-0.034845, -0.900396, -0.433674,
		-0.973849, -0.066892, 0.217128,
		3.355940, 4.048368, 2.479245>
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
