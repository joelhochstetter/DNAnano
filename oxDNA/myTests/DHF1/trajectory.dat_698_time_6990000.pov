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
	<5.257275, 2.868148, 0.714559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.217285, 2.516068, 0.900139>,  <5.193292, 2.304819, 1.011487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.217285, 2.516068, 0.900139>,  <5.257275, 2.868148, 0.714559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.217285, 2.516068, 0.900139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770240, -0.226716, -0.596096,
		0.629870, -0.416947, -0.655301,
		-0.099973, -0.880202, 0.463950,
		5.187293, 2.252007, 1.039324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.320574, 2.369722, 0.207440>,  <5.257275, 2.868148, 0.714559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.320574, 2.369722, 0.207440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.093657, 2.203157, 0.491632>,  <4.957506, 2.103219, 0.662146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.093657, 2.203157, 0.491632>,  <5.320574, 2.369722, 0.207440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.093657, 2.203157, 0.491632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680709, -0.248445, -0.689137,
		0.463480, -0.874572, -0.142515,
		-0.567293, -0.416413, 0.710478,
		4.923469, 2.078234, 0.704775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.166628, 1.581726, 0.123744>,  <5.320574, 2.369722, 0.207440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.166628, 1.581726, 0.123744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.871660, 1.790762, 0.294910>,  <4.694680, 1.916183, 0.397611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.871660, 1.790762, 0.294910>,  <5.166628, 1.581726, 0.123744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.871660, 1.790762, 0.294910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607282, -0.235643, -0.758736,
		-0.295678, -0.819369, 0.491130,
		-0.737416, 0.522596, 0.427914,
		4.650434, 1.947539, 0.423286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.523912, 1.243013, 0.204236>,  <5.166628, 1.581726, 0.123744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.523912, 1.243013, 0.204236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.441900, 1.631998, 0.159911>,  <4.392693, 1.865389, 0.133316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.441900, 1.631998, 0.159911>,  <4.523912, 1.243013, 0.204236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.441900, 1.631998, 0.159911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563647, -0.209874, -0.798909,
		-0.800165, -0.101341, 0.591156,
		-0.205030, 0.972462, -0.110813,
		4.380391, 1.923737, 0.126667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.785669, 1.361715, 0.117288>,  <4.523912, 1.243013, 0.204236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.785669, 1.361715, 0.117288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.915380, 1.711943, -0.025945>,  <3.993207, 1.922079, -0.111884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.915380, 1.711943, -0.025945>,  <3.785669, 1.361715, 0.117288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.915380, 1.711943, -0.025945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728107, -0.010636, -0.685382,
		-0.603907, 0.482976, 0.634059,
		0.324279, 0.875569, -0.358081,
		4.012664, 1.974613, -0.133369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.174662, 1.761275, -0.008631>,  <3.785669, 1.361715, 0.117288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.174662, 1.761275, -0.008631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.451859, 1.918386, -0.250454>,  <3.618176, 2.012653, -0.395548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.451859, 1.918386, -0.250454>,  <3.174662, 1.761275, -0.008631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.451859, 1.918386, -0.250454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667584, 0.032987, -0.743803,
		-0.272207, 0.919041, 0.285072,
		0.692990, 0.392778, -0.604558,
		3.659756, 2.036220, -0.431821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.826305, 2.361407, -0.252230>,  <3.174662, 1.761275, -0.008631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.826305, 2.361407, -0.252230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.134604, 2.282684, -0.494624>,  <3.319582, 2.235451, -0.640061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.134604, 2.282684, -0.494624>,  <2.826305, 2.361407, -0.252230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.134604, 2.282684, -0.494624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582256, 0.168624, -0.795327,
		0.258710, 0.965833, 0.015374,
		0.770745, -0.196807, -0.605986,
		3.365827, 2.223642, -0.676420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.937629, 2.877908, -0.765070>,  <2.826305, 2.361407, -0.252230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.937629, 2.877908, -0.765070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.104914, 2.567371, -0.953704>,  <3.205284, 2.381049, -1.066884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.104914, 2.567371, -0.953704>,  <2.937629, 2.877908, -0.765070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.104914, 2.567371, -0.953704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568650, 0.181084, -0.802400,
		0.708333, 0.603739, -0.365736,
		0.418211, -0.776342, -0.471584,
		3.230377, 2.334469, -1.095179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.888522, 1.720514, 3.250011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.204762, 1.671560, 3.010019>,  <2.394505, 1.642187, 2.866024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.204762, 1.671560, 3.010019>,  <1.888522, 1.720514, 3.250011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.204762, 1.671560, 3.010019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609196, 0.058105, 0.790888,
		-0.061932, -0.990780, 0.120495,
		0.790598, -0.122386, -0.599981,
		2.441941, 1.634844, 2.830025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.594845, 1.488298, 3.592271>,  <1.888522, 1.720514, 3.250011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.594845, 1.488298, 3.592271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.854210, 1.668661, 3.346916>,  <3.009829, 1.776878, 3.199703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.854210, 1.668661, 3.346916>,  <2.594845, 1.488298, 3.592271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.854210, 1.668661, 3.346916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624345, 0.146066, 0.767371,
		0.435607, -0.880539, -0.186810,
		0.648413, 0.450906, -0.613388,
		3.048734, 1.803933, 3.162900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.257057, 1.175783, 3.494358>,  <2.594845, 1.488298, 3.592271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.257057, 1.175783, 3.494358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.296970, 1.567095, 3.421683>,  <3.320918, 1.801883, 3.378078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.296970, 1.567095, 3.421683>,  <3.257057, 1.175783, 3.494358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.296970, 1.567095, 3.421683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747742, 0.046743, 0.662342,
		0.656449, -0.201946, -0.726838,
		0.099782, 0.978281, -0.181688,
		3.326905, 1.860579, 3.367176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.029952, 1.443281, 3.363461>,  <3.257057, 1.175783, 3.494358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.029952, 1.443281, 3.363461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.798805, 1.729337, 3.520761>,  <3.660117, 1.900971, 3.615140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.798805, 1.729337, 3.520761>,  <4.029952, 1.443281, 3.363461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.798805, 1.729337, 3.520761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693910, 0.176892, 0.697996,
		0.429603, 0.676227, -0.598463,
		-0.577867, 0.715141, 0.393248,
		3.625445, 1.943879, 3.638735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.381910, 2.021878, 3.472867>,  <4.029952, 1.443281, 3.363461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.381910, 2.021878, 3.472867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.077209, 2.074666, 3.726582>,  <3.894389, 2.106338, 3.878810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.077209, 2.074666, 3.726582>,  <4.381910, 2.021878, 3.472867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.077209, 2.074666, 3.726582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647532, 0.186710, 0.738811,
		-0.020927, 0.973511, -0.227681,
		-0.761751, 0.131969, 0.634287,
		3.848684, 2.114256, 3.916867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.518151, 2.668816, 3.814053>,  <4.381910, 2.021878, 3.472867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.518151, 2.668816, 3.814053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.239529, 2.495060, 4.042480>,  <4.072355, 2.390807, 4.179536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.239529, 2.495060, 4.042480>,  <4.518151, 2.668816, 3.814053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.239529, 2.495060, 4.042480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485404, 0.300835, 0.820903,
		-0.528387, 0.849002, 0.001306,
		-0.696555, -0.434388, 0.571067,
		4.030562, 2.364744, 4.213800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.363507, 3.076221, 4.354615>,  <4.518151, 2.668816, 3.814053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.363507, 3.076221, 4.354615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.284161, 2.709908, 4.494324>,  <4.236553, 2.490119, 4.578150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.284161, 2.709908, 4.494324>,  <4.363507, 3.076221, 4.354615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.284161, 2.709908, 4.494324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438364, 0.235832, 0.867306,
		-0.876635, 0.325152, 0.354665,
		-0.198365, -0.915783, 0.349274,
		4.224651, 2.435173, 4.599106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.216632, 3.236100, 5.057757>,  <4.363507, 3.076221, 4.354615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.216632, 3.236100, 5.057757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.293720, 2.844404, 5.032625>,  <4.339973, 2.609387, 5.017545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.293720, 2.844404, 5.032625>,  <4.216632, 3.236100, 5.057757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.293720, 2.844404, 5.032625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467340, 0.035296, 0.883373,
		-0.862816, -0.199608, 0.464440,
		0.192721, -0.979240, -0.062831,
		4.351537, 2.550632, 5.013775>
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
