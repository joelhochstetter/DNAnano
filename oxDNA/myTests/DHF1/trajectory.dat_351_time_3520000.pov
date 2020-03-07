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
	<0.684768, 1.165858, 2.227919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.423222, 1.455421, 2.315933>,  <0.266294, 1.629160, 2.368742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.423222, 1.455421, 2.315933>,  <0.684768, 1.165858, 2.227919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.423222, 1.455421, 2.315933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002078, -0.292535, 0.956253,
		0.756608, 0.624803, 0.192782,
		-0.653865, 0.723909, 0.220036,
		0.227062, 1.672594, 2.381944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.882819, 1.534348, 2.749150>,  <0.684768, 1.165858, 2.227919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.882819, 1.534348, 2.749150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.483723, 1.559967, 2.741028>,  <0.244265, 1.575339, 2.736155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.483723, 1.559967, 2.741028>,  <0.882819, 1.534348, 2.749150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.483723, 1.559967, 2.741028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044350, -0.400762, 0.915108,
		0.050474, 0.913941, 0.402697,
		-0.997740, 0.064049, -0.020305,
		0.184401, 1.579182, 2.734936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.588080, 2.054806, 3.265115>,  <0.882819, 1.534348, 2.749150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.588080, 2.054806, 3.265115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.354786, 1.737885, 3.193459>,  <0.214810, 1.547731, 3.150465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.354786, 1.737885, 3.193459>,  <0.588080, 2.054806, 3.265115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.354786, 1.737885, 3.193459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122080, -0.303523, 0.944971,
		-0.803078, 0.529270, 0.273750,
		-0.583235, -0.792305, -0.179140,
		0.179816, 1.500193, 3.139717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.143837, 1.922818, 3.819510>,  <0.588080, 2.054806, 3.265115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.143837, 1.922818, 3.819510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.212032, 1.554077, 3.680298>,  <0.252949, 1.332833, 3.596771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.212032, 1.554077, 3.680298>,  <0.143837, 1.922818, 3.819510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.212032, 1.554077, 3.680298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274686, -0.294735, 0.915247,
		-0.946299, -0.251637, 0.202971,
		0.170488, -0.921851, -0.348029,
		0.263179, 1.277522, 3.575889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.027024, 1.513102, 4.358534>,  <0.143837, 1.922818, 3.819510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.027024, 1.513102, 4.358534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.200024, 1.270218, 4.136147>,  <0.336252, 1.124487, 4.002714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.200024, 1.270218, 4.136147>,  <-0.027024, 1.513102, 4.358534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.200024, 1.270218, 4.136147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369601, -0.415485, 0.831124,
		-0.735665, -0.677249, -0.011411,
		0.567620, -0.607211, -0.555969,
		0.370310, 1.088054, 3.969356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.155585, 0.856193, 4.598797>,  <-0.027024, 1.513102, 4.358534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.155585, 0.856193, 4.598797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.204220, 0.849411, 4.424171>,  <0.420103, 0.845342, 4.319396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.204220, 0.849411, 4.424171>,  <-0.155585, 0.856193, 4.598797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.204220, 0.849411, 4.424171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379954, -0.462901, 0.800848,
		-0.215664, -0.886248, -0.409944,
		0.899513, -0.016954, -0.436564,
		0.474074, 0.844325, 4.293202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.130277, 0.319994, 4.896057>,  <-0.155585, 0.856193, 4.598797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.130277, 0.319994, 4.896057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.434395, 0.513603, 4.722771>,  <0.616865, 0.629769, 4.618799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.434395, 0.513603, 4.722771>,  <0.130277, 0.319994, 4.896057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.434395, 0.513603, 4.722771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591254, -0.239450, 0.770119,
		0.269023, -0.841656, -0.468233,
		0.760293, 0.484024, -0.433215,
		0.662483, 0.658810, 4.592806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.735268, -0.145552, 4.759902>,  <0.130277, 0.319994, 4.896057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.735268, -0.145552, 4.759902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.858677, 0.232338, 4.804283>,  <0.932722, 0.459072, 4.830912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.858677, 0.232338, 4.804283>,  <0.735268, -0.145552, 4.759902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.858677, 0.232338, 4.804283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708374, -0.306036, 0.636041,
		0.634839, -0.117636, -0.763637,
		0.308522, 0.944724, 0.110954,
		0.951234, 0.515755, 4.837569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.787467, 0.902741, 5.982708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.184124, 0.953018, 5.971062>,  <1.422118, 0.983185, 5.964074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.184124, 0.953018, 5.971062>,  <0.787467, 0.902741, 5.982708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.184124, 0.953018, 5.971062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031768, 0.019156, -0.999312,
		-0.125050, 0.991884, 0.022989,
		0.991642, 0.125694, -0.029115,
		1.481616, 0.990726, 5.962327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.956213, 1.431469, 5.670542>,  <0.787467, 0.902741, 5.982708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.956213, 1.431469, 5.670542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.254354, 1.168976, 5.623543>,  <1.433239, 1.011480, 5.595344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.254354, 1.168976, 5.623543>,  <0.956213, 1.431469, 5.670542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.254354, 1.168976, 5.623543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148876, 0.007952, -0.988824,
		0.649833, 0.754516, -0.091771,
		0.745354, -0.656233, -0.117497,
		1.477961, 0.972106, 5.588294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.311000, 1.810919, 5.173535>,  <0.956213, 1.431469, 5.670542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.311000, 1.810919, 5.173535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329893, 1.411438, 5.165916>,  <1.341229, 1.171749, 5.161345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329893, 1.411438, 5.165916>,  <1.311000, 1.810919, 5.173535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.329893, 1.411438, 5.165916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244377, 0.006935, -0.969656,
		0.968529, 0.050455, -0.243732,
		0.047234, -0.998702, -0.019046,
		1.344063, 1.111827, 5.160203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.805477, 1.407096, 4.833174>,  <1.311000, 1.810919, 5.173535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.805477, 1.407096, 4.833174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.496494, 1.153122, 4.828011>,  <1.311104, 1.000738, 4.824913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.496494, 1.153122, 4.828011>,  <1.805477, 1.407096, 4.833174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.496494, 1.153122, 4.828011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114924, 0.159750, -0.980445,
		0.624581, -0.755869, -0.196369,
		-0.772458, -0.634935, -0.012909,
		1.264757, 0.962642, 4.824138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.773788, 1.274676, 4.169828>,  <1.805477, 1.407096, 4.833174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.773788, 1.274676, 4.169828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.449223, 1.071274, 4.285088>,  <1.254483, 0.949233, 4.354243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.449223, 1.071274, 4.285088>,  <1.773788, 1.274676, 4.169828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.449223, 1.071274, 4.285088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348116, 0.024452, -0.937132,
		0.469491, -0.860711, -0.196859,
		-0.811414, -0.508506, 0.288148,
		1.205798, 0.918722, 4.371532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.657006, 0.784822, 3.668628>,  <1.773788, 1.274676, 4.169828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.657006, 0.784822, 3.668628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308893, 0.805038, 3.864609>,  <1.100025, 0.817169, 3.982197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308893, 0.805038, 3.864609>,  <1.657006, 0.784822, 3.668628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.308893, 0.805038, 3.864609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490911, -0.170153, -0.854432,
		0.040183, -0.984121, 0.172893,
		-0.870283, 0.050541, 0.489953,
		1.047808, 0.820201, 4.011595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.240199, 0.279533, 3.349180>,  <1.657006, 0.784822, 3.668628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.240199, 0.279533, 3.349180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.981251, 0.517227, 3.540092>,  <0.825882, 0.659843, 3.654640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.981251, 0.517227, 3.540092>,  <1.240199, 0.279533, 3.349180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.981251, 0.517227, 3.540092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523935, 0.107831, -0.844905,
		-0.553537, -0.797031, 0.241534,
		-0.647370, 0.594235, 0.477281,
		0.787040, 0.695498, 3.683277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.560134, 0.044910, 3.174824>,  <1.240199, 0.279533, 3.349180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.560134, 0.044910, 3.174824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.475140, 0.419464, 3.286560>,  <0.424143, 0.644197, 3.353602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.475140, 0.419464, 3.286560>,  <0.560134, 0.044910, 3.174824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.475140, 0.419464, 3.286560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605886, 0.098031, -0.789489,
		-0.766650, -0.337003, 0.546513,
		-0.212486, 0.936386, 0.279341,
		0.411394, 0.700380, 3.370362>
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
