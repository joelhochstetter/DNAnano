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
	<3.360202, 0.351037, 4.245467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760010, 0.339447, 4.241032>,  <3.999894, 0.332493, 4.238370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760010, 0.339447, 4.241032>,  <3.360202, 0.351037, 4.245467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.760010, 0.339447, 4.241032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017339, 0.818088, -0.574832,
		0.025726, 0.574363, 0.818197,
		0.999519, -0.028975, -0.011088,
		4.059865, 0.330755, 4.237705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.748626, 1.061231, 4.390835>,  <3.360202, 0.351037, 4.245467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.748626, 1.061231, 4.390835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.962318, 0.864639, 4.115723>,  <4.090534, 0.746684, 3.950655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.962318, 0.864639, 4.115723>,  <3.748626, 1.061231, 4.390835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.962318, 0.864639, 4.115723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018750, 0.820307, -0.571616,
		0.845130, 0.292480, 0.447450,
		0.534232, -0.491479, -0.687782,
		4.122588, 0.717195, 3.909388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.326738, 1.489910, 4.278464>,  <3.748626, 1.061231, 4.390835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.326738, 1.489910, 4.278464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.235142, 1.251801, 3.970383>,  <4.180184, 1.108935, 3.785534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.235142, 1.251801, 3.970383>,  <4.326738, 1.489910, 4.278464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.235142, 1.251801, 3.970383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153045, 0.759371, -0.632403,
		0.961322, -0.262691, -0.082786,
		-0.228992, -0.595273, -0.770203,
		4.166444, 1.073219, 3.739322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.958739, 1.430091, 3.851006>,  <4.326738, 1.489910, 4.278464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.958739, 1.430091, 3.851006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.615631, 1.409958, 3.646381>,  <4.409766, 1.397878, 3.523607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.615631, 1.409958, 3.646381>,  <4.958739, 1.430091, 3.851006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.615631, 1.409958, 3.646381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176719, 0.905659, -0.385424,
		0.482699, -0.421008, -0.767954,
		-0.857771, -0.050332, -0.511562,
		4.358300, 1.394858, 3.492913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.010215, 1.432767, 3.123104>,  <4.958739, 1.430091, 3.851006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.010215, 1.432767, 3.123104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.657612, 1.584000, 3.236240>,  <4.446050, 1.674739, 3.304122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.657612, 1.584000, 3.236240>,  <5.010215, 1.432767, 3.123104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.657612, 1.584000, 3.236240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226533, 0.864225, -0.449220,
		-0.414281, -0.331917, -0.847468,
		-0.881507, 0.378083, 0.282841,
		4.393160, 1.697424, 3.321093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.794549, 1.708184, 2.586670>,  <5.010215, 1.432767, 3.123104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.794549, 1.708184, 2.586670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.572346, 1.894653, 2.862087>,  <4.439023, 2.006535, 3.027338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.572346, 1.894653, 2.862087>,  <4.794549, 1.708184, 2.586670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.572346, 1.894653, 2.862087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137725, 0.868209, -0.476701,
		-0.820026, -0.169982, -0.546502,
		-0.555508, 0.466175, 0.688543,
		4.405693, 2.034506, 3.068650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.314200, 1.985732, 2.263021>,  <4.794549, 1.708184, 2.586670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.314200, 1.985732, 2.263021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.341652, 2.206863, 2.595207>,  <4.358123, 2.339542, 2.794519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.341652, 2.206863, 2.595207>,  <4.314200, 1.985732, 2.263021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.341652, 2.206863, 2.595207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117806, 0.822113, -0.557003,
		-0.990662, 0.136061, -0.008706,
		0.068629, 0.552828, 0.830465,
		4.362241, 2.372712, 2.844347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.068626, 2.601674, 2.030398>,  <4.314200, 1.985732, 2.263021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.068626, 2.601674, 2.030398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.213417, 2.708618, 2.387608>,  <4.300292, 2.772785, 2.601933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.213417, 2.708618, 2.387608>,  <4.068626, 2.601674, 2.030398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.213417, 2.708618, 2.387608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377908, 0.833646, -0.402765,
		-0.852149, 0.483272, 0.200724,
		0.361978, 0.267361, 0.893023,
		4.322011, 2.788826, 2.655514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.448097, 3.994198, 1.766312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.721882, 4.171051, 1.998184>,  <4.886153, 4.277163, 2.137308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.721882, 4.171051, 1.998184>,  <4.448097, 3.994198, 1.766312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.721882, 4.171051, 1.998184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027178, -0.779094, 0.626318,
		0.728541, -0.444446, -0.521245,
		0.684463, 0.442132, 0.579681,
		4.927221, 4.303691, 2.172088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.924642, 3.493639, 1.919062>,  <4.448097, 3.994198, 1.766312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.924642, 3.493639, 1.919062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.908455, 3.771240, 2.206596>,  <4.898743, 3.937801, 2.379117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.908455, 3.771240, 2.206596>,  <4.924642, 3.493639, 1.919062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.908455, 3.771240, 2.206596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199286, -0.710575, 0.674809,
		0.979106, -0.115946, 0.167059,
		-0.040467, 0.694002, 0.718835,
		4.896315, 3.979441, 2.422247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.374216, 3.219123, 2.397643>,  <4.924642, 3.493639, 1.919062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.374216, 3.219123, 2.397643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.072914, 3.429581, 2.555519>,  <4.892133, 3.555855, 2.650245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.072914, 3.429581, 2.555519>,  <5.374216, 3.219123, 2.397643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.072914, 3.429581, 2.555519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266553, -0.792788, 0.548121,
		0.601296, 0.307668, 0.737416,
		-0.753254, 0.526144, 0.394690,
		4.846938, 3.587424, 2.673926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.412601, 3.000783, 3.147573>,  <5.374216, 3.219123, 2.397643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.412601, 3.000783, 3.147573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.056581, 3.115067, 3.005486>,  <4.842968, 3.183637, 2.920233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.056581, 3.115067, 3.005486>,  <5.412601, 3.000783, 3.147573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.056581, 3.115067, 3.005486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442427, -0.729181, 0.522067,
		-0.109859, 0.621824, 0.775413,
		-0.890050, 0.285710, -0.355219,
		4.789566, 3.200779, 2.898920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.927716, 3.217609, 3.689898>,  <5.412601, 3.000783, 3.147573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.927716, 3.217609, 3.689898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.745510, 3.071136, 3.365326>,  <4.636187, 2.983253, 3.170583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.745510, 3.071136, 3.365326>,  <4.927716, 3.217609, 3.689898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.745510, 3.071136, 3.365326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359207, -0.758387, 0.543894,
		-0.814541, 0.539222, 0.213921,
		-0.455514, -0.366182, -0.811429,
		4.608856, 2.961282, 3.121897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.259617, 2.993125, 3.982506>,  <4.927716, 3.217609, 3.689898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.259617, 2.993125, 3.982506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.254783, 2.815659, 3.624062>,  <4.251883, 2.709178, 3.408995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.254783, 2.815659, 3.624062>,  <4.259617, 2.993125, 3.982506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.254783, 2.815659, 3.624062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451467, -0.797211, 0.400790,
		-0.892206, 0.409408, -0.190667,
		-0.012084, -0.443667, -0.896110,
		4.251158, 2.682558, 3.355228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.606829, 2.741455, 3.881109>,  <4.259617, 2.993125, 3.982506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.606829, 2.741455, 3.881109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.864857, 2.531662, 3.658829>,  <4.019673, 2.405786, 3.525460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.864857, 2.531662, 3.658829>,  <3.606829, 2.741455, 3.881109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.864857, 2.531662, 3.658829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361376, -0.850168, 0.382912,
		-0.673269, -0.046188, -0.737954,
		0.645071, -0.524482, -0.555700,
		4.058378, 2.374317, 3.492118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.234496, 2.130650, 3.701778>,  <3.606829, 2.741455, 3.881109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.234496, 2.130650, 3.701778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.608597, 2.021240, 3.611900>,  <3.833058, 1.955594, 3.557974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.608597, 2.021240, 3.611900>,  <3.234496, 2.130650, 3.701778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.608597, 2.021240, 3.611900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222189, -0.947755, 0.228894,
		-0.275563, -0.164149, -0.947164,
		0.935252, -0.273524, -0.224694,
		3.889173, 1.939183, 3.544492>
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
