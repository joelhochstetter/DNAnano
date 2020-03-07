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
	<-1.212059, 0.716497, 3.863023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.109032, 1.038834, 4.076294>,  <-1.047215, 1.232236, 4.204257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.109032, 1.038834, 4.076294>,  <-1.212059, 0.716497, 3.863023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.109032, 1.038834, 4.076294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884101, -0.419200, 0.206485,
		0.389902, 0.418199, -0.820418,
		0.257568, 0.805842, 0.533177,
		-1.031761, 1.280586, 4.236247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.683792, 0.995370, 3.585941>,  <-1.212059, 0.716497, 3.863023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.683792, 0.995370, 3.585941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.665977, 1.070229, 3.978470>,  <-0.655289, 1.115144, 4.213987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.665977, 1.070229, 3.978470>,  <-0.683792, 0.995370, 3.585941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.665977, 1.070229, 3.978470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882789, -0.467204, 0.049035,
		0.467654, 0.864116, -0.186018,
		0.044536, 0.187146, 0.981322,
		-0.652617, 1.126372, 4.272866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.105915, 1.541179, 3.898858>,  <-0.683792, 0.995370, 3.585941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.105915, 1.541179, 3.898858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.203548, 1.241417, 4.145050>,  <-0.262128, 1.061560, 4.292765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.203548, 1.241417, 4.145050>,  <-0.105915, 1.541179, 3.898858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.203548, 1.241417, 4.145050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960819, -0.272842, 0.048825,
		0.131339, 0.603282, 0.786639,
		-0.244083, -0.749405, 0.615480,
		-0.276773, 1.016595, 4.329694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.220082, 1.540397, 4.584693>,  <-0.105915, 1.541179, 3.898858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.220082, 1.540397, 4.584693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.143208, 1.173256, 4.445778>,  <0.097083, 0.952971, 4.362429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.143208, 1.173256, 4.445778>,  <0.220082, 1.540397, 4.584693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.143208, 1.173256, 4.445778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976522, -0.213954, 0.025066,
		-0.097311, -0.334318, 0.937423,
		-0.192186, -0.917853, -0.347289,
		0.085552, 0.897900, 4.341591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.548176, 1.018597, 4.900440>,  <0.220082, 1.540397, 4.584693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.548176, 1.018597, 4.900440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.478111, 0.844734, 4.547081>,  <0.436073, 0.740416, 4.335065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.478111, 0.844734, 4.547081>,  <0.548176, 1.018597, 4.900440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.478111, 0.844734, 4.547081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927734, -0.373242, -0.000306,
		-0.329588, -0.819612, 0.468624,
		-0.175161, -0.434658, -0.883397,
		0.425563, 0.714337, 4.282062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.693102, 0.291695, 5.007556>,  <0.548176, 1.018597, 4.900440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.693102, 0.291695, 5.007556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.731060, 0.414070, 4.628632>,  <0.753835, 0.487495, 4.401277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.731060, 0.414070, 4.628632>,  <0.693102, 0.291695, 5.007556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.731060, 0.414070, 4.628632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948720, -0.316040, -0.007030,
		-0.301538, -0.898065, -0.320240,
		0.094895, 0.305938, -0.947310,
		0.759529, 0.505851, 4.344439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.050273, -0.255190, 4.603967>,  <0.693102, 0.291695, 5.007556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.050273, -0.255190, 4.603967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.095177, 0.083405, 4.395790>,  <1.122119, 0.286561, 4.270884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.095177, 0.083405, 4.395790>,  <1.050273, -0.255190, 4.603967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.095177, 0.083405, 4.395790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971505, -0.203526, -0.121476,
		-0.208752, -0.491975, -0.845212,
		0.112260, 0.846486, -0.520442,
		1.128855, 0.337350, 4.239657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.420053, -0.537124, 4.091412>,  <1.050273, -0.255190, 4.603967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.420053, -0.537124, 4.091412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.489571, -0.143417, 4.104149>,  <1.531281, 0.092807, 4.111791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.489571, -0.143417, 4.104149>,  <1.420053, -0.537124, 4.091412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.489571, -0.143417, 4.104149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959081, -0.161829, -0.232326,
		-0.223518, 0.070917, -0.972116,
		0.173793, 0.984267, 0.031844,
		1.541708, 0.151863, 4.113702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.853780, 0.527355, 5.456081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.096344, 0.807190, 5.304901>,  <3.241882, 0.975091, 5.214193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.096344, 0.807190, 5.304901>,  <2.853780, 0.527355, 5.456081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.096344, 0.807190, 5.304901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077781, 0.420849, 0.903790,
		0.791339, -0.577464, 0.200792,
		0.606409, 0.699587, -0.377950,
		3.278267, 1.017066, 5.191516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.627841, -0.026747, 5.093631>,  <2.853780, 0.527355, 5.456081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.627841, -0.026747, 5.093631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.676977, 0.146118, 4.736275>,  <2.706459, 0.249837, 4.521861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.676977, 0.146118, 4.736275>,  <2.627841, -0.026747, 5.093631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.676977, 0.146118, 4.736275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990109, -0.008110, -0.140064,
		-0.067775, 0.901760, 0.426891,
		0.122842, 0.432162, -0.893391,
		2.713830, 0.275767, 4.468257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.176553, 0.585126, 5.063022>,  <2.627841, -0.026747, 5.093631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.176553, 0.585126, 5.063022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.264675, 0.497604, 4.682793>,  <2.317549, 0.445091, 4.454655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.264675, 0.497604, 4.682793>,  <2.176553, 0.585126, 5.063022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.264675, 0.497604, 4.682793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974762, -0.085479, -0.206236,
		-0.036128, 0.972018, -0.232114,
		0.220306, -0.218805, -0.950573,
		2.330767, 0.431963, 4.397621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.938988, 1.185984, 4.737457>,  <2.176553, 0.585126, 5.063022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.938988, 1.185984, 4.737457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.980829, 0.880356, 4.482819>,  <2.005934, 0.696979, 4.330036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.980829, 0.880356, 4.482819>,  <1.938988, 1.185984, 4.737457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.980829, 0.880356, 4.482819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924263, 0.161621, -0.345857,
		0.367146, 0.624560, -0.689296,
		0.104604, -0.764070, -0.636596,
		2.012210, 0.651135, 4.291840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.636285, 1.449487, 4.128637>,  <1.938988, 1.185984, 4.737457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.636285, 1.449487, 4.128637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.618423, 1.055573, 4.061462>,  <1.607707, 0.819224, 4.021157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.618423, 1.055573, 4.061462>,  <1.636285, 1.449487, 4.128637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.618423, 1.055573, 4.061462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980117, 0.075718, -0.183403,
		0.193329, 0.156410, -0.968587,
		-0.044654, -0.984786, -0.167938,
		1.605027, 0.760137, 4.011081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.230061, 1.353370, 3.469278>,  <1.636285, 1.449487, 4.128637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.230061, 1.353370, 3.469278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.204439, 1.025253, 3.696617>,  <1.189066, 0.828383, 3.833020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.204439, 1.025253, 3.696617>,  <1.230061, 1.353370, 3.469278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.204439, 1.025253, 3.696617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995393, 0.011805, -0.095146,
		0.071338, -0.571823, -0.817269,
		-0.064055, -0.820292, 0.568347,
		1.185223, 0.779166, 3.867121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.898721, 0.861724, 3.057072>,  <1.230061, 1.353370, 3.469278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.898721, 0.861724, 3.057072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.854799, 0.752548, 3.439369>,  <0.828446, 0.687043, 3.668748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.854799, 0.752548, 3.439369>,  <0.898721, 0.861724, 3.057072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.854799, 0.752548, 3.439369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993098, -0.009749, -0.116879,
		0.041219, -0.961982, -0.269986,
		-0.109804, -0.272940, 0.955744,
		0.821858, 0.670666, 3.726092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.304998, 0.464746, 3.010768>,  <0.898721, 0.861724, 3.057072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.304998, 0.464746, 3.010768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.336374, 0.545380, 3.401299>,  <0.355200, 0.593760, 3.635617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.336374, 0.545380, 3.401299>,  <0.304998, 0.464746, 3.010768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.336374, 0.545380, 3.401299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984862, 0.167522, 0.044538,
		-0.154578, -0.965039, 0.211673,
		0.078440, 0.201584, 0.976325,
		0.359906, 0.605855, 3.694196>
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
