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
	<4.009865, 4.390249, 3.611301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.679974, 4.168478, 3.655901>,  <3.482039, 4.035415, 3.682661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.679974, 4.168478, 3.655901>,  <4.009865, 4.390249, 3.611301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.679974, 4.168478, 3.655901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515694, -0.818217, -0.254128,
		0.232126, -0.152086, 0.960722,
		-0.824729, -0.554428, 0.111500,
		3.432555, 4.002150, 3.689351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.893574, 4.837984, 4.251792>,  <4.009865, 4.390249, 3.611301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.893574, 4.837984, 4.251792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.700565, 4.530363, 4.419474>,  <3.584760, 4.345790, 4.520082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.700565, 4.530363, 4.419474>,  <3.893574, 4.837984, 4.251792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.700565, 4.530363, 4.419474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849671, -0.294775, 0.437227,
		-0.212680, 0.567156, 0.795677,
		-0.482521, -0.769053, 0.419203,
		3.555809, 4.299647, 4.545235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.908542, 4.792501, 5.008521>,  <3.893574, 4.837984, 4.251792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.908542, 4.792501, 5.008521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.889633, 4.431963, 4.836316>,  <3.878288, 4.215640, 4.732993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.889633, 4.431963, 4.836316>,  <3.908542, 4.792501, 5.008521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.889633, 4.431963, 4.836316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754118, -0.314836, 0.576355,
		-0.655036, -0.297412, 0.694604,
		-0.047272, -0.901346, -0.430512,
		3.875452, 4.161559, 4.707162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.806768, 4.349008, 5.538171>,  <3.908542, 4.792501, 5.008521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.806768, 4.349008, 5.538171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.008152, 4.210875, 5.221369>,  <4.128983, 4.127995, 5.031287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.008152, 4.210875, 5.221369>,  <3.806768, 4.349008, 5.538171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.008152, 4.210875, 5.221369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686006, -0.397518, 0.609405,
		-0.525284, -0.850132, 0.036767,
		0.503459, -0.345333, -0.792006,
		4.159190, 4.107275, 4.983767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.867165, 3.502991, 5.652150>,  <3.806768, 4.349008, 5.538171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.867165, 3.502991, 5.652150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.151569, 3.642015, 5.407638>,  <4.322212, 3.725430, 5.260931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.151569, 3.642015, 5.407638>,  <3.867165, 3.502991, 5.652150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.151569, 3.642015, 5.407638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692567, -0.496592, 0.523209,
		-0.121709, -0.795360, -0.593792,
		0.711012, 0.347561, -0.611280,
		4.364873, 3.746284, 5.224254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.385505, 2.980481, 5.542895>,  <3.867165, 3.502991, 5.652150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.385505, 2.980481, 5.542895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.610477, 3.282881, 5.408949>,  <4.745461, 3.464321, 5.328581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.610477, 3.282881, 5.408949>,  <4.385505, 2.980481, 5.542895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.610477, 3.282881, 5.408949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774619, -0.340108, 0.533191,
		0.289202, -0.559277, -0.776899,
		0.562431, 0.756000, -0.334866,
		4.779207, 3.509681, 5.308489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.045816, 2.655092, 5.460751>,  <4.385505, 2.980481, 5.542895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.045816, 2.655092, 5.460751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.095387, 3.050974, 5.489392>,  <5.125128, 3.288503, 5.506577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.095387, 3.050974, 5.489392>,  <5.045816, 2.655092, 5.460751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.095387, 3.050974, 5.489392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889315, -0.142785, 0.434432,
		0.440183, 0.009841, -0.897854,
		0.123925, 0.989705, 0.071604,
		5.132564, 3.347885, 5.510873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.800676, 2.794250, 5.217385>,  <5.045816, 2.655092, 5.460751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.800676, 2.794250, 5.217385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.697338, 3.101080, 5.452282>,  <5.635335, 3.285178, 5.593220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.697338, 3.101080, 5.452282>,  <5.800676, 2.794250, 5.217385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.697338, 3.101080, 5.452282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824042, -0.142279, 0.548371,
		0.504194, 0.625582, -0.595344,
		-0.258346, 0.767074, 0.587243,
		5.619834, 3.331202, 5.628455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.080098, 2.754341, 1.478402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.195229, 3.106278, 1.629681>,  <1.264307, 3.317441, 1.720448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.195229, 3.106278, 1.629681>,  <1.080098, 2.754341, 1.478402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.195229, 3.106278, 1.629681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664406, 0.467867, -0.582808,
		-0.689725, -0.083529, 0.719237,
		0.287826, 0.879843, 0.378197,
		1.281576, 3.370231, 1.743140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.563705, 3.058130, 1.843251>,  <1.080098, 2.754341, 1.478402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.563705, 3.058130, 1.843251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.805908, 3.303385, 1.640304>,  <0.951230, 3.450538, 1.518536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.805908, 3.303385, 1.640304>,  <0.563705, 3.058130, 1.843251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.805908, 3.303385, 1.640304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775706, 0.312206, -0.548460,
		-0.177878, 0.725664, 0.664658,
		0.605508, 0.613138, -0.507367,
		0.987561, 3.487326, 1.488093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.242052, 3.685258, 1.660975>,  <0.563705, 3.058130, 1.843251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.242052, 3.685258, 1.660975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.543541, 3.637483, 1.402476>,  <0.724434, 3.608818, 1.247376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.543541, 3.637483, 1.402476>,  <0.242052, 3.685258, 1.660975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.543541, 3.637483, 1.402476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537296, 0.454258, -0.710607,
		0.378437, 0.882828, 0.278211,
		0.753723, -0.119438, -0.646248,
		0.769658, 3.601651, 1.208601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.429759, 4.361969, 1.307168>,  <0.242052, 3.685258, 1.660975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.429759, 4.361969, 1.307168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.475197, 4.046181, 1.065894>,  <0.502460, 3.856708, 0.921130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.475197, 4.046181, 1.065894>,  <0.429759, 4.361969, 1.307168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.475197, 4.046181, 1.065894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620032, 0.418048, -0.663925,
		0.776309, 0.449412, -0.442010,
		0.113595, -0.789471, -0.603185,
		0.509275, 3.809339, 0.884939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.460974, 4.615993, 0.617240>,  <0.429759, 4.361969, 1.307168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.460974, 4.615993, 0.617240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.372993, 4.229079, 0.566676>,  <0.320205, 3.996931, 0.536337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.372993, 4.229079, 0.566676>,  <0.460974, 4.615993, 0.617240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.372993, 4.229079, 0.566676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662281, 0.243211, -0.708683,
		0.716244, -0.072157, -0.694110,
		-0.219951, -0.967286, -0.126410,
		0.307008, 3.938894, 0.528753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.395840, 4.552010, -0.013528>,  <0.460974, 4.615993, 0.617240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.395840, 4.552010, -0.013528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.207062, 4.216269, 0.094362>,  <0.093795, 4.014823, 0.159096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.207062, 4.216269, 0.094362>,  <0.395840, 4.552010, -0.013528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.207062, 4.216269, 0.094362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665137, 0.138176, -0.733825,
		0.578670, -0.525730, -0.623497,
		-0.471946, -0.839354, 0.269725,
		0.065478, 3.964462, 0.175280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.319730, 4.167419, -0.625629>,  <0.395840, 4.552010, -0.013528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.319730, 4.167419, -0.625629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.035164, 4.064359, -0.364094>,  <-0.135576, 4.002522, -0.207172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.035164, 4.064359, -0.364094>,  <0.319730, 4.167419, -0.625629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.035164, 4.064359, -0.364094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695594, 0.125520, -0.707385,
		0.100185, -0.958052, -0.268514,
		-0.711415, -0.257646, 0.653840,
		-0.178261, 3.987063, -0.167942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.099625, 3.676187, -1.015940>,  <0.319730, 4.167419, -0.625629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.099625, 3.676187, -1.015940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.329208, 3.820754, -0.722015>,  <-0.466959, 3.907495, -0.545661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.329208, 3.820754, -0.722015>,  <-0.099625, 3.676187, -1.015940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.329208, 3.820754, -0.722015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762592, 0.091047, -0.640441,
		-0.298369, -0.927948, 0.223357,
		-0.573960, 0.361418, 0.734811,
		-0.501396, 3.929180, -0.501572>
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
