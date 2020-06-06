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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.293543, 35.429825, 35.031036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242756, 35.080517, 34.842873>,  <24.212284, 34.870934, 34.729973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242756, 35.080517, 34.842873>,  <24.293543, 35.429825, 35.031036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242756, 35.080517, 34.842873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247043, 0.431462, -0.867647,
		0.960651, -0.226372, 0.160954,
		-0.126965, -0.873268, -0.470408,
		24.204666, 34.818535, 34.701752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.973785, 35.040993, 34.618942>,  <24.293543, 35.429825, 35.031036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.973785, 35.040993, 34.618942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615011, 34.975422, 34.454681>,  <24.399746, 34.936081, 34.356125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615011, 34.975422, 34.454681>,  <24.973785, 35.040993, 34.618942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615011, 34.975422, 34.454681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243518, 0.592057, -0.768224,
		0.369062, -0.789048, -0.491117,
		-0.896935, -0.163927, -0.410653,
		24.345930, 34.926243, 34.331486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.968491, 34.705200, 33.877140>,  <24.973785, 35.040993, 34.618942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.968491, 34.705200, 33.877140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625298, 34.910145, 33.891850>,  <24.419382, 35.033112, 33.900677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625298, 34.910145, 33.891850>,  <24.968491, 34.705200, 33.877140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.625298, 34.910145, 33.891850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124534, 0.276923, -0.952788,
		-0.498358, -0.812894, -0.301401,
		-0.857981, 0.512364, 0.036774,
		24.367903, 35.063854, 33.902882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597475, 34.523022, 33.302299>,  <24.968491, 34.705200, 33.877140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597475, 34.523022, 33.302299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460873, 34.875683, 33.432571>,  <24.378910, 35.087280, 33.510735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460873, 34.875683, 33.432571>,  <24.597475, 34.523022, 33.302299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460873, 34.875683, 33.432571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163275, 0.396896, -0.903224,
		-0.925588, -0.255282, -0.279494,
		-0.341508, 0.881648, 0.325681,
		24.358419, 35.140179, 33.530277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.909035, 34.834530, 32.921188>,  <24.597475, 34.523022, 33.302299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.909035, 34.834530, 32.921188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203272, 35.083191, 33.028858>,  <24.379814, 35.232388, 33.093460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203272, 35.083191, 33.028858>,  <23.909035, 34.834530, 32.921188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.203272, 35.083191, 33.028858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197408, 0.183389, -0.963015,
		-0.648024, 0.761522, 0.012179,
		0.735591, 0.621653, 0.269171,
		24.423950, 35.269688, 33.109608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.847578, 35.600822, 32.643356>,  <23.909035, 34.834530, 32.921188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.847578, 35.600822, 32.643356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233444, 35.498745, 32.669575>,  <24.464964, 35.437500, 32.685307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233444, 35.498745, 32.669575>,  <23.847578, 35.600822, 32.643356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.233444, 35.498745, 32.669575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103471, 0.138142, -0.984993,
		0.242308, 0.956971, 0.159666,
		0.964666, -0.255192, 0.065545,
		24.522844, 35.422188, 32.689240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.206131, 36.033539, 32.233543>,  <23.847578, 35.600822, 32.643356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.206131, 36.033539, 32.233543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478535, 35.742573, 32.267220>,  <24.641977, 35.567993, 32.287426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478535, 35.742573, 32.267220>,  <24.206131, 36.033539, 32.233543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478535, 35.742573, 32.267220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321582, 0.193789, -0.926839,
		0.657884, 0.658262, 0.365897,
		0.681009, -0.727419, 0.084195,
		24.682837, 35.524345, 32.292477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.683823, 36.205612, 31.758350>,  <24.206131, 36.033539, 32.233543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.683823, 36.205612, 31.758350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789915, 35.828182, 31.837664>,  <24.853571, 35.601723, 31.885252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789915, 35.828182, 31.837664>,  <24.683823, 36.205612, 31.758350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789915, 35.828182, 31.837664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436119, -0.066006, -0.897465,
		0.859914, 0.324511, 0.394005,
		0.265231, -0.943576, 0.198285,
		24.869484, 35.545109, 31.897148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414436, 36.148792, 31.566172>,  <24.683823, 36.205612, 31.758350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414436, 36.148792, 31.566172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234808, 35.791489, 31.558027>,  <25.127031, 35.577106, 31.553141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234808, 35.791489, 31.558027>,  <25.414436, 36.148792, 31.566172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234808, 35.791489, 31.558027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345706, -0.152696, -0.925836,
		0.823906, -0.422806, 0.377378,
		-0.449073, -0.893263, -0.020359,
		25.100086, 35.523510, 31.551920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866899, 35.683334, 31.315498>,  <25.414436, 36.148792, 31.566172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866899, 35.683334, 31.315498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518417, 35.506283, 31.230568>,  <25.309328, 35.400051, 31.179609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518417, 35.506283, 31.230568>,  <25.866899, 35.683334, 31.315498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518417, 35.506283, 31.230568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344568, -0.243254, -0.906697,
		0.349682, -0.863079, 0.364440,
		-0.871203, -0.442631, -0.212328,
		25.257057, 35.373493, 31.166870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133995, 35.071812, 31.015358>,  <25.866899, 35.683334, 31.315498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133995, 35.071812, 31.015358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755726, 35.133408, 30.900820>,  <25.528765, 35.170364, 30.832096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755726, 35.133408, 30.900820>,  <26.133995, 35.071812, 31.015358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755726, 35.133408, 30.900820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225849, -0.322420, -0.919259,
		-0.233875, -0.933988, 0.270127,
		-0.945672, 0.153984, -0.286346,
		25.472025, 35.179604, 30.814917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025528, 34.547237, 30.543764>,  <26.133995, 35.071812, 31.015358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025528, 34.547237, 30.543764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728037, 34.803375, 30.467001>,  <25.549541, 34.957058, 30.420942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728037, 34.803375, 30.467001>,  <26.025528, 34.547237, 30.543764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728037, 34.803375, 30.467001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107501, -0.168780, -0.979774,
		-0.659782, -0.749316, 0.056688,
		-0.743728, 0.640343, -0.191910,
		25.504919, 34.995480, 30.409428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544212, 34.177559, 30.146767>,  <26.025528, 34.547237, 30.543764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544212, 34.177559, 30.146767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433695, 34.556751, 30.083538>,  <25.367384, 34.784267, 30.045601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433695, 34.556751, 30.083538>,  <25.544212, 34.177559, 30.146767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433695, 34.556751, 30.083538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079120, -0.141481, -0.986774,
		-0.957812, -0.285144, -0.035914,
		-0.276291, 0.947985, -0.158073,
		25.350807, 34.841148, 30.036116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129793, 34.151279, 29.600037>,  <25.544212, 34.177559, 30.146767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129793, 34.151279, 29.600037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275902, 34.523602, 29.594650>,  <25.363567, 34.746994, 29.591419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275902, 34.523602, 29.594650>,  <25.129793, 34.151279, 29.600037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275902, 34.523602, 29.594650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173207, -0.082167, -0.981452,
		-0.914646, 0.356163, -0.191235,
		0.365270, 0.930804, -0.013464,
		25.385483, 34.802841, 29.590611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850473, 34.326492, 29.019857>,  <25.129793, 34.151279, 29.600037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850473, 34.326492, 29.019857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098871, 34.623058, 29.121582>,  <25.247910, 34.800999, 29.182617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098871, 34.623058, 29.121582>,  <24.850473, 34.326492, 29.019857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098871, 34.623058, 29.121582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028009, 0.345239, -0.938097,
		-0.783315, 0.575429, 0.235157,
		0.620993, 0.741412, 0.254314,
		25.285170, 34.845482, 29.197876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.583097, 34.938343, 28.735903>,  <24.850473, 34.326492, 29.019857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.583097, 34.938343, 28.735903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966164, 35.017551, 28.819485>,  <25.196003, 35.065079, 28.869635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966164, 35.017551, 28.819485>,  <24.583097, 34.938343, 28.735903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.966164, 35.017551, 28.819485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076056, 0.526011, -0.847070,
		-0.277654, 0.827103, 0.488681,
		0.957666, 0.198025, 0.208955,
		25.253464, 35.076958, 28.882172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682713, 35.674095, 28.626436>,  <24.583097, 34.938343, 28.735903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682713, 35.674095, 28.626436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040838, 35.497238, 28.604813>,  <25.255714, 35.391125, 28.591839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040838, 35.497238, 28.604813>,  <24.682713, 35.674095, 28.626436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040838, 35.497238, 28.604813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167624, 0.446868, -0.878755,
		0.412692, 0.777701, 0.474201,
		0.895314, -0.442143, -0.054058,
		25.309433, 35.364594, 28.588594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241306, 36.258469, 28.611349>,  <24.682713, 35.674095, 28.626436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241306, 36.258469, 28.611349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402903, 35.923393, 28.464338>,  <25.499861, 35.722347, 28.376131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402903, 35.923393, 28.464338>,  <25.241306, 36.258469, 28.611349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402903, 35.923393, 28.464338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319410, 0.505660, -0.801427,
		0.857188, 0.206375, 0.471846,
		0.403989, -0.837685, -0.367528,
		25.524099, 35.672089, 28.354080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763247, 36.535553, 28.295721>,  <25.241306, 36.258469, 28.611349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763247, 36.535553, 28.295721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772511, 36.171280, 28.130735>,  <25.778069, 35.952717, 28.031744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772511, 36.171280, 28.130735>,  <25.763247, 36.535553, 28.295721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772511, 36.171280, 28.130735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454061, 0.377148, -0.807210,
		0.890670, -0.168587, 0.422239,
		0.023161, -0.910680, -0.412463,
		25.779459, 35.898075, 28.006996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301895, 36.586929, 27.953409>,  <25.763247, 36.535553, 28.295721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301895, 36.586929, 27.953409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091661, 36.299500, 27.771238>,  <25.965521, 36.127041, 27.661936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091661, 36.299500, 27.771238>,  <26.301895, 36.586929, 27.953409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091661, 36.299500, 27.771238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488543, 0.183334, -0.853062,
		0.696483, -0.670851, 0.254697,
		-0.525583, -0.718573, -0.455429,
		25.933987, 36.083927, 27.634609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754057, 36.088448, 27.676113>,  <26.301895, 36.586929, 27.953409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754057, 36.088448, 27.676113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427851, 36.047665, 27.448242>,  <26.232126, 36.023193, 27.311520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427851, 36.047665, 27.448242>,  <26.754057, 36.088448, 27.676113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427851, 36.047665, 27.448242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517193, 0.313315, -0.796458,
		0.259698, -0.944160, -0.202779,
		-0.815517, -0.101962, -0.569680,
		26.183195, 36.017078, 27.277338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018486, 35.951454, 27.008095>,  <26.754057, 36.088448, 27.676113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018486, 35.951454, 27.008095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638493, 36.033607, 26.913988>,  <26.410496, 36.082901, 26.857525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638493, 36.033607, 26.913988>,  <27.018486, 35.951454, 27.008095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638493, 36.033607, 26.913988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306115, 0.463160, -0.831731,
		-0.061857, -0.862149, -0.502865,
		-0.949983, 0.205383, -0.235267,
		26.353498, 36.095222, 26.843409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983568, 35.891586, 26.363930>,  <27.018486, 35.951454, 27.008095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983568, 35.891586, 26.363930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672264, 36.131058, 26.439714>,  <26.485481, 36.274742, 26.485186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672264, 36.131058, 26.439714>,  <26.983568, 35.891586, 26.363930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672264, 36.131058, 26.439714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271508, 0.592873, -0.758145,
		-0.566213, -0.538593, -0.623955,
		-0.778258, 0.598681, 0.189460,
		26.438787, 36.310661, 26.496552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709873, 36.016514, 25.767317>,  <26.983568, 35.891586, 26.363930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709873, 36.016514, 25.767317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611727, 36.318783, 26.010216>,  <26.552839, 36.500145, 26.155956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611727, 36.318783, 26.010216>,  <26.709873, 36.016514, 25.767317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611727, 36.318783, 26.010216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566881, 0.619983, -0.542464,
		-0.786410, 0.211135, -0.580500,
		-0.245367, 0.755674, 0.607250,
		26.538116, 36.545486, 26.192390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435284, 36.546288, 25.373894>,  <26.709873, 36.016514, 25.767317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435284, 36.546288, 25.373894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561371, 36.751423, 25.693302>,  <26.637024, 36.874504, 25.884947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561371, 36.751423, 25.693302>,  <26.435284, 36.546288, 25.373894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561371, 36.751423, 25.693302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466171, 0.649232, -0.600984,
		-0.826633, 0.561688, -0.034420,
		0.315219, 0.512839, 0.798519,
		26.655937, 36.905273, 25.932858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425789, 37.177971, 25.234818>,  <26.435284, 36.546288, 25.373894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425789, 37.177971, 25.234818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688957, 37.185005, 25.535971>,  <26.846859, 37.189228, 25.716661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688957, 37.185005, 25.535971>,  <26.425789, 37.177971, 25.234818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688957, 37.185005, 25.535971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568390, 0.644242, -0.511748,
		-0.494038, 0.764620, 0.413863,
		0.657921, 0.017587, 0.752882,
		26.886333, 37.190281, 25.761835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677092, 37.837643, 25.146465>,  <26.425789, 37.177971, 25.234818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677092, 37.837643, 25.146465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935066, 37.616840, 25.357876>,  <27.089851, 37.484360, 25.484722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935066, 37.616840, 25.357876>,  <26.677092, 37.837643, 25.146465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935066, 37.616840, 25.357876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756110, 0.561462, -0.336242,
		-0.111139, 0.616479, 0.779488,
		0.644938, -0.552009, 0.528527,
		27.128548, 37.451237, 25.516434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136822, 38.285805, 25.547594>,  <26.677092, 37.837643, 25.146465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136822, 38.285805, 25.547594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348703, 37.947105, 25.527885>,  <27.475832, 37.743885, 25.516060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348703, 37.947105, 25.527885>,  <27.136822, 38.285805, 25.547594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348703, 37.947105, 25.527885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841743, 0.531939, -0.092248,
		0.104321, 0.007388, 0.994516,
		0.529703, -0.846751, -0.049274,
		27.507614, 37.693081, 25.513103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439497, 38.215111, 26.185547>,  <27.136822, 38.285805, 25.547594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439497, 38.215111, 26.185547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613583, 38.066891, 25.857332>,  <27.718035, 37.977959, 25.660402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613583, 38.066891, 25.857332>,  <27.439497, 38.215111, 26.185547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613583, 38.066891, 25.857332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773092, 0.620900, 0.129659,
		0.461428, -0.690781, 0.556692,
		0.435216, -0.370546, -0.820538,
		27.744148, 37.955727, 25.611172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029247, 37.817295, 26.269318>,  <27.439497, 38.215111, 26.185547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029247, 37.817295, 26.269318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056665, 37.985134, 25.907270>,  <28.073116, 38.085838, 25.690042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056665, 37.985134, 25.907270>,  <28.029247, 37.817295, 26.269318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056665, 37.985134, 25.907270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731694, 0.595586, 0.331513,
		0.678178, -0.684995, -0.266189,
		0.068546, 0.419594, -0.905120,
		28.077229, 38.111012, 25.635735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727871, 37.736931, 25.951199>,  <28.029247, 37.817295, 26.269318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727871, 37.736931, 25.951199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580967, 38.090981, 25.836887>,  <28.492825, 38.303410, 25.768301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580967, 38.090981, 25.836887>,  <28.727871, 37.736931, 25.951199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580967, 38.090981, 25.836887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705965, 0.465314, 0.533945,
		0.605585, -0.005650, -0.795761,
		-0.367261, 0.885128, -0.285776,
		28.470789, 38.356518, 25.751154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332207, 38.191116, 26.241886>,  <28.727871, 37.736931, 25.951199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332207, 38.191116, 26.241886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015444, 38.398899, 26.113480>,  <28.825386, 38.523567, 26.036436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015444, 38.398899, 26.113480>,  <29.332207, 38.191116, 26.241886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015444, 38.398899, 26.113480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285486, 0.779658, 0.557343,
		0.539796, 0.349718, -0.765714,
		-0.791908, 0.519452, -0.321016,
		28.777872, 38.554733, 26.017176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541632, 38.869678, 26.108505>,  <29.332207, 38.191116, 26.241886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541632, 38.869678, 26.108505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154724, 38.885956, 26.208693>,  <28.922579, 38.895721, 26.268805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154724, 38.885956, 26.208693>,  <29.541632, 38.869678, 26.108505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154724, 38.885956, 26.208693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199320, 0.732721, 0.650685,
		-0.157043, 0.679311, -0.716850,
		-0.967269, 0.040697, 0.250469,
		28.864544, 38.898167, 26.283833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449656, 39.535728, 26.208004>,  <29.541632, 38.869678, 26.108505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449656, 39.535728, 26.208004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138779, 39.357426, 26.385664>,  <28.952251, 39.250443, 26.492260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138779, 39.357426, 26.385664>,  <29.449656, 39.535728, 26.208004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138779, 39.357426, 26.385664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008915, 0.713557, 0.700540,
		-0.629198, 0.540496, -0.558546,
		-0.777194, -0.445757, 0.444150,
		28.905621, 39.223698, 26.518909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022814, 40.039318, 26.160700>,  <29.449656, 39.535728, 26.208004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022814, 40.039318, 26.160700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931341, 39.772381, 26.444210>,  <28.876457, 39.612217, 26.614315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931341, 39.772381, 26.444210>,  <29.022814, 40.039318, 26.160700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931341, 39.772381, 26.444210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193358, 0.682425, 0.704918,
		-0.954106, 0.298248, -0.027021,
		-0.228680, -0.667342, 0.708774,
		28.862738, 39.572178, 26.656843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630638, 40.465424, 26.677340>,  <29.022814, 40.039318, 26.160700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630638, 40.465424, 26.677340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759361, 40.136620, 26.865273>,  <28.836596, 39.939339, 26.978033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759361, 40.136620, 26.865273>,  <28.630638, 40.465424, 26.677340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759361, 40.136620, 26.865273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256511, 0.553365, 0.792458,
		-0.911395, -0.134503, 0.388932,
		0.321809, -0.822007, 0.469833,
		28.855904, 39.890018, 27.006222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382643, 40.518211, 27.411348>,  <28.630638, 40.465424, 26.677340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382643, 40.518211, 27.411348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712259, 40.295425, 27.369896>,  <28.910030, 40.161755, 27.345024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712259, 40.295425, 27.369896>,  <28.382643, 40.518211, 27.411348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712259, 40.295425, 27.369896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463806, 0.558203, 0.687963,
		-0.325325, -0.614977, 0.718309,
		0.824043, -0.556968, -0.103633,
		28.959473, 40.128334, 27.338806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104872, 41.195000, 27.102573>,  <28.382643, 40.518211, 27.411348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104872, 41.195000, 27.102573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774384, 41.029842, 26.949272>,  <27.576092, 40.930748, 26.857292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774384, 41.029842, 26.949272>,  <28.104872, 41.195000, 27.102573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774384, 41.029842, 26.949272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037890, -0.719497, 0.693461,
		-0.562074, 0.558429, 0.610106,
		-0.826219, -0.412894, -0.383252,
		27.526518, 40.905975, 26.834297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511000, 41.262836, 27.600676>,  <28.104872, 41.195000, 27.102573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511000, 41.262836, 27.600676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480953, 40.944454, 27.360403>,  <27.462925, 40.753426, 27.216240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480953, 40.944454, 27.360403>,  <27.511000, 41.262836, 27.600676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480953, 40.944454, 27.360403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058187, -0.597856, 0.799489,
		-0.995476, 0.095007, -0.001405,
		-0.075117, -0.795953, -0.600679,
		27.458418, 40.705669, 27.180199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975029, 40.854603, 27.909834>,  <27.511000, 41.262836, 27.600676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975029, 40.854603, 27.909834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210030, 40.612450, 27.695042>,  <27.351030, 40.467155, 27.566166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210030, 40.612450, 27.695042>,  <26.975029, 40.854603, 27.909834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210030, 40.612450, 27.695042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044832, -0.686906, 0.725362,
		-0.807981, -0.402077, -0.430699,
		0.587501, -0.605387, -0.536981,
		27.386280, 40.430832, 27.533947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575895, 40.215134, 27.838776>,  <26.975029, 40.854603, 27.909834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575895, 40.215134, 27.838776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952539, 40.107578, 27.757715>,  <27.178526, 40.043045, 27.709080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952539, 40.107578, 27.757715>,  <26.575895, 40.215134, 27.838776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952539, 40.107578, 27.757715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071913, -0.748577, 0.659137,
		-0.328935, -0.606077, -0.724205,
		0.941610, -0.268893, -0.202648,
		27.235023, 40.026909, 27.696920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535418, 39.539021, 27.816013>,  <26.575895, 40.215134, 27.838776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535418, 39.539021, 27.816013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930250, 39.601551, 27.830059>,  <27.167150, 39.639069, 27.838488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930250, 39.601551, 27.830059>,  <26.535418, 39.539021, 27.816013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930250, 39.601551, 27.830059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083478, -0.688862, 0.720070,
		0.136756, -0.707836, -0.693012,
		0.987081, 0.156325, 0.035117,
		27.226374, 39.648449, 27.840593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882294, 38.935555, 27.624079>,  <26.535418, 39.539021, 27.816013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882294, 38.935555, 27.624079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070656, 39.170460, 27.887402>,  <27.183674, 39.311401, 28.045395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070656, 39.170460, 27.887402>,  <26.882294, 38.935555, 27.624079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070656, 39.170460, 27.887402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040862, -0.730905, 0.681255,
		0.881236, -0.347707, -0.320192,
		0.470907, 0.587262, 0.658308,
		27.211927, 39.346638, 28.084894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197561, 38.447571, 27.963301>,  <26.882294, 38.935555, 27.624079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197561, 38.447571, 27.963301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284668, 38.755688, 28.203041>,  <27.336931, 38.940559, 28.346886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284668, 38.755688, 28.203041>,  <27.197561, 38.447571, 27.963301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284668, 38.755688, 28.203041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238277, -0.553548, 0.798003,
		0.946468, -0.316589, 0.063000,
		0.217765, 0.770296, 0.599352,
		27.349998, 38.986778, 28.382847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714327, 38.233433, 28.474216>,  <27.197561, 38.447571, 27.963301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714327, 38.233433, 28.474216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540407, 38.552898, 28.640631>,  <27.436054, 38.744576, 28.740480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540407, 38.552898, 28.640631>,  <27.714327, 38.233433, 28.474216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540407, 38.552898, 28.640631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309816, -0.566458, 0.763636,
		0.845555, 0.203134, 0.493735,
		-0.434801, 0.798662, 0.416037,
		27.409967, 38.792496, 28.765442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957724, 38.269901, 29.099710>,  <27.714327, 38.233433, 28.474216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957724, 38.269901, 29.099710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622946, 38.485573, 29.137260>,  <27.422079, 38.614975, 29.159790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622946, 38.485573, 29.137260>,  <27.957724, 38.269901, 29.099710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622946, 38.485573, 29.137260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236584, -0.511111, 0.826313,
		0.493509, 0.669369, 0.555332,
		-0.836945, 0.539176, 0.093876,
		27.371862, 38.647327, 29.165422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818537, 38.483566, 29.821709>,  <27.957724, 38.269901, 29.099710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818537, 38.483566, 29.821709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454876, 38.541584, 29.665554>,  <27.236679, 38.576393, 29.571861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454876, 38.541584, 29.665554>,  <27.818537, 38.483566, 29.821709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454876, 38.541584, 29.665554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405974, -0.517694, 0.753112,
		-0.092870, 0.843182, 0.529546,
		-0.909154, 0.145041, -0.390388,
		27.182131, 38.585094, 29.548437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530832, 38.743568, 30.292301>,  <27.818537, 38.483566, 29.821709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530832, 38.743568, 30.292301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243023, 38.575962, 30.070774>,  <27.070337, 38.475399, 29.937859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243023, 38.575962, 30.070774>,  <27.530832, 38.743568, 30.292301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243023, 38.575962, 30.070774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326632, -0.499573, 0.802333,
		-0.612861, 0.758192, 0.222591,
		-0.719523, -0.419014, -0.553819,
		27.027166, 38.450256, 29.904629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068420, 38.599125, 30.742434>,  <27.530832, 38.743568, 30.292301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068420, 38.599125, 30.742434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941113, 38.359863, 30.448246>,  <26.864727, 38.216305, 30.271734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941113, 38.359863, 30.448246>,  <27.068420, 38.599125, 30.742434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941113, 38.359863, 30.448246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307581, -0.668684, 0.676946,
		-0.896715, 0.441667, 0.028839,
		-0.318269, -0.598157, -0.735467,
		26.845633, 38.180416, 30.227606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631634, 38.251865, 31.125389>,  <27.068420, 38.599125, 30.742434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631634, 38.251865, 31.125389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681471, 38.037766, 30.791206>,  <26.711372, 37.909306, 30.590696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681471, 38.037766, 30.791206>,  <26.631634, 38.251865, 31.125389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681471, 38.037766, 30.791206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051503, -0.844371, 0.533278,
		-0.990870, -0.023414, -0.132769,
		0.124593, -0.535247, -0.835456,
		26.718849, 37.877190, 30.540569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135813, 37.852238, 31.141335>,  <26.631634, 38.251865, 31.125389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135813, 37.852238, 31.141335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414875, 37.657150, 30.931416>,  <26.582312, 37.540100, 30.805464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414875, 37.657150, 30.931416>,  <26.135813, 37.852238, 31.141335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414875, 37.657150, 30.931416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201219, -0.836417, 0.509821,
		-0.687595, -0.250081, -0.681669,
		0.697655, -0.487715, -0.524796,
		26.624172, 37.510838, 30.773977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850977, 37.285999, 30.725004>,  <26.135813, 37.852238, 31.141335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850977, 37.285999, 30.725004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239241, 37.206516, 30.779163>,  <26.472198, 37.158825, 30.811659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239241, 37.206516, 30.779163>,  <25.850977, 37.285999, 30.725004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239241, 37.206516, 30.779163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240450, -0.798723, 0.551566,
		-0.001456, -0.567940, -0.823069,
		0.970660, -0.198710, 0.135398,
		26.530439, 37.146904, 30.819782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991465, 36.522331, 30.567551>,  <25.850977, 37.285999, 30.725004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991465, 36.522331, 30.567551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295542, 36.671936, 30.780048>,  <26.477987, 36.761700, 30.907547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295542, 36.671936, 30.780048>,  <25.991465, 36.522331, 30.567551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295542, 36.671936, 30.780048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065084, -0.769724, 0.635050,
		0.646429, -0.517336, -0.560796,
		0.760193, 0.374016, 0.531243,
		26.523600, 36.784142, 30.939421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357218, 35.912086, 30.760319>,  <25.991465, 36.522331, 30.567551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357218, 35.912086, 30.760319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515989, 36.183205, 31.007877>,  <26.611252, 36.345875, 31.156412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515989, 36.183205, 31.007877>,  <26.357218, 35.912086, 30.760319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515989, 36.183205, 31.007877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290567, -0.732406, 0.615754,
		0.870642, -0.064580, -0.487660,
		0.396930, 0.677799, 0.618898,
		26.635069, 36.386543, 31.193546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961000, 35.586304, 30.906693>,  <26.357218, 35.912086, 30.760319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961000, 35.586304, 30.906693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892790, 35.858921, 31.191345>,  <26.851864, 36.022491, 31.362137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892790, 35.858921, 31.191345>,  <26.961000, 35.586304, 30.906693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892790, 35.858921, 31.191345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042773, -0.716411, 0.696366,
		0.984425, 0.149186, 0.093014,
		-0.170525, 0.681541, 0.711634,
		26.841633, 36.063385, 31.404835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618015, 35.569851, 31.408178>,  <26.961000, 35.586304, 30.906693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618015, 35.569851, 31.408178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308661, 35.740631, 31.595619>,  <27.123047, 35.843098, 31.708084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308661, 35.740631, 31.595619>,  <27.618015, 35.569851, 31.408178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308661, 35.740631, 31.595619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066698, -0.680294, 0.729898,
		0.630416, 0.595748, 0.497654,
		-0.773387, 0.426947, 0.468603,
		27.076645, 35.868717, 31.736200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860790, 35.474773, 32.151825>,  <27.618015, 35.569851, 31.408178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860790, 35.474773, 32.151825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466000, 35.539116, 32.152332>,  <27.229124, 35.577721, 32.152637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466000, 35.539116, 32.152332>,  <27.860790, 35.474773, 32.151825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466000, 35.539116, 32.152332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097435, -0.604091, 0.790937,
		0.127991, 0.780513, 0.611897,
		-0.986978, 0.160853, 0.001269,
		27.169907, 35.587372, 32.152714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715767, 35.507092, 32.832195>,  <27.860790, 35.474773, 32.151825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715767, 35.507092, 32.832195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370596, 35.435184, 32.643288>,  <27.163494, 35.392040, 32.529942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370596, 35.435184, 32.643288>,  <27.715767, 35.507092, 32.832195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370596, 35.435184, 32.643288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267402, -0.630572, 0.728611,
		-0.428783, 0.755025, 0.496068,
		-0.862926, -0.179767, -0.472274,
		27.111717, 35.381256, 32.501606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812853, 35.795723, 33.587399>,  <27.715767, 35.507092, 32.832195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812853, 35.795723, 33.587399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044180, 35.983597, 33.854218>,  <28.182976, 36.096321, 34.014309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044180, 35.983597, 33.854218>,  <27.812853, 35.795723, 33.587399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044180, 35.983597, 33.854218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712974, -0.688378, -0.133431,
		0.396509, 0.552751, -0.732971,
		0.578315, 0.469683, 0.667045,
		28.217674, 36.124500, 34.054333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465082, 36.094364, 33.327263>,  <27.812853, 35.795723, 33.587399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465082, 36.094364, 33.327263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505386, 36.004177, 33.714874>,  <28.529570, 35.950066, 33.947441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505386, 36.004177, 33.714874>,  <28.465082, 36.094364, 33.327263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505386, 36.004177, 33.714874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677726, -0.697501, -0.232765,
		0.728378, 0.680187, 0.082528,
		0.100760, -0.225472, 0.969025,
		28.535614, 35.936535, 34.005581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171053, 36.183128, 33.717369>,  <28.465082, 36.094364, 33.327263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171053, 36.183128, 33.717369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950563, 35.856045, 33.783710>,  <28.818270, 35.659794, 33.823513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950563, 35.856045, 33.783710>,  <29.171053, 36.183128, 33.717369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950563, 35.856045, 33.783710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646367, -0.544200, -0.534843,
		0.527601, -0.187617, 0.828515,
		-0.551223, -0.817708, 0.165852,
		28.785196, 35.610733, 33.833466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571688, 35.738674, 33.994736>,  <29.171053, 36.183128, 33.717369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571688, 35.738674, 33.994736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283276, 35.539772, 33.801716>,  <29.110228, 35.420429, 33.685905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283276, 35.539772, 33.801716>,  <29.571688, 35.738674, 33.994736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283276, 35.539772, 33.801716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687439, -0.426066, -0.588129,
		0.086855, -0.755780, 0.649040,
		-0.721030, -0.497257, -0.482547,
		29.066967, 35.390594, 33.656952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699316, 35.025909, 34.069241>,  <29.571688, 35.738674, 33.994736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699316, 35.025909, 34.069241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529785, 35.151920, 33.729565>,  <29.428066, 35.227528, 33.525757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529785, 35.151920, 33.729565>,  <29.699316, 35.025909, 34.069241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529785, 35.151920, 33.729565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718468, -0.453966, -0.526990,
		-0.551521, -0.833471, -0.033933,
		-0.423826, 0.315026, -0.849194,
		29.402637, 35.246429, 33.474808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461075, 34.573524, 33.588852>,  <29.699316, 35.025909, 34.069241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461075, 34.573524, 33.588852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559950, 34.881237, 33.353188>,  <29.619276, 35.065865, 33.211788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559950, 34.881237, 33.353188>,  <29.461075, 34.573524, 33.588852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559950, 34.881237, 33.353188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669137, -0.575289, -0.470425,
		-0.700824, -0.277942, -0.656958,
		0.247190, 0.769279, -0.589157,
		29.634108, 35.112022, 33.176441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136488, 35.003128, 33.482964>,  <29.461075, 34.573524, 33.588852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136488, 35.003128, 33.482964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515654, 34.877708, 33.505379>,  <30.743153, 34.802456, 33.518829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515654, 34.877708, 33.505379>,  <30.136488, 35.003128, 33.482964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515654, 34.877708, 33.505379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048823, 0.030832, 0.998331,
		-0.314755, -0.949071, 0.013918,
		0.947917, -0.313551, 0.056041,
		30.800028, 34.783642, 33.522190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132669, 34.467457, 33.980396>,  <30.136488, 35.003128, 33.482964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132669, 34.467457, 33.980396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507401, 34.604626, 33.952805>,  <30.732239, 34.686928, 33.936249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507401, 34.604626, 33.952805>,  <30.132669, 34.467457, 33.980396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507401, 34.604626, 33.952805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078856, -0.014921, 0.996774,
		0.340788, -0.939245, -0.041020,
		0.936827, 0.342924, -0.068980,
		30.788448, 34.707504, 33.932110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534489, 34.061703, 34.389778>,  <30.132669, 34.467457, 33.980396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534489, 34.061703, 34.389778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754385, 34.393715, 34.352192>,  <30.886322, 34.592922, 34.329639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754385, 34.393715, 34.352192>,  <30.534489, 34.061703, 34.389778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754385, 34.393715, 34.352192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225188, -0.038932, 0.973537,
		0.804411, -0.556352, -0.208316,
		0.549740, 0.830034, -0.093966,
		30.919308, 34.642727, 34.324001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117569, 33.986309, 34.804352>,  <30.534489, 34.061703, 34.389778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117569, 33.986309, 34.804352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133078, 34.384911, 34.774754>,  <31.142382, 34.624073, 34.756992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133078, 34.384911, 34.774754>,  <31.117569, 33.986309, 34.804352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133078, 34.384911, 34.774754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522417, 0.042915, 0.851609,
		0.851808, -0.071676, -0.518927,
		0.038770, 0.996504, -0.074000,
		31.144709, 34.683861, 34.752552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705296, 34.066959, 35.195343>,  <31.117569, 33.986309, 34.804352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705296, 34.066959, 35.195343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527523, 34.423080, 35.155651>,  <31.420860, 34.636753, 35.131836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527523, 34.423080, 35.155651>,  <31.705296, 34.066959, 35.195343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527523, 34.423080, 35.155651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328788, 0.265155, 0.906417,
		0.833295, 0.370212, -0.410563,
		-0.444430, 0.890301, -0.099231,
		31.394194, 34.690170, 35.125881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281712, 34.577133, 35.345745>,  <31.705296, 34.066959, 35.195343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281712, 34.577133, 35.345745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938391, 34.771908, 35.410503>,  <31.732399, 34.888775, 35.449360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938391, 34.771908, 35.410503>,  <32.281712, 34.577133, 35.345745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938391, 34.771908, 35.410503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365969, 0.359704, 0.858301,
		0.359704, 0.795930, -0.486938,
		-0.858301, 0.486938, 0.161899,
		31.680901, 34.917988, 35.459072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488106, 35.201733, 35.662598>,  <32.281712, 34.577133, 35.345745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488106, 35.201733, 35.662598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101303, 35.198093, 35.764431>,  <31.869221, 35.195911, 35.825531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101303, 35.198093, 35.764431>,  <32.488106, 35.201733, 35.662598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101303, 35.198093, 35.764431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227829, 0.416226, 0.880256,
		-0.113969, 0.909216, -0.400422,
		-0.967008, -0.009094, 0.254583,
		31.811201, 35.195366, 35.840805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450722, 35.724735, 36.121410>,  <32.488106, 35.201733, 35.662598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450722, 35.724735, 36.121410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091061, 35.564671, 36.192280>,  <31.875263, 35.468632, 36.234802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091061, 35.564671, 36.192280>,  <32.450722, 35.724735, 36.121410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091061, 35.564671, 36.192280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064793, 0.278665, 0.958200,
		-0.432804, 0.873052, -0.224636,
		-0.899156, -0.400159, 0.177175,
		31.821314, 35.444622, 36.245434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926779, 36.226669, 36.451420>,  <32.450722, 35.724735, 36.121410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926779, 36.226669, 36.451420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833416, 35.853710, 36.561806>,  <31.777397, 35.629936, 36.628036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833416, 35.853710, 36.561806>,  <31.926779, 36.226669, 36.451420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833416, 35.853710, 36.561806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076997, 0.300634, 0.950626,
		-0.969325, 0.200637, -0.141962,
		-0.233409, -0.932397, 0.275963,
		31.763393, 35.573990, 36.644596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408646, 36.336502, 36.887321>,  <31.926779, 36.226669, 36.451420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408646, 36.336502, 36.887321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569019, 35.987114, 36.997810>,  <31.665243, 35.777481, 37.064102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569019, 35.987114, 36.997810>,  <31.408646, 36.336502, 36.887321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569019, 35.987114, 36.997810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048453, 0.280874, 0.958521,
		-0.914824, -0.397688, 0.070290,
		0.400934, -0.873473, 0.276219,
		31.689301, 35.725071, 37.080677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495672, 36.356804, 37.535175>,  <31.408646, 36.336502, 36.887321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495672, 36.356804, 37.535175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634602, 35.982498, 37.510818>,  <31.717958, 35.757915, 37.496204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634602, 35.982498, 37.510818>,  <31.495672, 36.356804, 37.535175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634602, 35.982498, 37.510818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073847, -0.037438, 0.996566,
		-0.934834, -0.350626, 0.056100,
		0.347322, -0.935767, -0.060891,
		31.738798, 35.701767, 37.492550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188580, 36.012123, 38.043274>,  <31.495672, 36.356804, 37.535175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188580, 36.012123, 38.043274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519707, 35.802574, 37.963001>,  <31.718384, 35.676846, 37.914837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519707, 35.802574, 37.963001>,  <31.188580, 36.012123, 38.043274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519707, 35.802574, 37.963001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205895, -0.049040, 0.977345,
		-0.521848, -0.850382, 0.067267,
		0.827818, -0.523875, -0.200681,
		31.768051, 35.645412, 37.902798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240170, 35.350033, 38.422455>,  <31.188580, 36.012123, 38.043274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240170, 35.350033, 38.422455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621660, 35.423313, 38.327084>,  <31.850554, 35.467281, 38.269863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621660, 35.423313, 38.327084>,  <31.240170, 35.350033, 38.422455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621660, 35.423313, 38.327084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281222, -0.262864, 0.922939,
		0.106413, -0.947279, -0.302221,
		0.953725, 0.183204, -0.238424,
		31.907778, 35.478275, 38.255558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664419, 34.707161, 38.619720>,  <31.240170, 35.350033, 38.422455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664419, 34.707161, 38.619720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912792, 35.020252, 38.602848>,  <32.061817, 35.208107, 38.592724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912792, 35.020252, 38.602848>,  <31.664419, 34.707161, 38.619720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912792, 35.020252, 38.602848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390839, -0.262508, 0.882233,
		0.679477, -0.564291, -0.468920,
		0.620931, 0.782730, -0.042179,
		32.099072, 35.255070, 38.590195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351616, 34.425472, 38.879509>,  <31.664419, 34.707161, 38.619720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351616, 34.425472, 38.879509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396797, 34.821766, 38.909679>,  <32.423904, 35.059544, 38.927780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396797, 34.821766, 38.909679>,  <32.351616, 34.425472, 38.879509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396797, 34.821766, 38.909679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468638, -0.120056, 0.875194,
		0.876140, -0.063505, -0.477856,
		0.112948, 0.990734, 0.075425,
		32.430683, 35.118984, 38.932308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116398, 34.500637, 39.119457>,  <32.351616, 34.425472, 38.879509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116398, 34.500637, 39.119457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917580, 34.827148, 39.237194>,  <32.798290, 35.023056, 39.307835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917580, 34.827148, 39.237194>,  <33.116398, 34.500637, 39.119457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917580, 34.827148, 39.237194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507988, -0.001273, 0.861363,
		0.703487, 0.577658, -0.414027,
		-0.497046, 0.816278, 0.294338,
		32.768467, 35.072033, 39.325497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571049, 34.854378, 39.482208>,  <33.116398, 34.500637, 39.119457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571049, 34.854378, 39.482208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226929, 35.015701, 39.606934>,  <33.020458, 35.112495, 39.681770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226929, 35.015701, 39.606934>,  <33.571049, 34.854378, 39.482208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226929, 35.015701, 39.606934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370226, 0.073793, 0.926006,
		0.350455, 0.912084, -0.212800,
		-0.860299, 0.403307, 0.311816,
		32.968838, 35.136692, 39.700478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761967, 35.512493, 39.893974>,  <33.571049, 34.854378, 39.482208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761967, 35.512493, 39.893974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387226, 35.414379, 39.993683>,  <33.162380, 35.355511, 40.053509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387226, 35.414379, 39.993683>,  <33.761967, 35.512493, 39.893974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387226, 35.414379, 39.993683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224545, 0.124537, 0.966473,
		-0.268108, 0.961418, -0.061595,
		-0.936855, -0.245288, 0.249271,
		33.106171, 35.340794, 40.068462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524471, 35.983299, 40.358776>,  <33.761967, 35.512493, 39.893974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524471, 35.983299, 40.358776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261639, 35.695900, 40.449993>,  <33.103939, 35.523460, 40.504723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261639, 35.695900, 40.449993>,  <33.524471, 35.983299, 40.358776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261639, 35.695900, 40.449993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111805, 0.206281, 0.972084,
		-0.745486, 0.664231, -0.055210,
		-0.657077, -0.718502, 0.228044,
		33.064514, 35.480350, 40.518406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012798, 36.316978, 40.859783>,  <33.524471, 35.983299, 40.358776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012798, 36.316978, 40.859783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976486, 35.920902, 40.902279>,  <32.954700, 35.683258, 40.927776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976486, 35.920902, 40.902279>,  <33.012798, 36.316978, 40.859783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976486, 35.920902, 40.902279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031920, 0.109515, 0.993473,
		-0.995359, 0.086796, -0.041548,
		-0.090780, -0.990188, 0.106236,
		32.949253, 35.623844, 40.934151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449650, 36.220390, 41.336548>,  <33.012798, 36.316978, 40.859783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449650, 36.220390, 41.336548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669014, 35.888103, 41.374798>,  <32.800632, 35.688732, 41.397747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669014, 35.888103, 41.374798>,  <32.449650, 36.220390, 41.336548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669014, 35.888103, 41.374798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077613, 0.164425, 0.983331,
		-0.832597, -0.531851, 0.154648,
		0.548414, -0.830722, 0.095622,
		32.833538, 35.638885, 41.403484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316368, 36.067646, 42.006863>,  <32.449650, 36.220390, 41.336548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316368, 36.067646, 42.006863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632740, 35.843437, 41.908688>,  <32.822563, 35.708912, 41.849785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632740, 35.843437, 41.908688>,  <32.316368, 36.067646, 42.006863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632740, 35.843437, 41.908688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253069, -0.065544, 0.965226,
		-0.557119, -0.825540, 0.090010,
		0.790933, -0.560524, -0.245434,
		32.870018, 35.675282, 41.835056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449871, 35.569618, 42.593075>,  <32.316368, 36.067646, 42.006863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449871, 35.569618, 42.593075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812679, 35.536335, 42.427959>,  <33.030365, 35.516365, 42.328892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812679, 35.536335, 42.427959>,  <32.449871, 35.569618, 42.593075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812679, 35.536335, 42.427959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416548, 0.033723, 0.908488,
		-0.061678, -0.995961, 0.065250,
		0.907019, -0.083214, -0.412786,
		33.084785, 35.511372, 42.304123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876316, 35.028324, 43.002151>,  <32.449871, 35.569618, 42.593075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876316, 35.028324, 43.002151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114323, 35.290833, 42.816566>,  <33.257126, 35.448338, 42.705215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114323, 35.290833, 42.816566>,  <32.876316, 35.028324, 43.002151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114323, 35.290833, 42.816566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503952, 0.145051, 0.851465,
		0.626093, -0.740449, -0.244423,
		0.595013, 0.656274, -0.463966,
		33.292828, 35.487713, 42.677376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518265, 34.777020, 43.124104>,  <32.876316, 35.028324, 43.002151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518265, 34.777020, 43.124104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546116, 35.171211, 43.062149>,  <33.562828, 35.407726, 43.024979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546116, 35.171211, 43.062149>,  <33.518265, 34.777020, 43.124104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546116, 35.171211, 43.062149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476517, 0.103544, 0.873047,
		0.876404, -0.134592, -0.462387,
		0.069628, 0.985476, -0.154882,
		33.567005, 35.466854, 43.015686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167156, 34.904736, 43.436077>,  <33.518265, 34.777020, 43.124104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167156, 34.904736, 43.436077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015846, 35.267109, 43.359974>,  <33.925060, 35.484531, 43.314312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015846, 35.267109, 43.359974>,  <34.167156, 34.904736, 43.436077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015846, 35.267109, 43.359974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605070, 0.397524, 0.689830,
		0.700571, 0.145825, -0.698524,
		-0.378274, 0.905930, -0.190260,
		33.902363, 35.538887, 43.302895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774204, 35.368313, 43.311752>,  <34.167156, 34.904736, 43.436077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774204, 35.368313, 43.311752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462204, 35.576527, 43.450687>,  <34.275005, 35.701454, 43.534050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462204, 35.576527, 43.450687>,  <34.774204, 35.368313, 43.311752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462204, 35.576527, 43.450687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516386, 0.221880, 0.827112,
		0.353472, 0.824509, -0.441863,
		-0.780002, 0.520533, 0.347336,
		34.228203, 35.732685, 43.554890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070065, 36.042976, 43.398964>,  <34.774204, 35.368313, 43.311752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070065, 36.042976, 43.398964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738640, 36.002068, 43.619152>,  <34.539783, 35.977524, 43.751266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738640, 36.002068, 43.619152>,  <35.070065, 36.042976, 43.398964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738640, 36.002068, 43.619152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531008, 0.168176, 0.830510,
		-0.177516, 0.980437, -0.085037,
		-0.828564, -0.102274, 0.550474,
		34.490070, 35.971386, 43.784294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062614, 36.648792, 43.765781>,  <35.070065, 36.042976, 43.398964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062614, 36.648792, 43.765781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816334, 36.403412, 43.963604>,  <34.668564, 36.256184, 44.082298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816334, 36.403412, 43.963604>,  <35.062614, 36.648792, 43.765781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816334, 36.403412, 43.963604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446286, 0.245783, 0.860476,
		-0.649414, 0.750512, 0.122445,
		-0.615703, -0.613451, 0.494558,
		34.631622, 36.219376, 44.111973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790764, 37.046169, 44.364483>,  <35.062614, 36.648792, 43.765781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790764, 37.046169, 44.364483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768944, 36.657410, 44.456085>,  <34.755852, 36.424156, 44.511047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768944, 36.657410, 44.456085>,  <34.790764, 37.046169, 44.364483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768944, 36.657410, 44.456085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496336, 0.172618, 0.850796,
		-0.866415, 0.160074, 0.472970,
		-0.054547, -0.971895, 0.229010,
		34.752579, 36.365841, 44.524788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503082, 36.985519, 45.056759>,  <34.790764, 37.046169, 44.364483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503082, 36.985519, 45.056759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674156, 36.625717, 45.021015>,  <34.776798, 36.409836, 44.999569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674156, 36.625717, 45.021015>,  <34.503082, 36.985519, 45.056759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674156, 36.625717, 45.021015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301668, 0.048844, 0.952161,
		-0.852106, -0.434177, 0.292241,
		0.427680, -0.899502, -0.089357,
		34.802460, 36.355865, 44.994209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306416, 36.658978, 45.682781>,  <34.503082, 36.985519, 45.056759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306416, 36.658978, 45.682781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625504, 36.478146, 45.523144>,  <34.816956, 36.369648, 45.427361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625504, 36.478146, 45.523144>,  <34.306416, 36.658978, 45.682781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625504, 36.478146, 45.523144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447048, -0.000833, 0.894510,
		-0.404719, -0.891979, 0.201435,
		0.797716, -0.452076, -0.399095,
		34.864819, 36.342522, 45.403416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457447, 36.178509, 46.172356>,  <34.306416, 36.658978, 45.682781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457447, 36.178509, 46.172356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779236, 36.183170, 45.934807>,  <34.972309, 36.185966, 45.792278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779236, 36.183170, 45.934807>,  <34.457447, 36.178509, 46.172356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779236, 36.183170, 45.934807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563394, -0.331684, 0.756685,
		-0.188161, -0.943319, -0.273396,
		0.804476, 0.011651, -0.593871,
		35.020580, 36.186665, 45.756645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866138, 35.514534, 46.264179>,  <34.457447, 36.178509, 46.172356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866138, 35.514534, 46.264179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117702, 35.804272, 46.151192>,  <35.268642, 35.978115, 46.083401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117702, 35.804272, 46.151192>,  <34.866138, 35.514534, 46.264179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117702, 35.804272, 46.151192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628566, -0.259886, 0.733051,
		0.457574, -0.638576, -0.618746,
		0.628913, 0.724348, -0.282470,
		35.306377, 36.021576, 46.066452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448975, 35.183697, 46.298824>,  <34.866138, 35.514534, 46.264179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448975, 35.183697, 46.298824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530552, 35.575287, 46.300205>,  <35.579498, 35.810242, 46.301033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530552, 35.575287, 46.300205>,  <35.448975, 35.183697, 46.298824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530552, 35.575287, 46.300205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567753, -0.121148, 0.814236,
		0.797537, -0.164095, -0.580524,
		0.203942, 0.978977, 0.003454,
		35.591736, 35.868980, 46.301243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105999, 35.255169, 46.505951>,  <35.448975, 35.183697, 46.298824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105999, 35.255169, 46.505951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016773, 35.640881, 46.563095>,  <35.963238, 35.872307, 46.597382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016773, 35.640881, 46.563095>,  <36.105999, 35.255169, 46.505951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016773, 35.640881, 46.563095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410392, -0.040031, 0.911030,
		0.884205, 0.261849, -0.386802,
		-0.223068, 0.964278, 0.142856,
		35.949852, 35.930164, 46.605953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674484, 35.563107, 46.824265>,  <36.105999, 35.255169, 46.505951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674484, 35.563107, 46.824265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387260, 35.830929, 46.900249>,  <36.214924, 35.991623, 46.945839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387260, 35.830929, 46.900249>,  <36.674484, 35.563107, 46.824265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387260, 35.830929, 46.900249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446725, 0.234106, 0.863500,
		0.533689, 0.704906, -0.467209,
		-0.718062, 0.669554, 0.189959,
		36.171841, 36.031796, 46.957237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016563, 36.223614, 47.161964>,  <36.674484, 35.563107, 46.824265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016563, 36.223614, 47.161964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629715, 36.205936, 47.262146>,  <36.397606, 36.195332, 47.322254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629715, 36.205936, 47.262146>,  <37.016563, 36.223614, 47.161964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629715, 36.205936, 47.262146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249473, 0.026621, 0.968016,
		-0.049448, 0.998668, -0.014720,
		-0.967118, -0.044194, 0.250457,
		36.339581, 36.192677, 47.337284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991673, 36.597931, 47.691204>,  <37.016563, 36.223614, 47.161964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991673, 36.597931, 47.691204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637245, 36.420769, 47.745941>,  <36.424591, 36.314472, 47.778782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637245, 36.420769, 47.745941>,  <36.991673, 36.597931, 47.691204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637245, 36.420769, 47.745941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115012, 0.075929, 0.990458,
		-0.449067, 0.893349, -0.016339,
		-0.886065, -0.442902, 0.136843,
		36.371426, 36.287899, 47.786995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642998, 37.015442, 48.204773>,  <36.991673, 36.597931, 47.691204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642998, 37.015442, 48.204773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505653, 36.639771, 48.201969>,  <36.423248, 36.414368, 48.200287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505653, 36.639771, 48.201969>,  <36.642998, 37.015442, 48.204773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505653, 36.639771, 48.201969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096388, -0.042664, 0.994429,
		-0.934246, 0.340769, 0.105175,
		-0.343358, -0.939178, -0.007013,
		36.402645, 36.358017, 48.199867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988445, 37.017246, 48.539928>,  <36.642998, 37.015442, 48.204773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988445, 37.017246, 48.539928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070496, 36.626980, 48.570927>,  <36.119728, 36.392822, 48.589527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070496, 36.626980, 48.570927>,  <35.988445, 37.017246, 48.539928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070496, 36.626980, 48.570927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171812, 0.042058, 0.984231,
		-0.963537, -0.215210, -0.159003,
		0.205129, -0.975662, 0.077500,
		36.132034, 36.334282, 48.594177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565166, 36.653709, 49.027142>,  <35.988445, 37.017246, 48.539928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565166, 36.653709, 49.027142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858978, 36.383099, 49.006104>,  <36.035267, 36.220730, 48.993481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858978, 36.383099, 49.006104>,  <35.565166, 36.653709, 49.027142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858978, 36.383099, 49.006104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143727, -0.230864, 0.962312,
		-0.663176, -0.699291, -0.266813,
		0.734534, -0.676531, -0.052596,
		36.079338, 36.180138, 48.990326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341377, 35.971630, 49.308811>,  <35.565166, 36.653709, 49.027142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341377, 35.971630, 49.308811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738438, 35.974541, 49.357140>,  <35.976673, 35.976288, 49.386139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738438, 35.974541, 49.357140>,  <35.341377, 35.971630, 49.308811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738438, 35.974541, 49.357140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117022, -0.197449, 0.973304,
		0.030936, -0.980286, -0.195146,
		0.992647, 0.007274, 0.120823,
		36.036232, 35.976723, 49.393387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432976, 35.432957, 49.764648>,  <35.341377, 35.971630, 49.308811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432976, 35.432957, 49.764648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746315, 35.679794, 49.794479>,  <35.934319, 35.827896, 49.812378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746315, 35.679794, 49.794479>,  <35.432976, 35.432957, 49.764648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746315, 35.679794, 49.794479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020750, -0.093957, 0.995360,
		0.621239, -0.781259, -0.060796,
		0.783346, 0.617095, 0.074581,
		35.981319, 35.864922, 49.816853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017647, 35.188934, 50.232712>,  <35.432976, 35.432957, 49.764648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017647, 35.188934, 50.232712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014404, 35.588737, 50.244823>,  <36.012459, 35.828621, 50.252090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014404, 35.588737, 50.244823>,  <36.017647, 35.188934, 50.232712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014404, 35.588737, 50.244823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006052, -0.030234, 0.999525,
		0.999949, 0.008287, -0.005804,
		-0.008108, 0.999509, 0.030283,
		36.011971, 35.888592, 50.253910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626278, 35.368038, 50.518028>,  <36.017647, 35.188934, 50.232712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626278, 35.368038, 50.518028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321255, 35.618565, 50.582817>,  <36.138241, 35.768879, 50.621689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321255, 35.618565, 50.582817>,  <36.626278, 35.368038, 50.518028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321255, 35.618565, 50.582817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039426, -0.204914, 0.977986,
		0.645719, 0.752155, 0.131565,
		-0.762556, 0.626317, 0.161971,
		36.092487, 35.806461, 50.631409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219837, 34.801010, 50.450401>,  <36.626278, 35.368038, 50.518028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219837, 34.801010, 50.450401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458321, 34.492840, 50.540726>,  <37.601410, 34.307938, 50.594921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458321, 34.492840, 50.540726>,  <37.219837, 34.801010, 50.450401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458321, 34.492840, 50.540726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160076, -0.389693, -0.906926,
		0.786711, 0.504569, -0.355663,
		0.596206, -0.770422, 0.225807,
		37.637184, 34.261715, 50.608467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567947, 34.647629, 49.902920>,  <37.219837, 34.801010, 50.450401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567947, 34.647629, 49.902920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574730, 34.296810, 50.094967>,  <37.578800, 34.086319, 50.210194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574730, 34.296810, 50.094967>,  <37.567947, 34.647629, 49.902920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574730, 34.296810, 50.094967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202966, -0.473204, -0.857253,
		0.979039, -0.082912, -0.186033,
		0.016955, -0.877043, 0.480114,
		37.579815, 34.033699, 50.239002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038376, 34.192410, 49.632034>,  <37.567947, 34.647629, 49.902920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038376, 34.192410, 49.632034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739136, 33.984722, 49.797325>,  <37.559593, 33.860111, 49.896500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739136, 33.984722, 49.797325>,  <38.038376, 34.192410, 49.632034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739136, 33.984722, 49.797325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237179, -0.372372, -0.897265,
		0.619753, -0.769253, 0.155424,
		-0.748099, -0.519219, 0.413229,
		37.514706, 33.828957, 49.921295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008446, 33.474876, 49.417099>,  <38.038376, 34.192410, 49.632034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008446, 33.474876, 49.417099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636642, 33.549694, 49.544239>,  <37.413559, 33.594585, 49.620522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636642, 33.549694, 49.544239>,  <38.008446, 33.474876, 49.417099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636642, 33.549694, 49.544239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368437, -0.432496, -0.822923,
		-0.016456, -0.882021, 0.470923,
		-0.929507, 0.187048, 0.317852,
		37.357792, 33.605808, 49.639595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604710, 32.898003, 49.255249>,  <38.008446, 33.474876, 49.417099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604710, 32.898003, 49.255249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345398, 33.199890, 49.295528>,  <37.189812, 33.381023, 49.319695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345398, 33.199890, 49.295528>,  <37.604710, 32.898003, 49.255249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345398, 33.199890, 49.295528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444555, -0.267813, -0.854779,
		-0.618150, -0.598897, 0.509130,
		-0.648276, 0.754718, 0.100694,
		37.150913, 33.426304, 49.325737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926300, 32.682194, 49.189674>,  <37.604710, 32.898003, 49.255249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926300, 32.682194, 49.189674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906143, 33.065464, 49.076992>,  <36.894051, 33.295425, 49.009380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906143, 33.065464, 49.076992>,  <36.926300, 32.682194, 49.189674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906143, 33.065464, 49.076992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397386, -0.278014, -0.874524,
		-0.916267, 0.067879, 0.394775,
		-0.050391, 0.958176, -0.281709,
		36.891026, 33.352917, 48.992481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213634, 32.838249, 48.942760>,  <36.926300, 32.682194, 49.189674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213634, 32.838249, 48.942760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471245, 33.095459, 48.776989>,  <36.625813, 33.249786, 48.677525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471245, 33.095459, 48.776989>,  <36.213634, 32.838249, 48.942760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471245, 33.095459, 48.776989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272497, -0.313378, -0.909692,
		-0.714826, 0.698796, -0.026602,
		0.644025, 0.643023, -0.414431,
		36.664452, 33.288364, 48.652660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892262, 33.016026, 48.316559>,  <36.213634, 32.838249, 48.942760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892262, 33.016026, 48.316559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255054, 33.161034, 48.230797>,  <36.472729, 33.248039, 48.179340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255054, 33.161034, 48.230797>,  <35.892262, 33.016026, 48.316559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255054, 33.161034, 48.230797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165233, -0.161975, -0.972863,
		-0.387410, 0.917793, -0.087007,
		0.906979, 0.362520, -0.214400,
		36.527149, 33.269791, 48.166477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748699, 33.615234, 47.882202>,  <35.892262, 33.016026, 48.316559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748699, 33.615234, 47.882202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116844, 33.471844, 47.819698>,  <36.337730, 33.385807, 47.782196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116844, 33.471844, 47.819698>,  <35.748699, 33.615234, 47.882202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116844, 33.471844, 47.819698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119303, 0.123132, -0.985193,
		0.372413, 0.925381, 0.070559,
		0.920367, -0.358481, -0.156257,
		36.392956, 33.364300, 47.772820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021942, 34.012123, 47.367367>,  <35.748699, 33.615234, 47.882202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021942, 34.012123, 47.367367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276348, 33.703960, 47.349628>,  <36.428993, 33.519062, 47.338985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276348, 33.703960, 47.349628>,  <36.021942, 34.012123, 47.367367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276348, 33.703960, 47.349628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080109, -0.008766, -0.996748,
		0.767509, 0.637497, -0.067292,
		0.636014, -0.770403, -0.044341,
		36.467152, 33.472839, 47.336327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422218, 34.160954, 46.860958>,  <36.021942, 34.012123, 47.367367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422218, 34.160954, 46.860958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467258, 33.764084, 46.882511>,  <36.494282, 33.525963, 46.895443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467258, 33.764084, 46.882511>,  <36.422218, 34.160954, 46.860958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467258, 33.764084, 46.882511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018881, -0.056358, -0.998232,
		0.993461, 0.111382, -0.025079,
		0.112599, -0.992178, 0.053887,
		36.501038, 33.466431, 46.898678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846169, 33.995068, 46.272320>,  <36.422218, 34.160954, 46.860958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846169, 33.995068, 46.272320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693211, 33.634357, 46.352890>,  <36.601437, 33.417931, 46.401234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693211, 33.634357, 46.352890>,  <36.846169, 33.995068, 46.272320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693211, 33.634357, 46.352890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168776, -0.282492, -0.944306,
		0.908456, -0.327097, 0.260221,
		-0.382390, -0.901779, 0.201426,
		36.578495, 33.363823, 46.413319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386276, 33.473633, 46.009869>,  <36.846169, 33.995068, 46.272320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386276, 33.473633, 46.009869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036507, 33.280579, 46.029671>,  <36.826645, 33.164745, 46.041553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036507, 33.280579, 46.029671>,  <37.386276, 33.473633, 46.009869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036507, 33.280579, 46.029671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185126, -0.426239, -0.885465,
		0.448456, -0.765106, 0.462061,
		-0.874423, -0.482632, 0.049509,
		36.774181, 33.135788, 46.044525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527294, 32.904205, 45.711166>,  <37.386276, 33.473633, 46.009869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527294, 32.904205, 45.711166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127834, 32.924671, 45.707748>,  <36.888157, 32.936951, 45.705700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127834, 32.924671, 45.707748>,  <37.527294, 32.904205, 45.711166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127834, 32.924671, 45.707748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004874, -0.256488, -0.966535,
		-0.051641, -0.965193, 0.256392,
		-0.998654, 0.051162, -0.008541,
		36.828239, 32.940022, 45.705185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285210, 32.267834, 45.423889>,  <37.527294, 32.904205, 45.711166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285210, 32.267834, 45.423889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993744, 32.539982, 45.392555>,  <36.818863, 32.703270, 45.373756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993744, 32.539982, 45.392555>,  <37.285210, 32.267834, 45.423889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993744, 32.539982, 45.392555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088419, -0.206874, -0.974364,
		-0.679135, -0.703063, 0.210900,
		-0.728669, 0.680372, -0.078331,
		36.775143, 32.744095, 45.369057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817978, 31.954004, 44.945354>,  <37.285210, 32.267834, 45.423889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817978, 31.954004, 44.945354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685169, 32.331314, 44.944931>,  <36.605484, 32.557701, 44.944679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685169, 32.331314, 44.944931>,  <36.817978, 31.954004, 44.945354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685169, 32.331314, 44.944931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267718, -0.095304, -0.958772,
		-0.904484, -0.318048, 0.284174,
		-0.332018, 0.943273, -0.001054,
		36.585564, 32.614296, 44.944614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173527, 31.930487, 44.679558>,  <36.817978, 31.954004, 44.945354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173527, 31.930487, 44.679558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271854, 32.314137, 44.623482>,  <36.330853, 32.544327, 44.589836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271854, 32.314137, 44.623482>,  <36.173527, 31.930487, 44.679558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271854, 32.314137, 44.623482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348635, -0.047468, -0.936056,
		-0.904448, 0.278976, 0.322716,
		0.245818, 0.959124, -0.140193,
		36.345600, 32.601875, 44.581425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627373, 32.188381, 44.415035>,  <36.173527, 31.930487, 44.679558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627373, 32.188381, 44.415035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931599, 32.424271, 44.306396>,  <36.114136, 32.565804, 44.241215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931599, 32.424271, 44.306396>,  <35.627373, 32.188381, 44.415035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931599, 32.424271, 44.306396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412874, 0.116469, -0.903311,
		-0.501074, 0.799161, 0.332065,
		0.760566, 0.589726, -0.271593,
		36.159767, 32.601189, 44.224918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363350, 32.748501, 44.075760>,  <35.627373, 32.188381, 44.415035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363350, 32.748501, 44.075760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742916, 32.802219, 43.961555>,  <35.970657, 32.834450, 43.893032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742916, 32.802219, 43.961555>,  <35.363350, 32.748501, 44.075760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742916, 32.802219, 43.961555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301348, 0.117588, -0.946236,
		-0.093502, 0.983940, 0.152051,
		0.948919, 0.134296, -0.285513,
		36.027592, 32.842506, 43.875900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429626, 33.383701, 43.669083>,  <35.363350, 32.748501, 44.075760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429626, 33.383701, 43.669083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742077, 33.155712, 43.567120>,  <35.929546, 33.018921, 43.505943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742077, 33.155712, 43.567120>,  <35.429626, 33.383701, 43.669083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742077, 33.155712, 43.567120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366603, -0.088201, -0.926187,
		0.505415, 0.816919, -0.277849,
		0.781126, -0.569969, -0.254907,
		35.976414, 32.984722, 43.490646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707073, 33.694721, 43.023285>,  <35.429626, 33.383701, 43.669083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707073, 33.694721, 43.023285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844509, 33.319553, 43.042274>,  <35.926971, 33.094452, 43.053669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844509, 33.319553, 43.042274>,  <35.707073, 33.694721, 43.023285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844509, 33.319553, 43.042274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220621, -0.129752, -0.966691,
		0.912836, 0.321673, -0.251507,
		0.343592, -0.937918, 0.047474,
		35.947586, 33.038177, 43.056519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914032, 33.623890, 42.386635>,  <35.707073, 33.694721, 43.023285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914032, 33.623890, 42.386635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847988, 33.255962, 42.529003>,  <35.808361, 33.035206, 42.614426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847988, 33.255962, 42.529003>,  <35.914032, 33.623890, 42.386635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847988, 33.255962, 42.529003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419986, -0.260951, -0.869205,
		0.892385, -0.292993, -0.343225,
		-0.165106, -0.919815, 0.355922,
		35.798454, 32.980019, 42.635780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328121, 33.102077, 41.919899>,  <35.914032, 33.623890, 42.386635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328121, 33.102077, 41.919899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008308, 32.946091, 42.102619>,  <35.816422, 32.852497, 42.212254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008308, 32.946091, 42.102619>,  <36.328121, 33.102077, 41.919899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008308, 32.946091, 42.102619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342192, -0.329286, -0.880043,
		0.493611, -0.859938, 0.129830,
		-0.799533, -0.389972, 0.456803,
		35.768448, 32.829098, 42.239658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231888, 32.558315, 41.551105>,  <36.328121, 33.102077, 41.919899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231888, 32.558315, 41.551105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895855, 32.581459, 41.766853>,  <35.694237, 32.595345, 41.896301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895855, 32.581459, 41.766853>,  <36.231888, 32.558315, 41.551105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895855, 32.581459, 41.766853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542280, -0.115205, -0.832262,
		0.013986, -0.991655, 0.128156,
		-0.840081, 0.057857, 0.539366,
		35.643829, 32.598816, 41.928661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904060, 31.977915, 41.426289>,  <36.231888, 32.558315, 41.551105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904060, 31.977915, 41.426289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606369, 32.202629, 41.570797>,  <35.427753, 32.337460, 41.657501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606369, 32.202629, 41.570797>,  <35.904060, 31.977915, 41.426289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606369, 32.202629, 41.570797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588143, -0.294861, -0.753090,
		-0.316557, -0.772947, 0.549858,
		-0.744231, 0.561792, 0.361263,
		35.383099, 32.371166, 41.679176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237827, 31.622147, 41.551350>,  <35.904060, 31.977915, 41.426289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237827, 31.622147, 41.551350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127186, 32.002544, 41.496059>,  <35.060802, 32.230782, 41.462887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127186, 32.002544, 41.496059>,  <35.237827, 31.622147, 41.551350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127186, 32.002544, 41.496059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700928, -0.298050, -0.647970,
		-0.657413, -0.082342, 0.749018,
		-0.276600, 0.950992, -0.138226,
		35.044205, 32.287842, 41.454594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563461, 31.554924, 41.279041>,  <35.237827, 31.622147, 41.551350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563461, 31.554924, 41.279041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565998, 31.952234, 41.232800>,  <34.567520, 32.190620, 41.205055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565998, 31.952234, 41.232800>,  <34.563461, 31.554924, 41.279041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565998, 31.952234, 41.232800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552073, -0.092915, -0.828603,
		-0.833772, 0.069080, 0.547770,
		0.006344, 0.993275, -0.115608,
		34.567902, 32.250217, 41.198116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868156, 31.743979, 41.266598>,  <34.563461, 31.554924, 41.279041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868156, 31.743979, 41.266598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078777, 32.029259, 41.081520>,  <34.205151, 32.200428, 40.970474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078777, 32.029259, 41.081520>,  <33.868156, 31.743979, 41.266598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078777, 32.029259, 41.081520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568010, -0.109806, -0.815664,
		-0.632539, 0.692305, 0.347287,
		0.526554, 0.713202, -0.462693,
		34.236744, 32.243217, 40.942711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387661, 32.218525, 40.964176>,  <33.868156, 31.743979, 41.266598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387661, 32.218525, 40.964176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718063, 32.266392, 40.743851>,  <33.916306, 32.295113, 40.611656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718063, 32.266392, 40.743851>,  <33.387661, 32.218525, 40.964176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718063, 32.266392, 40.743851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551421, -0.030985, -0.833652,
		-0.116830, 0.992330, 0.040394,
		0.826006, 0.119670, -0.550811,
		33.965866, 32.302292, 40.578606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277695, 32.700058, 40.347908>,  <33.387661, 32.218525, 40.964176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277695, 32.700058, 40.347908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597473, 32.492649, 40.226570>,  <33.789341, 32.368202, 40.153767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597473, 32.492649, 40.226570>,  <33.277695, 32.700058, 40.347908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597473, 32.492649, 40.226570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357181, -0.004274, -0.934025,
		0.483015, 0.855054, -0.188623,
		0.799448, -0.518521, -0.303345,
		33.837307, 32.337093, 40.135567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462864, 33.053810, 39.743149>,  <33.277695, 32.700058, 40.347908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462864, 33.053810, 39.743149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621109, 32.686443, 39.743793>,  <33.716057, 32.466022, 39.744179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621109, 32.686443, 39.743793>,  <33.462864, 33.053810, 39.743149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621109, 32.686443, 39.743793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151946, -0.067182, -0.986103,
		0.905763, 0.389866, -0.166127,
		0.395609, -0.918418, 0.001612,
		33.739792, 32.410919, 39.744278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851017, 33.065754, 39.231411>,  <33.462864, 33.053810, 39.743149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851017, 33.065754, 39.231411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826221, 32.666927, 39.249386>,  <33.811344, 32.427631, 39.260170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826221, 32.666927, 39.249386>,  <33.851017, 33.065754, 39.231411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826221, 32.666927, 39.249386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016554, -0.043989, -0.998895,
		0.997940, -0.062660, -0.013779,
		-0.061984, -0.997065, 0.044935,
		33.807625, 32.367809, 39.262867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291386, 32.787849, 38.815487>,  <33.851017, 33.065754, 39.231411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291386, 32.787849, 38.815487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029343, 32.487072, 38.844898>,  <33.872116, 32.306606, 38.862545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029343, 32.487072, 38.844898>,  <34.291386, 32.787849, 38.815487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029343, 32.487072, 38.844898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021944, -0.116218, -0.992981,
		0.755214, -0.648900, 0.092637,
		-0.655111, -0.751946, 0.073530,
		33.832809, 32.261490, 38.866959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592857, 32.234684, 38.339756>,  <34.291386, 32.787849, 38.815487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592857, 32.234684, 38.339756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210079, 32.163300, 38.431324>,  <33.980412, 32.120468, 38.486263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210079, 32.163300, 38.431324>,  <34.592857, 32.234684, 38.339756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210079, 32.163300, 38.431324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137462, -0.415975, -0.898927,
		0.255651, -0.891692, 0.373534,
		-0.956946, -0.178465, 0.228919,
		33.922997, 32.109760, 38.500000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443920, 31.552660, 38.102882>,  <34.592857, 32.234684, 38.339756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443920, 31.552660, 38.102882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085850, 31.728622, 38.131592>,  <33.871010, 31.834200, 38.148819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085850, 31.728622, 38.131592>,  <34.443920, 31.552660, 38.102882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085850, 31.728622, 38.131592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238467, -0.336630, -0.910941,
		-0.376567, -0.832564, 0.406244,
		-0.895171, 0.439907, 0.071775,
		33.817299, 31.860594, 38.153126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068321, 31.129448, 37.632679>,  <34.443920, 31.552660, 38.102882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068321, 31.129448, 37.632679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821228, 31.439737, 37.684303>,  <33.672970, 31.625910, 37.715279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821228, 31.439737, 37.684303>,  <34.068321, 31.129448, 37.632679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821228, 31.439737, 37.684303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448310, -0.212551, -0.868240,
		-0.646080, -0.594204, 0.479064,
		-0.617737, 0.775721, 0.129063,
		33.635906, 31.672453, 37.723022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441387, 30.949966, 37.477333>,  <34.068321, 31.129448, 37.632679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441387, 30.949966, 37.477333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401672, 31.346697, 37.445263>,  <33.377846, 31.584734, 37.426022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401672, 31.346697, 37.445263>,  <33.441387, 30.949966, 37.477333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401672, 31.346697, 37.445263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455559, -0.116940, -0.882492,
		-0.884652, -0.051093, 0.463444,
		-0.099284, 0.991824, -0.080175,
		33.371887, 31.644243, 37.421211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770138, 31.135765, 37.046940>,  <33.441387, 30.949966, 37.477333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770138, 31.135765, 37.046940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962215, 31.483513, 37.000282>,  <33.077461, 31.692162, 36.972286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962215, 31.483513, 37.000282>,  <32.770138, 31.135765, 37.046940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962215, 31.483513, 37.000282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270221, 0.020102, -0.962588,
		-0.834502, 0.493750, 0.244576,
		0.480195, 0.869371, -0.116646,
		33.106274, 31.744324, 36.965290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283710, 31.592300, 36.787453>,  <32.770138, 31.135765, 37.046940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283710, 31.592300, 36.787453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645061, 31.739830, 36.699928>,  <32.861874, 31.828348, 36.647411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645061, 31.739830, 36.699928>,  <32.283710, 31.592300, 36.787453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645061, 31.739830, 36.699928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259001, 0.062556, -0.963849,
		-0.341804, 0.927391, 0.152038,
		0.903376, 0.368826, -0.218814,
		32.916073, 31.850477, 36.634285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167542, 32.039768, 36.189400>,  <32.283710, 31.592300, 36.787453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167542, 32.039768, 36.189400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564690, 31.995785, 36.171032>,  <32.802979, 31.969395, 36.160011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564690, 31.995785, 36.171032>,  <32.167542, 32.039768, 36.189400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564690, 31.995785, 36.171032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036131, 0.089447, -0.995336,
		0.113551, 0.989904, 0.084837,
		0.992875, -0.109956, -0.045923,
		32.862553, 31.962797, 36.157253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451389, 32.676857, 35.930027>,  <32.167542, 32.039768, 36.189400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451389, 32.676857, 35.930027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710304, 32.381462, 35.854500>,  <32.865654, 32.204224, 35.809185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710304, 32.381462, 35.854500>,  <32.451389, 32.676857, 35.930027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710304, 32.381462, 35.854500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002884, 0.250082, -0.968220,
		0.762239, 0.626174, 0.164005,
		0.647289, -0.738489, -0.188817,
		32.904491, 32.159916, 35.797855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016602, 33.060329, 35.679787>,  <32.451389, 32.676857, 35.930027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016602, 33.060329, 35.679787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063004, 32.684177, 35.551891>,  <33.090843, 32.458488, 35.475155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063004, 32.684177, 35.551891>,  <33.016602, 33.060329, 35.679787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063004, 32.684177, 35.551891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209733, 0.337847, -0.917536,
		0.970853, 0.039380, 0.236420,
		0.116006, -0.940377, -0.319740,
		33.097805, 32.402065, 35.455971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674324, 32.997684, 35.397465>,  <33.016602, 33.060329, 35.679787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674324, 32.997684, 35.397465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465256, 32.703339, 35.225273>,  <33.339813, 32.526730, 35.121956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465256, 32.703339, 35.225273>,  <33.674324, 32.997684, 35.397465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465256, 32.703339, 35.225273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217466, 0.373161, -0.901920,
		0.824331, -0.565024, -0.035016,
		-0.522673, -0.735866, -0.430482,
		33.308453, 32.482578, 35.096130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959770, 32.900082, 34.777683>,  <33.674324, 32.997684, 35.397465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959770, 32.900082, 34.777683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622093, 32.697186, 34.708355>,  <33.419487, 32.575447, 34.666759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622093, 32.697186, 34.708355>,  <33.959770, 32.900082, 34.777683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622093, 32.697186, 34.708355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029153, 0.366309, -0.930037,
		0.535241, -0.780081, -0.324024,
		-0.844197, -0.507240, -0.173322,
		33.368835, 32.545013, 34.656357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941525, 32.771561, 34.153191>,  <33.959770, 32.900082, 34.777683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941525, 32.771561, 34.153191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563030, 32.681309, 34.245907>,  <33.335934, 32.627159, 34.301537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563030, 32.681309, 34.245907>,  <33.941525, 32.771561, 34.153191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563030, 32.681309, 34.245907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314258, 0.471347, -0.824059,
		0.076678, -0.852597, -0.516912,
		-0.946236, -0.225631, 0.231793,
		33.279160, 32.613621, 34.315445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680756, 33.135212, 34.001240>,  <33.941525, 32.771561, 34.153191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680756, 33.135212, 34.001240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945301, 32.927505, 33.784737>,  <35.104027, 32.802879, 33.654835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945301, 32.927505, 33.784737>,  <34.680756, 33.135212, 34.001240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945301, 32.927505, 33.784737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465480, -0.281699, 0.839031,
		-0.588154, -0.806849, 0.055404,
		0.661364, -0.519270, -0.541254,
		35.143711, 32.771725, 33.622360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804245, 32.398746, 34.331600>,  <34.680756, 33.135212, 34.001240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804245, 32.398746, 34.331600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114162, 32.530514, 34.115757>,  <35.300114, 32.609573, 33.986252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114162, 32.530514, 34.115757>,  <34.804245, 32.398746, 34.331600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114162, 32.530514, 34.115757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619624, -0.226167, 0.751608,
		0.125555, -0.916695, -0.379351,
		0.774791, 0.329423, -0.539610,
		35.346600, 32.629341, 33.953873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143135, 31.884306, 34.333576>,  <34.804245, 32.398746, 34.331600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143135, 31.884306, 34.333576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379162, 32.202312, 34.277336>,  <35.520779, 32.393116, 34.243591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379162, 32.202312, 34.277336>,  <35.143135, 31.884306, 34.333576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379162, 32.202312, 34.277336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495640, -0.219238, 0.840402,
		0.637309, -0.565582, -0.523407,
		0.590067, 0.795017, -0.140602,
		35.556183, 32.440819, 34.235157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732269, 31.674866, 34.623245>,  <35.143135, 31.884306, 34.333576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732269, 31.674866, 34.623245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796539, 32.068512, 34.593052>,  <35.835102, 32.304699, 34.574936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796539, 32.068512, 34.593052>,  <35.732269, 31.674866, 34.623245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796539, 32.068512, 34.593052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688824, -0.057037, 0.722681,
		0.706897, -0.168110, -0.687048,
		0.160677, 0.984117, -0.075479,
		35.844742, 32.363747, 34.570408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408112, 31.696836, 34.722256>,  <35.732269, 31.674866, 34.623245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408112, 31.696836, 34.722256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283443, 32.069294, 34.797970>,  <36.208641, 32.292770, 34.843399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283443, 32.069294, 34.797970>,  <36.408112, 31.696836, 34.722256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283443, 32.069294, 34.797970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704159, 0.092585, 0.703980,
		0.637982, 0.352701, -0.684530,
		-0.311671, 0.931145, 0.189290,
		36.189941, 32.348637, 34.854755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001728, 32.030643, 34.857964>,  <36.408112, 31.696836, 34.722256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001728, 32.030643, 34.857964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709442, 32.227440, 35.047279>,  <36.534069, 32.345516, 35.160870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709442, 32.227440, 35.047279>,  <37.001728, 32.030643, 34.857964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709442, 32.227440, 35.047279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612379, 0.165954, 0.772950,
		0.301739, 0.854638, -0.422549,
		-0.730716, 0.491989, 0.473287,
		36.490227, 32.375038, 35.189266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371368, 32.376339, 35.245636>,  <37.001728, 32.030643, 34.857964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371368, 32.376339, 35.245636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016617, 32.457329, 35.411747>,  <36.803768, 32.505924, 35.511414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016617, 32.457329, 35.411747>,  <37.371368, 32.376339, 35.245636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016617, 32.457329, 35.411747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457994, 0.267104, 0.847878,
		0.060753, 0.942157, -0.329620,
		-0.886877, 0.202475, 0.415275,
		36.750553, 32.518070, 35.536331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447319, 33.038158, 35.501816>,  <37.371368, 32.376339, 35.245636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447319, 33.038158, 35.501816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160007, 32.863338, 35.718353>,  <36.987621, 32.758446, 35.848278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160007, 32.863338, 35.718353>,  <37.447319, 33.038158, 35.501816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160007, 32.863338, 35.718353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499146, 0.218338, 0.838559,
		-0.484692, 0.872532, 0.061325,
		-0.718281, -0.437054, 0.541347,
		36.944523, 32.732224, 35.880756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387802, 33.476479, 36.137848>,  <37.447319, 33.038158, 35.501816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387802, 33.476479, 36.137848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232983, 33.115807, 36.214970>,  <37.140091, 32.899403, 36.261242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232983, 33.115807, 36.214970>,  <37.387802, 33.476479, 36.137848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232983, 33.115807, 36.214970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272905, 0.087705, 0.958035,
		-0.880746, 0.423426, 0.212125,
		-0.387053, -0.901675, 0.192801,
		37.116867, 32.845303, 36.272808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123901, 33.617065, 36.767323>,  <37.387802, 33.476479, 36.137848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123901, 33.617065, 36.767323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129246, 33.217548, 36.748409>,  <37.132450, 32.977837, 36.737061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129246, 33.217548, 36.748409>,  <37.123901, 33.617065, 36.767323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129246, 33.217548, 36.748409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279886, -0.041662, 0.959129,
		-0.959940, -0.026047, 0.278992,
		0.013359, -0.998792, -0.047284,
		37.133255, 32.917912, 36.734222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700581, 33.414742, 37.342979>,  <37.123901, 33.617065, 36.767323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700581, 33.414742, 37.342979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923813, 33.103218, 37.228436>,  <37.057751, 32.916302, 37.159710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923813, 33.103218, 37.228436>,  <36.700581, 33.414742, 37.342979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923813, 33.103218, 37.228436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429963, -0.023746, 0.902534,
		-0.709704, -0.626809, 0.321607,
		0.558079, -0.778811, -0.286357,
		37.091236, 32.869576, 37.142529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529072, 32.859295, 37.881912>,  <36.700581, 33.414742, 37.342979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529072, 32.859295, 37.881912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881180, 32.794319, 37.703594>,  <37.092445, 32.755333, 37.596603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881180, 32.794319, 37.703594>,  <36.529072, 32.859295, 37.881912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881180, 32.794319, 37.703594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403857, -0.236632, 0.883688,
		-0.249026, -0.957926, -0.142703,
		0.880276, -0.162430, -0.445792,
		37.145260, 32.745586, 37.569855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737789, 32.157448, 38.077438>,  <36.529072, 32.859295, 37.881912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737789, 32.157448, 38.077438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077183, 32.329563, 37.954201>,  <37.280819, 32.432831, 37.880257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077183, 32.329563, 37.954201>,  <36.737789, 32.157448, 38.077438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077183, 32.329563, 37.954201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498882, -0.456071, 0.736964,
		0.176596, -0.779006, -0.601634,
		0.848487, 0.430289, -0.308093,
		37.331730, 32.458649, 37.861774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307880, 31.652330, 38.205532>,  <36.737789, 32.157448, 38.077438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307880, 31.652330, 38.205532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497231, 32.004581, 38.197403>,  <37.610840, 32.215931, 38.192528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497231, 32.004581, 38.197403>,  <37.307880, 31.652330, 38.205532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497231, 32.004581, 38.197403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553271, -0.279298, 0.784783,
		0.685426, -0.382738, -0.619437,
		0.473373, 0.880627, -0.020320,
		37.639244, 32.268768, 38.191307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007904, 31.483395, 38.246502>,  <37.307880, 31.652330, 38.205532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007904, 31.483395, 38.246502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945782, 31.856737, 38.375950>,  <37.908508, 32.080742, 38.453617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945782, 31.856737, 38.375950>,  <38.007904, 31.483395, 38.246502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945782, 31.856737, 38.375950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525884, -0.199204, 0.826900,
		0.836258, 0.298605, -0.459900,
		-0.155303, 0.933356, 0.323617,
		37.899189, 32.136745, 38.473034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647541, 31.711363, 38.590000>,  <38.007904, 31.483395, 38.246502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647541, 31.711363, 38.590000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381443, 31.968830, 38.741341>,  <38.221786, 32.123310, 38.832146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381443, 31.968830, 38.741341>,  <38.647541, 31.711363, 38.590000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381443, 31.968830, 38.741341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414280, -0.103362, 0.904261,
		0.621150, 0.758294, -0.197897,
		-0.665241, 0.643667, 0.378349,
		38.181870, 32.161930, 38.854847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044273, 32.164322, 38.935818>,  <38.647541, 31.711363, 38.590000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044273, 32.164322, 38.935818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681911, 32.198654, 39.101696>,  <38.464497, 32.219254, 39.201225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681911, 32.198654, 39.101696>,  <39.044273, 32.164322, 38.935818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681911, 32.198654, 39.101696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420707, 0.070350, 0.904465,
		0.048457, 0.993823, -0.099839,
		-0.905902, 0.085831, 0.414699,
		38.410141, 32.224403, 39.226105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096954, 32.709190, 39.490395>,  <39.044273, 32.164322, 38.935818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096954, 32.709190, 39.490395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762314, 32.515518, 39.592907>,  <38.561531, 32.399315, 39.654415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762314, 32.515518, 39.592907>,  <39.096954, 32.709190, 39.490395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762314, 32.515518, 39.592907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259823, 0.061158, 0.963718,
		-0.482284, 0.872829, 0.074636,
		-0.836597, -0.484178, 0.256276,
		38.511333, 32.370266, 39.669788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586277, 33.126629, 40.104305>,  <39.096954, 32.709190, 39.490395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586277, 33.126629, 40.104305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504639, 32.735153, 40.113380>,  <38.455654, 32.500267, 40.118824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504639, 32.735153, 40.113380>,  <38.586277, 33.126629, 40.104305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504639, 32.735153, 40.113380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074689, 0.007543, 0.997178,
		-0.976098, 0.205214, 0.071558,
		-0.204095, -0.978688, 0.022689,
		38.443409, 32.441547, 40.120186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087589, 33.098976, 40.635185>,  <38.586277, 33.126629, 40.104305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087589, 33.098976, 40.635185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198563, 32.717670, 40.587330>,  <38.265148, 32.488888, 40.558617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198563, 32.717670, 40.587330>,  <38.087589, 33.098976, 40.635185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198563, 32.717670, 40.587330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010347, -0.127486, 0.991786,
		-0.960689, -0.273919, -0.045233,
		0.277435, -0.953266, -0.119640,
		38.281792, 32.431690, 40.551437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640877, 32.724297, 41.137810>,  <38.087589, 33.098976, 40.635185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640877, 32.724297, 41.137810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941444, 32.478630, 41.041332>,  <38.121784, 32.331230, 40.983444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941444, 32.478630, 41.041332>,  <37.640877, 32.724297, 41.137810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941444, 32.478630, 41.041332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007070, -0.358026, 0.933685,
		-0.659792, -0.703290, -0.264683,
		0.751415, -0.614167, -0.241195,
		38.166870, 32.294380, 40.968975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384163, 32.045727, 41.284069>,  <37.640877, 32.724297, 41.137810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384163, 32.045727, 41.284069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783852, 32.049572, 41.299362>,  <38.023666, 32.051880, 41.308537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783852, 32.049572, 41.299362>,  <37.384163, 32.045727, 41.284069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783852, 32.049572, 41.299362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034701, -0.245736, 0.968715,
		0.018706, -0.969289, -0.245211,
		0.999223, 0.009612, 0.038232,
		38.083618, 32.052456, 41.310833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433971, 31.593048, 41.799664>,  <37.384163, 32.045727, 41.284069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433971, 31.593048, 41.799664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796547, 31.756111, 41.755524>,  <38.014091, 31.853949, 41.729038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796547, 31.756111, 41.755524>,  <37.433971, 31.593048, 41.799664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796547, 31.756111, 41.755524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212384, -0.214157, 0.953430,
		0.365041, -0.887666, -0.280701,
		0.906442, 0.407658, -0.110350,
		38.068481, 31.878408, 41.722420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867241, 31.149473, 42.025166>,  <37.433971, 31.593048, 41.799664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867241, 31.149473, 42.025166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053787, 31.501440, 42.061493>,  <38.165714, 31.712620, 42.083290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053787, 31.501440, 42.061493>,  <37.867241, 31.149473, 42.025166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053787, 31.501440, 42.061493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284051, -0.246199, 0.926661,
		0.837744, -0.406367, -0.364761,
		0.466368, 0.879916, 0.090823,
		38.193699, 31.765415, 42.088741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482292, 31.072844, 42.462811>,  <37.867241, 31.149473, 42.025166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482292, 31.072844, 42.462811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429390, 31.469330, 42.462070>,  <38.397648, 31.707222, 42.461628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429390, 31.469330, 42.462070>,  <38.482292, 31.072844, 42.462811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429390, 31.469330, 42.462070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433164, 0.059473, 0.899351,
		0.891559, 0.118147, -0.437224,
		-0.132259, 0.991214, -0.001847,
		38.389713, 31.766693, 42.461517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953274, 31.332560, 42.889896>,  <38.482292, 31.072844, 42.462811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953274, 31.332560, 42.889896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731323, 31.665327, 42.887825>,  <38.598152, 31.864986, 42.886581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731323, 31.665327, 42.887825>,  <38.953274, 31.332560, 42.889896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731323, 31.665327, 42.887825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387687, 0.264082, 0.883153,
		0.736078, 0.488032, -0.469056,
		-0.554876, 0.831917, -0.005181,
		38.564861, 31.914902, 42.886272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472847, 31.899055, 43.022633>,  <38.953274, 31.332560, 42.889896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472847, 31.899055, 43.022633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094109, 32.007557, 43.091805>,  <38.866867, 32.072659, 43.133308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094109, 32.007557, 43.091805>,  <39.472847, 31.899055, 43.022633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094109, 32.007557, 43.091805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304130, 0.579637, 0.755993,
		0.104829, 0.768402, -0.631323,
		-0.946845, 0.271254, 0.172931,
		38.810055, 32.088932, 43.143684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426640, 32.618736, 43.010651>,  <39.472847, 31.899055, 43.022633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426640, 32.618736, 43.010651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126099, 32.482445, 43.236702>,  <38.945774, 32.400669, 43.372334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126099, 32.482445, 43.236702>,  <39.426640, 32.618736, 43.010651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126099, 32.482445, 43.236702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250618, 0.644883, 0.722023,
		-0.610458, 0.684125, -0.399141,
		-0.751353, -0.340733, 0.565127,
		38.900692, 32.380226, 43.406239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127697, 33.201283, 43.219200>,  <39.426640, 32.618736, 43.010651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127697, 33.201283, 43.219200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976315, 32.936821, 43.478321>,  <38.885487, 32.778145, 43.633793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976315, 32.936821, 43.478321>,  <39.127697, 33.201283, 43.219200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976315, 32.936821, 43.478321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212554, 0.619080, 0.756016,
		-0.900884, 0.423812, -0.093763,
		-0.378456, -0.661153, 0.647802,
		38.862778, 32.738476, 43.672661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581028, 33.466129, 43.561485>,  <39.127697, 33.201283, 43.219200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581028, 33.466129, 43.561485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703739, 33.179199, 43.811710>,  <38.777367, 33.007042, 43.961845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703739, 33.179199, 43.811710>,  <38.581028, 33.466129, 43.561485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703739, 33.179199, 43.811710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056237, 0.669765, 0.740441,
		-0.950117, -0.191975, 0.245812,
		0.306783, -0.717329, 0.625558,
		38.795773, 32.964001, 43.999378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178276, 33.569679, 44.220959>,  <38.581028, 33.466129, 43.561485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178276, 33.569679, 44.220959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488922, 33.333012, 44.307495>,  <38.675308, 33.191013, 44.359417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488922, 33.333012, 44.307495>,  <38.178276, 33.569679, 44.220959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488922, 33.333012, 44.307495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148614, 0.505786, 0.849761,
		-0.612199, -0.627783, 0.480729,
		0.776612, -0.591666, 0.216345,
		38.721905, 33.155510, 44.372398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112904, 33.518318, 44.896999>,  <38.178276, 33.569679, 44.220959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112904, 33.518318, 44.896999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491383, 33.395077, 44.857449>,  <38.718472, 33.321133, 44.833717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491383, 33.395077, 44.857449>,  <38.112904, 33.518318, 44.896999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491383, 33.395077, 44.857449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172206, 0.220769, 0.960003,
		-0.273949, -0.925383, 0.261949,
		0.946201, -0.308101, -0.098877,
		38.775242, 33.302647, 44.827785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270752, 33.059711, 45.391575>,  <38.112904, 33.518318, 44.896999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270752, 33.059711, 45.391575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621132, 33.224110, 45.290550>,  <38.831360, 33.322750, 45.229935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621132, 33.224110, 45.290550>,  <38.270752, 33.059711, 45.391575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621132, 33.224110, 45.290550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230444, 0.103430, 0.967573,
		0.423793, -0.905750, -0.004112,
		0.875954, 0.410998, -0.252558,
		38.883919, 33.347408, 45.214783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648594, 32.814102, 45.942780>,  <38.270752, 33.059711, 45.391575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648594, 32.814102, 45.942780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847374, 33.110260, 45.761734>,  <38.966640, 33.287952, 45.653107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847374, 33.110260, 45.761734>,  <38.648594, 32.814102, 45.942780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847374, 33.110260, 45.761734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247965, 0.378675, 0.891694,
		0.831597, -0.555361, 0.004591,
		0.496951, 0.740392, -0.452615,
		38.996460, 33.332378, 45.625950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187550, 32.913929, 46.455093>,  <38.648594, 32.814102, 45.942780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187550, 32.913929, 46.455093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180668, 33.231960, 46.212589>,  <39.176537, 33.422779, 46.067089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180668, 33.231960, 46.212589>,  <39.187550, 32.913929, 46.455093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180668, 33.231960, 46.212589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302405, 0.582088, 0.754801,
		0.953024, -0.170347, -0.250453,
		-0.017207, 0.795082, -0.606257,
		39.175507, 33.470486, 46.030712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835968, 33.228317, 46.520058>,  <39.187550, 32.913929, 46.455093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835968, 33.228317, 46.520058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587170, 33.505219, 46.373684>,  <39.437889, 33.671360, 46.285862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587170, 33.505219, 46.373684>,  <39.835968, 33.228317, 46.520058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587170, 33.505219, 46.373684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401416, 0.683154, 0.610054,
		0.672301, 0.232559, -0.702800,
		-0.621995, 0.692255, -0.365932,
		39.400570, 33.712894, 46.263905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270985, 33.844505, 46.547062>,  <39.835968, 33.228317, 46.520058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270985, 33.844505, 46.547062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888615, 33.961514, 46.536999>,  <39.659191, 34.031719, 46.530960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888615, 33.961514, 46.536999>,  <40.270985, 33.844505, 46.547062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888615, 33.961514, 46.536999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162658, 0.598972, 0.784076,
		0.244426, 0.745429, -0.620155,
		-0.955928, 0.292522, -0.025154,
		39.601837, 34.049271, 46.529453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226227, 34.550304, 46.476662>,  <40.270985, 33.844505, 46.547062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226227, 34.550304, 46.476662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894154, 34.401508, 46.642757>,  <39.694912, 34.312229, 46.742413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894154, 34.401508, 46.642757>,  <40.226227, 34.550304, 46.476662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894154, 34.401508, 46.642757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218906, 0.467491, 0.856465,
		-0.512720, 0.801918, -0.306670,
		-0.830180, -0.371995, 0.415236,
		39.645100, 34.289909, 46.767330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687614, 34.922520, 46.012691>,  <40.226227, 34.550304, 46.476662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687614, 34.922520, 46.012691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050591, 35.088909, 46.036381>,  <41.268375, 35.188744, 46.050594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050591, 35.088909, 46.036381>,  <40.687614, 34.922520, 46.012691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050591, 35.088909, 46.036381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104086, 0.359105, -0.927475,
		-0.407076, 0.835468, 0.369165,
		0.907444, 0.415978, 0.059222,
		41.322823, 35.213703, 46.054146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640984, 35.573238, 45.668926>,  <40.687614, 34.922520, 46.012691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640984, 35.573238, 45.668926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035065, 35.509346, 45.693798>,  <41.271511, 35.471008, 45.708721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035065, 35.509346, 45.693798>,  <40.640984, 35.573238, 45.668926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035065, 35.509346, 45.693798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127519, 0.440577, -0.888612,
		0.114544, 0.883390, 0.454425,
		0.985200, -0.159732, 0.062183,
		41.330624, 35.461426, 45.712452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924179, 36.109821, 45.341431>,  <40.640984, 35.573238, 45.668926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924179, 36.109821, 45.341431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235634, 35.858833, 45.342575>,  <41.422504, 35.708241, 45.343262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235634, 35.858833, 45.342575>,  <40.924179, 36.109821, 45.341431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235634, 35.858833, 45.342575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315713, 0.387816, -0.865982,
		0.542269, 0.675187, 0.500068,
		0.778634, -0.627473, 0.002865,
		41.469223, 35.670593, 45.343433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440762, 36.537781, 45.079800>,  <40.924179, 36.109821, 45.341431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440762, 36.537781, 45.079800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532173, 36.151974, 45.026905>,  <41.587021, 35.920490, 44.995167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532173, 36.151974, 45.026905>,  <41.440762, 36.537781, 45.079800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532173, 36.151974, 45.026905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067456, 0.151193, -0.986200,
		0.971198, 0.216454, 0.099614,
		0.228527, -0.964514, -0.132237,
		41.600731, 35.862617, 44.987232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111187, 36.527927, 44.725510>,  <41.440762, 36.537781, 45.079800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111187, 36.527927, 44.725510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915695, 36.184689, 44.662502>,  <41.798401, 35.978745, 44.624699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915695, 36.184689, 44.662502>,  <42.111187, 36.527927, 44.725510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915695, 36.184689, 44.662502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121473, 0.111860, -0.986271,
		0.863936, -0.501157, 0.049566,
		-0.488732, -0.858096, -0.157517,
		41.769077, 35.927261, 44.615246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457535, 36.278625, 44.247097>,  <42.111187, 36.527927, 44.725510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457535, 36.278625, 44.247097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087063, 36.128086, 44.237698>,  <41.864780, 36.037762, 44.232059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087063, 36.128086, 44.237698>,  <42.457535, 36.278625, 44.247097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087063, 36.128086, 44.237698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009511, 0.038978, -0.999195,
		0.376959, -0.925659, -0.032522,
		-0.926181, -0.376346, -0.023497,
		41.809208, 36.015182, 44.230648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487766, 35.764339, 43.749851>,  <42.457535, 36.278625, 44.247097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487766, 35.764339, 43.749851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089989, 35.804684, 43.761887>,  <41.851322, 35.828892, 43.769108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089989, 35.804684, 43.761887>,  <42.487766, 35.764339, 43.749851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089989, 35.804684, 43.761887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033450, -0.031796, -0.998935,
		-0.099803, -0.994392, 0.034994,
		-0.994445, 0.100867, 0.030089,
		41.791656, 35.834942, 43.770912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188740, 35.352531, 43.361088>,  <42.487766, 35.764339, 43.749851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188740, 35.352531, 43.361088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850590, 35.558163, 43.419136>,  <41.647701, 35.681541, 43.453964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850590, 35.558163, 43.419136>,  <42.188740, 35.352531, 43.361088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850590, 35.558163, 43.419136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292898, -0.218904, -0.930748,
		-0.446712, -0.829338, 0.335630,
		-0.845375, 0.514082, 0.145125,
		41.596977, 35.712387, 43.462673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736027, 34.861477, 43.174068>,  <42.188740, 35.352531, 43.361088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736027, 34.861477, 43.174068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562546, 35.220741, 43.145210>,  <41.458458, 35.436302, 43.127895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562546, 35.220741, 43.145210>,  <41.736027, 34.861477, 43.174068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562546, 35.220741, 43.145210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374433, -0.252473, -0.892220,
		-0.819574, -0.359946, 0.445800,
		-0.433703, 0.898163, -0.072145,
		41.432434, 35.490189, 43.123566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002380, 34.774395, 43.085377>,  <41.736027, 34.861477, 43.174068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002380, 34.774395, 43.085377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074512, 35.133007, 42.923527>,  <41.117794, 35.348175, 42.826416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074512, 35.133007, 42.923527>,  <41.002380, 34.774395, 43.085377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074512, 35.133007, 42.923527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316826, -0.336497, -0.886787,
		-0.931182, 0.288112, 0.223361,
		0.180334, 0.896527, -0.404622,
		41.128613, 35.401966, 42.802139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461746, 34.829700, 42.641472>,  <41.002380, 34.774395, 43.085377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461746, 34.829700, 42.641472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737343, 35.085152, 42.504387>,  <40.902699, 35.238422, 42.422134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737343, 35.085152, 42.504387>,  <40.461746, 34.829700, 42.641472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737343, 35.085152, 42.504387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398555, -0.061101, -0.915107,
		-0.605351, 0.767088, 0.212430,
		0.688988, 0.638626, -0.342714,
		40.944038, 35.276741, 42.401573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060303, 35.290600, 42.272766>,  <40.461746, 34.829700, 42.641472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060303, 35.290600, 42.272766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441612, 35.313625, 42.154137>,  <40.670399, 35.327442, 42.082958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441612, 35.313625, 42.154137>,  <40.060303, 35.290600, 42.272766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441612, 35.313625, 42.154137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300556, 0.081418, -0.950283,
		-0.030555, 0.995016, 0.094915,
		0.953275, 0.057564, -0.296570,
		40.727596, 35.330894, 42.065166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979214, 35.785507, 41.836304>,  <40.060303, 35.290600, 42.272766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979214, 35.785507, 41.836304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315891, 35.591133, 41.742138>,  <40.517899, 35.474506, 41.685638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315891, 35.591133, 41.742138>,  <39.979214, 35.785507, 41.836304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315891, 35.591133, 41.742138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329678, -0.117198, -0.936791,
		0.427632, 0.866100, -0.258848,
		0.841691, -0.485938, -0.235417,
		40.568398, 35.445351, 41.671513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145523, 36.024773, 41.213791>,  <39.979214, 35.785507, 41.836304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145523, 36.024773, 41.213791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377625, 35.699043, 41.208477>,  <40.516884, 35.503605, 41.205288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377625, 35.699043, 41.208477>,  <40.145523, 36.024773, 41.213791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377625, 35.699043, 41.208477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247494, -0.160765, -0.955459,
		0.775920, 0.557697, -0.294826,
		0.580254, -0.814327, -0.013286,
		40.551701, 35.454746, 41.204491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468708, 36.121517, 40.636070>,  <40.145523, 36.024773, 41.213791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468708, 36.121517, 40.636070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499008, 35.731449, 40.719318>,  <40.517189, 35.497410, 40.769268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499008, 35.731449, 40.719318>,  <40.468708, 36.121517, 40.636070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499008, 35.731449, 40.719318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242351, -0.220464, -0.944808,
		0.967227, 0.021129, -0.253032,
		0.075747, -0.975166, 0.208118,
		40.521732, 35.438900, 40.781754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659771, 35.933731, 40.048084>,  <40.468708, 36.121517, 40.636070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659771, 35.933731, 40.048084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540440, 35.592651, 40.219620>,  <40.468842, 35.388004, 40.322540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540440, 35.592651, 40.219620>,  <40.659771, 35.933731, 40.048084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540440, 35.592651, 40.219620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243914, -0.366271, -0.897971,
		0.922771, -0.372490, -0.098716,
		-0.298328, -0.852700, 0.428840,
		40.450943, 35.336842, 40.348270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866280, 35.380707, 39.672592>,  <40.659771, 35.933731, 40.048084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866280, 35.380707, 39.672592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553017, 35.213860, 39.857063>,  <40.365059, 35.113750, 39.967747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553017, 35.213860, 39.857063>,  <40.866280, 35.380707, 39.672592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553017, 35.213860, 39.857063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396730, -0.235929, -0.887098,
		0.478827, -0.877698, 0.019287,
		-0.783154, -0.417114, 0.461178,
		40.318069, 35.088726, 39.995415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820766, 34.776669, 39.309872>,  <40.866280, 35.380707, 39.672592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820766, 34.776669, 39.309872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487461, 34.801891, 39.529575>,  <40.287476, 34.817024, 39.661400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487461, 34.801891, 39.529575>,  <40.820766, 34.776669, 39.309872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487461, 34.801891, 39.529575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500580, -0.507797, -0.701114,
		0.234705, -0.859166, 0.454695,
		-0.833266, 0.063056, 0.549264,
		40.237480, 34.820808, 39.694355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591881, 34.056953, 39.608021>,  <40.820766, 34.776669, 39.309872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591881, 34.056953, 39.608021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284103, 34.304867, 39.546284>,  <40.099438, 34.453613, 39.509243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284103, 34.304867, 39.546284>,  <40.591881, 34.056953, 39.608021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284103, 34.304867, 39.546284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315833, -0.579243, -0.751483,
		-0.555153, -0.529484, 0.641445,
		-0.769451, 0.619778, -0.154340,
		40.053268, 34.490803, 39.499981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061958, 33.639664, 39.480461>,  <40.591881, 34.056953, 39.608021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061958, 33.639664, 39.480461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952553, 33.995354, 39.333782>,  <39.886909, 34.208767, 39.245773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952553, 33.995354, 39.333782>,  <40.061958, 33.639664, 39.480461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952553, 33.995354, 39.333782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348241, -0.446920, -0.824009,
		-0.896614, -0.097681, 0.431905,
		-0.273517, 0.889225, -0.366698,
		39.870499, 34.262119, 39.223774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372929, 33.570251, 39.186375>,  <40.061958, 33.639664, 39.480461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372929, 33.570251, 39.186375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509415, 33.895672, 38.998032>,  <39.591305, 34.090923, 38.885025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509415, 33.895672, 38.998032>,  <39.372929, 33.570251, 39.186375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509415, 33.895672, 38.998032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433731, -0.308137, -0.846717,
		-0.833938, 0.493134, 0.247723,
		0.341212, 0.813554, -0.470854,
		39.611778, 34.139740, 38.856777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804012, 33.696289, 38.732746>,  <39.372929, 33.570251, 39.186375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804012, 33.696289, 38.732746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092312, 33.938549, 38.597862>,  <39.265293, 34.083904, 38.516930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092312, 33.938549, 38.597862>,  <38.804012, 33.696289, 38.732746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092312, 33.938549, 38.597862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298967, -0.167300, -0.939484,
		-0.625412, 0.777947, 0.060488,
		0.720749, 0.605648, -0.337212,
		39.308537, 34.120243, 38.496700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487251, 34.035366, 38.104656>,  <38.804012, 33.696289, 38.732746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487251, 34.035366, 38.104656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883194, 34.083279, 38.074112>,  <39.120762, 34.112026, 38.055786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883194, 34.083279, 38.074112>,  <38.487251, 34.035366, 38.104656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883194, 34.083279, 38.074112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040570, -0.276790, -0.960074,
		-0.136138, 0.953436, -0.269123,
		0.989859, 0.119784, -0.076362,
		39.180153, 34.119213, 38.051205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512905, 34.513763, 37.536816>,  <38.487251, 34.035366, 38.104656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512905, 34.513763, 37.536816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839127, 34.285858, 37.577290>,  <39.034859, 34.149117, 37.601574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839127, 34.285858, 37.577290>,  <38.512905, 34.513763, 37.536816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839127, 34.285858, 37.577290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038011, -0.121728, -0.991835,
		0.577425, 0.812746, -0.077619,
		0.815558, -0.569760, 0.101182,
		39.083794, 34.114929, 37.607643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941814, 34.789978, 37.095711>,  <38.512905, 34.513763, 37.536816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941814, 34.789978, 37.095711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088127, 34.422012, 37.152237>,  <39.175915, 34.201233, 37.186153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088127, 34.422012, 37.152237>,  <38.941814, 34.789978, 37.095711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088127, 34.422012, 37.152237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054339, -0.130472, -0.989962,
		0.929114, 0.369786, 0.002264,
		0.365778, -0.919911, 0.141317,
		39.197861, 34.146038, 37.194633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531235, 34.747765, 36.611538>,  <38.941814, 34.789978, 37.095711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531235, 34.747765, 36.611538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436737, 34.369774, 36.702057>,  <39.380039, 34.142979, 36.756367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436737, 34.369774, 36.702057>,  <39.531235, 34.747765, 36.611538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436737, 34.369774, 36.702057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042954, -0.222505, -0.973985,
		0.970743, -0.239822, 0.011976,
		-0.236248, -0.944975, 0.226297,
		39.365864, 34.086281, 36.769947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028027, 34.228653, 36.334518>,  <39.531235, 34.747765, 36.611538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028027, 34.228653, 36.334518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699120, 34.006580, 36.384560>,  <39.501774, 33.873337, 36.414585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699120, 34.006580, 36.384560>,  <40.028027, 34.228653, 36.334518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699120, 34.006580, 36.384560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080447, -0.331003, -0.940194,
		0.563387, -0.763027, 0.316836,
		-0.822267, -0.555181, 0.125100,
		39.452438, 33.840027, 36.422089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034817, 33.894798, 35.674896>,  <40.028027, 34.228653, 36.334518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034817, 33.894798, 35.674896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691338, 33.764889, 35.833466>,  <39.485249, 33.686943, 35.928608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691338, 33.764889, 35.833466>,  <40.034817, 33.894798, 35.674896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691338, 33.764889, 35.833466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322064, -0.259705, -0.910400,
		0.398631, -0.909435, 0.118410,
		-0.858701, -0.324778, 0.396423,
		39.433727, 33.667454, 35.952393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009674, 33.218246, 35.431084>,  <40.034817, 33.894798, 35.674896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009674, 33.218246, 35.431084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646160, 33.357136, 35.523636>,  <39.428051, 33.440468, 35.579166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646160, 33.357136, 35.523636>,  <40.009674, 33.218246, 35.431084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646160, 33.357136, 35.523636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312435, -0.198720, -0.928921,
		-0.276563, -0.916486, 0.289080,
		-0.908789, 0.347223, 0.231383,
		39.373524, 33.461304, 35.593052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567276, 32.749111, 35.089695>,  <40.009674, 33.218246, 35.431084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567276, 32.749111, 35.089695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333328, 33.056995, 35.192039>,  <39.192959, 33.241726, 35.253445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333328, 33.056995, 35.192039>,  <39.567276, 32.749111, 35.089695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333328, 33.056995, 35.192039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458313, -0.053341, -0.887189,
		-0.669235, -0.636155, 0.383968,
		-0.584871, 0.769715, 0.255861,
		39.157867, 33.287910, 35.268799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906796, 32.642178, 34.911816>,  <39.567276, 32.749111, 35.089695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906796, 32.642178, 34.911816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911343, 33.042023, 34.901669>,  <38.914070, 33.281929, 34.895580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911343, 33.042023, 34.901669>,  <38.906796, 32.642178, 34.911816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911343, 33.042023, 34.901669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305221, -0.020686, -0.952057,
		-0.952213, 0.018568, 0.304868,
		0.011372, 0.999613, -0.025365,
		38.914753, 33.341908, 34.894058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233707, 32.908714, 34.522816>,  <38.906796, 32.642178, 34.911816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233707, 32.908714, 34.522816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490871, 33.215088, 34.521564>,  <38.645172, 33.398911, 34.520813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490871, 33.215088, 34.521564>,  <38.233707, 32.908714, 34.522816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490871, 33.215088, 34.521564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328291, 0.271866, -0.904607,
		-0.692017, 0.582611, 0.426235,
		0.642913, 0.765933, -0.003130,
		38.683746, 33.444866, 34.520626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861469, 33.491940, 34.247490>,  <38.233707, 32.908714, 34.522816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861469, 33.491940, 34.247490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247395, 33.573116, 34.180626>,  <38.478951, 33.621822, 34.140507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247395, 33.573116, 34.180626>,  <37.861469, 33.491940, 34.247490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247395, 33.573116, 34.180626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204709, 0.180835, -0.961973,
		-0.164998, 0.962347, 0.216017,
		0.964816, 0.202944, -0.167163,
		38.536839, 33.633999, 34.130478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867500, 34.096138, 33.921501>,  <37.861469, 33.491940, 34.247490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867500, 34.096138, 33.921501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222080, 33.941711, 33.819393>,  <38.434830, 33.849056, 33.758129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222080, 33.941711, 33.819393>,  <37.867500, 34.096138, 33.921501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222080, 33.941711, 33.819393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199732, 0.178452, -0.963464,
		0.417510, 0.905048, 0.081079,
		0.886449, -0.386062, -0.255272,
		38.488014, 33.825893, 33.742813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160526, 34.495430, 33.416527>,  <37.867500, 34.096138, 33.921501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160526, 34.495430, 33.416527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334686, 34.141064, 33.352558>,  <38.439182, 33.928444, 33.314178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334686, 34.141064, 33.352558>,  <38.160526, 34.495430, 33.416527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334686, 34.141064, 33.352558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137552, 0.110089, -0.984357,
		0.889665, 0.450590, -0.073927,
		0.435404, -0.885917, -0.159922,
		38.465309, 33.875290, 33.304581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407219, 34.600815, 32.718334>,  <38.160526, 34.495430, 33.416527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407219, 34.600815, 32.718334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459621, 34.211483, 32.793659>,  <38.491062, 33.977882, 32.838856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459621, 34.211483, 32.793659>,  <38.407219, 34.600815, 32.718334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459621, 34.211483, 32.793659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125743, -0.204731, -0.970708,
		0.983375, 0.103488, -0.149210,
		0.131005, -0.973332, 0.188315,
		38.498924, 33.919483, 32.850155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855396, 34.410103, 32.173512>,  <38.407219, 34.600815, 32.718334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855396, 34.410103, 32.173512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689091, 34.076942, 32.319614>,  <38.589306, 33.877045, 32.407276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689091, 34.076942, 32.319614>,  <38.855396, 34.410103, 32.173512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689091, 34.076942, 32.319614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184452, -0.316046, -0.930641,
		0.890570, -0.454304, -0.022229,
		-0.415768, -0.832901, 0.365258,
		38.564362, 33.827072, 32.429192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040886, 33.963108, 31.799925>,  <38.855396, 34.410103, 32.173512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040886, 33.963108, 31.799925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718151, 33.786507, 31.956942>,  <38.524509, 33.680546, 32.051151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718151, 33.786507, 31.956942>,  <39.040886, 33.963108, 31.799925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718151, 33.786507, 31.956942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268115, -0.318437, -0.909237,
		0.526429, -0.838854, 0.138554,
		-0.806838, -0.441500, 0.392544,
		38.476101, 33.654057, 32.074703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043118, 33.521957, 31.352566>,  <39.040886, 33.963108, 31.799925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043118, 33.521957, 31.352566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680157, 33.538795, 31.519827>,  <38.462379, 33.548901, 31.620184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680157, 33.538795, 31.519827>,  <39.043118, 33.521957, 31.352566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680157, 33.538795, 31.519827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416853, -0.216748, -0.882754,
		0.053475, -0.975320, 0.214225,
		-0.907400, 0.042095, 0.418155,
		38.407936, 33.551426, 31.645273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235054, 32.831749, 31.804672>,  <39.043118, 33.521957, 31.352566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235054, 32.831749, 31.804672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443226, 33.048065, 31.540339>,  <39.568127, 33.177856, 31.381739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443226, 33.048065, 31.540339>,  <39.235054, 32.831749, 31.804672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443226, 33.048065, 31.540339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825723, -0.121527, 0.550830,
		0.217576, -0.832331, -0.509791,
		0.520426, 0.540793, -0.660833,
		39.599354, 33.210304, 31.342089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824829, 32.664539, 31.979568>,  <39.235054, 32.831749, 31.804672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824829, 32.664539, 31.979568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908638, 32.959103, 31.722256>,  <39.958923, 33.135841, 31.567869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908638, 32.959103, 31.722256>,  <39.824829, 32.664539, 31.979568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908638, 32.959103, 31.722256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840641, 0.200362, 0.503167,
		0.499424, -0.646191, -0.577073,
		0.209518, 0.736405, -0.643281,
		39.971493, 33.180023, 31.529272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458275, 32.534599, 31.675713>,  <39.824829, 32.664539, 31.979568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458275, 32.534599, 31.675713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382912, 32.926022, 31.709032>,  <40.337692, 33.160873, 31.729025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382912, 32.926022, 31.709032>,  <40.458275, 32.534599, 31.675713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382912, 32.926022, 31.709032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829492, 0.113151, 0.546938,
		0.525781, 0.172145, -0.833019,
		-0.188409, 0.978552, 0.083300,
		40.326389, 33.219585, 31.734022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133797, 32.952904, 31.465685>,  <40.458275, 32.534599, 31.675713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133797, 32.952904, 31.465685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859562, 33.087822, 31.723740>,  <40.695023, 33.168774, 31.878572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859562, 33.087822, 31.723740>,  <41.133797, 32.952904, 31.465685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859562, 33.087822, 31.723740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681741, -0.013356, 0.731472,
		0.255339, 0.941304, -0.220793,
		-0.685588, 0.337297, 0.645135,
		40.653885, 33.189011, 31.917280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331528, 33.615711, 31.849583>,  <41.133797, 32.952904, 31.465685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331528, 33.615711, 31.849583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087708, 33.392914, 32.075222>,  <40.941414, 33.259235, 32.210606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087708, 33.392914, 32.075222>,  <41.331528, 33.615711, 31.849583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087708, 33.392914, 32.075222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632147, 0.087877, 0.769849,
		-0.478372, 0.825855, 0.298537,
		-0.609549, -0.556993, 0.564100,
		40.904842, 33.225815, 32.244453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221889, 33.876621, 32.466595>,  <41.331528, 33.615711, 31.849583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221889, 33.876621, 32.466595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191582, 33.479965, 32.508373>,  <41.173397, 33.241970, 32.533440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191582, 33.479965, 32.508373>,  <41.221889, 33.876621, 32.466595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191582, 33.479965, 32.508373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683191, 0.024669, 0.729823,
		-0.726298, 0.126655, 0.675610,
		-0.075769, -0.991640, 0.104446,
		41.168850, 33.182472, 32.539707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139973, 33.668602, 33.168686>,  <41.221889, 33.876621, 32.466595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139973, 33.668602, 33.168686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363422, 33.397629, 32.977264>,  <41.497494, 33.235043, 32.862411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363422, 33.397629, 32.977264>,  <41.139973, 33.668602, 33.168686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363422, 33.397629, 32.977264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753638, 0.173629, 0.633943,
		-0.346365, -0.714795, 0.607536,
		0.558624, -0.677438, -0.478557,
		41.531010, 33.194397, 32.833698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469715, 33.165916, 33.717400>,  <41.139973, 33.668602, 33.168686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469715, 33.165916, 33.717400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674591, 33.203590, 33.375923>,  <41.797516, 33.226196, 33.171036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674591, 33.203590, 33.375923>,  <41.469715, 33.165916, 33.717400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674591, 33.203590, 33.375923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841740, 0.142502, 0.520736,
		0.170700, -0.985303, -0.006294,
		0.512186, 0.094187, -0.853694,
		41.828247, 33.231846, 33.119816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716377, 32.491089, 33.596367>,  <41.469715, 33.165916, 33.717400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716377, 32.491089, 33.596367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037601, 32.681091, 33.740292>,  <42.230335, 32.795094, 33.826645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037601, 32.681091, 33.740292>,  <41.716377, 32.491089, 33.596367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037601, 32.681091, 33.740292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586723, -0.735844, -0.338067,
		0.104179, 0.482596, -0.869625,
		0.803059, 0.475010, 0.359809,
		42.278519, 32.823593, 33.848236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302094, 32.629711, 33.135300>,  <41.716377, 32.491089, 33.596367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302094, 32.629711, 33.135300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475323, 32.635017, 33.495804>,  <42.579262, 32.638203, 33.712105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475323, 32.635017, 33.495804>,  <42.302094, 32.629711, 33.135300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475323, 32.635017, 33.495804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642884, -0.705392, -0.298534,
		0.631780, 0.708693, -0.314018,
		0.433075, 0.013269, 0.901260,
		42.605244, 32.639000, 33.766182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066441, 32.692806, 33.077347>,  <42.302094, 32.629711, 33.135300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066441, 32.692806, 33.077347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968517, 32.512733, 33.420837>,  <42.909763, 32.404690, 33.626930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968517, 32.512733, 33.420837>,  <43.066441, 32.692806, 33.077347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968517, 32.512733, 33.420837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549319, -0.794212, -0.259761,
		0.798948, 0.408121, 0.441723,
		-0.244808, -0.450183, 0.858723,
		42.895077, 32.377678, 33.678455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540565, 32.139969, 33.157261>,  <43.066441, 32.692806, 33.077347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540565, 32.139969, 33.157261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302216, 32.029858, 33.459030>,  <43.159206, 31.963791, 33.640091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302216, 32.029858, 33.459030>,  <43.540565, 32.139969, 33.157261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302216, 32.029858, 33.459030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411776, -0.911256, -0.007269,
		0.689470, 0.306321, 0.656353,
		-0.595879, -0.275282, 0.754419,
		43.123451, 31.947273, 33.685356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925354, 31.856295, 33.704880>,  <43.540565, 32.139969, 33.157261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925354, 31.856295, 33.704880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562744, 31.698742, 33.765644>,  <43.345181, 31.604210, 33.802101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562744, 31.698742, 33.765644>,  <43.925354, 31.856295, 33.704880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562744, 31.698742, 33.765644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401317, -0.915708, 0.020566,
		0.131004, 0.079607, 0.988180,
		-0.906522, -0.393880, 0.151910,
		43.290787, 31.580578, 33.811218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107861, 31.222084, 34.116867>,  <43.925354, 31.856295, 33.704880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107861, 31.222084, 34.116867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739899, 31.159510, 33.973034>,  <43.519123, 31.121965, 33.886734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739899, 31.159510, 33.973034>,  <44.107861, 31.222084, 34.116867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739899, 31.159510, 33.973034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168198, -0.985752, -0.001441,
		-0.354237, -0.061807, 0.933111,
		-0.919905, -0.156437, -0.359586,
		43.463928, 31.112579, 33.865158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870075, 30.699848, 34.418324>,  <44.107861, 31.222084, 34.116867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870075, 30.699848, 34.418324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611248, 30.704105, 34.113380>,  <43.455952, 30.706659, 33.930412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611248, 30.704105, 34.113380>,  <43.870075, 30.699848, 34.418324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611248, 30.704105, 34.113380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214229, -0.957082, -0.195192,
		-0.731720, -0.289622, 0.617013,
		-0.647064, 0.010644, -0.762361,
		43.417130, 30.707298, 33.884670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341587, 30.178654, 34.583916>,  <43.870075, 30.699848, 34.418324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341587, 30.178654, 34.583916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336655, 30.255732, 34.191444>,  <43.333694, 30.301977, 33.955959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336655, 30.255732, 34.191444>,  <43.341587, 30.178654, 34.583916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336655, 30.255732, 34.191444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004362, -0.981237, -0.192759,
		-0.999915, -0.006658, 0.011261,
		-0.012333, 0.192693, -0.981182,
		43.332954, 30.313540, 33.897091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886246, 29.658514, 34.294018>,  <43.341587, 30.178654, 34.583916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886246, 29.658514, 34.294018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132828, 29.795053, 34.010197>,  <43.280777, 29.876978, 33.839905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132828, 29.795053, 34.010197>,  <42.886246, 29.658514, 34.294018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132828, 29.795053, 34.010197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049739, -0.916225, -0.397565,
		-0.785817, 0.209789, -0.581791,
		0.616456, 0.341351, -0.709550,
		43.317764, 29.897459, 33.797333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652050, 29.366590, 33.746811>,  <42.886246, 29.658514, 34.294018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652050, 29.366590, 33.746811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022003, 29.454914, 33.622982>,  <43.243977, 29.507908, 33.548683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022003, 29.454914, 33.622982>,  <42.652050, 29.366590, 33.746811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022003, 29.454914, 33.622982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032006, -0.856441, -0.515252,
		-0.378904, 0.466639, -0.799174,
		0.924883, 0.220810, -0.309573,
		43.299469, 29.521156, 33.530109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676132, 29.147991, 33.015800>,  <42.652050, 29.366590, 33.746811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676132, 29.147991, 33.015800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055130, 29.189648, 33.136738>,  <43.282528, 29.214642, 33.209301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055130, 29.189648, 33.136738>,  <42.676132, 29.147991, 33.015800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055130, 29.189648, 33.136738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216190, -0.905286, -0.365677,
		0.235630, 0.411840, -0.880265,
		0.947492, 0.104140, 0.302348,
		43.339378, 29.220890, 33.227444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183243, 29.067225, 32.445702>,  <42.676132, 29.147991, 33.015800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183243, 29.067225, 32.445702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406147, 28.973152, 32.764236>,  <43.539890, 28.916708, 32.955357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406147, 28.973152, 32.764236>,  <43.183243, 29.067225, 32.445702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406147, 28.973152, 32.764236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377592, -0.782374, -0.495293,
		0.739513, 0.576698, -0.347188,
		0.557265, -0.235181, 0.796333,
		43.573326, 28.902597, 33.003136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787327, 28.682449, 32.107918>,  <43.183243, 29.067225, 32.445702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787327, 28.682449, 32.107918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857788, 28.602236, 32.493404>,  <43.900066, 28.554108, 32.724697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857788, 28.602236, 32.493404>,  <43.787327, 28.682449, 32.107918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857788, 28.602236, 32.493404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515229, -0.815427, -0.263852,
		0.838754, 0.543015, -0.040322,
		0.176155, -0.200532, 0.963720,
		43.910633, 28.542076, 32.782520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628887, 28.620499, 32.332710>,  <43.787327, 28.682449, 32.107918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628887, 28.620499, 32.332710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372265, 28.417288, 32.562603>,  <44.218292, 28.295362, 32.700539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372265, 28.417288, 32.562603>,  <44.628887, 28.620499, 32.332710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372265, 28.417288, 32.562603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489143, -0.848097, -0.203645,
		0.590883, 0.150475, 0.792600,
		-0.641558, -0.508025, 0.574729,
		44.179798, 28.264881, 32.735023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038170, 28.136108, 32.542164>,  <44.628887, 28.620499, 32.332710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038170, 28.136108, 32.542164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688251, 27.986048, 32.664799>,  <44.478302, 27.896011, 32.738380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688251, 27.986048, 32.664799>,  <45.038170, 28.136108, 32.542164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688251, 27.986048, 32.664799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377861, -0.924350, -0.052901,
		0.303244, 0.069571, 0.950370,
		-0.874794, -0.375150, 0.306591,
		44.425812, 27.873503, 32.756775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212296, 27.491943, 32.920132>,  <45.038170, 28.136108, 32.542164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212296, 27.491943, 32.920132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818573, 27.450865, 32.862740>,  <44.582340, 27.426218, 32.828304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818573, 27.450865, 32.862740>,  <45.212296, 27.491943, 32.920132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818573, 27.450865, 32.862740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119170, -0.986608, -0.111373,
		-0.130117, -0.126724, 0.983367,
		-0.984311, -0.102697, -0.143476,
		44.523281, 27.420055, 32.819698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.052742, 26.924637, 33.378155>,  <45.212296, 27.491943, 32.920132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.052742, 26.924637, 33.378155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807209, 26.973328, 33.066154>,  <44.659889, 27.002542, 32.878956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807209, 26.973328, 33.066154>,  <45.052742, 26.924637, 33.378155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807209, 26.973328, 33.066154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003288, -0.987638, -0.156720,
		-0.789433, -0.098764, 0.605839,
		-0.613828, 0.121729, -0.779998,
		44.623062, 27.009846, 32.832153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522942, 26.479822, 33.434219>,  <45.052742, 26.924637, 33.378155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522942, 26.479822, 33.434219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517975, 26.545246, 33.039639>,  <44.514996, 26.584501, 32.802891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517975, 26.545246, 33.039639>,  <44.522942, 26.479822, 33.434219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517975, 26.545246, 33.039639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141022, -0.976384, -0.163667,
		-0.989929, -0.141144, -0.010946,
		-0.012413, 0.163562, -0.986455,
		44.514252, 26.594315, 32.743702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066196, 25.996914, 33.049183>,  <44.522942, 26.479822, 33.434219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066196, 25.996914, 33.049183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318302, 26.131853, 32.769478>,  <44.469566, 26.212816, 32.601654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318302, 26.131853, 32.769478>,  <44.066196, 25.996914, 33.049183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318302, 26.131853, 32.769478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143110, -0.935712, -0.322434,
		-0.763079, 0.103147, -0.638021,
		0.630262, 0.337350, -0.699261,
		44.507381, 26.233059, 32.559700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898483, 25.625734, 32.539963>,  <44.066196, 25.996914, 33.049183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898483, 25.625734, 32.539963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243473, 25.776758, 32.405155>,  <44.450466, 25.867373, 32.324268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243473, 25.776758, 32.405155>,  <43.898483, 25.625734, 32.539963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243473, 25.776758, 32.405155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204171, -0.868900, -0.450917,
		-0.463087, 0.320095, -0.826493,
		0.862476, 0.377560, -0.337022,
		44.502216, 25.890026, 32.304047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995071, 25.432381, 31.827271>,  <43.898483, 25.625734, 32.539963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995071, 25.432381, 31.827271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367161, 25.489056, 31.962690>,  <44.590412, 25.523060, 32.043941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367161, 25.489056, 31.962690>,  <43.995071, 25.432381, 31.827271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367161, 25.489056, 31.962690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294304, -0.839108, -0.457475,
		0.219259, 0.525189, -0.822254,
		0.930221, 0.141687, 0.338548,
		44.646229, 25.531561, 32.064255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432503, 25.021351, 31.331581>,  <43.995071, 25.432381, 31.827271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432503, 25.021351, 31.331581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390438, 25.208504, 30.980576>,  <44.365200, 25.320795, 30.769972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390438, 25.208504, 30.980576>,  <44.432503, 25.021351, 31.331581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390438, 25.208504, 30.980576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556774, 0.758840, 0.337882,
		0.823980, -0.453043, -0.340308,
		-0.105164, 0.467883, -0.877511,
		44.358891, 25.348869, 30.717321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113537, 25.008995, 31.154327>,  <44.432503, 25.021351, 31.331581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113537, 25.008995, 31.154327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935452, 25.332596, 31.000805>,  <44.828602, 25.526756, 30.908691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935452, 25.332596, 31.000805>,  <45.113537, 25.008995, 31.154327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935452, 25.332596, 31.000805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783684, 0.559389, 0.270044,
		0.433162, -0.180555, -0.883046,
		-0.445209, 0.809002, -0.383804,
		44.801888, 25.575296, 30.885664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648106, 25.407471, 30.833958>,  <45.113537, 25.008995, 31.154327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648106, 25.407471, 30.833958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335152, 25.623684, 30.957695>,  <45.147377, 25.753412, 31.031937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335152, 25.623684, 30.957695>,  <45.648106, 25.407471, 30.833958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335152, 25.623684, 30.957695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619363, 0.727363, 0.295521,
		-0.065264, 0.422807, -0.903867,
		-0.782388, 0.540534, 0.309341,
		45.100437, 25.785845, 31.050497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678368, 26.040281, 30.455553>,  <45.648106, 25.407471, 30.833958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678368, 26.040281, 30.455553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496826, 26.058165, 30.811535>,  <45.387901, 26.068895, 31.025124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496826, 26.058165, 30.811535>,  <45.678368, 26.040281, 30.455553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496826, 26.058165, 30.811535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753391, 0.552584, 0.356445,
		-0.475838, 0.832257, -0.284475,
		-0.453850, 0.044711, 0.889956,
		45.360672, 26.071577, 31.078522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079506, 25.772997, 30.008080>,  <45.678368, 26.040281, 30.455553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079506, 25.772997, 30.008080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029785, 25.430412, 29.807671>,  <45.999954, 25.224861, 29.687426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029785, 25.430412, 29.807671>,  <46.079506, 25.772997, 30.008080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029785, 25.430412, 29.807671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969036, 0.213351, -0.124299,
		0.213351, 0.470058, -0.856462,
		0.124299, 0.856462, 0.501022,
		45.992496, 25.173473, 29.657364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797508, 26.007092, 29.377394>,  <46.079506, 25.772997, 30.008080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797508, 26.007092, 29.377394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709053, 25.623436, 29.447998>,  <45.655979, 25.393244, 29.490360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709053, 25.623436, 29.447998>,  <45.797508, 26.007092, 29.377394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709053, 25.623436, 29.447998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967283, 0.192631, -0.165094,
		0.124346, -0.207244, -0.970355,
		-0.221135, -0.959137, 0.176511,
		45.642712, 25.335695, 29.500952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552689, 25.942822, 29.512005>,  <45.797508, 26.007092, 29.377394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552689, 25.942822, 29.512005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898132, 26.136980, 29.457508>,  <47.105400, 26.253475, 29.424810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898132, 26.136980, 29.457508>,  <46.552689, 25.942822, 29.512005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.898132, 26.136980, 29.457508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226962, 0.615625, 0.754648,
		0.450177, -0.620803, 0.641829,
		0.863614, 0.485396, -0.136241,
		47.157215, 26.282598, 29.416636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.961414, 25.942732, 30.085390>,  <46.552689, 25.942822, 29.512005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.961414, 25.942732, 30.085390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032322, 26.276783, 29.877106>,  <47.074867, 26.477213, 29.752134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032322, 26.276783, 29.877106>,  <46.961414, 25.942732, 30.085390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.032322, 26.276783, 29.877106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129430, 0.544279, 0.828860,
		0.975615, -0.079535, 0.204573,
		0.177268, 0.835126, -0.520712,
		47.085503, 26.527321, 29.720892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.477970, 26.206020, 30.545967>,  <46.961414, 25.942732, 30.085390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.477970, 26.206020, 30.545967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288616, 26.481544, 30.326349>,  <47.175003, 26.646860, 30.194578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288616, 26.481544, 30.326349>,  <47.477970, 26.206020, 30.545967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.288616, 26.481544, 30.326349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145334, 0.553688, 0.819944,
		0.868785, 0.467941, -0.161998,
		-0.473382, 0.688811, -0.549044,
		47.146603, 26.688189, 30.161636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.823624, 26.833937, 30.697496>,  <47.477970, 26.206020, 30.545967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.823624, 26.833937, 30.697496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462101, 26.917948, 30.548355>,  <47.245186, 26.968355, 30.458870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462101, 26.917948, 30.548355>,  <47.823624, 26.833937, 30.697496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.462101, 26.917948, 30.548355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109258, 0.729149, 0.675576,
		0.413756, 0.651328, -0.636064,
		-0.903808, 0.210029, -0.372853,
		47.190960, 26.980957, 30.436499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.775333, 27.522024, 30.587606>,  <47.823624, 26.833937, 30.697496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.775333, 27.522024, 30.587606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401077, 27.394011, 30.647150>,  <47.176525, 27.317202, 30.682877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401077, 27.394011, 30.647150>,  <47.775333, 27.522024, 30.587606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.401077, 27.394011, 30.647150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176923, 0.790177, 0.586787,
		-0.305417, 0.522684, -0.795941,
		-0.935638, -0.320035, 0.148858,
		47.120384, 27.298000, 30.691807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350826, 28.003130, 30.505239>,  <47.775333, 27.522024, 30.587606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.350826, 28.003130, 30.505239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.137501, 27.766283, 30.746893>,  <47.009506, 27.624174, 30.891886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.137501, 27.766283, 30.746893>,  <47.350826, 28.003130, 30.505239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.137501, 27.766283, 30.746893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222630, 0.787242, 0.575053,
		-0.816099, 0.172183, -0.551667,
		-0.533310, -0.592118, 0.604134,
		46.977509, 27.588648, 30.928133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.713970, 28.343111, 30.665791>,  <47.350826, 28.003130, 30.505239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.713970, 28.343111, 30.665791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758617, 28.069208, 30.953859>,  <46.785404, 27.904867, 31.126701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758617, 28.069208, 30.953859>,  <46.713970, 28.343111, 30.665791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.758617, 28.069208, 30.953859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262735, 0.678581, 0.685929,
		-0.958390, -0.265777, -0.104168,
		0.111617, -0.684756, 0.720174,
		46.792103, 27.863781, 31.169912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094204, 28.494286, 31.070665>,  <46.713970, 28.343111, 30.665791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094204, 28.494286, 31.070665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360706, 28.286020, 31.284214>,  <46.520607, 28.161060, 31.412342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360706, 28.286020, 31.284214>,  <46.094204, 28.494286, 31.070665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360706, 28.286020, 31.284214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192038, 0.571970, 0.797478,
		-0.720575, -0.633845, 0.281090,
		0.666253, -0.520663, 0.533870,
		46.560581, 28.129822, 31.444374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748360, 28.267570, 31.758717>,  <46.094204, 28.494286, 31.070665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748360, 28.267570, 31.758717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142796, 28.302525, 31.815269>,  <46.379456, 28.323498, 31.849201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142796, 28.302525, 31.815269>,  <45.748360, 28.267570, 31.758717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142796, 28.302525, 31.815269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161354, 0.707399, 0.688151,
		-0.039881, -0.701392, 0.711659,
		0.986091, 0.087384, 0.141384,
		46.438622, 28.328739, 31.857685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728661, 28.472792, 32.393322>,  <45.748360, 28.267570, 31.758717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728661, 28.472792, 32.393322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.118687, 28.540195, 32.335571>,  <46.352703, 28.580637, 32.300922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.118687, 28.540195, 32.335571>,  <45.728661, 28.472792, 32.393322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.118687, 28.540195, 32.335571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046656, 0.791780, 0.609021,
		0.216939, -0.587102, 0.779903,
		0.975070, 0.168508, -0.144376,
		46.411209, 28.590748, 32.292259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028484, 28.613644, 32.975826>,  <45.728661, 28.472792, 32.393322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028484, 28.613644, 32.975826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296509, 28.781248, 32.730732>,  <46.457325, 28.881811, 32.583675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296509, 28.781248, 32.730732>,  <46.028484, 28.613644, 32.975826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296509, 28.781248, 32.730732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110122, 0.872430, 0.476172,
		0.734090, -0.251590, 0.630726,
		0.670064, 0.419010, -0.612736,
		46.497528, 28.906952, 32.546909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552193, 28.916006, 33.431320>,  <46.028484, 28.613644, 32.975826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552193, 28.916006, 33.431320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562370, 29.107109, 33.080070>,  <46.568478, 29.221771, 32.869320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562370, 29.107109, 33.080070>,  <46.552193, 28.916006, 33.431320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562370, 29.107109, 33.080070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035101, 0.877439, 0.478402,
		0.999060, -0.042995, 0.005556,
		0.025444, 0.477757, -0.878123,
		46.570004, 29.250437, 32.816635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779716, 29.502035, 33.639301>,  <46.552193, 28.916006, 33.431320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779716, 29.502035, 33.639301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.664917, 29.615570, 33.273335>,  <46.596039, 29.683691, 33.053757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.664917, 29.615570, 33.273335>,  <46.779716, 29.502035, 33.639301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664917, 29.615570, 33.273335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208131, 0.913802, 0.348780,
		0.935048, 0.290521, -0.203183,
		-0.286997, 0.283837, -0.914915,
		46.578819, 29.700722, 32.998859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.240681, 30.083309, 33.399242>,  <46.779716, 29.502035, 33.639301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.240681, 30.083309, 33.399242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888103, 30.110262, 33.212257>,  <46.676556, 30.126434, 33.100067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888103, 30.110262, 33.212257>,  <47.240681, 30.083309, 33.399242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.888103, 30.110262, 33.212257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116163, 0.928434, 0.352868,
		0.457782, 0.365334, -0.810535,
		-0.881443, 0.067383, -0.467458,
		46.623669, 30.130476, 33.072021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.226170, 30.689045, 33.081936>,  <47.240681, 30.083309, 33.399242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.226170, 30.689045, 33.081936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839504, 30.586954, 33.090126>,  <46.607506, 30.525700, 33.095039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839504, 30.586954, 33.090126>,  <47.226170, 30.689045, 33.081936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839504, 30.586954, 33.090126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247757, 0.952560, 0.176763,
		-0.064621, 0.165797, -0.984040,
		-0.966665, -0.255226, 0.020478,
		46.549503, 30.510386, 33.096268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.933022, 31.224140, 32.728252>,  <47.226170, 30.689045, 33.081936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.933022, 31.224140, 32.728252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.637943, 31.054472, 32.938351>,  <46.460896, 30.952671, 33.064407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.637943, 31.054472, 32.938351>,  <46.933022, 31.224140, 32.728252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.637943, 31.054472, 32.938351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331560, 0.905323, 0.265441,
		-0.588106, 0.021666, -0.808494,
		-0.737699, -0.424171, 0.525242,
		46.416634, 30.927221, 33.095924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292561, 31.553354, 32.469570>,  <46.933022, 31.224140, 32.728252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.292561, 31.553354, 32.469570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.208492, 31.414667, 32.835217>,  <46.158051, 31.331455, 33.054604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.208492, 31.414667, 32.835217>,  <46.292561, 31.553354, 32.469570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.208492, 31.414667, 32.835217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317608, 0.908503, 0.271562,
		-0.924636, -0.233257, -0.301063,
		-0.210173, -0.346717, 0.914119,
		46.145439, 31.310652, 33.109451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.597298, 31.768688, 32.637066>,  <46.292561, 31.553354, 32.469570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.597298, 31.768688, 32.637066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769524, 31.666159, 32.983227>,  <45.872860, 31.604641, 33.190922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769524, 31.666159, 32.983227>,  <45.597298, 31.768688, 32.637066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769524, 31.666159, 32.983227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368801, 0.825161, 0.427895,
		-0.823773, -0.503396, 0.260751,
		0.430563, -0.256323, 0.865399,
		45.898693, 31.589262, 33.242847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.112251, 31.925447, 33.077179>,  <45.597298, 31.768688, 32.637066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.112251, 31.925447, 33.077179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442654, 31.912737, 33.302284>,  <45.640896, 31.905111, 33.437347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442654, 31.912737, 33.302284>,  <45.112251, 31.925447, 33.077179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442654, 31.912737, 33.302284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272838, 0.851111, 0.448519,
		-0.493226, -0.524023, 0.694355,
		0.826007, -0.031775, 0.562763,
		45.690456, 31.903204, 33.471111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853298, 32.045956, 33.752125>,  <45.112251, 31.925447, 33.077179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853298, 32.045956, 33.752125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247284, 32.104687, 33.788540>,  <45.483677, 32.139927, 33.810387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247284, 32.104687, 33.788540>,  <44.853298, 32.045956, 33.752125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247284, 32.104687, 33.788540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169465, 0.718689, 0.674364,
		0.033592, -0.679652, 0.732766,
		0.984963, 0.146832, 0.091035,
		45.542774, 32.148735, 33.815849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012505, 31.968473, 34.460175>,  <44.853298, 32.045956, 33.752125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012505, 31.968473, 34.460175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300877, 32.194630, 34.299881>,  <45.473900, 32.330322, 34.203705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300877, 32.194630, 34.299881>,  <45.012505, 31.968473, 34.460175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300877, 32.194630, 34.299881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261110, 0.757255, 0.598654,
		0.641932, -0.326953, 0.693560,
		0.720933, 0.565390, -0.400736,
		45.517155, 32.364246, 34.179661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533504, 32.272152, 35.092968>,  <45.012505, 31.968473, 34.460175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533504, 32.272152, 35.092968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530338, 32.481789, 34.752319>,  <45.528439, 32.607571, 34.547928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530338, 32.481789, 34.752319>,  <45.533504, 32.272152, 35.092968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.530338, 32.481789, 34.752319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301045, 0.810892, 0.501823,
		0.953577, 0.260348, 0.151359,
		-0.007913, 0.524093, -0.851624,
		45.527966, 32.639015, 34.496834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799294, 32.880718, 35.335358>,  <45.533504, 32.272152, 35.092968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799294, 32.880718, 35.335358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649303, 32.963383, 34.973877>,  <45.559307, 33.012981, 34.756989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649303, 32.963383, 34.973877>,  <45.799294, 32.880718, 35.335358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649303, 32.963383, 34.973877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239755, 0.920050, 0.309881,
		0.895493, 0.332867, -0.295452,
		-0.374980, 0.206661, -0.903704,
		45.536808, 33.025379, 34.702766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097446, 33.521454, 35.129578>,  <45.799294, 32.880718, 35.335358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097446, 33.521454, 35.129578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750072, 33.479729, 34.935696>,  <45.541649, 33.454693, 34.819366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750072, 33.479729, 34.935696>,  <46.097446, 33.521454, 35.129578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750072, 33.479729, 34.935696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307449, 0.880263, 0.361403,
		0.388966, 0.462877, -0.796524,
		-0.868436, -0.104317, -0.484703,
		45.489540, 33.448433, 34.790283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923973, 34.168736, 34.743896>,  <46.097446, 33.521454, 35.129578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923973, 34.168736, 34.743896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575985, 33.998417, 34.843369>,  <45.367191, 33.896225, 34.903053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575985, 33.998417, 34.843369>,  <45.923973, 34.168736, 34.743896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575985, 33.998417, 34.843369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222782, 0.789324, 0.572133,
		-0.439903, 0.442339, -0.781551,
		-0.869973, -0.425798, 0.248681,
		45.314995, 33.870678, 34.917973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007389, 34.922596, 34.695690>,  <45.923973, 34.168736, 34.743896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007389, 34.922596, 34.695690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345844, 35.130009, 34.646431>,  <46.548920, 35.254456, 34.616875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345844, 35.130009, 34.646431>,  <46.007389, 34.922596, 34.695690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345844, 35.130009, 34.646431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394853, -0.454731, 0.798318,
		0.357958, -0.724114, -0.589512,
		0.846142, 0.518535, -0.123145,
		46.599686, 35.285568, 34.609489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.690899, 34.402084, 34.627995>,  <46.007389, 34.922596, 34.695690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.690899, 34.402084, 34.627995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762524, 34.775658, 34.751740>,  <46.805500, 34.999802, 34.825985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762524, 34.775658, 34.751740>,  <46.690899, 34.402084, 34.627995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762524, 34.775658, 34.751740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690037, -0.343356, 0.637147,
		0.701274, 0.099380, -0.705931,
		0.179066, 0.933933, 0.309362,
		46.816242, 35.055836, 34.844547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389538, 34.489250, 34.591805>,  <46.690899, 34.402084, 34.627995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389538, 34.489250, 34.591805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261147, 34.742249, 34.873775>,  <47.184113, 34.894047, 35.042957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261147, 34.742249, 34.873775>,  <47.389538, 34.489250, 34.591805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.261147, 34.742249, 34.873775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724930, -0.314901, 0.612629,
		0.609466, 0.707666, -0.357435,
		-0.320980, 0.632491, 0.704930,
		47.164852, 34.931995, 35.085255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.855888, 35.004166, 34.725746>,  <47.389538, 34.489250, 34.591805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.855888, 35.004166, 34.725746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645222, 34.934826, 35.058632>,  <47.518822, 34.893223, 35.258362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645222, 34.934826, 35.058632>,  <47.855888, 35.004166, 34.725746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.645222, 34.934826, 35.058632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818572, -0.367464, 0.441486,
		0.229274, 0.913739, 0.335431,
		-0.526662, -0.173353, 0.832211,
		47.487225, 34.882820, 35.308296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.082001, 37.717640, 41.024174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701229, 37.819756, 41.091881>,  <35.472767, 37.881027, 41.132504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701229, 37.819756, 41.091881>,  <36.082001, 37.717640, 41.024174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701229, 37.819756, 41.091881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201554, -0.105934, -0.973732,
		-0.230659, -0.961042, 0.152297,
		-0.951931, 0.255296, 0.169268,
		35.415649, 37.896343, 41.142662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797310, 37.255894, 40.696964>,  <36.082001, 37.717640, 41.024174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797310, 37.255894, 40.696964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.489548, 37.504646, 40.755318>,  <35.304890, 37.653900, 40.790329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.489548, 37.504646, 40.755318>,  <35.797310, 37.255894, 40.696964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489548, 37.504646, 40.755318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363188, -0.238033, -0.900797,
		-0.525468, -0.746056, 0.409004,
		-0.769401, 0.621885, 0.145880,
		35.258728, 37.691212, 40.799080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198917, 36.804161, 40.500629>,  <35.797310, 37.255894, 40.696964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198917, 36.804161, 40.500629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135830, 37.198631, 40.480293>,  <35.097977, 37.435314, 40.468094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135830, 37.198631, 40.480293>,  <35.198917, 36.804161, 40.500629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135830, 37.198631, 40.480293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474764, -0.120868, -0.871775,
		-0.865867, -0.113357, 0.487263,
		-0.157716, 0.986175, -0.050838,
		35.088516, 37.494484, 40.465042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543629, 36.844810, 40.434845>,  <35.198917, 36.804161, 40.500629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543629, 36.844810, 40.434845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694672, 37.193909, 40.311081>,  <34.785297, 37.403366, 40.236824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694672, 37.193909, 40.311081>,  <34.543629, 36.844810, 40.434845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694672, 37.193909, 40.311081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294703, -0.203503, -0.933668,
		-0.877819, 0.443740, 0.180357,
		0.377603, 0.872743, -0.309410,
		34.807953, 37.455730, 40.218258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029491, 37.132442, 40.197220>,  <34.543629, 36.844810, 40.434845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029491, 37.132442, 40.197220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348351, 37.287277, 40.011868>,  <34.539665, 37.380180, 39.900658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348351, 37.287277, 40.011868>,  <34.029491, 37.132442, 40.197220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348351, 37.287277, 40.011868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368511, -0.296028, -0.881230,
		-0.478288, 0.873230, -0.093331,
		0.797145, 0.387089, -0.463382,
		34.587494, 37.403404, 39.872852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716747, 37.538738, 39.574142>,  <34.029491, 37.132442, 40.197220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716747, 37.538738, 39.574142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.100979, 37.459934, 39.495678>,  <34.331516, 37.412651, 39.448597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.100979, 37.459934, 39.495678>,  <33.716747, 37.538738, 39.574142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100979, 37.459934, 39.495678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243659, -0.256792, -0.935247,
		0.133876, 0.946174, -0.294671,
		0.960577, -0.197007, -0.196165,
		34.389153, 37.400833, 39.436829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827042, 37.772549, 38.874344>,  <33.716747, 37.538738, 39.574142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827042, 37.772549, 38.874344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146957, 37.535774, 38.914242>,  <34.338905, 37.393711, 38.938183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146957, 37.535774, 38.914242>,  <33.827042, 37.772549, 38.874344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146957, 37.535774, 38.914242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006806, -0.175099, -0.984527,
		0.600242, 0.786736, -0.144071,
		0.799789, -0.591936, 0.099747,
		34.386894, 37.358192, 38.944164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009552, 37.688972, 38.242409>,  <33.827042, 37.772549, 38.874344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009552, 37.688972, 38.242409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276131, 37.432487, 38.394562>,  <34.436077, 37.278595, 38.485855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276131, 37.432487, 38.394562>,  <34.009552, 37.688972, 38.242409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276131, 37.432487, 38.394562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013669, -0.520628, -0.853674,
		0.745425, 0.563731, -0.355737,
		0.666450, -0.641213, 0.380383,
		34.476067, 37.240124, 38.508678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583096, 37.646587, 37.754494>,  <34.009552, 37.688972, 38.242409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583096, 37.646587, 37.754494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.611328, 37.309517, 37.968006>,  <34.628265, 37.107273, 38.096111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.611328, 37.309517, 37.968006>,  <34.583096, 37.646587, 37.754494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611328, 37.309517, 37.968006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010842, -0.534432, -0.845142,
		0.997448, 0.065434, -0.028582,
		0.070577, -0.842675, 0.533777,
		34.632500, 37.056713, 38.128139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150635, 37.232483, 37.498535>,  <34.583096, 37.646587, 37.754494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150635, 37.232483, 37.498535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856670, 37.005390, 37.646904>,  <34.680290, 36.869133, 37.735924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856670, 37.005390, 37.646904>,  <35.150635, 37.232483, 37.498535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856670, 37.005390, 37.646904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067150, -0.483344, -0.872852,
		0.674828, -0.666377, 0.317093,
		-0.734913, -0.567732, 0.370921,
		34.636196, 36.835072, 37.758179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319859, 36.569328, 37.332798>,  <35.150635, 37.232483, 37.498535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319859, 36.569328, 37.332798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926796, 36.531860, 37.396816>,  <34.690960, 36.509380, 37.435226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926796, 36.531860, 37.396816>,  <35.319859, 36.569328, 37.332798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926796, 36.531860, 37.396816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101477, -0.450732, -0.886873,
		0.155208, -0.887732, 0.433409,
		-0.982656, -0.093669, 0.160041,
		34.632000, 36.503761, 37.444828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212051, 35.988495, 36.942852>,  <35.319859, 36.569328, 37.332798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212051, 35.988495, 36.942852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.845753, 36.134518, 37.009945>,  <34.625973, 36.222134, 37.050201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.845753, 36.134518, 37.009945>,  <35.212051, 35.988495, 36.942852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845753, 36.134518, 37.009945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348806, -0.515309, -0.782809,
		-0.199338, -0.775364, 0.599229,
		-0.915750, 0.365058, 0.167731,
		34.571026, 36.244034, 37.060265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774521, 35.410797, 36.949707>,  <35.212051, 35.988495, 36.942852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774521, 35.410797, 36.949707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543411, 35.723022, 36.854294>,  <34.404747, 35.910358, 36.797047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543411, 35.723022, 36.854294>,  <34.774521, 35.410797, 36.949707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543411, 35.723022, 36.854294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253756, -0.449556, -0.856450,
		-0.775749, -0.434304, 0.457814,
		-0.577773, 0.780564, -0.238535,
		34.370079, 35.957191, 36.782734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076416, 35.114460, 36.752575>,  <34.774521, 35.410797, 36.949707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076416, 35.114460, 36.752575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.123726, 35.483246, 36.605072>,  <34.152111, 35.704517, 36.516571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.123726, 35.483246, 36.605072>,  <34.076416, 35.114460, 36.752575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123726, 35.483246, 36.605072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279881, -0.325357, -0.903222,
		-0.952721, 0.210039, 0.219559,
		0.118277, 0.921969, -0.368760,
		34.159210, 35.759838, 36.494446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350143, 35.301880, 36.390846>,  <34.076416, 35.114460, 36.752575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350143, 35.301880, 36.390846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626602, 35.533310, 36.217606>,  <33.792477, 35.672169, 36.113663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626602, 35.533310, 36.217606>,  <33.350143, 35.301880, 36.390846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626602, 35.533310, 36.217606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255728, -0.364716, -0.895313,
		-0.675962, 0.729545, -0.104114,
		0.691143, 0.578573, -0.433099,
		33.833946, 35.706882, 36.087677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172138, 35.377625, 35.724049>,  <33.350143, 35.301880, 36.390846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172138, 35.377625, 35.724049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.516388, 35.568523, 35.653000>,  <33.722939, 35.683064, 35.610371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.516388, 35.568523, 35.653000>,  <33.172138, 35.377625, 35.724049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516388, 35.568523, 35.653000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025433, -0.308089, -0.951017,
		-0.508598, 0.822991, -0.253012,
		0.860629, 0.477250, -0.177625,
		33.774578, 35.711697, 35.599712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144035, 35.719376, 35.016361>,  <33.172138, 35.377625, 35.724049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144035, 35.719376, 35.016361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.540134, 35.701435, 35.069126>,  <33.777794, 35.690670, 35.100784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.540134, 35.701435, 35.069126>,  <33.144035, 35.719376, 35.016361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540134, 35.701435, 35.069126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112908, -0.296364, -0.948378,
		0.081634, 0.954021, -0.288409,
		0.990246, -0.044856, 0.131910,
		33.837208, 35.687977, 35.108700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408966, 36.042770, 34.400829>,  <33.144035, 35.719376, 35.016361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408966, 36.042770, 34.400829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.710808, 35.829838, 34.554298>,  <33.891911, 35.702080, 34.646381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.710808, 35.829838, 34.554298>,  <33.408966, 36.042770, 34.400829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710808, 35.829838, 34.554298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253755, -0.302481, -0.918757,
		0.605134, 0.790653, -0.093171,
		0.754600, -0.532328, 0.383674,
		33.937187, 35.670139, 34.669399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969490, 36.206589, 34.015415>,  <33.408966, 36.042770, 34.400829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969490, 36.206589, 34.015415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.057041, 35.857407, 34.189789>,  <34.109570, 35.647896, 34.294411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.057041, 35.857407, 34.189789>,  <33.969490, 36.206589, 34.015415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057041, 35.857407, 34.189789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232204, -0.387328, -0.892221,
		0.947721, 0.296510, 0.117928,
		0.218875, -0.872960, 0.435930,
		34.122704, 35.595520, 34.320568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401897, 35.829514, 33.462864>,  <33.969490, 36.206589, 34.015415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401897, 35.829514, 33.462864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289711, 35.548141, 33.724098>,  <34.222401, 35.379318, 33.880836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289711, 35.548141, 33.724098>,  <34.401897, 35.829514, 33.462864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289711, 35.548141, 33.724098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107891, -0.699184, -0.706754,
		0.953781, -0.127759, 0.271993,
		-0.280467, -0.703434, 0.653084,
		34.205570, 35.337112, 33.920025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874088, 35.172024, 33.415916>,  <34.401897, 35.829514, 33.462864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874088, 35.172024, 33.415916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.533760, 35.031601, 33.572311>,  <34.329563, 34.947346, 33.666149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.533760, 35.031601, 33.572311>,  <34.874088, 35.172024, 33.415916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533760, 35.031601, 33.572311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060602, -0.804671, -0.590620,
		0.521957, -0.478814, 0.705902,
		-0.850816, -0.351058, 0.390987,
		34.278515, 34.926285, 33.689606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035240, 34.500370, 33.287792>,  <34.874088, 35.172024, 33.415916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035240, 34.500370, 33.287792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641945, 34.507320, 33.360394>,  <34.405968, 34.511490, 33.403954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641945, 34.507320, 33.360394>,  <35.035240, 34.500370, 33.287792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641945, 34.507320, 33.360394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117764, -0.820481, -0.559413,
		0.139204, -0.571410, 0.808773,
		-0.983236, 0.017372, 0.181505,
		34.346973, 34.512531, 33.414845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682137, 34.770435, 33.005608>,  <35.035240, 34.500370, 33.287792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682137, 34.770435, 33.005608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059738, 34.870480, 32.919537>,  <36.286297, 34.930508, 32.867893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059738, 34.870480, 32.919537>,  <35.682137, 34.770435, 33.005608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059738, 34.870480, 32.919537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194960, 0.103296, 0.975357,
		0.266178, -0.962691, 0.048749,
		0.944002, 0.250114, -0.215182,
		36.342937, 34.945515, 32.854980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131901, 34.479729, 33.529140>,  <35.682137, 34.770435, 33.005608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131901, 34.479729, 33.529140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.383068, 34.756920, 33.387436>,  <36.533768, 34.923233, 33.302414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.383068, 34.756920, 33.387436>,  <36.131901, 34.479729, 33.529140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383068, 34.756920, 33.387436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343215, 0.161972, 0.925186,
		0.698511, -0.702531, -0.136134,
		0.627922, 0.692976, -0.354258,
		36.571445, 34.964813, 33.281158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733006, 34.442554, 33.907429>,  <36.131901, 34.479729, 33.529140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733006, 34.442554, 33.907429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773788, 34.802147, 33.737041>,  <36.798260, 35.017902, 33.634811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773788, 34.802147, 33.737041>,  <36.733006, 34.442554, 33.907429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773788, 34.802147, 33.737041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307326, 0.378785, 0.872968,
		0.946126, -0.219916, -0.237659,
		0.101958, 0.898977, -0.425964,
		36.804375, 35.071838, 33.609253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423801, 34.685886, 34.130249>,  <36.733006, 34.442554, 33.907429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423801, 34.685886, 34.130249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201523, 34.992199, 34.000771>,  <37.068157, 35.175987, 33.923084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201523, 34.992199, 34.000771>,  <37.423801, 34.685886, 34.130249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201523, 34.992199, 34.000771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341963, 0.565418, 0.750576,
		0.757805, 0.306396, -0.576068,
		-0.555692, 0.765784, -0.323700,
		37.034817, 35.221935, 33.903660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844986, 35.346291, 34.111626>,  <37.423801, 34.685886, 34.130249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844986, 35.346291, 34.111626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456451, 35.440830, 34.121765>,  <37.223331, 35.497555, 34.127850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456451, 35.440830, 34.121765>,  <37.844986, 35.346291, 34.111626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456451, 35.440830, 34.121765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195725, 0.734720, 0.649522,
		0.134885, 0.635867, -0.759920,
		-0.971338, 0.236346, 0.025353,
		37.165051, 35.511734, 34.129372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862473, 36.101173, 34.138126>,  <37.844986, 35.346291, 34.111626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862473, 36.101173, 34.138126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.506447, 35.986706, 34.280048>,  <37.292831, 35.918026, 34.365200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.506447, 35.986706, 34.280048>,  <37.862473, 36.101173, 34.138126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506447, 35.986706, 34.280048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064295, 0.691774, 0.719246,
		-0.451272, 0.662990, -0.597326,
		-0.890067, -0.286170, 0.354805,
		37.239426, 35.900856, 34.386490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455860, 36.733536, 34.220604>,  <37.862473, 36.101173, 34.138126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455860, 36.733536, 34.220604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294437, 36.450840, 34.453037>,  <37.197582, 36.281223, 34.592495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294437, 36.450840, 34.453037>,  <37.455860, 36.733536, 34.220604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294437, 36.450840, 34.453037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071773, 0.608683, 0.790160,
		-0.912134, 0.360582, -0.194915,
		-0.403559, -0.706743, 0.581081,
		37.173370, 36.238815, 34.627361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986580, 37.106880, 34.662876>,  <37.455860, 36.733536, 34.220604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986580, 37.106880, 34.662876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025227, 36.754833, 34.848801>,  <37.048416, 36.543606, 34.960354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025227, 36.754833, 34.848801>,  <36.986580, 37.106880, 34.662876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025227, 36.754833, 34.848801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243947, 0.473694, 0.846229,
		-0.964963, 0.031627, 0.260471,
		0.096620, -0.880121, 0.464812,
		37.054214, 36.490795, 34.988243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656761, 37.150841, 35.242260>,  <36.986580, 37.106880, 34.662876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656761, 37.150841, 35.242260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900063, 36.847103, 35.334705>,  <37.046043, 36.664860, 35.390175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900063, 36.847103, 35.334705>,  <36.656761, 37.150841, 35.242260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900063, 36.847103, 35.334705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042438, 0.321869, 0.945833,
		-0.792604, -0.565502, 0.228004,
		0.608258, -0.759347, 0.231116,
		37.082539, 36.619301, 35.404041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406849, 36.878620, 35.863430>,  <36.656761, 37.150841, 35.242260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406849, 36.878620, 35.863430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777657, 36.732338, 35.830208>,  <37.000141, 36.644569, 35.810276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777657, 36.732338, 35.830208>,  <36.406849, 36.878620, 35.863430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777657, 36.732338, 35.830208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175347, 0.226926, 0.957997,
		-0.331494, -0.902644, 0.274490,
		0.927019, -0.365701, -0.083051,
		37.055763, 36.622627, 35.805294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557102, 36.333244, 36.346878>,  <36.406849, 36.878620, 35.863430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557102, 36.333244, 36.346878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939331, 36.420460, 36.267532>,  <37.168667, 36.472790, 36.219925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939331, 36.420460, 36.267532>,  <36.557102, 36.333244, 36.346878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939331, 36.420460, 36.267532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221668, -0.087983, 0.971145,
		0.194293, -0.971966, -0.132406,
		0.955570, 0.218037, -0.198360,
		37.226002, 36.485870, 36.208023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874504, 36.047184, 36.874775>,  <36.557102, 36.333244, 36.346878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874504, 36.047184, 36.874775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175411, 36.273315, 36.739429>,  <37.355957, 36.408997, 36.658222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175411, 36.273315, 36.739429>,  <36.874504, 36.047184, 36.874775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175411, 36.273315, 36.739429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434901, -0.040287, 0.899577,
		0.494929, -0.823878, -0.276171,
		0.752268, 0.565333, -0.338366,
		37.401093, 36.442917, 36.637920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572212, 35.767200, 37.015179>,  <36.874504, 36.047184, 36.874775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572212, 35.767200, 37.015179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636311, 36.162029, 37.014141>,  <37.674770, 36.398926, 37.013519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636311, 36.162029, 37.014141>,  <37.572212, 35.767200, 37.015179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636311, 36.162029, 37.014141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334879, -0.051890, 0.940831,
		0.928535, -0.151632, -0.338865,
		0.160244, 0.987074, -0.002597,
		37.684383, 36.458153, 37.013363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255222, 35.914524, 37.394047>,  <37.572212, 35.767200, 37.015179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255222, 35.914524, 37.394047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073849, 36.270824, 37.381615>,  <37.965027, 36.484604, 37.374157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073849, 36.270824, 37.381615>,  <38.255222, 35.914524, 37.394047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073849, 36.270824, 37.381615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166958, 0.119135, 0.978740,
		0.875515, 0.438601, -0.202737,
		-0.453430, 0.890750, -0.031077,
		37.937820, 36.538048, 37.372292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560333, 36.243011, 37.832699>,  <38.255222, 35.914524, 37.394047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560333, 36.243011, 37.832699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258739, 36.502205, 37.789581>,  <38.077782, 36.657722, 37.763710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258739, 36.502205, 37.789581>,  <38.560333, 36.243011, 37.832699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258739, 36.502205, 37.789581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030478, 0.198428, 0.979641,
		0.656185, 0.735349, -0.169361,
		-0.753984, 0.647988, -0.107794,
		38.032543, 36.696602, 37.757244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778576, 36.946724, 38.171890>,  <38.560333, 36.243011, 37.832699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778576, 36.946724, 38.171890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383301, 36.891922, 38.144421>,  <38.146137, 36.859043, 38.127937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383301, 36.891922, 38.144421>,  <38.778576, 36.946724, 38.171890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383301, 36.891922, 38.144421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077221, 0.058083, 0.995321,
		-0.132371, 0.988866, -0.067976,
		-0.988187, -0.137001, -0.068673,
		38.086845, 36.850822, 38.123817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455235, 37.353878, 38.619064>,  <38.778576, 36.946724, 38.171890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455235, 37.353878, 38.619064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.129623, 37.126991, 38.569084>,  <37.934258, 36.990860, 38.539097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.129623, 37.126991, 38.569084>,  <38.455235, 37.353878, 38.619064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129623, 37.126991, 38.569084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176165, 0.036123, 0.983698,
		-0.553459, 0.822774, -0.129330,
		-0.814033, -0.567220, -0.124952,
		37.885414, 36.956825, 38.531597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954060, 37.719666, 39.035091>,  <38.455235, 37.353878, 38.619064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954060, 37.719666, 39.035091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.839207, 37.341362, 38.974304>,  <37.770294, 37.114380, 38.937832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.839207, 37.341362, 38.974304>,  <37.954060, 37.719666, 39.035091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839207, 37.341362, 38.974304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236846, -0.083629, 0.967941,
		-0.928150, 0.313916, -0.199988,
		-0.287128, -0.945761, -0.151970,
		37.753067, 37.057632, 38.928715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.286694, 37.723873, 39.269066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.386497, 37.336525, 39.269093>,  <37.446381, 37.104115, 39.269108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.386497, 37.336525, 39.269093>,  <37.286694, 37.723873, 39.269066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386497, 37.336525, 39.269093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143100, -0.036802, 0.989024,
		-0.957740, -0.246783, -0.147757,
		0.249512, -0.968371, 0.000068,
		37.461349, 37.046013, 39.269112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766457, 37.269066, 39.574043>,  <37.286694, 37.723873, 39.269066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766457, 37.269066, 39.574043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.091816, 37.041916, 39.624493>,  <37.287029, 36.905624, 39.654762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.091816, 37.041916, 39.624493>,  <36.766457, 37.269066, 39.574043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091816, 37.041916, 39.624493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070386, 0.119149, 0.990378,
		-0.577439, -0.814445, 0.056945,
		0.813394, -0.567875, 0.126126,
		37.335835, 36.871552, 39.662331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591106, 37.086700, 40.193512>,  <36.766457, 37.269066, 39.574043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591106, 37.086700, 40.193512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.970989, 36.972164, 40.142815>,  <37.198921, 36.903442, 40.112396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.970989, 36.972164, 40.142815>,  <36.591106, 37.086700, 40.193512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970989, 36.972164, 40.142815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132266, -0.000053, 0.991214,
		-0.283829, -0.958129, 0.037823,
		0.949709, -0.286338, -0.126743,
		37.255901, 36.886261, 40.104794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682827, 36.536663, 40.639614>,  <36.591106, 37.086700, 40.193512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682827, 36.536663, 40.639614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053970, 36.670906, 40.574574>,  <37.276657, 36.751453, 40.535549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053970, 36.670906, 40.574574>,  <36.682827, 36.536663, 40.639614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053970, 36.670906, 40.574574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114579, 0.158383, 0.980707,
		0.354889, -0.928591, 0.108503,
		0.927861, 0.335610, -0.162606,
		37.332329, 36.771587, 40.525791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153378, 36.118504, 40.968136>,  <36.682827, 36.536663, 40.639614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153378, 36.118504, 40.968136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323425, 36.478931, 40.933853>,  <37.425453, 36.695187, 40.913284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323425, 36.478931, 40.933853>,  <37.153378, 36.118504, 40.968136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323425, 36.478931, 40.933853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143583, 0.026361, 0.989287,
		0.893677, -0.432871, -0.118171,
		0.425119, 0.901070, -0.085711,
		37.450962, 36.749252, 40.908138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609539, 36.075451, 41.496952>,  <37.153378, 36.118504, 40.968136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609539, 36.075451, 41.496952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635895, 36.459915, 41.389755>,  <37.651711, 36.690594, 41.325436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635895, 36.459915, 41.389755>,  <37.609539, 36.075451, 41.496952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635895, 36.459915, 41.389755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513455, 0.197628, 0.835049,
		0.855583, -0.192626, -0.480493,
		0.065893, 0.961165, -0.267992,
		37.655663, 36.748264, 41.309357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330109, 36.293995, 41.471867>,  <37.609539, 36.075451, 41.496952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330109, 36.293995, 41.471867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110134, 36.624020, 41.523785>,  <37.978149, 36.822033, 41.554935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110134, 36.624020, 41.523785>,  <38.330109, 36.293995, 41.471867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110134, 36.624020, 41.523785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565609, 0.253557, 0.784726,
		0.614535, 0.504963, -0.606101,
		-0.549939, 0.825058, 0.129792,
		37.945152, 36.871536, 41.562721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795113, 36.848110, 41.685768>,  <38.330109, 36.293995, 41.471867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795113, 36.848110, 41.685768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.431316, 36.976639, 41.791275>,  <38.213039, 37.053757, 41.854580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.431316, 36.976639, 41.791275>,  <38.795113, 36.848110, 41.685768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431316, 36.976639, 41.791275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352254, 0.258713, 0.899436,
		0.220766, 0.910945, -0.348484,
		-0.909494, 0.321319, 0.263770,
		38.158466, 37.073036, 41.870407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037643, 37.404404, 41.963177>,  <38.795113, 36.848110, 41.685768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037643, 37.404404, 41.963177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667030, 37.399300, 42.113579>,  <38.444664, 37.396236, 42.203819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667030, 37.399300, 42.113579>,  <39.037643, 37.404404, 41.963177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667030, 37.399300, 42.113579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364975, 0.212009, 0.906557,
		-0.091284, 0.977184, -0.191776,
		-0.926532, -0.012760, 0.376000,
		38.389072, 37.395470, 42.226379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040833, 37.918358, 42.319168>,  <39.037643, 37.404404, 41.963177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040833, 37.918358, 42.319168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724007, 37.741318, 42.487328>,  <38.533913, 37.635094, 42.588223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724007, 37.741318, 42.487328>,  <39.040833, 37.918358, 42.319168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724007, 37.741318, 42.487328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316722, 0.290772, 0.902850,
		-0.521845, 0.848266, -0.090128,
		-0.792064, -0.442602, 0.420402,
		38.486389, 37.608536, 42.613449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718521, 38.397881, 42.827141>,  <39.040833, 37.918358, 42.319168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718521, 38.397881, 42.827141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635761, 38.018990, 42.925079>,  <38.586105, 37.791653, 42.983841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635761, 38.018990, 42.925079>,  <38.718521, 38.397881, 42.827141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635761, 38.018990, 42.925079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388902, 0.150012, 0.908984,
		-0.897746, 0.283289, 0.337341,
		-0.206900, -0.947229, 0.244844,
		38.573692, 37.734821, 42.998531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457966, 38.418060, 43.540684>,  <38.718521, 38.397881, 42.827141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457966, 38.418060, 43.540684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560802, 38.036499, 43.478764>,  <38.622505, 37.807560, 43.441612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560802, 38.036499, 43.478764>,  <38.457966, 38.418060, 43.540684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560802, 38.036499, 43.478764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396146, -0.042084, 0.917223,
		-0.881461, -0.297135, 0.367067,
		0.257091, -0.953908, -0.154804,
		38.637928, 37.750328, 43.432323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200653, 38.140060, 44.116901>,  <38.457966, 38.418060, 43.540684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200653, 38.140060, 44.116901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468147, 37.877720, 43.976810>,  <38.628643, 37.720318, 43.892754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468147, 37.877720, 43.976810>,  <38.200653, 38.140060, 44.116901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468147, 37.877720, 43.976810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449215, -0.018950, 0.893223,
		-0.592455, -0.754655, 0.281944,
		0.668733, -0.655848, -0.350230,
		38.668766, 37.680965, 43.871742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189640, 37.662086, 44.655060>,  <38.200653, 38.140060, 44.116901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189640, 37.662086, 44.655060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.535858, 37.640118, 44.455936>,  <38.743587, 37.626938, 44.336464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.535858, 37.640118, 44.455936>,  <38.189640, 37.662086, 44.655060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535858, 37.640118, 44.455936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493681, -0.073773, 0.866508,
		-0.084312, -0.995762, -0.036742,
		0.865546, -0.054918, -0.497809,
		38.795521, 37.623642, 44.306595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558716, 37.179741, 45.086670>,  <38.189640, 37.662086, 44.655060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558716, 37.179741, 45.086670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829975, 37.354504, 44.850285>,  <38.992729, 37.459362, 44.708454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829975, 37.354504, 44.850285>,  <38.558716, 37.179741, 45.086670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829975, 37.354504, 44.850285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622990, 0.084830, 0.777616,
		0.389877, -0.895498, -0.214662,
		0.678143, 0.436907, -0.590960,
		39.033417, 37.485577, 44.672997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037750, 36.725250, 45.075867>,  <38.558716, 37.179741, 45.086670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037750, 36.725250, 45.075867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208454, 37.076462, 44.989201>,  <39.310879, 37.287189, 44.937199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208454, 37.076462, 44.989201>,  <39.037750, 36.725250, 45.075867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208454, 37.076462, 44.989201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546392, -0.059417, 0.835419,
		0.720646, -0.474911, -0.505103,
		0.426762, 0.878026, -0.216669,
		39.336483, 37.339870, 44.924198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809444, 36.628555, 45.122093>,  <39.037750, 36.725250, 45.075867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809444, 36.628555, 45.122093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.725922, 37.018711, 45.150440>,  <39.675808, 37.252804, 45.167446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.725922, 37.018711, 45.150440>,  <39.809444, 36.628555, 45.122093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725922, 37.018711, 45.150440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530348, 0.052057, 0.846180,
		0.821663, 0.214270, -0.528164,
		-0.208806, 0.975386, 0.070865,
		39.663280, 37.311325, 45.171700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356659, 36.944836, 44.964333>,  <39.809444, 36.628555, 45.122093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356659, 36.944836, 44.964333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158497, 37.198841, 45.201427>,  <40.039600, 37.351242, 45.343685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158497, 37.198841, 45.201427>,  <40.356659, 36.944836, 44.964333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158497, 37.198841, 45.201427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780821, 0.026514, 0.624192,
		0.380652, 0.772048, -0.508965,
		-0.495401, 0.635011, 0.592739,
		40.009876, 37.389343, 45.379250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825111, 37.514458, 45.157871>,  <40.356659, 36.944836, 44.964333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825111, 37.514458, 45.157871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.533016, 37.507442, 45.431061>,  <40.357761, 37.503231, 45.594975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.533016, 37.507442, 45.431061>,  <40.825111, 37.514458, 45.157871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533016, 37.507442, 45.431061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679938, -0.116174, 0.724008,
		0.066644, 0.993074, 0.096760,
		-0.730235, -0.017540, 0.682971,
		40.313946, 37.502182, 45.635952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107986, 37.969540, 45.663021>,  <40.825111, 37.514458, 45.157871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107986, 37.969540, 45.663021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829754, 37.756233, 45.855602>,  <40.662815, 37.628250, 45.971149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829754, 37.756233, 45.855602>,  <41.107986, 37.969540, 45.663021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829754, 37.756233, 45.855602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536789, 0.059647, 0.841605,
		-0.477514, 0.843844, 0.244761,
		-0.695584, -0.533264, 0.481448,
		40.621078, 37.596252, 46.000038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182312, 38.233379, 46.385509>,  <41.107986, 37.969540, 45.663021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182312, 38.233379, 46.385509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.978954, 37.890377, 46.417072>,  <40.856941, 37.684578, 46.436008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.978954, 37.890377, 46.417072>,  <41.182312, 38.233379, 46.385509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978954, 37.890377, 46.417072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411178, -0.161222, 0.897185,
		-0.756615, 0.488569, 0.434550,
		-0.508395, -0.857501, 0.078906,
		40.826435, 37.633125, 46.440742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841084, 38.304264, 47.017479>,  <41.182312, 38.233379, 46.385509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841084, 38.304264, 47.017479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.870407, 37.915920, 46.926212>,  <40.888000, 37.682915, 46.871452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.870407, 37.915920, 46.926212>,  <40.841084, 38.304264, 47.017479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870407, 37.915920, 46.926212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585049, -0.143413, 0.798217,
		-0.807677, -0.192005, 0.557486,
		0.073311, -0.970859, -0.228164,
		40.892399, 37.624664, 46.857761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677292, 38.052883, 47.551041>,  <40.841084, 38.304264, 47.017479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677292, 38.052883, 47.551041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.860149, 37.718830, 47.428684>,  <40.969864, 37.518398, 47.355270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.860149, 37.718830, 47.428684>,  <40.677292, 38.052883, 47.551041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860149, 37.718830, 47.428684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310848, -0.172214, 0.934728,
		-0.833301, -0.522393, 0.180872,
		0.457147, -0.835133, -0.305891,
		40.997292, 37.468288, 47.336918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420799, 37.410015, 47.770267>,  <40.677292, 38.052883, 47.551041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420799, 37.410015, 47.770267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818233, 37.408726, 47.725044>,  <41.056694, 37.407951, 47.697910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818233, 37.408726, 47.725044>,  <40.420799, 37.410015, 47.770267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818233, 37.408726, 47.725044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109420, -0.225709, 0.968030,
		-0.028641, -0.974189, -0.223908,
		0.993583, -0.003225, -0.113060,
		41.116310, 37.407757, 47.691128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707771, 37.719177, 47.595161>,  <40.420799, 37.410015, 47.770267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707771, 37.719177, 47.595161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391376, 37.800968, 47.825825>,  <39.201542, 37.850044, 47.964222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391376, 37.800968, 47.825825>,  <39.707771, 37.719177, 47.595161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391376, 37.800968, 47.825825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607172, -0.146153, -0.781013,
		-0.075419, -0.967899, 0.239757,
		-0.790983, 0.204477, 0.576658,
		39.154083, 37.862312, 47.998821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189625, 37.129150, 47.562954>,  <39.707771, 37.719177, 47.595161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189625, 37.129150, 47.562954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003918, 37.464825, 47.676243>,  <38.892494, 37.666229, 47.744217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003918, 37.464825, 47.676243>,  <39.189625, 37.129150, 47.562954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003918, 37.464825, 47.676243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638349, -0.095366, -0.763817,
		-0.613977, -0.535411, 0.579971,
		-0.464266, 0.839190, 0.283227,
		38.864639, 37.716583, 47.761211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483765, 37.041870, 47.357719>,  <39.189625, 37.129150, 47.562954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483765, 37.041870, 47.357719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504292, 37.432831, 47.439743>,  <38.516605, 37.667408, 47.488956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504292, 37.432831, 47.439743>,  <38.483765, 37.041870, 47.357719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504292, 37.432831, 47.439743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734676, 0.176030, -0.655183,
		-0.676474, -0.117032, 0.727108,
		0.051316, 0.977403, 0.205061,
		38.519688, 37.726051, 47.501263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762287, 37.291775, 47.412735>,  <38.483765, 37.041870, 47.357719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762287, 37.291775, 47.412735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973396, 37.625267, 47.347813>,  <38.100063, 37.825363, 47.308861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973396, 37.625267, 47.347813>,  <37.762287, 37.291775, 47.412735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973396, 37.625267, 47.347813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625929, 0.252594, -0.737841,
		-0.574166, 0.491005, 0.655170,
		0.527776, 0.833733, -0.162303,
		38.131729, 37.875385, 47.299122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269928, 37.755405, 47.253139>,  <37.762287, 37.291775, 47.412735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269928, 37.755405, 47.253139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596882, 37.940353, 47.115677>,  <37.793053, 38.051323, 47.033199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596882, 37.940353, 47.115677>,  <37.269928, 37.755405, 47.253139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596882, 37.940353, 47.115677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497542, 0.265864, -0.825693,
		-0.290412, 0.845889, 0.447361,
		0.817382, 0.462372, -0.343655,
		37.842098, 38.079063, 47.012581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958645, 38.374554, 47.062099>,  <37.269928, 37.755405, 47.253139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958645, 38.374554, 47.062099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.306984, 38.306004, 46.877819>,  <37.515987, 38.264874, 46.767250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.306984, 38.306004, 46.877819>,  <36.958645, 38.374554, 47.062099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306984, 38.306004, 46.877819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436573, 0.161025, -0.885141,
		0.225878, 0.971957, 0.065410,
		0.870852, -0.171377, -0.460702,
		37.568241, 38.254589, 46.739609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014046, 38.860794, 46.643257>,  <36.958645, 38.374554, 47.062099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014046, 38.860794, 46.643257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232437, 38.558651, 46.498295>,  <37.363472, 38.377365, 46.411316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232437, 38.558651, 46.498295>,  <37.014046, 38.860794, 46.643257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232437, 38.558651, 46.498295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458997, 0.092186, -0.883642,
		0.700875, 0.648796, -0.296376,
		0.545982, -0.755358, -0.362406,
		37.396233, 38.332043, 46.389572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083771, 38.973660, 45.955322>,  <37.014046, 38.860794, 46.643257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083771, 38.973660, 45.955322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228889, 38.601242, 45.939621>,  <37.315960, 38.377792, 45.930202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228889, 38.601242, 45.939621>,  <37.083771, 38.973660, 45.955322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228889, 38.601242, 45.939621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379934, -0.109325, -0.918530,
		0.850900, 0.348148, -0.393398,
		0.362793, -0.931043, -0.039249,
		37.337727, 38.321930, 45.927845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465416, 38.883446, 45.262295>,  <37.083771, 38.973660, 45.955322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465416, 38.883446, 45.262295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335587, 38.538921, 45.418648>,  <37.257690, 38.332207, 45.512459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335587, 38.538921, 45.418648>,  <37.465416, 38.883446, 45.262295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335587, 38.538921, 45.418648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459725, -0.217510, -0.861012,
		0.826623, -0.459161, -0.325370,
		-0.324572, -0.861313, 0.390886,
		37.238216, 38.280529, 45.535915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739647, 38.339611, 44.845051>,  <37.465416, 38.883446, 45.262295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739647, 38.339611, 44.845051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399624, 38.212769, 45.013268>,  <37.195610, 38.136665, 45.114197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399624, 38.212769, 45.013268>,  <37.739647, 38.339611, 44.845051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399624, 38.212769, 45.013268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311129, -0.341926, -0.886727,
		0.424977, -0.884609, 0.191996,
		-0.850055, -0.317103, 0.420538,
		37.144608, 38.117638, 45.139427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547565, 37.852108, 44.409187>,  <37.739647, 38.339611, 44.845051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547565, 37.852108, 44.409187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210957, 37.930122, 44.610699>,  <37.008991, 37.976933, 44.731606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210957, 37.930122, 44.610699>,  <37.547565, 37.852108, 44.409187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210957, 37.930122, 44.610699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530485, -0.122144, -0.838849,
		-0.102063, -0.973163, 0.206245,
		-0.841528, 0.195025, 0.503781,
		36.958500, 37.988636, 44.761833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984764, 37.277344, 44.431927>,  <37.547565, 37.852108, 44.409187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984764, 37.277344, 44.431927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.821007, 37.638699, 44.482967>,  <36.722752, 37.855511, 44.513592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.821007, 37.638699, 44.482967>,  <36.984764, 37.277344, 44.431927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821007, 37.638699, 44.482967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440437, -0.073205, -0.894794,
		-0.799007, -0.422524, 0.427856,
		-0.409394, 0.903390, 0.127604,
		36.698189, 37.909718, 44.521248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381435, 37.142231, 44.187424>,  <36.984764, 37.277344, 44.431927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381435, 37.142231, 44.187424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350513, 37.540916, 44.197067>,  <36.331959, 37.780128, 44.202854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350513, 37.540916, 44.197067>,  <36.381435, 37.142231, 44.187424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350513, 37.540916, 44.197067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552061, -0.022657, -0.833496,
		-0.830212, -0.077748, 0.552000,
		-0.077309, 0.996716, 0.024111,
		36.327320, 37.839931, 44.204300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662632, 37.286942, 44.028061>,  <36.381435, 37.142231, 44.187424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662632, 37.286942, 44.028061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865551, 37.622829, 43.950584>,  <35.987301, 37.824364, 43.904099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865551, 37.622829, 43.950584>,  <35.662632, 37.286942, 44.028061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865551, 37.622829, 43.950584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520456, 0.119400, -0.845500,
		-0.686858, 0.529727, 0.497610,
		0.507299, 0.839722, -0.193689,
		36.017742, 37.874744, 43.892479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168663, 37.757122, 43.861969>,  <35.662632, 37.286942, 44.028061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168663, 37.757122, 43.861969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506855, 37.887169, 43.692516>,  <35.709770, 37.965199, 43.590843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506855, 37.887169, 43.692516>,  <35.168663, 37.757122, 43.861969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506855, 37.887169, 43.692516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486719, 0.142774, -0.861812,
		-0.219709, 0.934833, 0.278955,
		0.845478, 0.325120, -0.423632,
		35.760498, 37.984707, 43.565426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910713, 38.243038, 43.381699>,  <35.168663, 37.757122, 43.861969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910713, 38.243038, 43.381699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291180, 38.183636, 43.273453>,  <35.519459, 38.147995, 43.208504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291180, 38.183636, 43.273453>,  <34.910713, 38.243038, 43.381699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291180, 38.183636, 43.273453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242508, 0.182919, -0.952749,
		0.190993, 0.971847, 0.137971,
		0.951163, -0.148509, -0.270617,
		35.576530, 38.139084, 43.192268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093460, 38.821972, 42.906895>,  <34.910713, 38.243038, 43.381699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093460, 38.821972, 42.906895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302715, 38.487209, 42.842506>,  <35.428268, 38.286350, 42.803871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302715, 38.487209, 42.842506>,  <35.093460, 38.821972, 42.906895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302715, 38.487209, 42.842506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140036, 0.101902, -0.984889,
		0.840667, 0.537771, -0.063889,
		0.523134, -0.836910, -0.160973,
		35.459656, 38.236137, 42.794216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438118, 39.070454, 42.421154>,  <35.093460, 38.821972, 42.906895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438118, 39.070454, 42.421154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485680, 38.674484, 42.390415>,  <35.514217, 38.436901, 42.371971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485680, 38.674484, 42.390415>,  <35.438118, 39.070454, 42.421154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485680, 38.674484, 42.390415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143770, 0.059417, -0.987826,
		0.982441, 0.128509, -0.135257,
		0.118907, -0.989927, -0.076850,
		35.521351, 38.377506, 42.367359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867931, 38.986588, 41.819588>,  <35.438118, 39.070454, 42.421154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867931, 38.986588, 41.819588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.706959, 38.624096, 41.871422>,  <35.610374, 38.406601, 41.902523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.706959, 38.624096, 41.871422>,  <35.867931, 38.986588, 41.819588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706959, 38.624096, 41.871422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212827, -0.045060, -0.976050,
		0.890366, -0.420376, -0.174737,
		-0.402434, -0.906230, 0.129587,
		35.586227, 38.352226, 41.910297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218918, 38.292305, 41.416534>,  <35.867931, 38.986588, 41.819588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218918, 38.292305, 41.416534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.832977, 38.207218, 41.478260>,  <35.601414, 38.156166, 41.515293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.832977, 38.207218, 41.478260>,  <36.218918, 38.292305, 41.416534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832977, 38.207218, 41.478260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101616, -0.239529, -0.965557,
		0.242353, -0.947300, 0.209495,
		-0.964852, -0.212717, 0.154311,
		35.543522, 38.143402, 41.524555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.722607, 26.059395, 32.576153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413990, 25.878569, 32.397102>,  <45.228821, 25.770073, 32.289673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413990, 25.878569, 32.397102>,  <45.722607, 26.059395, 32.576153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413990, 25.878569, 32.397102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478294, 0.876120, -0.060410,
		0.419480, 0.167487, -0.892180,
		-0.771538, -0.452065, -0.447623,
		45.182529, 25.742949, 32.262817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641186, 26.309391, 31.910343>,  <45.722607, 26.059395, 32.576153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641186, 26.309391, 31.910343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284977, 26.193644, 32.050762>,  <45.071251, 26.124195, 32.135014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284977, 26.193644, 32.050762>,  <45.641186, 26.309391, 31.910343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284977, 26.193644, 32.050762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317367, 0.948008, -0.023639,
		-0.325955, -0.132462, -0.936059,
		-0.890523, -0.289370, 0.351047,
		45.017818, 26.106833, 32.156075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.158070, 26.724028, 31.592278>,  <45.641186, 26.309391, 31.910343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.158070, 26.724028, 31.592278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.942364, 26.574223, 31.893988>,  <44.812939, 26.484339, 32.075012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.942364, 26.574223, 31.893988>,  <45.158070, 26.724028, 31.592278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942364, 26.574223, 31.893988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366052, 0.910875, 0.190561,
		-0.758419, -0.173341, -0.628295,
		-0.539266, -0.374513, 0.754276,
		44.780582, 26.461868, 32.120270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476940, 27.012760, 31.526535>,  <45.158070, 26.724028, 31.592278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476940, 27.012760, 31.526535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.486935, 26.858282, 31.895367>,  <44.492931, 26.765596, 32.116665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.486935, 26.858282, 31.895367>,  <44.476940, 27.012760, 31.526535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486935, 26.858282, 31.895367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498396, 0.794750, 0.346373,
		-0.866589, -0.468217, -0.172616,
		0.024991, -0.386194, 0.922079,
		44.494431, 26.742424, 32.171989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825447, 27.033579, 31.769880>,  <44.476940, 27.012760, 31.526535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825447, 27.033579, 31.769880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.069038, 27.035803, 32.087147>,  <44.215195, 27.037138, 32.277508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.069038, 27.035803, 32.087147>,  <43.825447, 27.033579, 31.769880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069038, 27.035803, 32.087147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475256, 0.803158, 0.359262,
		-0.635039, -0.595740, 0.491751,
		0.608980, 0.005562, 0.793166,
		44.251732, 27.037472, 32.325096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381275, 27.317019, 32.277145>,  <43.825447, 27.033579, 31.769880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381275, 27.317019, 32.277145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745499, 27.361464, 32.436413>,  <43.964031, 27.388130, 32.531975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745499, 27.361464, 32.436413>,  <43.381275, 27.317019, 32.277145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745499, 27.361464, 32.436413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279586, 0.875016, 0.395195,
		-0.304493, -0.471170, 0.827818,
		0.910558, 0.111112, 0.398168,
		44.018665, 27.394796, 32.555862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273117, 27.347170, 33.035019>,  <43.381275, 27.317019, 32.277145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273117, 27.347170, 33.035019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.613251, 27.531986, 32.934261>,  <43.817329, 27.642876, 32.873806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.613251, 27.531986, 32.934261>,  <43.273117, 27.347170, 33.035019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613251, 27.531986, 32.934261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264585, 0.789135, 0.554310,
		0.454892, -0.404701, 0.793278,
		0.850334, 0.462041, -0.251894,
		43.868351, 27.670599, 32.858692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544582, 27.578341, 33.663048>,  <43.273117, 27.347170, 33.035019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544582, 27.578341, 33.663048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.708736, 27.797009, 33.371094>,  <43.807228, 27.928209, 33.195923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.708736, 27.797009, 33.371094>,  <43.544582, 27.578341, 33.663048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708736, 27.797009, 33.371094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184848, 0.833645, 0.520449,
		0.892980, -0.078669, 0.443169,
		0.410389, 0.546669, -0.729886,
		43.831852, 27.961010, 33.152126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728481, 28.221130, 34.026985>,  <43.544582, 27.578341, 33.663048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728481, 28.221130, 34.026985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805370, 28.314276, 33.645657>,  <43.851505, 28.370163, 33.416859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805370, 28.314276, 33.645657>,  <43.728481, 28.221130, 34.026985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805370, 28.314276, 33.645657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132701, 0.968685, 0.209857,
		0.972337, 0.086167, 0.217107,
		0.192226, 0.232862, -0.953323,
		43.863037, 28.384134, 33.359661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369766, 28.617723, 33.954296>,  <43.728481, 28.221130, 34.026985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369766, 28.617723, 33.954296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116615, 28.714058, 33.659962>,  <43.964725, 28.771858, 33.483360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116615, 28.714058, 33.659962>,  <44.369766, 28.617723, 33.954296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116615, 28.714058, 33.659962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105530, 0.914688, 0.390140,
		0.767023, 0.324566, -0.553474,
		-0.632882, 0.240838, -0.735838,
		43.926750, 28.786310, 33.439209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579113, 29.286213, 33.627502>,  <44.369766, 28.617723, 33.954296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579113, 29.286213, 33.627502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.193443, 29.272303, 33.522316>,  <43.962040, 29.263956, 33.459202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.193443, 29.272303, 33.522316>,  <44.579113, 29.286213, 33.627502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193443, 29.272303, 33.522316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095784, 0.970124, 0.222903,
		0.247360, 0.240107, -0.938702,
		-0.964177, -0.034775, -0.262968,
		43.904190, 29.261869, 33.443424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480721, 29.846350, 33.207577>,  <44.579113, 29.286213, 33.627502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480721, 29.846350, 33.207577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.106167, 29.742624, 33.302185>,  <43.881435, 29.680389, 33.358948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.106167, 29.742624, 33.302185>,  <44.480721, 29.846350, 33.207577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106167, 29.742624, 33.302185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271069, 0.962391, -0.018030,
		-0.222947, -0.080996, -0.971460,
		-0.936385, -0.259313, 0.236518,
		43.825253, 29.664831, 33.373138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943150, 30.106936, 32.655811>,  <44.480721, 29.846350, 33.207577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943150, 30.106936, 32.655811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.786049, 30.065323, 33.021309>,  <43.691788, 30.040356, 33.240608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.786049, 30.065323, 33.021309>,  <43.943150, 30.106936, 32.655811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786049, 30.065323, 33.021309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306068, 0.951727, -0.023202,
		-0.867219, -0.288779, -0.405632,
		-0.392751, -0.104030, 0.913742,
		43.668224, 30.034113, 33.295433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337223, 30.393784, 32.579212>,  <43.943150, 30.106936, 32.655811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337223, 30.393784, 32.579212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.345177, 30.379667, 32.978886>,  <43.349949, 30.371197, 33.218689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.345177, 30.379667, 32.978886>,  <43.337223, 30.393784, 32.579212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345177, 30.379667, 32.978886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312775, 0.948996, 0.039741,
		-0.949619, -0.313308, 0.007828,
		0.019880, -0.035291, 0.999179,
		43.351139, 30.369080, 33.278641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686283, 30.673637, 32.799744>,  <43.337223, 30.393784, 32.579212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686283, 30.673637, 32.799744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902382, 30.681196, 33.136261>,  <43.032040, 30.685732, 33.338173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902382, 30.681196, 33.136261>,  <42.686283, 30.673637, 32.799744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902382, 30.681196, 33.136261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342020, 0.918379, 0.199002,
		-0.768867, -0.395250, 0.502614,
		0.540246, 0.018898, 0.841295,
		43.064457, 30.686865, 33.388649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247974, 30.981504, 33.321770>,  <42.686283, 30.673637, 32.799744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247974, 30.981504, 33.321770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616932, 31.032446, 33.467628>,  <42.838306, 31.063011, 33.555141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616932, 31.032446, 33.467628>,  <42.247974, 30.981504, 33.321770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616932, 31.032446, 33.467628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248209, 0.918781, 0.306975,
		-0.295934, -0.373661, 0.879091,
		0.922397, 0.127354, 0.364645,
		42.893650, 31.070652, 33.577023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101955, 31.085888, 34.013439>,  <42.247974, 30.981504, 33.321770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101955, 31.085888, 34.013439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.464516, 31.241865, 33.948479>,  <42.682053, 31.335451, 33.909500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.464516, 31.241865, 33.948479>,  <42.101955, 31.085888, 34.013439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464516, 31.241865, 33.948479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270712, 0.831379, 0.485307,
		0.324261, -0.395920, 0.859129,
		0.906405, 0.389943, -0.162403,
		42.736439, 31.358849, 33.899757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259769, 31.611423, 34.548615>,  <42.101955, 31.085888, 34.013439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259769, 31.611423, 34.548615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500950, 31.719069, 34.248207>,  <42.645657, 31.783655, 34.067963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500950, 31.719069, 34.248207>,  <42.259769, 31.611423, 34.548615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500950, 31.719069, 34.248207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105176, 0.959985, 0.259551,
		0.790816, -0.077507, 0.607127,
		0.602950, 0.269112, -0.751020,
		42.681835, 31.799803, 34.022900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711765, 32.053329, 34.900444>,  <42.259769, 31.611423, 34.548615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711765, 32.053329, 34.900444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796879, 32.159191, 34.524216>,  <42.847946, 32.222710, 34.298477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796879, 32.159191, 34.524216>,  <42.711765, 32.053329, 34.900444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796879, 32.159191, 34.524216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319552, 0.928534, 0.188975,
		0.923368, 0.260350, 0.282153,
		0.212789, 0.264656, -0.940574,
		42.860714, 32.238586, 34.242043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103222, 32.702827, 34.946812>,  <42.711765, 32.053329, 34.900444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103222, 32.702827, 34.946812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952732, 32.676632, 34.577126>,  <42.862438, 32.660915, 34.355316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952732, 32.676632, 34.577126>,  <43.103222, 32.702827, 34.946812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952732, 32.676632, 34.577126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363061, 0.928148, 0.082023,
		0.852433, 0.366405, -0.372969,
		-0.376224, -0.065491, -0.924211,
		42.839867, 32.656986, 34.299862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361004, 33.250893, 34.404053>,  <43.103222, 32.702827, 34.946812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361004, 33.250893, 34.404053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.024342, 33.119942, 34.232265>,  <42.822346, 33.041370, 34.129192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.024342, 33.119942, 34.232265>,  <43.361004, 33.250893, 34.404053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024342, 33.119942, 34.232265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310077, 0.944093, -0.111985,
		0.442115, 0.038914, -0.896114,
		-0.841657, -0.327375, -0.429464,
		42.771843, 33.021729, 34.103428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997238, 33.362026, 34.604019>,  <43.361004, 33.250893, 34.404053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997238, 33.362026, 34.604019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351303, 33.525406, 34.693153>,  <44.563744, 33.623436, 34.746632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351303, 33.525406, 34.693153>,  <43.997238, 33.362026, 34.604019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351303, 33.525406, 34.693153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463116, -0.727261, -0.506571,
		-0.044854, 0.551594, -0.832905,
		0.885162, 0.408454, 0.222831,
		44.616852, 33.647942, 34.760002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389828, 33.315136, 33.978355>,  <43.997238, 33.362026, 34.604019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389828, 33.315136, 33.978355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677864, 33.350849, 34.253601>,  <44.850685, 33.372276, 34.418751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677864, 33.350849, 34.253601>,  <44.389828, 33.315136, 33.978355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677864, 33.350849, 34.253601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552547, -0.673641, -0.490815,
		0.419722, 0.733646, -0.534412,
		0.720087, 0.089282, 0.688116,
		44.893890, 33.377632, 34.460037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999367, 33.457500, 33.594727>,  <44.389828, 33.315136, 33.978355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999367, 33.457500, 33.594727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.167934, 33.333298, 33.935547>,  <45.269077, 33.258778, 34.140038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.167934, 33.333298, 33.935547>,  <44.999367, 33.457500, 33.594727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167934, 33.333298, 33.935547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590439, -0.619190, -0.517674,
		0.688320, 0.721244, -0.077608,
		0.421423, -0.310503, 0.852051,
		45.294361, 33.240147, 34.191162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673695, 33.422222, 33.407524>,  <44.999367, 33.457500, 33.594727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673695, 33.422222, 33.407524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630184, 33.202950, 33.739227>,  <45.604076, 33.071384, 33.938248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630184, 33.202950, 33.739227>,  <45.673695, 33.422222, 33.407524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630184, 33.202950, 33.739227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665798, -0.659629, -0.348716,
		0.738161, 0.514185, 0.436729,
		-0.108775, -0.548182, 0.829256,
		45.597553, 33.038494, 33.988003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.372627, 33.204124, 33.644447>,  <45.673695, 33.422222, 33.407524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.372627, 33.204124, 33.644447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.118580, 32.949070, 33.818821>,  <45.966152, 32.796036, 33.923443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.118580, 32.949070, 33.818821>,  <46.372627, 33.204124, 33.644447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.118580, 32.949070, 33.818821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475940, -0.767571, -0.429320,
		0.608360, -0.065193, 0.790980,
		-0.635122, -0.637639, 0.435931,
		45.928043, 32.757778, 33.949600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.796513, 32.476688, 33.836487>,  <46.372627, 33.204124, 33.644447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.796513, 32.476688, 33.836487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.411484, 32.369354, 33.821239>,  <46.180466, 32.304955, 33.812092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.411484, 32.369354, 33.821239>,  <46.796513, 32.476688, 33.836487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411484, 32.369354, 33.821239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262648, -0.888846, -0.375457,
		0.066868, -0.371416, 0.926056,
		-0.962572, -0.268333, -0.038116,
		46.122711, 32.288853, 33.809803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.825848, 31.879658, 34.088116>,  <46.796513, 32.476688, 33.836487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.825848, 31.879658, 34.088116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.463486, 31.876539, 33.918755>,  <46.246067, 31.874668, 33.817139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.463486, 31.876539, 33.918755>,  <46.825848, 31.879658, 34.088116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.463486, 31.876539, 33.918755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149588, -0.941267, -0.302722,
		-0.396177, -0.337574, 0.853866,
		-0.905907, -0.007796, -0.423405,
		46.191715, 31.874201, 33.791733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455105, 31.382610, 34.383720>,  <46.825848, 31.879658, 34.088116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455105, 31.382610, 34.383720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.299950, 31.434608, 34.018723>,  <46.206856, 31.465807, 33.799725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.299950, 31.434608, 34.018723>,  <46.455105, 31.382610, 34.383720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299950, 31.434608, 34.018723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090084, -0.979917, -0.177895,
		-0.917295, -0.151204, 0.368386,
		-0.387886, 0.129997, -0.912494,
		46.183582, 31.473608, 33.744976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931137, 30.826357, 34.307953>,  <46.455105, 31.382610, 34.383720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931137, 30.826357, 34.307953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.012768, 30.960833, 33.940186>,  <46.061749, 31.041517, 33.719524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.012768, 30.960833, 33.940186>,  <45.931137, 30.826357, 34.307953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012768, 30.960833, 33.940186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068256, -0.932012, -0.355943,
		-0.976572, 0.135397, -0.167258,
		0.204080, 0.336188, -0.919418,
		46.073994, 31.061689, 33.664360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532520, 30.336769, 33.844933>,  <45.931137, 30.826357, 34.307953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532520, 30.336769, 33.844933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.782265, 30.529966, 33.599369>,  <45.932114, 30.645885, 33.452030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.782265, 30.529966, 33.599369>,  <45.532520, 30.336769, 33.844933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782265, 30.529966, 33.599369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136125, -0.841173, -0.523352,
		-0.769180, 0.243195, -0.590947,
		0.624366, 0.482994, -0.613909,
		45.969574, 30.674864, 33.415195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329876, 30.220697, 33.171543>,  <45.532520, 30.336769, 33.844933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329876, 30.220697, 33.171543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.709709, 30.339392, 33.131062>,  <45.937611, 30.410608, 33.106773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.709709, 30.339392, 33.131062>,  <45.329876, 30.220697, 33.171543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709709, 30.339392, 33.131062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182949, -0.786590, -0.589751,
		-0.254607, 0.541501, -0.801219,
		0.949582, 0.296736, -0.101204,
		45.994583, 30.428413, 33.100700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483704, 30.077188, 32.402950>,  <45.329876, 30.220697, 33.171543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483704, 30.077188, 32.402950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.828587, 30.101536, 32.604103>,  <46.035515, 30.116144, 32.724796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.828587, 30.101536, 32.604103>,  <45.483704, 30.077188, 32.402950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.828587, 30.101536, 32.604103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384686, -0.724574, -0.571847,
		0.329569, 0.686504, -0.648149,
		0.862207, 0.060870, 0.502885,
		46.087250, 30.119797, 32.754967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.959641, 30.042965, 31.906525>,  <45.483704, 30.077188, 32.402950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.959641, 30.042965, 31.906525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.178833, 29.930017, 32.221481>,  <46.310349, 29.862249, 32.410454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.178833, 29.930017, 32.221481>,  <45.959641, 30.042965, 31.906525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.178833, 29.930017, 32.221481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326466, -0.794462, -0.512105,
		0.770157, 0.537678, -0.343163,
		0.547978, -0.282370, 0.787393,
		46.343227, 29.845306, 32.457699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.651672, 29.868225, 31.670507>,  <45.959641, 30.042965, 31.906525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.651672, 29.868225, 31.670507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.583702, 29.677635, 32.015553>,  <46.542919, 29.563280, 32.222580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.583702, 29.677635, 32.015553>,  <46.651672, 29.868225, 31.670507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583702, 29.677635, 32.015553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318226, -0.854975, -0.409573,
		0.932662, 0.204910, 0.296906,
		-0.169922, -0.476476, 0.862611,
		46.532726, 29.534693, 32.274334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389565, 29.634529, 31.866035>,  <46.651672, 29.868225, 31.670507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389565, 29.634529, 31.866035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.116280, 29.408674, 32.051254>,  <46.952309, 29.273161, 32.162384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.116280, 29.408674, 32.051254>,  <47.389565, 29.634529, 31.866035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.116280, 29.408674, 32.051254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460346, -0.825274, -0.327115,
		0.566841, -0.010327, 0.823763,
		-0.683208, -0.564638, 0.463045,
		46.911316, 29.239283, 32.190166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.619595, 28.945961, 32.017818>,  <47.389565, 29.634529, 31.866035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.619595, 28.945961, 32.017818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.241814, 28.830473, 32.080616>,  <47.015144, 28.761181, 32.118294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.241814, 28.830473, 32.080616>,  <47.619595, 28.945961, 32.017818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.241814, 28.830473, 32.080616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201400, -0.885962, -0.417742,
		0.259699, -0.362921, 0.894900,
		-0.944455, -0.288720, 0.156991,
		46.958477, 28.743856, 32.127712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.631084, 28.189102, 32.275612>,  <47.619595, 28.945961, 32.017818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.631084, 28.189102, 32.275612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.255173, 28.211834, 32.140800>,  <47.029625, 28.225473, 32.059914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.255173, 28.211834, 32.140800>,  <47.631084, 28.189102, 32.275612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.255173, 28.211834, 32.140800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131328, -0.850335, -0.509592,
		-0.315544, -0.523164, 0.791663,
		-0.939779, 0.056831, -0.337024,
		46.973240, 28.228884, 32.039692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.408554, 27.533978, 32.238029>,  <47.631084, 28.189102, 32.275612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.408554, 27.533978, 32.238029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.148640, 27.706902, 31.987944>,  <46.992691, 27.810656, 31.837893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.148640, 27.706902, 31.987944>,  <47.408554, 27.533978, 32.238029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.148640, 27.706902, 31.987944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083825, -0.858257, -0.506328,
		-0.755484, -0.276594, 0.593919,
		-0.649783, 0.432307, -0.625214,
		46.953705, 27.836594, 31.800379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.971512, 26.960060, 32.108841>,  <47.408554, 27.533978, 32.238029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.971512, 26.960060, 32.108841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.889072, 27.228111, 31.823616>,  <46.839607, 27.388941, 31.652481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.889072, 27.228111, 31.823616>,  <46.971512, 26.960060, 32.108841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889072, 27.228111, 31.823616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156618, -0.741900, -0.651963,
		-0.965916, -0.022691, 0.257859,
		-0.206100, 0.670127, -0.713059,
		46.827244, 27.429150, 31.609699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.348038, 26.767450, 31.734591>,  <46.971512, 26.960060, 32.108841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.348038, 26.767450, 31.734591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.551056, 27.018377, 31.498329>,  <46.672867, 27.168934, 31.356571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.551056, 27.018377, 31.498329>,  <46.348038, 26.767450, 31.734591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.551056, 27.018377, 31.498329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044698, -0.665419, -0.745131,
		-0.860467, 0.404586, -0.309688,
		0.507542, 0.627318, -0.590655,
		46.703320, 27.206573, 31.321133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006321, 26.713303, 31.107140>,  <46.348038, 26.767450, 31.734591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006321, 26.713303, 31.107140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.349224, 26.881971, 30.988951>,  <46.554966, 26.983173, 30.918037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.349224, 26.881971, 30.988951>,  <46.006321, 26.713303, 31.107140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349224, 26.881971, 30.988951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001807, -0.576314, -0.817226,
		-0.514885, 0.700040, -0.494811,
		0.857258, 0.421671, -0.295471,
		46.606400, 27.008472, 30.900309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.281609, 37.377926, 36.284214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025928, 37.092533, 36.399014>,  <37.872520, 36.921299, 36.467892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025928, 37.092533, 36.399014>,  <38.281609, 37.377926, 36.284214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025928, 37.092533, 36.399014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082321, -0.307565, -0.947959,
		0.764622, -0.629561, 0.137861,
		-0.639200, -0.713482, 0.286997,
		37.834167, 36.878490, 36.485111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476639, 36.712696, 36.030670>,  <38.281609, 37.377926, 36.284214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476639, 36.712696, 36.030670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080322, 36.687973, 36.078850>,  <37.842533, 36.673138, 36.107758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080322, 36.687973, 36.078850>,  <38.476639, 36.712696, 36.030670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080322, 36.687973, 36.078850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078124, -0.465557, -0.881563,
		0.110563, -0.882857, 0.456443,
		-0.990794, -0.061809, 0.120445,
		37.783085, 36.669430, 36.114983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278572, 36.198528, 35.681496>,  <38.476639, 36.712696, 36.030670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278572, 36.198528, 35.681496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896259, 36.304100, 35.733383>,  <37.666874, 36.367443, 35.764515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896259, 36.304100, 35.733383>,  <38.278572, 36.198528, 35.681496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896259, 36.304100, 35.733383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259238, -0.547861, -0.795389,
		-0.138858, -0.793845, 0.592055,
		-0.955779, 0.263930, 0.129720,
		37.609524, 36.383278, 35.772301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812378, 35.528538, 35.459759>,  <38.278572, 36.198528, 35.681496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812378, 35.528538, 35.459759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594597, 35.863991, 35.466312>,  <37.463928, 36.065262, 35.470245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594597, 35.863991, 35.466312>,  <37.812378, 35.528538, 35.459759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594597, 35.863991, 35.466312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545905, -0.339441, -0.766007,
		-0.636836, -0.426000, 0.642623,
		-0.544452, 0.838632, 0.016388,
		37.431263, 36.115582, 35.471230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120522, 35.316921, 35.537746>,  <37.812378, 35.528538, 35.459759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120522, 35.316921, 35.537746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090702, 35.684349, 35.382484>,  <37.072811, 35.904808, 35.289326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090702, 35.684349, 35.382484>,  <37.120522, 35.316921, 35.537746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090702, 35.684349, 35.382484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529682, -0.366265, -0.765040,
		-0.844914, 0.148563, 0.513858,
		-0.074552, 0.918574, -0.388154,
		37.068336, 35.959923, 35.266037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484806, 35.382519, 35.318161>,  <37.120522, 35.316921, 35.537746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484806, 35.382519, 35.318161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701637, 35.649216, 35.113571>,  <36.831738, 35.809235, 34.990818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701637, 35.649216, 35.113571>,  <36.484806, 35.382519, 35.318161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701637, 35.649216, 35.113571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408113, -0.323179, -0.853815,
		-0.734571, 0.671575, 0.096916,
		0.542080, 0.666740, -0.511476,
		36.864262, 35.849239, 34.960129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044552, 35.506554, 34.697514>,  <36.484806, 35.382519, 35.318161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044552, 35.506554, 34.697514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417458, 35.624447, 34.613590>,  <36.641201, 35.695183, 34.563236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417458, 35.624447, 34.613590>,  <36.044552, 35.506554, 34.697514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417458, 35.624447, 34.613590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040333, -0.491638, -0.869865,
		-0.359527, 0.819405, -0.446448,
		0.932262, 0.294734, -0.209806,
		36.697136, 35.712868, 34.550648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978477, 35.981503, 34.119320>,  <36.044552, 35.506554, 34.697514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978477, 35.981503, 34.119320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346054, 35.824799, 34.137474>,  <36.566601, 35.730774, 34.148365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346054, 35.824799, 34.137474>,  <35.978477, 35.981503, 34.119320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346054, 35.824799, 34.137474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056496, -0.244661, -0.967961,
		0.390315, 0.886940, -0.246963,
		0.918946, -0.391763, 0.045386,
		36.621738, 35.707272, 34.151089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342457, 36.311798, 33.612793>,  <35.978477, 35.981503, 34.119320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342457, 36.311798, 33.612793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579330, 35.993996, 33.666576>,  <36.721455, 35.803314, 33.698845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579330, 35.993996, 33.666576>,  <36.342457, 36.311798, 33.612793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579330, 35.993996, 33.666576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091806, -0.099254, -0.990818,
		0.800554, 0.599094, 0.014163,
		0.592187, -0.794503, 0.134458,
		36.756985, 35.755646, 33.706913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804981, 36.271156, 33.117062>,  <36.342457, 36.311798, 33.612793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804981, 36.271156, 33.117062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816914, 35.892387, 33.245094>,  <36.824074, 35.665127, 33.321915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816914, 35.892387, 33.245094>,  <36.804981, 36.271156, 33.117062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816914, 35.892387, 33.245094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088245, -0.321469, -0.942799,
		0.995652, -0.000119, -0.093151,
		0.029833, -0.946920, 0.320082,
		36.825863, 35.608311, 33.341118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326817, 35.888836, 32.695587>,  <36.804981, 36.271156, 33.117062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326817, 35.888836, 32.695587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108631, 35.607834, 32.878433>,  <36.977722, 35.439232, 32.988140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108631, 35.607834, 32.878433>,  <37.326817, 35.888836, 32.695587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108631, 35.607834, 32.878433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140746, -0.460878, -0.876232,
		0.826235, -0.542287, 0.152515,
		-0.545460, -0.702508, 0.457118,
		36.944992, 35.397083, 33.015568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597614, 35.231243, 32.611195>,  <37.326817, 35.888836, 32.695587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597614, 35.231243, 32.611195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211536, 35.147270, 32.673592>,  <36.979889, 35.096886, 32.711029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211536, 35.147270, 32.673592>,  <37.597614, 35.231243, 32.611195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211536, 35.147270, 32.673592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057718, -0.410761, -0.909914,
		0.255094, -0.887246, 0.384346,
		-0.965192, -0.209930, 0.155993,
		36.921978, 35.084290, 32.720390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249123, 34.526642, 32.578957>,  <37.597614, 35.231243, 32.611195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249123, 34.526642, 32.578957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028835, 34.810070, 32.402485>,  <36.896664, 34.980125, 32.296600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028835, 34.810070, 32.402485>,  <37.249123, 34.526642, 32.578957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028835, 34.810070, 32.402485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183422, -0.412899, -0.892115,
		-0.814290, -0.572224, 0.097422,
		-0.550715, 0.708572, -0.441179,
		36.863621, 35.022640, 32.270130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815056, 34.465794, 32.082581>,  <37.249123, 34.526642, 32.578957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815056, 34.465794, 32.082581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066521, 34.309498, 31.813625>,  <38.217400, 34.215721, 31.652252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066521, 34.309498, 31.813625>,  <37.815056, 34.465794, 32.082581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066521, 34.309498, 31.813625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119619, 0.902904, -0.412862,
		0.768421, 0.179122, 0.614365,
		0.628666, -0.390742, -0.672384,
		38.255119, 34.192276, 31.611910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401718, 34.094521, 31.694565>,  <37.815056, 34.465794, 32.082581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401718, 34.094521, 31.694565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609921, 33.771194, 31.584501>,  <37.734840, 33.577198, 31.518463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609921, 33.771194, 31.584501>,  <37.401718, 34.094521, 31.694565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609921, 33.771194, 31.584501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320876, -0.113463, 0.940301,
		-0.791276, -0.577719, 0.200309,
		0.520501, -0.808312, -0.275157,
		37.766071, 33.528702, 31.501955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231819, 33.523266, 32.165867>,  <37.401718, 34.094521, 31.694565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231819, 33.523266, 32.165867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599998, 33.517349, 32.009636>,  <37.820908, 33.513798, 31.915897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599998, 33.517349, 32.009636>,  <37.231819, 33.523266, 32.165867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599998, 33.517349, 32.009636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386876, -0.107720, 0.915818,
		-0.055618, -0.994071, -0.093429,
		0.920453, -0.014791, -0.390573,
		37.876133, 33.512913, 31.892464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509624, 32.946983, 32.448975>,  <37.231819, 33.523266, 32.165867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509624, 32.946983, 32.448975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803429, 33.199139, 32.348488>,  <37.979710, 33.350430, 32.288197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803429, 33.199139, 32.348488>,  <37.509624, 32.946983, 32.448975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803429, 33.199139, 32.348488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373245, -0.066121, 0.925373,
		0.566732, -0.773461, -0.283855,
		0.734508, 0.630386, -0.251218,
		38.023781, 33.388256, 32.273121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027367, 32.774097, 32.889782>,  <37.509624, 32.946983, 32.448975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027367, 32.774097, 32.889782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201115, 33.101913, 32.740288>,  <38.305363, 33.298603, 32.650593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201115, 33.101913, 32.740288>,  <38.027367, 32.774097, 32.889782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201115, 33.101913, 32.740288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417769, 0.184287, 0.889667,
		0.797992, -0.542580, -0.262330,
		0.434371, 0.819540, -0.373733,
		38.331425, 33.347775, 32.628166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738911, 32.652885, 33.054195>,  <38.027367, 32.774097, 32.889782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738911, 32.652885, 33.054195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662552, 33.041210, 32.996128>,  <38.616737, 33.274204, 32.961288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662552, 33.041210, 32.996128>,  <38.738911, 32.652885, 33.054195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662552, 33.041210, 32.996128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535913, 0.226978, 0.813191,
		0.822408, 0.077442, -0.563603,
		-0.190901, 0.970816, -0.145166,
		38.605282, 33.332455, 32.952579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390938, 32.978138, 33.280655>,  <38.738911, 32.652885, 33.054195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390938, 32.978138, 33.280655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097256, 33.249104, 33.298752>,  <38.921047, 33.411682, 33.309608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097256, 33.249104, 33.298752>,  <39.390938, 32.978138, 33.280655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097256, 33.249104, 33.298752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298482, 0.262219, 0.917687,
		0.609795, 0.687275, -0.394720,
		-0.734206, 0.677418, 0.045240,
		38.876995, 33.452328, 33.312325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764347, 33.536663, 33.427181>,  <39.390938, 32.978138, 33.280655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764347, 33.536663, 33.427181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386578, 33.610592, 33.535919>,  <39.159916, 33.654949, 33.601162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386578, 33.610592, 33.535919>,  <39.764347, 33.536663, 33.427181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386578, 33.610592, 33.535919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317845, 0.302491, 0.898596,
		0.083847, 0.935062, -0.344425,
		-0.944428, 0.184818, 0.271842,
		39.103249, 33.666039, 33.617470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762867, 34.060715, 33.817184>,  <39.764347, 33.536663, 33.427181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762867, 34.060715, 33.817184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415054, 33.890236, 33.917007>,  <39.206367, 33.787949, 33.976902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415054, 33.890236, 33.917007>,  <39.762867, 34.060715, 33.817184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415054, 33.890236, 33.917007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187574, 0.182448, 0.965157,
		-0.456874, 0.886043, -0.078701,
		-0.869530, -0.426193, 0.249554,
		39.154194, 33.762379, 33.991875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533222, 34.448963, 34.431423>,  <39.762867, 34.060715, 33.817184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533222, 34.448963, 34.431423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255878, 34.162800, 34.465931>,  <39.089470, 33.991100, 34.486637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255878, 34.162800, 34.465931>,  <39.533222, 34.448963, 34.431423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255878, 34.162800, 34.465931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028338, 0.092556, 0.995304,
		-0.720033, 0.692550, -0.043902,
		-0.693361, -0.715408, 0.086269,
		39.047871, 33.948177, 34.491810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012379, 34.667049, 34.860817>,  <39.533222, 34.448963, 34.431423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012379, 34.667049, 34.860817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994514, 34.267773, 34.876884>,  <38.983795, 34.028206, 34.886524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994514, 34.267773, 34.876884>,  <39.012379, 34.667049, 34.860817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994514, 34.267773, 34.876884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060280, 0.042828, 0.997262,
		-0.997182, 0.042122, -0.062084,
		-0.044665, -0.998194, 0.040168,
		38.981113, 33.968315, 34.888935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536274, 34.457260, 35.520355>,  <39.012379, 34.667049, 34.860817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536274, 34.457260, 35.520355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725113, 34.119198, 35.420082>,  <38.838417, 33.916363, 35.359917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725113, 34.119198, 35.420082>,  <38.536274, 34.457260, 35.520355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725113, 34.119198, 35.420082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084488, -0.239683, 0.967168,
		-0.877490, -0.477775, -0.041748,
		0.472095, -0.845153, -0.250685,
		38.866741, 33.865650, 35.344875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219925, 34.044224, 35.841343>,  <38.536274, 34.457260, 35.520355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219925, 34.044224, 35.841343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571293, 33.868637, 35.765785>,  <38.782112, 33.763283, 35.720451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571293, 33.868637, 35.765785>,  <38.219925, 34.044224, 35.841343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571293, 33.868637, 35.765785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061769, -0.287660, 0.955739,
		-0.473879, -0.851209, -0.225571,
		0.878421, -0.438971, -0.188894,
		38.834820, 33.736946, 35.709118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176826, 33.477978, 36.172588>,  <38.219925, 34.044224, 35.841343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176826, 33.477978, 36.172588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572929, 33.517067, 36.132893>,  <38.810589, 33.540520, 36.109077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572929, 33.517067, 36.132893>,  <38.176826, 33.477978, 36.172588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572929, 33.517067, 36.132893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126526, -0.333407, 0.934254,
		0.058208, -0.937705, -0.342521,
		0.990254, 0.097719, -0.099237,
		38.870007, 33.546383, 36.103123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471893, 33.123833, 36.707027>,  <38.176826, 33.477978, 36.172588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471893, 33.123833, 36.707027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782246, 33.354019, 36.603607>,  <38.968456, 33.492130, 36.541553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782246, 33.354019, 36.603607>,  <38.471893, 33.123833, 36.707027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782246, 33.354019, 36.603607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389714, -0.114899, 0.913740,
		0.496118, -0.809715, -0.313415,
		0.775880, 0.575465, -0.258553,
		39.015011, 33.526657, 36.526043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307854, 32.485382, 37.056164>,  <38.471893, 33.123833, 36.707027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307854, 32.485382, 37.056164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940407, 32.533451, 37.206734>,  <37.719940, 32.562294, 37.297077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940407, 32.533451, 37.206734>,  <38.307854, 32.485382, 37.056164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940407, 32.533451, 37.206734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394801, -0.239296, -0.887057,
		-0.016524, -0.963481, 0.267267,
		-0.918618, 0.120175, 0.376429,
		37.664822, 32.569504, 37.319664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947796, 31.921455, 36.801147>,  <38.307854, 32.485382, 37.056164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947796, 31.921455, 36.801147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695812, 32.219662, 36.888191>,  <37.544621, 32.398586, 36.940418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695812, 32.219662, 36.888191>,  <37.947796, 31.921455, 36.801147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695812, 32.219662, 36.888191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280013, 0.043316, -0.959018,
		-0.724390, -0.665078, 0.181467,
		-0.629961, 0.745517, 0.217608,
		37.506824, 32.443317, 36.953472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218273, 31.622694, 36.709850>,  <37.947796, 31.921455, 36.801147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218273, 31.622694, 36.709850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217781, 32.022480, 36.696785>,  <37.217487, 32.262352, 36.688946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217781, 32.022480, 36.696785>,  <37.218273, 31.622694, 36.709850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217781, 32.022480, 36.696785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627084, -0.026212, -0.778510,
		-0.778950, 0.019523, 0.626781,
		-0.001230, 0.999466, -0.032661,
		37.217411, 32.322319, 36.686985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621708, 31.674952, 36.415997>,  <37.218273, 31.622694, 36.709850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621708, 31.674952, 36.415997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769665, 32.044636, 36.378006>,  <36.858437, 32.266445, 36.355209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769665, 32.044636, 36.378006>,  <36.621708, 31.674952, 36.415997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769665, 32.044636, 36.378006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643076, 0.180900, -0.744129,
		-0.670549, 0.336324, 0.661249,
		0.369888, 0.924208, -0.094980,
		36.880630, 32.321899, 36.349510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051727, 32.089397, 36.472908>,  <36.621708, 31.674952, 36.415997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051727, 32.089397, 36.472908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337818, 32.298599, 36.287468>,  <36.509472, 32.424118, 36.176205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337818, 32.298599, 36.287468>,  <36.051727, 32.089397, 36.472908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337818, 32.298599, 36.287468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647712, 0.246856, -0.720785,
		-0.262530, 0.815801, 0.515312,
		0.715225, 0.523002, -0.463597,
		36.552387, 32.455502, 36.148388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769333, 32.699890, 36.314850>,  <36.051727, 32.089397, 36.472908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769333, 32.699890, 36.314850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070946, 32.648632, 36.057163>,  <36.251911, 32.617878, 35.902550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070946, 32.648632, 36.057163>,  <35.769333, 32.699890, 36.314850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070946, 32.648632, 36.057163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641763, 0.065226, -0.764124,
		0.139940, 0.989608, -0.033058,
		0.754027, -0.128147, -0.644221,
		36.297153, 32.610188, 35.863895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564579, 33.133255, 35.733925>,  <35.769333, 32.699890, 36.314850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564579, 33.133255, 35.733925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865456, 32.928013, 35.568546>,  <36.045982, 32.804867, 35.469318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865456, 32.928013, 35.568546>,  <35.564579, 33.133255, 35.733925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865456, 32.928013, 35.568546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424115, 0.103228, -0.899706,
		0.504321, 0.852097, -0.139968,
		0.752188, -0.513103, -0.413447,
		36.091110, 32.774082, 35.444511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686123, 33.467949, 35.143467>,  <35.564579, 33.133255, 35.733925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686123, 33.467949, 35.143467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895599, 33.139397, 35.053062>,  <36.021286, 32.942265, 34.998821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895599, 33.139397, 35.053062>,  <35.686123, 33.467949, 35.143467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895599, 33.139397, 35.053062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262772, 0.096615, -0.960009,
		0.810368, 0.562139, -0.165239,
		0.523694, -0.821380, -0.226008,
		36.052708, 32.892982, 34.985260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075020, 33.648548, 34.563202>,  <35.686123, 33.467949, 35.143467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075020, 33.648548, 34.563202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003078, 33.255718, 34.540653>,  <35.959915, 33.020020, 34.527126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003078, 33.255718, 34.540653>,  <36.075020, 33.648548, 34.563202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003078, 33.255718, 34.540653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416296, 0.127906, -0.900187,
		0.891263, -0.138436, -0.431839,
		-0.179853, -0.982077, -0.056367,
		35.949123, 32.961094, 34.523743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350662, 33.472870, 33.962917>,  <36.075020, 33.648548, 34.563202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350662, 33.472870, 33.962917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108189, 33.164017, 34.039192>,  <35.962704, 32.978706, 34.084957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108189, 33.164017, 34.039192>,  <36.350662, 33.472870, 33.962917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108189, 33.164017, 34.039192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375915, 0.066864, -0.924239,
		0.700881, -0.631938, -0.330786,
		-0.606179, -0.772129, 0.190691,
		35.926334, 32.932377, 34.096401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406349, 33.079369, 33.371971>,  <36.350662, 33.472870, 33.962917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406349, 33.079369, 33.371971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059238, 32.967548, 33.536324>,  <35.850971, 32.900455, 33.634933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059238, 32.967548, 33.536324>,  <36.406349, 33.079369, 33.371971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059238, 32.967548, 33.536324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380863, -0.157012, -0.911203,
		0.319237, -0.947207, 0.029782,
		-0.867773, -0.279547, 0.410880,
		35.798904, 32.883686, 33.659588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151783, 32.320660, 33.119015>,  <36.406349, 33.079369, 33.371971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151783, 32.320660, 33.119015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844551, 32.537666, 33.255089>,  <35.660213, 32.667870, 33.336735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844551, 32.537666, 33.255089>,  <36.151783, 32.320660, 33.119015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844551, 32.537666, 33.255089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456959, -0.092192, -0.884697,
		-0.448602, -0.834969, 0.318720,
		-0.768078, 0.542519, 0.340189,
		35.614128, 32.700420, 33.357147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.165222, 31.547838, 40.717873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848179, 31.782171, 40.785484>,  <38.657951, 31.922771, 40.826050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848179, 31.782171, 40.785484>,  <39.165222, 31.547838, 40.717873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848179, 31.782171, 40.785484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096829, 0.152757, -0.983509,
		-0.601993, -0.795904, -0.064351,
		-0.792609, 0.585834, 0.169025,
		38.610397, 31.957922, 40.836193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613956, 31.243326, 40.315346>,  <39.165222, 31.547838, 40.717873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613956, 31.243326, 40.315346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529274, 31.625048, 40.399715>,  <38.478466, 31.854080, 40.450336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529274, 31.625048, 40.399715>,  <38.613956, 31.243326, 40.315346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529274, 31.625048, 40.399715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367176, 0.122346, -0.922070,
		-0.905739, -0.272650, 0.324496,
		-0.211702, 0.954303, 0.210924,
		38.465763, 31.911339, 40.462994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916447, 31.267862, 40.157753>,  <38.613956, 31.243326, 40.315346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916447, 31.267862, 40.157753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.076000, 31.634647, 40.154449>,  <38.171734, 31.854719, 40.152470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.076000, 31.634647, 40.154449>,  <37.916447, 31.267862, 40.157753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076000, 31.634647, 40.154449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432301, 0.180098, -0.883562,
		-0.808708, 0.356006, 0.468242,
		0.398883, 0.916965, -0.008255,
		38.195663, 31.909737, 40.151974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359215, 31.765211, 39.959900>,  <37.916447, 31.267862, 40.157753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359215, 31.765211, 39.959900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699913, 31.957758, 39.877132>,  <37.904331, 32.073288, 39.827473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699913, 31.957758, 39.877132>,  <37.359215, 31.765211, 39.959900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699913, 31.957758, 39.877132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410398, 0.367392, -0.834623,
		-0.325740, 0.795806, 0.510477,
		0.851743, 0.481369, -0.206923,
		37.955437, 32.102169, 39.815056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267879, 32.537777, 39.752148>,  <37.359215, 31.765211, 39.959900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267879, 32.537777, 39.752148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623772, 32.433407, 39.602322>,  <37.837307, 32.370785, 39.512428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623772, 32.433407, 39.602322>,  <37.267879, 32.537777, 39.752148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623772, 32.433407, 39.602322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236473, 0.438400, -0.867114,
		0.390459, 0.860072, 0.328357,
		0.889732, -0.260925, -0.374561,
		37.890690, 32.355129, 39.489952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329254, 33.054382, 39.265125>,  <37.267879, 32.537777, 39.752148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329254, 33.054382, 39.265125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613956, 32.800545, 39.144661>,  <37.784779, 32.648243, 39.072384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613956, 32.800545, 39.144661>,  <37.329254, 33.054382, 39.265125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613956, 32.800545, 39.144661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262661, 0.157188, -0.951998,
		0.651473, 0.756690, -0.054805,
		0.711753, -0.634596, -0.301157,
		37.827484, 32.610165, 39.054314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848190, 33.456432, 38.823826>,  <37.329254, 33.054382, 39.265125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848190, 33.456432, 38.823826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.850437, 33.065159, 38.740761>,  <37.851788, 32.830395, 38.690922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.850437, 33.065159, 38.740761>,  <37.848190, 33.456432, 38.823826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850437, 33.065159, 38.740761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174659, 0.203516, -0.963367,
		0.984613, 0.041684, -0.169705,
		0.005620, -0.978184, -0.207665,
		37.852123, 32.771702, 38.678463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278099, 33.357311, 38.205585>,  <37.848190, 33.456432, 38.823826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278099, 33.357311, 38.205585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051311, 33.027847, 38.210144>,  <37.915237, 32.830170, 38.212879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051311, 33.027847, 38.210144>,  <38.278099, 33.357311, 38.205585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051311, 33.027847, 38.210144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180150, 0.110484, -0.977415,
		0.803799, -0.556216, -0.211023,
		-0.566968, -0.823661, 0.011396,
		37.881222, 32.780750, 38.213562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406509, 33.057163, 37.504417>,  <38.278099, 33.357311, 38.205585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406509, 33.057163, 37.504417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.071743, 32.892929, 37.649185>,  <37.870884, 32.794388, 37.736046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.071743, 32.892929, 37.649185>,  <38.406509, 33.057163, 37.504417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071743, 32.892929, 37.649185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418040, 0.052705, -0.906898,
		0.353284, -0.910298, -0.215751,
		-0.836919, -0.410585, 0.361921,
		37.820667, 32.769753, 37.757763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074711, 32.879303, 37.088684>,  <38.406509, 33.057163, 37.504417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074711, 32.879303, 37.088684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161762, 33.254848, 36.981968>,  <39.213993, 33.480175, 36.917938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161762, 33.254848, 36.981968>,  <39.074711, 32.879303, 37.088684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161762, 33.254848, 36.981968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332292, 0.185743, 0.924706,
		0.917725, -0.289898, -0.271553,
		0.217631, 0.938860, -0.266792,
		39.227051, 33.536507, 36.901932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752834, 32.992687, 37.381607>,  <39.074711, 32.879303, 37.088684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752834, 32.992687, 37.381607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592342, 33.352047, 37.310181>,  <39.496048, 33.567665, 37.267326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592342, 33.352047, 37.310181>,  <39.752834, 32.992687, 37.381607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592342, 33.352047, 37.310181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334041, 0.325037, 0.884741,
		0.852894, 0.295339, -0.430519,
		-0.401233, 0.898402, -0.178567,
		39.471973, 33.621567, 37.256611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256908, 33.422710, 37.583153>,  <39.752834, 32.992687, 37.381607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256908, 33.422710, 37.583153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907898, 33.616844, 37.605610>,  <39.698494, 33.733326, 37.619083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907898, 33.616844, 37.605610>,  <40.256908, 33.422710, 37.583153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907898, 33.616844, 37.605610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318051, 0.477008, 0.819333,
		0.370875, 0.732741, -0.570563,
		-0.872522, 0.485338, 0.056139,
		39.646141, 33.762447, 37.622452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440605, 34.117161, 37.903423>,  <40.256908, 33.422710, 37.583153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440605, 34.117161, 37.903423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.041874, 34.119186, 37.935196>,  <39.802635, 34.120403, 37.954258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.041874, 34.119186, 37.935196>,  <40.440605, 34.117161, 37.903423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041874, 34.119186, 37.935196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066570, 0.600105, 0.797147,
		-0.043628, 0.799905, -0.598538,
		-0.996828, 0.005067, 0.079432,
		39.742825, 34.120705, 37.959026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258701, 34.841389, 37.971771>,  <40.440605, 34.117161, 37.903423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258701, 34.841389, 37.971771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.993725, 34.599060, 38.148026>,  <39.834740, 34.453663, 38.253777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.993725, 34.599060, 38.148026>,  <40.258701, 34.841389, 37.971771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993725, 34.599060, 38.148026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024180, 0.570609, 0.820866,
		-0.748725, 0.554428, -0.363345,
		-0.662439, -0.605817, 0.440636,
		39.794994, 34.417316, 38.280216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836147, 35.315186, 38.353985>,  <40.258701, 34.841389, 37.971771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836147, 35.315186, 38.353985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775234, 34.946159, 38.495789>,  <39.738686, 34.724743, 38.580872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775234, 34.946159, 38.495789>,  <39.836147, 35.315186, 38.353985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775234, 34.946159, 38.495789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046102, 0.351670, 0.934988,
		-0.987260, 0.158731, -0.011023,
		-0.152287, -0.922568, 0.354508,
		39.729549, 34.669388, 38.602142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392097, 35.411461, 38.876514>,  <39.836147, 35.315186, 38.353985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392097, 35.411461, 38.876514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533031, 35.048645, 38.968727>,  <39.617592, 34.830956, 39.024055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533031, 35.048645, 38.968727>,  <39.392097, 35.411461, 38.876514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533031, 35.048645, 38.968727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158518, 0.300608, 0.940482,
		-0.922352, -0.294820, 0.249696,
		0.352333, -0.907037, 0.230532,
		39.638733, 34.776535, 39.037888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072876, 35.352261, 39.472477>,  <39.392097, 35.411461, 38.876514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072876, 35.352261, 39.472477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.374573, 35.089649, 39.476295>,  <39.555592, 34.932083, 39.478588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.374573, 35.089649, 39.476295>,  <39.072876, 35.352261, 39.472477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374573, 35.089649, 39.476295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259328, 0.311222, 0.914270,
		-0.603215, -0.687105, 0.404993,
		0.754242, -0.656527, 0.009548,
		39.600845, 34.892693, 39.479160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032799, 35.067123, 40.161488>,  <39.072876, 35.352261, 39.472477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032799, 35.067123, 40.161488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394543, 34.982635, 40.013149>,  <39.611588, 34.931942, 39.924149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394543, 34.982635, 40.013149>,  <39.032799, 35.067123, 40.161488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394543, 34.982635, 40.013149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403294, 0.138695, 0.904499,
		-0.139612, -0.967549, 0.210613,
		0.904358, -0.211217, -0.370843,
		39.665852, 34.919270, 39.901897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330933, 34.614265, 40.640976>,  <39.032799, 35.067123, 40.161488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330933, 34.614265, 40.640976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.659916, 34.740734, 40.451832>,  <39.857307, 34.816616, 40.338345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.659916, 34.740734, 40.451832>,  <39.330933, 34.614265, 40.640976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659916, 34.740734, 40.451832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415246, 0.234421, 0.878986,
		0.388757, -0.919285, 0.061514,
		0.822459, 0.316169, -0.472862,
		39.906654, 34.835583, 40.309975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926907, 34.242062, 40.879803>,  <39.330933, 34.614265, 40.640976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926907, 34.242062, 40.879803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.084675, 34.570488, 40.714741>,  <40.179337, 34.767544, 40.615704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.084675, 34.570488, 40.714741>,  <39.926907, 34.242062, 40.879803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084675, 34.570488, 40.714741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570444, 0.133287, 0.810449,
		0.720432, -0.555057, -0.415799,
		0.394425, 0.821064, -0.412653,
		40.203003, 34.816807, 40.590946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612297, 34.196194, 41.001896>,  <39.926907, 34.242062, 40.879803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612297, 34.196194, 41.001896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.573990, 34.587852, 40.930229>,  <40.551006, 34.822849, 40.887230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.573990, 34.587852, 40.930229>,  <40.612297, 34.196194, 41.001896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573990, 34.587852, 40.930229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639286, 0.198468, 0.742916,
		0.762982, -0.043389, -0.644962,
		-0.095770, 0.979147, -0.179165,
		40.545258, 34.881596, 40.876480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233139, 34.385311, 41.190182>,  <40.612297, 34.196194, 41.001896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233139, 34.385311, 41.190182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.022732, 34.725464, 41.195152>,  <40.896488, 34.929554, 41.198135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.022732, 34.725464, 41.195152>,  <41.233139, 34.385311, 41.190182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022732, 34.725464, 41.195152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504024, 0.299940, 0.809936,
		0.685026, 0.432307, -0.586387,
		-0.526022, 0.850380, 0.012426,
		40.864925, 34.980579, 41.198879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779922, 34.940491, 41.217575>,  <41.233139, 34.385311, 41.190182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779922, 34.940491, 41.217575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.432487, 35.077271, 41.361034>,  <41.224026, 35.159340, 41.447109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.432487, 35.077271, 41.361034>,  <41.779922, 34.940491, 41.217575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432487, 35.077271, 41.361034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473014, 0.356417, 0.805745,
		0.147699, 0.869503, -0.471327,
		-0.868587, 0.341952, 0.358645,
		41.171913, 35.179855, 41.468628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.199741, 36.372131, 43.977303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.523289, 36.183220, 43.837196>,  <33.717415, 36.069874, 43.753132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.523289, 36.183220, 43.837196>,  <33.199741, 36.372131, 43.977303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523289, 36.183220, 43.837196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436273, -0.082665, -0.896009,
		0.394212, 0.877563, -0.272908,
		0.808865, -0.472280, -0.350270,
		33.765949, 36.041534, 43.732117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294853, 36.681812, 43.381012>,  <33.199741, 36.372131, 43.977303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294853, 36.681812, 43.381012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504822, 36.344685, 43.333485>,  <33.630802, 36.142406, 43.304970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504822, 36.344685, 43.333485>,  <33.294853, 36.681812, 43.381012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504822, 36.344685, 43.333485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407692, -0.126427, -0.904325,
		0.747160, 0.523138, -0.409975,
		0.524918, -0.842819, -0.118818,
		33.662296, 36.091839, 43.297840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483837, 36.695835, 42.684147>,  <33.294853, 36.681812, 43.381012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483837, 36.695835, 42.684147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.545998, 36.317295, 42.797470>,  <33.583294, 36.090172, 42.865463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.545998, 36.317295, 42.797470>,  <33.483837, 36.695835, 42.684147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545998, 36.317295, 42.797470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399380, -0.322499, -0.858190,
		0.903518, 0.020219, -0.428073,
		0.155405, -0.946354, 0.283308,
		33.592621, 36.033390, 42.882462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047474, 36.383736, 42.162079>,  <33.483837, 36.695835, 42.684147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047474, 36.383736, 42.162079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.807831, 36.101833, 42.314068>,  <33.664043, 35.932690, 42.405262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.807831, 36.101833, 42.314068>,  <34.047474, 36.383736, 42.162079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807831, 36.101833, 42.314068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198572, -0.328963, -0.923230,
		0.775654, -0.628567, 0.057139,
		-0.599108, -0.704761, 0.379977,
		33.628098, 35.890404, 42.428062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238876, 35.623051, 41.838287>,  <34.047474, 36.383736, 42.162079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238876, 35.623051, 41.838287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.851952, 35.629314, 41.939529>,  <33.619797, 35.633072, 42.000275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.851952, 35.629314, 41.939529>,  <34.238876, 35.623051, 41.838287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851952, 35.629314, 41.939529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241973, -0.355563, -0.902787,
		0.075859, -0.934521, 0.347729,
		-0.967313, 0.015656, 0.253101,
		33.561756, 35.634010, 42.015461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957436, 35.006420, 41.647171>,  <34.238876, 35.623051, 41.838287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957436, 35.006420, 41.647171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.618229, 35.215469, 41.682369>,  <33.414707, 35.340897, 41.703487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.618229, 35.215469, 41.682369>,  <33.957436, 35.006420, 41.647171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618229, 35.215469, 41.682369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321503, -0.375295, -0.869362,
		-0.421319, -0.765522, 0.486278,
		-0.848013, 0.522618, 0.087999,
		33.363827, 35.372253, 41.708771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465714, 34.536030, 41.508270>,  <33.957436, 35.006420, 41.647171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465714, 34.536030, 41.508270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299614, 34.895222, 41.450024>,  <33.199955, 35.110737, 41.415077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299614, 34.895222, 41.450024>,  <33.465714, 34.536030, 41.508270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299614, 34.895222, 41.450024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366757, -0.311737, -0.876532,
		-0.832500, -0.310576, 0.458789,
		-0.415251, 0.897977, -0.145615,
		33.175037, 35.164616, 41.406338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880383, 34.306675, 41.069927>,  <33.465714, 34.536030, 41.508270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880383, 34.306675, 41.069927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.880016, 34.705750, 41.042736>,  <32.879799, 34.945194, 41.026421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.880016, 34.705750, 41.042736>,  <32.880383, 34.306675, 41.069927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880016, 34.705750, 41.042736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441147, -0.061410, -0.895331,
		-0.897434, 0.029174, 0.440183,
		-0.000911, 0.997686, -0.067981,
		32.879742, 35.005054, 41.022343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296032, 34.444244, 40.685474>,  <32.880383, 34.306675, 41.069927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296032, 34.444244, 40.685474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.527332, 34.767101, 40.637913>,  <32.666111, 34.960815, 40.609375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.527332, 34.767101, 40.637913>,  <32.296032, 34.444244, 40.685474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527332, 34.767101, 40.637913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297243, 0.072698, -0.952030,
		-0.759784, 0.585858, 0.281956,
		0.578252, 0.807146, -0.118908,
		32.700809, 35.009247, 40.602242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949804, 34.873867, 40.404255>,  <32.296032, 34.444244, 40.685474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949804, 34.873867, 40.404255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.307369, 35.030048, 40.316200>,  <32.521908, 35.123756, 40.263367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.307369, 35.030048, 40.316200>,  <31.949804, 34.873867, 40.404255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307369, 35.030048, 40.316200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306933, 0.175284, -0.935450,
		-0.326666, 0.903780, 0.276533,
		0.893914, 0.390457, -0.220141,
		32.575542, 35.147186, 40.250156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853516, 35.564091, 40.140186>,  <31.949804, 34.873867, 40.404255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853516, 35.564091, 40.140186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.197044, 35.405815, 40.010044>,  <32.403160, 35.310848, 39.931957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.197044, 35.405815, 40.010044>,  <31.853516, 35.564091, 40.140186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197044, 35.405815, 40.010044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178871, 0.363515, -0.914255,
		0.480034, 0.843378, 0.241416,
		0.858821, -0.395691, -0.325355,
		32.454689, 35.287109, 39.912437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176651, 36.131725, 39.729527>,  <31.853516, 35.564091, 40.140186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176651, 36.131725, 39.729527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.369141, 35.801258, 39.612316>,  <32.484634, 35.602978, 39.541988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.369141, 35.801258, 39.612316>,  <32.176651, 36.131725, 39.729527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369141, 35.801258, 39.612316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213600, 0.213689, -0.953264,
		0.850175, 0.521324, -0.073638,
		0.481224, -0.826171, -0.293028,
		32.513508, 35.553406, 39.524406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479465, 36.384384, 39.003773>,  <32.176651, 36.131725, 39.729527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479465, 36.384384, 39.003773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.460159, 35.984974, 38.993793>,  <32.448574, 35.745327, 38.987804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.460159, 35.984974, 38.993793>,  <32.479465, 36.384384, 39.003773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460159, 35.984974, 38.993793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226984, 0.035292, -0.973259,
		0.972701, -0.041313, -0.228353,
		-0.048268, -0.998523, -0.024951,
		32.445679, 35.685417, 38.986309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989597, 36.247147, 38.503845>,  <32.479465, 36.384384, 39.003773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989597, 36.247147, 38.503845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716713, 35.956287, 38.534420>,  <32.552982, 35.781773, 38.552765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716713, 35.956287, 38.534420>,  <32.989597, 36.247147, 38.503845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716713, 35.956287, 38.534420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257536, 0.141129, -0.955907,
		0.684302, -0.671812, -0.283547,
		-0.682207, -0.727153, 0.076441,
		32.512051, 35.738140, 38.557354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715446, 36.084946, 38.303253>,  <32.989597, 36.247147, 38.503845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715446, 36.084946, 38.303253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.019558, 36.292431, 38.146835>,  <34.202026, 36.416924, 38.052986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.019558, 36.292431, 38.146835>,  <33.715446, 36.084946, 38.303253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019558, 36.292431, 38.146835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234718, 0.341943, 0.909936,
		0.605712, -0.783587, 0.138219,
		0.760277, 0.518716, -0.391040,
		34.247643, 36.448044, 38.029522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286167, 36.080910, 38.811966>,  <33.715446, 36.084946, 38.303253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286167, 36.080910, 38.811966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.417152, 36.380650, 38.581749>,  <34.495743, 36.560493, 38.443619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.417152, 36.380650, 38.581749>,  <34.286167, 36.080910, 38.811966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417152, 36.380650, 38.581749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440804, 0.417621, 0.794534,
		0.835740, -0.513881, -0.193560,
		0.327461, 0.749346, -0.575543,
		34.515392, 36.605453, 38.409084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111843, 36.172939, 38.838745>,  <34.286167, 36.080910, 38.811966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111843, 36.172939, 38.838745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899204, 36.501919, 38.757771>,  <34.771622, 36.699306, 38.709187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899204, 36.501919, 38.757771>,  <35.111843, 36.172939, 38.838745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899204, 36.501919, 38.757771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301071, 0.406884, 0.862439,
		0.791682, 0.397521, -0.463914,
		-0.531597, 0.822449, -0.202441,
		34.739723, 36.748653, 38.697037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388443, 36.596333, 39.220093>,  <35.111843, 36.172939, 38.838745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388443, 36.596333, 39.220093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086910, 36.835331, 39.110737>,  <34.905991, 36.978729, 39.045124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086910, 36.835331, 39.110737>,  <35.388443, 36.596333, 39.220093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086910, 36.835331, 39.110737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252494, 0.647538, 0.718986,
		0.606618, 0.472965, -0.638998,
		-0.753831, 0.597493, -0.273387,
		34.860760, 37.014580, 39.028721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651154, 37.295563, 39.238743>,  <35.388443, 36.596333, 39.220093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651154, 37.295563, 39.238743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256973, 37.357105, 39.267654>,  <35.020466, 37.394032, 39.285000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256973, 37.357105, 39.267654>,  <35.651154, 37.295563, 39.238743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256973, 37.357105, 39.267654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125801, 0.374136, 0.918802,
		0.114320, 0.914522, -0.388046,
		-0.985447, 0.153854, 0.072276,
		34.961338, 37.403263, 39.289337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607853, 37.971756, 39.444115>,  <35.651154, 37.295563, 39.238743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607853, 37.971756, 39.444115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256138, 37.819427, 39.558533>,  <35.045109, 37.728031, 39.627186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256138, 37.819427, 39.558533>,  <35.607853, 37.971756, 39.444115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256138, 37.819427, 39.558533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184087, 0.282176, 0.941535,
		-0.439276, 0.880539, -0.178009,
		-0.879289, -0.380825, 0.286049,
		34.992352, 37.705181, 39.644348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304920, 38.540897, 39.681656>,  <35.607853, 37.971756, 39.444115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304920, 38.540897, 39.681656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166203, 38.204605, 39.847984>,  <35.082973, 38.002831, 39.947781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166203, 38.204605, 39.847984>,  <35.304920, 38.540897, 39.681656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166203, 38.204605, 39.847984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254655, 0.342286, 0.904428,
		-0.902711, 0.419538, 0.095395,
		-0.346789, -0.840731, 0.415823,
		35.062164, 37.952385, 39.972733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938175, 38.751572, 40.230129>,  <35.304920, 38.540897, 39.681656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938175, 38.751572, 40.230129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978542, 38.359959, 40.300919>,  <35.002762, 38.124992, 40.343391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978542, 38.359959, 40.300919>,  <34.938175, 38.751572, 40.230129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978542, 38.359959, 40.300919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140066, 0.162124, 0.976779,
		-0.984985, -0.123366, -0.120767,
		0.100922, -0.979029, 0.176969,
		35.008820, 38.066250, 40.354008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453796, 38.664703, 40.858654>,  <34.938175, 38.751572, 40.230129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453796, 38.664703, 40.858654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.678131, 38.334454, 40.833965>,  <34.812733, 38.136303, 40.819153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.678131, 38.334454, 40.833965>,  <34.453796, 38.664703, 40.858654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678131, 38.334454, 40.833965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033839, -0.051624, 0.998093,
		-0.827235, -0.561855, -0.001014,
		0.560836, -0.825623, -0.061718,
		34.846382, 38.086765, 40.815449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229279, 38.300247, 41.422806>,  <34.453796, 38.664703, 40.858654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229279, 38.300247, 41.422806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.594994, 38.170906, 41.325218>,  <34.814423, 38.093304, 41.266666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.594994, 38.170906, 41.325218>,  <34.229279, 38.300247, 41.422806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594994, 38.170906, 41.325218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173349, -0.232021, 0.957140,
		-0.366100, -0.917393, -0.156081,
		0.914287, -0.323353, -0.243972,
		34.869282, 38.073902, 41.252026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386288, 37.639721, 41.767422>,  <34.229279, 38.300247, 41.422806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386288, 37.639721, 41.767422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732685, 37.825748, 41.693924>,  <34.940525, 37.937366, 41.649826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732685, 37.825748, 41.693924>,  <34.386288, 37.639721, 41.767422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732685, 37.825748, 41.693924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255083, -0.094802, 0.962260,
		0.430100, -0.880183, -0.200730,
		0.865995, 0.465070, -0.183746,
		34.992485, 37.965271, 41.638802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949116, 37.239491, 42.031887>,  <34.386288, 37.639721, 41.767422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949116, 37.239491, 42.031887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136700, 37.591709, 42.004410>,  <35.249249, 37.803040, 41.987923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136700, 37.591709, 42.004410>,  <34.949116, 37.239491, 42.031887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136700, 37.591709, 42.004410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338752, -0.107496, 0.934715,
		0.815675, -0.461610, -0.348697,
		0.468957, 0.880546, -0.068690,
		35.277386, 37.855873, 41.983803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680672, 37.099144, 42.260181>,  <34.949116, 37.239491, 42.031887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680672, 37.099144, 42.260181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638252, 37.496082, 42.285484>,  <35.612801, 37.734245, 42.300667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638252, 37.496082, 42.285484>,  <35.680672, 37.099144, 42.260181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638252, 37.496082, 42.285484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579066, 0.009919, 0.815220,
		0.808354, 0.123079, -0.575686,
		-0.106047, 0.992347, 0.063253,
		35.606438, 37.793785, 42.304459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371239, 37.383522, 42.427086>,  <35.680672, 37.099144, 42.260181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371239, 37.383522, 42.427086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091705, 37.638729, 42.556431>,  <35.923985, 37.791855, 42.634037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091705, 37.638729, 42.556431>,  <36.371239, 37.383522, 42.427086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091705, 37.638729, 42.556431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518006, 0.139672, 0.843896,
		0.493257, 0.757247, -0.428106,
		-0.698833, 0.638019, 0.323364,
		35.882057, 37.830135, 42.653439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013386, 37.656414, 42.019325>,  <36.371239, 37.383522, 42.427086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013386, 37.656414, 42.019325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.379673, 37.497410, 41.995827>,  <37.599445, 37.402008, 41.981728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.379673, 37.497410, 41.995827>,  <37.013386, 37.656414, 42.019325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379673, 37.497410, 41.995827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090853, -0.062406, -0.993907,
		0.391423, 0.915473, -0.093261,
		0.915715, -0.397511, -0.058746,
		37.654388, 37.378155, 41.978203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309788, 38.013512, 41.537807>,  <37.013386, 37.656414, 42.019325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309788, 38.013512, 41.537807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.515514, 37.671005, 41.556946>,  <37.638950, 37.465504, 41.568428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.515514, 37.671005, 41.556946>,  <37.309788, 38.013512, 41.537807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515514, 37.671005, 41.556946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044299, -0.082239, -0.995628,
		0.856454, 0.509952, -0.080229,
		0.514320, -0.856263, 0.047844,
		37.669811, 37.414127, 41.571301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684238, 38.062416, 40.955490>,  <37.309788, 38.013512, 41.537807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684238, 38.062416, 40.955490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.712452, 37.678474, 41.064087>,  <37.729378, 37.448109, 41.129246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.712452, 37.678474, 41.064087>,  <37.684238, 38.062416, 40.955490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712452, 37.678474, 41.064087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008541, -0.272745, -0.962048,
		0.997473, 0.065534, -0.027435,
		0.070530, -0.959852, 0.271496,
		37.733612, 37.390518, 41.145535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241879, 37.788815, 40.664299>,  <37.684238, 38.062416, 40.955490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241879, 37.788815, 40.664299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.032253, 37.455448, 40.734470>,  <37.906479, 37.255428, 40.776573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.032253, 37.455448, 40.734470>,  <38.241879, 37.788815, 40.664299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032253, 37.455448, 40.734470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008929, -0.200590, -0.979635,
		0.851632, -0.514958, 0.097681,
		-0.524064, -0.833416, 0.175427,
		37.875034, 37.205421, 40.787098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483330, 37.291840, 40.285038>,  <38.241879, 37.788815, 40.664299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483330, 37.291840, 40.285038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129456, 37.127625, 40.373398>,  <37.917133, 37.029095, 40.426414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129456, 37.127625, 40.373398>,  <38.483330, 37.291840, 40.285038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129456, 37.127625, 40.373398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041249, -0.403038, -0.914253,
		0.464369, -0.817934, 0.339626,
		-0.884681, -0.410541, 0.220897,
		37.864052, 37.004463, 40.439667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532745, 36.653313, 40.092899>,  <38.483330, 37.291840, 40.285038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532745, 36.653313, 40.092899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.141529, 36.735775, 40.080704>,  <37.906799, 36.785252, 40.073387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.141529, 36.735775, 40.080704>,  <38.532745, 36.653313, 40.092899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141529, 36.735775, 40.080704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038990, -0.324738, -0.945000,
		-0.204713, -0.923064, 0.325647,
		-0.978045, 0.206151, -0.030488,
		37.848114, 36.797623, 40.071556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352009, 36.078758, 39.722370>,  <38.532745, 36.653313, 40.092899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352009, 36.078758, 39.722370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.051960, 36.342381, 39.700623>,  <37.871929, 36.500553, 39.687572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.051960, 36.342381, 39.700623>,  <38.352009, 36.078758, 39.722370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051960, 36.342381, 39.700623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186641, -0.289869, -0.938691,
		-0.634410, -0.693990, 0.340445,
		-0.750126, 0.659056, -0.054368,
		37.826923, 36.540096, 39.684311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879856, 35.817348, 39.228157>,  <38.352009, 36.078758, 39.722370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879856, 35.817348, 39.228157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.757542, 36.197666, 39.248100>,  <37.684151, 36.425858, 39.260067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.757542, 36.197666, 39.248100>,  <37.879856, 35.817348, 39.228157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757542, 36.197666, 39.248100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199084, -0.012645, -0.979901,
		-0.931052, -0.309569, 0.193154,
		-0.305790, 0.950793, 0.049857,
		37.665806, 36.482903, 39.263058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427605, 35.781216, 38.708347>,  <37.879856, 35.817348, 39.228157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427605, 35.781216, 38.708347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.493530, 36.169945, 38.775753>,  <37.533085, 36.403183, 38.816196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.493530, 36.169945, 38.775753>,  <37.427605, 35.781216, 38.708347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493530, 36.169945, 38.775753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022283, 0.174478, -0.984409,
		-0.986074, 0.158486, 0.050411,
		0.164811, 0.971823, 0.168516,
		37.542973, 36.461491, 38.826309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983498, 36.112125, 38.252060>,  <37.427605, 35.781216, 38.708347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983498, 36.112125, 38.252060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.242901, 36.397686, 38.357719>,  <37.398544, 36.569023, 38.421116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.242901, 36.397686, 38.357719>,  <36.983498, 36.112125, 38.252060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242901, 36.397686, 38.357719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040302, 0.314328, -0.948459,
		-0.760139, 0.625731, 0.175073,
		0.648510, 0.713904, 0.264151,
		37.437454, 36.611858, 38.436966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774246, 36.786430, 37.889000>,  <36.983498, 36.112125, 38.252060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774246, 36.786430, 37.889000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.163662, 36.824696, 37.972019>,  <37.397312, 36.847656, 38.021832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.163662, 36.824696, 37.972019>,  <36.774246, 36.786430, 37.889000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163662, 36.824696, 37.972019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182153, 0.223621, -0.957504,
		-0.138010, 0.969970, 0.200278,
		0.973537, 0.095664, 0.207545,
		37.455723, 36.853394, 38.034283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069828, 37.516190, 37.662670>,  <36.774246, 36.786430, 37.889000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069828, 37.516190, 37.662670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.369793, 37.252449, 37.684170>,  <37.549770, 37.094204, 37.697067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.369793, 37.252449, 37.684170>,  <37.069828, 37.516190, 37.662670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369793, 37.252449, 37.684170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136384, 0.074595, -0.987844,
		0.647326, 0.748126, 0.145864,
		0.749912, -0.659351, 0.053746,
		37.594765, 37.054646, 37.700294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529404, 37.811672, 37.296051>,  <37.069828, 37.516190, 37.662670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529404, 37.811672, 37.296051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.615078, 37.421398, 37.314651>,  <37.666485, 37.187233, 37.325809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.615078, 37.421398, 37.314651>,  <37.529404, 37.811672, 37.296051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615078, 37.421398, 37.314651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173106, -0.008934, -0.984863,
		0.961331, 0.218995, 0.166983,
		0.214188, -0.975685, 0.046498,
		37.679333, 37.128693, 37.328602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111340, 37.659569, 36.905731>,  <37.529404, 37.811672, 37.296051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111340, 37.659569, 36.905731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.960548, 37.290337, 36.936245>,  <37.870075, 37.068798, 36.954556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.960548, 37.290337, 36.936245>,  <38.111340, 37.659569, 36.905731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960548, 37.290337, 36.936245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080570, -0.114731, -0.990124,
		0.922713, -0.367104, 0.117623,
		-0.376974, -0.923077, 0.076286,
		37.847458, 37.013412, 36.959129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.935118, 37.548431, 27.055609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839981, 37.361401, 26.715067>,  <26.782900, 37.249184, 26.510742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839981, 37.361401, 26.715067>,  <26.935118, 37.548431, 27.055609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839981, 37.361401, 26.715067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728689, -0.493643, 0.474688,
		-0.642218, 0.733273, -0.223310,
		-0.237840, -0.467576, -0.851354,
		26.768629, 37.221127, 26.459660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184750, 37.554016, 26.976046>,  <26.935118, 37.548431, 27.055609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184750, 37.554016, 26.976046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.304932, 37.254139, 26.740187>,  <26.377041, 37.074211, 26.598671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.304932, 37.254139, 26.740187>,  <26.184750, 37.554016, 26.976046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304932, 37.254139, 26.740187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574104, -0.635825, 0.515878,
		-0.761665, 0.183521, -0.621439,
		0.300452, -0.749697, -0.589646,
		26.395067, 37.029228, 26.563293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579845, 37.216671, 26.768082>,  <26.184750, 37.554016, 26.976046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579845, 37.216671, 26.768082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.838594, 36.922192, 26.688515>,  <25.993845, 36.745502, 26.640774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.838594, 36.922192, 26.688515>,  <25.579845, 37.216671, 26.768082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838594, 36.922192, 26.688515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573574, -0.641590, 0.509290,
		-0.502561, -0.215352, -0.837291,
		0.646874, -0.736197, -0.198918,
		26.032656, 36.701332, 26.628839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137398, 36.571854, 26.592848>,  <25.579845, 37.216671, 26.768082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137398, 36.571854, 26.592848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.504725, 36.437794, 26.677103>,  <25.725121, 36.357357, 26.727655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.504725, 36.437794, 26.677103>,  <25.137398, 36.571854, 26.592848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504725, 36.437794, 26.677103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388910, -0.664746, 0.637857,
		-0.073754, -0.667675, -0.740790,
		0.918319, -0.335145, 0.210638,
		25.780220, 36.337250, 26.740294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056595, 35.909000, 26.656120>,  <25.137398, 36.571854, 26.592848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056595, 35.909000, 26.656120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.409523, 35.948719, 26.840143>,  <25.621281, 35.972549, 26.950558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.409523, 35.948719, 26.840143>,  <25.056595, 35.909000, 26.656120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409523, 35.948719, 26.840143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298467, -0.637756, 0.710060,
		0.363909, -0.763811, -0.533069,
		0.882320, 0.099293, 0.460057,
		25.674219, 35.978508, 26.978161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.280788, 35.182667, 26.902899>,  <25.056595, 35.909000, 26.656120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.280788, 35.182667, 26.902899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.476538, 35.443161, 27.134901>,  <25.593987, 35.599457, 27.274103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.476538, 35.443161, 27.134901>,  <25.280788, 35.182667, 26.902899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476538, 35.443161, 27.134901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329724, -0.477544, 0.814392,
		0.807339, -0.589783, -0.018969,
		0.489373, 0.651236, 0.580005,
		25.623350, 35.638531, 27.308903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711315, 34.779800, 27.381334>,  <25.280788, 35.182667, 26.902899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711315, 34.779800, 27.381334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.733131, 35.125244, 27.581816>,  <25.746222, 35.332512, 27.702105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.733131, 35.125244, 27.581816>,  <25.711315, 34.779800, 27.381334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733131, 35.125244, 27.581816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047851, -0.503635, 0.862590,
		0.997364, -0.023064, -0.068794,
		0.054542, 0.863608, 0.501204,
		25.749495, 35.384327, 27.732178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072430, 34.540611, 27.949553>,  <25.711315, 34.779800, 27.381334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072430, 34.540611, 27.949553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.907633, 34.886040, 28.065834>,  <25.808754, 35.093296, 28.135603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.907633, 34.886040, 28.065834>,  <26.072430, 34.540611, 27.949553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907633, 34.886040, 28.065834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104122, -0.361566, 0.926514,
		0.905219, 0.351448, 0.238879,
		-0.411992, 0.863571, 0.290703,
		25.784035, 35.145111, 28.153046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493593, 34.717232, 28.480223>,  <26.072430, 34.540611, 27.949553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493593, 34.717232, 28.480223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.144722, 34.911724, 28.501728>,  <25.935400, 35.028419, 28.514631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.144722, 34.911724, 28.501728>,  <26.493593, 34.717232, 28.480223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144722, 34.911724, 28.501728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038566, -0.041222, 0.998406,
		0.487668, 0.872860, 0.017201,
		-0.872177, 0.486227, 0.053765,
		25.883068, 35.057590, 28.517859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567976, 35.255894, 29.020752>,  <26.493593, 34.717232, 28.480223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567976, 35.255894, 29.020752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.178822, 35.174591, 28.976612>,  <25.945328, 35.125809, 28.950129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.178822, 35.174591, 28.976612>,  <26.567976, 35.255894, 29.020752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178822, 35.174591, 28.976612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148910, 0.185434, 0.971308,
		-0.176966, 0.961405, -0.210674,
		-0.972887, -0.203260, -0.110348,
		25.886955, 35.113613, 28.943508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293873, 35.626110, 29.509632>,  <26.567976, 35.255894, 29.020752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293873, 35.626110, 29.509632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.972866, 35.404583, 29.420862>,  <25.780262, 35.271667, 29.367599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.972866, 35.404583, 29.420862>,  <26.293873, 35.626110, 29.509632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972866, 35.404583, 29.420862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396565, 0.217232, 0.891934,
		-0.445761, 0.803800, -0.393958,
		-0.802517, -0.553819, -0.221926,
		25.732111, 35.238438, 29.354284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749928, 36.054394, 29.709633>,  <26.293873, 35.626110, 29.509632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749928, 36.054394, 29.709633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.603384, 35.685905, 29.657276>,  <25.515457, 35.464813, 29.625862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.603384, 35.685905, 29.657276>,  <25.749928, 36.054394, 29.709633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603384, 35.685905, 29.657276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444064, 0.049487, 0.894628,
		-0.817672, 0.385880, -0.427211,
		-0.366360, -0.921221, -0.130891,
		25.493477, 35.409538, 29.618010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933655, 36.081913, 29.874533>,  <25.749928, 36.054394, 29.709633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933655, 36.081913, 29.874533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.084345, 35.714638, 29.923540>,  <25.174759, 35.494274, 29.952944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.084345, 35.714638, 29.923540>,  <24.933655, 36.081913, 29.874533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084345, 35.714638, 29.923540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311430, -0.000979, 0.950269,
		-0.872405, -0.396145, -0.286320,
		0.376725, -0.918187, 0.122517,
		25.197363, 35.439182, 29.960295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.411425, 35.721169, 30.228331>,  <24.933655, 36.081913, 29.874533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.411425, 35.721169, 30.228331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.744822, 35.508224, 30.287500>,  <24.944860, 35.380459, 30.323002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.744822, 35.508224, 30.287500>,  <24.411425, 35.721169, 30.228331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.744822, 35.508224, 30.287500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150939, 0.038162, 0.987806,
		-0.531513, -0.845658, -0.048546,
		0.833493, -0.532359, 0.147926,
		24.994869, 35.348518, 30.331879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.177488, 35.141663, 30.523577>,  <24.411425, 35.721169, 30.228331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.177488, 35.141663, 30.523577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.566439, 35.148048, 30.616726>,  <24.799809, 35.151878, 30.672615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.566439, 35.148048, 30.616726>,  <24.177488, 35.141663, 30.523577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.566439, 35.148048, 30.616726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226222, -0.181379, 0.957040,
		0.057515, -0.983284, -0.172757,
		0.972376, 0.015963, 0.232873,
		24.858152, 35.152836, 30.686588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.200161, 34.709431, 31.055260>,  <24.177488, 35.141663, 30.523577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.200161, 34.709431, 31.055260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.551136, 34.900688, 31.070669>,  <24.761721, 35.015442, 31.079916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.551136, 34.900688, 31.070669>,  <24.200161, 34.709431, 31.055260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.551136, 34.900688, 31.070669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034276, -0.142601, 0.989187,
		0.478463, -0.866630, -0.141512,
		0.877438, 0.478139, 0.038525,
		24.814367, 35.044128, 31.082226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.674124, 34.284309, 31.477802>,  <24.200161, 34.709431, 31.055260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.674124, 34.284309, 31.477802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.805033, 34.661564, 31.501076>,  <24.883577, 34.887917, 31.515039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.805033, 34.661564, 31.501076>,  <24.674124, 34.284309, 31.477802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805033, 34.661564, 31.501076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049832, -0.044263, 0.997776,
		0.943616, -0.329442, 0.032512,
		0.327270, 0.943138, 0.058184,
		24.903214, 34.944504, 31.518532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088251, 34.275719, 32.062874>,  <24.674124, 34.284309, 31.477802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088251, 34.275719, 32.062874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.034691, 34.667721, 32.003994>,  <25.002554, 34.902920, 31.968666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.034691, 34.667721, 32.003994>,  <25.088251, 34.275719, 32.062874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034691, 34.667721, 32.003994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077653, 0.137706, 0.987424,
		0.987948, 0.143647, 0.057662,
		-0.133900, 0.980001, -0.147201,
		24.994520, 34.961720, 31.959833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567898, 34.601284, 32.401035>,  <25.088251, 34.275719, 32.062874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567898, 34.601284, 32.401035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.295086, 34.893002, 32.379284>,  <25.131399, 35.068031, 32.366234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.295086, 34.893002, 32.379284>,  <25.567898, 34.601284, 32.401035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295086, 34.893002, 32.379284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008178, 0.081961, 0.996602,
		0.731277, 0.679270, -0.061865,
		-0.682032, 0.729298, -0.054381,
		25.090477, 35.111790, 32.362968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785164, 35.167385, 32.808167>,  <25.567898, 34.601284, 32.401035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785164, 35.167385, 32.808167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.388842, 35.207523, 32.771873>,  <25.151049, 35.231606, 32.750095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.388842, 35.207523, 32.771873>,  <25.785164, 35.167385, 32.808167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388842, 35.207523, 32.771873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080405, 0.102612, 0.991467,
		0.108804, 0.989647, -0.093600,
		-0.990806, 0.100349, -0.090737,
		25.091600, 35.237629, 32.744652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940496, 35.890900, 32.419773>,  <25.785164, 35.167385, 32.808167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.940496, 35.890900, 32.419773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.332047, 35.842064, 32.354172>,  <26.566977, 35.812763, 32.314812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.332047, 35.842064, 32.354172>,  <25.940496, 35.890900, 32.419773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332047, 35.842064, 32.354172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040732, 0.669609, -0.741596,
		0.200362, 0.732610, 0.650491,
		0.978875, -0.122092, -0.164004,
		26.625710, 35.805435, 32.304970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131945, 36.498936, 32.419144>,  <25.940496, 35.890900, 32.419773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131945, 36.498936, 32.419144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.415125, 36.297256, 32.221321>,  <26.585033, 36.176247, 32.102627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.415125, 36.297256, 32.221321>,  <26.131945, 36.498936, 32.419144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415125, 36.297256, 32.221321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069987, 0.746882, -0.661263,
		0.702787, 0.433528, 0.564043,
		0.707949, -0.504203, -0.494558,
		26.627510, 36.145996, 32.072952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477678, 37.017170, 32.249050>,  <26.131945, 36.498936, 32.419144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477678, 37.017170, 32.249050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.614727, 36.723289, 32.014843>,  <26.696957, 36.546963, 31.874319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.614727, 36.723289, 32.014843>,  <26.477678, 37.017170, 32.249050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614727, 36.723289, 32.014843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212332, 0.667668, -0.713537,
		0.915164, 0.120151, 0.384758,
		0.342623, -0.734700, -0.585513,
		26.717514, 36.502880, 31.839190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041296, 37.328926, 31.952965>,  <26.477678, 37.017170, 32.249050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041296, 37.328926, 31.952965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.947227, 37.022343, 31.713886>,  <26.890787, 36.838394, 31.570438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.947227, 37.022343, 31.713886>,  <27.041296, 37.328926, 31.952965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947227, 37.022343, 31.713886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128634, 0.584992, -0.800773,
		0.963405, -0.265202, -0.038980,
		-0.235170, -0.766454, -0.597698,
		26.876677, 36.792408, 31.534576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614290, 37.235992, 31.495813>,  <27.041296, 37.328926, 31.952965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614290, 37.235992, 31.495813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295441, 37.067600, 31.322668>,  <27.104132, 36.966564, 31.218781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295441, 37.067600, 31.322668>,  <27.614290, 37.235992, 31.495813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295441, 37.067600, 31.322668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199620, 0.492843, -0.846911,
		0.569863, -0.761502, -0.308822,
		-0.797125, -0.420976, -0.432864,
		27.056303, 36.941307, 31.192808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848051, 36.958645, 30.811304>,  <27.614290, 37.235992, 31.495813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848051, 36.958645, 30.811304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450432, 37.002151, 30.808832>,  <27.211861, 37.028255, 30.807350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450432, 37.002151, 30.808832>,  <27.848051, 36.958645, 30.811304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450432, 37.002151, 30.808832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062833, 0.526046, -0.848132,
		-0.089002, -0.843471, -0.529750,
		-0.994047, 0.108771, -0.006178,
		27.152218, 37.034782, 30.806978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635220, 36.985428, 30.083595>,  <27.848051, 36.958645, 30.811304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635220, 36.985428, 30.083595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.342009, 37.149933, 30.300310>,  <27.166082, 37.248634, 30.430340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.342009, 37.149933, 30.300310>,  <27.635220, 36.985428, 30.083595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342009, 37.149933, 30.300310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113160, 0.711683, -0.693327,
		-0.670719, -0.569537, -0.475146,
		-0.733028, 0.411260, 0.541788,
		27.122101, 37.273312, 30.462847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076176, 37.100746, 29.578939>,  <27.635220, 36.985428, 30.083595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076176, 37.100746, 29.578939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.007519, 37.348499, 29.885376>,  <26.966326, 37.497150, 30.069239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.007519, 37.348499, 29.885376>,  <27.076176, 37.100746, 29.578939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007519, 37.348499, 29.885376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121914, 0.758302, -0.640402,
		-0.977587, -0.203317, -0.054643,
		-0.171640, 0.619387, 0.766093,
		26.956026, 37.534317, 30.115204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541002, 37.400211, 29.260105>,  <27.076176, 37.100746, 29.578939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541002, 37.400211, 29.260105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658882, 37.629601, 29.565859>,  <26.729610, 37.767235, 29.749311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658882, 37.629601, 29.565859>,  <26.541002, 37.400211, 29.260105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658882, 37.629601, 29.565859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101000, 0.814122, -0.571843,
		-0.950238, 0.091319, 0.297841,
		0.294699, 0.573469, 0.764386,
		26.747292, 37.801640, 29.795176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991989, 37.986961, 29.330593>,  <26.541002, 37.400211, 29.260105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991989, 37.986961, 29.330593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338354, 38.108318, 29.489668>,  <26.546173, 38.181133, 29.585112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338354, 38.108318, 29.489668>,  <25.991989, 37.986961, 29.330593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338354, 38.108318, 29.489668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043783, 0.746031, -0.664471,
		-0.498279, 0.592784, 0.632712,
		0.865911, 0.303390, 0.397685,
		26.598127, 38.199337, 29.608973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022650, 38.638317, 28.990620>,  <25.991989, 37.986961, 29.330593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022650, 38.638317, 28.990620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.378714, 38.631958, 29.172770>,  <26.592352, 38.628143, 29.282059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.378714, 38.631958, 29.172770>,  <26.022650, 38.638317, 28.990620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378714, 38.631958, 29.172770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300999, 0.770809, -0.561474,
		-0.342080, 0.636868, 0.690927,
		0.890158, -0.015899, 0.455375,
		26.645761, 38.627190, 29.309381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290369, 39.318722, 29.128738>,  <26.022650, 38.638317, 28.990620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290369, 39.318722, 29.128738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.634804, 39.117493, 29.158253>,  <26.841465, 38.996754, 29.175962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.634804, 39.117493, 29.158253>,  <26.290369, 39.318722, 29.128738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634804, 39.117493, 29.158253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463777, 0.717624, -0.519544,
		0.208417, 0.481595, 0.851251,
		0.861089, -0.503072, 0.073788,
		26.893131, 38.966572, 29.180389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856571, 39.826763, 29.285873>,  <26.290369, 39.318722, 29.128738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856571, 39.826763, 29.285873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.017971, 39.499596, 29.121828>,  <27.114811, 39.303295, 29.023401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.017971, 39.499596, 29.121828>,  <26.856571, 39.826763, 29.285873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017971, 39.499596, 29.121828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424278, 0.564373, -0.708146,
		0.810665, 0.111735, 0.574750,
		0.403498, -0.817923, -0.410111,
		27.139021, 39.254219, 28.998795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408701, 40.054466, 29.119030>,  <26.856571, 39.826763, 29.285873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408701, 40.054466, 29.119030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.401354, 39.725239, 28.891973>,  <27.396946, 39.527702, 28.755739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.401354, 39.725239, 28.891973>,  <27.408701, 40.054466, 29.119030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401354, 39.725239, 28.891973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382655, 0.518725, -0.764526,
		0.923709, -0.231255, 0.305424,
		-0.018370, -0.823071, -0.567642,
		27.395844, 39.478317, 28.721682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090931, 39.820011, 28.790731>,  <27.408701, 40.054466, 29.119030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090931, 39.820011, 28.790731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772085, 39.708889, 28.576281>,  <27.580778, 39.642216, 28.447611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772085, 39.708889, 28.576281>,  <28.090931, 39.820011, 28.790731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772085, 39.708889, 28.576281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343697, 0.521273, -0.781119,
		0.496465, -0.806908, -0.320036,
		-0.797117, -0.277803, -0.536126,
		27.532949, 39.625549, 28.415443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502968, 39.719410, 28.100134>,  <28.090931, 39.820011, 28.790731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502968, 39.719410, 28.100134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.106520, 39.713989, 28.047222>,  <27.868650, 39.710735, 28.015476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.106520, 39.713989, 28.047222>,  <28.502968, 39.719410, 28.100134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106520, 39.713989, 28.047222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119475, 0.345882, -0.930640,
		0.058366, -0.938180, -0.341191,
		-0.991120, -0.013554, -0.132277,
		27.809183, 39.709923, 28.007540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452457, 39.712231, 27.469835>,  <28.502968, 39.719410, 28.100134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452457, 39.712231, 27.469835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063297, 39.793545, 27.513910>,  <27.829802, 39.842335, 27.540356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063297, 39.793545, 27.513910>,  <28.452457, 39.712231, 27.469835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063297, 39.793545, 27.513910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033556, 0.595600, -0.802580,
		-0.228783, -0.777132, -0.586281,
		-0.972899, 0.203290, 0.110186,
		27.771427, 39.854530, 27.546967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982004, 39.553577, 26.797136>,  <28.452457, 39.712231, 27.469835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982004, 39.553577, 26.797136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.822704, 39.832783, 27.035187>,  <27.727125, 40.000305, 27.178017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.822704, 39.832783, 27.035187>,  <27.982004, 39.553577, 26.797136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822704, 39.832783, 27.035187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022998, 0.640995, -0.767200,
		-0.916989, -0.319224, -0.239223,
		-0.398250, 0.698012, 0.595127,
		27.703230, 40.042187, 27.213724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327156, 39.685604, 26.470789>,  <27.982004, 39.553577, 26.797136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327156, 39.685604, 26.470789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406767, 40.010120, 26.690676>,  <27.454535, 40.204830, 26.822607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406767, 40.010120, 26.690676>,  <27.327156, 39.685604, 26.470789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406767, 40.010120, 26.690676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091726, 0.573899, -0.813773,
		-0.975692, 0.111541, 0.188640,
		0.199029, 0.811294, 0.549717,
		27.466476, 40.253510, 26.855591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838709, 40.235203, 26.165892>,  <27.327156, 39.685604, 26.470789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838709, 40.235203, 26.165892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.126467, 40.409302, 26.382421>,  <27.299122, 40.513760, 26.512339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.126467, 40.409302, 26.382421>,  <26.838709, 40.235203, 26.165892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126467, 40.409302, 26.382421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037350, 0.753965, -0.655852,
		-0.693595, 0.492036, 0.526143,
		0.719396, 0.435244, 0.541324,
		27.342285, 40.539875, 26.544819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717043, 40.948223, 26.276499>,  <26.838709, 40.235203, 26.165892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717043, 40.948223, 26.276499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116152, 40.921940, 26.281065>,  <27.355618, 40.906170, 26.283806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116152, 40.921940, 26.281065>,  <26.717043, 40.948223, 26.276499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116152, 40.921940, 26.281065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057078, 0.752727, -0.655854,
		0.034503, 0.655045, 0.754802,
		0.997773, -0.065712, 0.011417,
		27.415483, 40.902225, 26.284491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215061, 40.966732, 25.718328>,  <26.717043, 40.948223, 26.276499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215061, 40.966732, 25.718328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.029818, 40.831127, 25.390768>,  <26.918671, 40.749763, 25.194231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.029818, 40.831127, 25.390768>,  <27.215061, 40.966732, 25.718328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029818, 40.831127, 25.390768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736906, -0.660644, -0.143241,
		-0.492441, -0.669789, 0.555773,
		-0.463109, -0.339015, -0.818901,
		26.890884, 40.729424, 25.145098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.861988, 35.674572, 41.557236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.506577, 35.588734, 41.719456>,  <41.293331, 35.537231, 41.816788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.506577, 35.588734, 41.719456>,  <41.861988, 35.674572, 41.557236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506577, 35.588734, 41.719456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304811, 0.384573, 0.871317,
		-0.342946, 0.897803, -0.276291,
		-0.888526, -0.214598, 0.405549,
		41.240017, 35.524353, 41.841122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777573, 36.247082, 41.976944>,  <41.861988, 35.674572, 41.557236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777573, 36.247082, 41.976944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.498970, 35.987816, 42.100075>,  <41.331806, 35.832256, 42.173954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.498970, 35.987816, 42.100075>,  <41.777573, 36.247082, 41.976944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498970, 35.987816, 42.100075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138759, 0.299236, 0.944036,
		-0.704002, 0.700245, -0.118483,
		-0.696510, -0.648163, 0.307829,
		41.290016, 35.793365, 42.192425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398804, 36.623192, 42.435444>,  <41.777573, 36.247082, 41.976944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398804, 36.623192, 42.435444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.294010, 36.252300, 42.542488>,  <41.231136, 36.029766, 42.606716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.294010, 36.252300, 42.542488>,  <41.398804, 36.623192, 42.435444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294010, 36.252300, 42.542488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001149, 0.276998, 0.960870,
		-0.965072, 0.252037, -0.071503,
		-0.261980, -0.927227, 0.267612,
		41.215416, 35.974133, 42.622772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974255, 36.816051, 43.009304>,  <41.398804, 36.623192, 42.435444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974255, 36.816051, 43.009304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.121952, 36.444427, 43.018372>,  <41.210571, 36.221455, 43.023811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.121952, 36.444427, 43.018372>,  <40.974255, 36.816051, 43.009304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121952, 36.444427, 43.018372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020951, 0.032708, 0.999245,
		-0.929097, -0.368488, 0.031542,
		0.369242, -0.929057, 0.022669,
		41.232723, 36.165710, 43.025173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565430, 36.457451, 43.477856>,  <40.974255, 36.816051, 43.009304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565430, 36.457451, 43.477856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.920418, 36.273125, 43.475052>,  <41.133411, 36.162529, 43.473370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.920418, 36.273125, 43.475052>,  <40.565430, 36.457451, 43.477856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920418, 36.273125, 43.475052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010310, -0.035053, 0.999332,
		-0.460753, -0.886804, -0.035860,
		0.887469, -0.460816, -0.007007,
		41.186657, 36.134880, 43.472950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470699, 36.084324, 44.011963>,  <40.565430, 36.457451, 43.477856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470699, 36.084324, 44.011963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.854176, 36.005001, 43.930397>,  <41.084263, 35.957405, 43.881458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.854176, 36.005001, 43.930397>,  <40.470699, 36.084324, 44.011963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854176, 36.005001, 43.930397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184863, -0.110439, 0.976539,
		-0.216180, -0.973897, -0.069217,
		0.958693, -0.198312, -0.203912,
		41.141785, 35.945507, 43.869225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637180, 35.387215, 44.229076>,  <40.470699, 36.084324, 44.011963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637180, 35.387215, 44.229076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.991470, 35.572796, 44.222980>,  <41.204044, 35.684147, 44.219322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.991470, 35.572796, 44.222980>,  <40.637180, 35.387215, 44.229076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991470, 35.572796, 44.222980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163249, -0.280583, 0.945845,
		0.434553, -0.840249, -0.324260,
		0.885727, 0.463955, -0.015241,
		41.257187, 35.711983, 44.218407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146912, 34.816544, 44.326935>,  <40.637180, 35.387215, 44.229076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146912, 34.816544, 44.326935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.350853, 35.143967, 44.432774>,  <41.473217, 35.340420, 44.496277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.350853, 35.143967, 44.432774>,  <41.146912, 34.816544, 44.326935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350853, 35.143967, 44.432774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105590, -0.364796, 0.925081,
		0.853755, -0.443719, -0.272425,
		0.509856, 0.818558, 0.264594,
		41.503811, 35.389534, 44.512154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688057, 34.583717, 44.664001>,  <41.146912, 34.816544, 44.326935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688057, 34.583717, 44.664001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.675034, 34.966625, 44.778938>,  <41.667221, 35.196369, 44.847900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.675034, 34.966625, 44.778938>,  <41.688057, 34.583717, 44.664001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675034, 34.966625, 44.778938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152255, -0.279392, 0.948029,
		0.987805, 0.074616, -0.136653,
		-0.032558, 0.957273, 0.287346,
		41.665268, 35.253807, 44.865143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247124, 34.677361, 45.091900>,  <41.688057, 34.583717, 44.664001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247124, 34.677361, 45.091900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.016132, 34.993492, 45.173782>,  <41.877537, 35.183170, 45.222912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.016132, 34.993492, 45.173782>,  <42.247124, 34.677361, 45.091900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016132, 34.993492, 45.173782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188426, -0.114945, 0.975338,
		0.794365, 0.601807, -0.082540,
		-0.577477, 0.790327, 0.204704,
		41.842888, 35.230591, 45.235195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569664, 35.193291, 45.596298>,  <42.247124, 34.677361, 45.091900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569664, 35.193291, 45.596298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.188644, 35.295902, 45.661823>,  <41.960033, 35.357471, 45.701138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.188644, 35.295902, 45.661823>,  <42.569664, 35.193291, 45.596298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188644, 35.295902, 45.661823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168885, -0.002279, 0.985633,
		0.253219, 0.966533, -0.041154,
		-0.952553, 0.256531, 0.163810,
		41.902878, 35.372860, 45.710968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487717, 35.711521, 46.146717>,  <42.569664, 35.193291, 45.596298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487717, 35.711521, 46.146717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.137707, 35.518684, 46.129230>,  <41.927700, 35.402981, 46.118740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.137707, 35.518684, 46.129230>,  <42.487717, 35.711521, 46.146717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137707, 35.518684, 46.129230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051914, -0.183244, 0.981696,
		-0.481278, 0.856743, 0.185371,
		-0.875029, -0.482092, -0.043714,
		41.875198, 35.374058, 46.116116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097313, 36.010719, 46.546356>,  <42.487717, 35.711521, 46.146717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097313, 36.010719, 46.546356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.990368, 35.626556, 46.515022>,  <41.926201, 35.396057, 46.496220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.990368, 35.626556, 46.515022>,  <42.097313, 36.010719, 46.546356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990368, 35.626556, 46.515022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042651, -0.069422, 0.996675,
		-0.962652, 0.269812, -0.022402,
		-0.267360, -0.960407, -0.078337,
		41.910160, 35.338436, 46.491520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563995, 36.626881, 46.686512>,  <42.097313, 36.010719, 46.546356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563995, 36.626881, 46.686512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.315731, 36.861893, 46.894199>,  <41.166771, 37.002899, 47.018810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.315731, 36.861893, 46.894199>,  <41.563995, 36.626881, 46.686512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315731, 36.861893, 46.894199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566895, 0.121220, -0.814822,
		-0.541673, -0.800071, 0.257832,
		-0.620662, 0.587531, 0.519218,
		41.129532, 37.038151, 47.049965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848923, 36.325256, 46.622761>,  <41.563995, 36.626881, 46.686512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848923, 36.325256, 46.622761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.840755, 36.718506, 46.695480>,  <40.835854, 36.954456, 46.739113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.840755, 36.718506, 46.695480>,  <40.848923, 36.325256, 46.622761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840755, 36.718506, 46.695480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600513, 0.133323, -0.788422,
		-0.799354, -0.125274, 0.587656,
		-0.020421, 0.983123, 0.181801,
		40.834629, 37.013443, 46.750019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128929, 36.492550, 46.573517>,  <40.848923, 36.325256, 46.622761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128929, 36.492550, 46.573517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.328571, 36.836445, 46.530151>,  <40.448357, 37.042782, 46.504131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.328571, 36.836445, 46.530151>,  <40.128929, 36.492550, 46.573517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328571, 36.836445, 46.530151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693228, 0.321074, -0.645250,
		-0.519935, 0.397200, 0.756240,
		0.499102, 0.859735, -0.108413,
		40.478302, 37.094364, 46.497627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636364, 37.091152, 46.611774>,  <40.128929, 36.492550, 46.573517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636364, 37.091152, 46.611774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.947926, 37.228256, 46.401695>,  <40.134861, 37.310520, 46.275650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.947926, 37.228256, 46.401695>,  <39.636364, 37.091152, 46.611774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947926, 37.228256, 46.401695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627078, 0.438143, -0.644053,
		0.009355, 0.830991, 0.556207,
		0.778900, 0.342760, -0.525195,
		40.181595, 37.331085, 46.244137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407013, 37.750942, 46.538338>,  <39.636364, 37.091152, 46.611774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407013, 37.750942, 46.538338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.681255, 37.639820, 46.269184>,  <39.845798, 37.573147, 46.107693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.681255, 37.639820, 46.269184>,  <39.407013, 37.750942, 46.538338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681255, 37.639820, 46.269184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632117, 0.231290, -0.739549,
		0.361081, 0.932379, -0.017030,
		0.685602, -0.277802, -0.672887,
		39.886936, 37.556480, 46.067318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450504, 38.313229, 46.041874>,  <39.407013, 37.750942, 46.538338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450504, 38.313229, 46.041874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.626823, 38.024834, 45.828003>,  <39.732613, 37.851795, 45.699680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.626823, 38.024834, 45.828003>,  <39.450504, 38.313229, 46.041874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626823, 38.024834, 45.828003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535457, 0.266865, -0.801292,
		0.720407, 0.639501, -0.268425,
		0.440794, -0.720987, -0.534676,
		39.759060, 37.808537, 45.667599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532925, 38.617905, 45.328560>,  <39.450504, 38.313229, 46.041874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532925, 38.617905, 45.328560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.590675, 38.225353, 45.277893>,  <39.625328, 37.989822, 45.247494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.590675, 38.225353, 45.277893>,  <39.532925, 38.617905, 45.328560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590675, 38.225353, 45.277893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432844, 0.052480, -0.899940,
		0.889832, 0.184761, -0.417208,
		0.144379, -0.981381, -0.126671,
		39.633987, 37.930939, 45.239891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801392, 38.548397, 44.737057>,  <39.532925, 38.617905, 45.328560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801392, 38.548397, 44.737057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.656326, 38.179321, 44.789402>,  <39.569286, 37.957878, 44.820808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.656326, 38.179321, 44.789402>,  <39.801392, 38.548397, 44.737057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656326, 38.179321, 44.789402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291588, -0.021019, -0.956313,
		0.885127, -0.384979, -0.261421,
		-0.362666, -0.922686, 0.130859,
		39.547527, 37.902515, 44.828659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039936, 38.026882, 44.117466>,  <39.801392, 38.548397, 44.737057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039936, 38.026882, 44.117466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716427, 37.858727, 44.281979>,  <39.522320, 37.757835, 44.380688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716427, 37.858727, 44.281979>,  <40.039936, 38.026882, 44.117466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716427, 37.858727, 44.281979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266194, -0.361925, -0.893393,
		0.524425, -0.832037, 0.180812,
		-0.808776, -0.420387, 0.411286,
		39.473793, 37.732609, 44.405365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886784, 37.505699, 43.700733>,  <40.039936, 38.026882, 44.117466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886784, 37.505699, 43.700733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.538857, 37.487759, 43.897263>,  <39.330101, 37.476994, 44.015182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.538857, 37.487759, 43.897263>,  <39.886784, 37.505699, 43.700733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538857, 37.487759, 43.897263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465687, -0.254258, -0.847637,
		0.162944, -0.966096, 0.200270,
		-0.869819, -0.044854, 0.491328,
		39.277912, 37.474304, 44.044662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585705, 36.874050, 43.429512>,  <39.886784, 37.505699, 43.700733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585705, 36.874050, 43.429512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298985, 37.120964, 43.559223>,  <39.126953, 37.269112, 43.637051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298985, 37.120964, 43.559223>,  <39.585705, 36.874050, 43.429512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298985, 37.120964, 43.559223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553237, -0.220412, -0.803335,
		-0.424408, -0.755237, 0.499494,
		-0.716803, 0.617280, 0.324280,
		39.083942, 37.306149, 43.656506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948997, 36.505280, 43.250977>,  <39.585705, 36.874050, 43.429512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948997, 36.505280, 43.250977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843117, 36.877930, 43.350574>,  <38.779587, 37.101521, 43.410332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843117, 36.877930, 43.350574>,  <38.948997, 36.505280, 43.250977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843117, 36.877930, 43.350574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697268, -0.006546, -0.716781,
		-0.666144, -0.363351, 0.651328,
		-0.264707, 0.931630, 0.248992,
		38.763706, 37.157417, 43.425274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137550, 36.576759, 43.442020>,  <38.948997, 36.505280, 43.250977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137550, 36.576759, 43.442020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.279194, 36.916645, 43.285767>,  <38.364178, 37.120575, 43.192013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.279194, 36.916645, 43.285767>,  <38.137550, 36.576759, 43.442020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279194, 36.916645, 43.285767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730688, -0.009329, -0.682647,
		-0.583698, 0.527165, 0.617571,
		0.354107, 0.849712, -0.390639,
		38.385426, 37.171558, 43.168575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555740, 36.929661, 43.236511>,  <38.137550, 36.576759, 43.442020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555740, 36.929661, 43.236511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837986, 37.137993, 43.044323>,  <38.007332, 37.262993, 42.929012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837986, 37.137993, 43.044323>,  <37.555740, 36.929661, 43.236511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837986, 37.137993, 43.044323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568944, 0.012235, -0.822285,
		-0.422394, 0.853571, 0.304958,
		0.705610, 0.520832, -0.480467,
		38.049667, 37.294243, 42.900185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206009, 37.470936, 42.848003>,  <37.555740, 36.929661, 43.236511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206009, 37.470936, 42.848003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552647, 37.430073, 42.652626>,  <37.760628, 37.405556, 42.535400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552647, 37.430073, 42.652626>,  <37.206009, 37.470936, 42.848003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552647, 37.430073, 42.652626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495616, -0.062198, -0.866312,
		0.058116, 0.992822, -0.104529,
		0.866595, -0.102153, -0.488444,
		37.812626, 37.399426, 42.506092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693523, 37.999252, 42.609211>,  <37.206009, 37.470936, 42.848003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693523, 37.999252, 42.609211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.353073, 38.041546, 42.814892>,  <36.148804, 38.066921, 42.938301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.353073, 38.041546, 42.814892>,  <36.693523, 37.999252, 42.609211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353073, 38.041546, 42.814892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524391, 0.125790, 0.842135,
		0.024358, 0.986407, -0.162508,
		-0.851129, 0.105731, 0.514199,
		36.097733, 38.073265, 42.969151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788536, 38.579033, 43.072208>,  <36.693523, 37.999252, 42.609211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788536, 38.579033, 43.072208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.482368, 38.372459, 43.225796>,  <36.298668, 38.248516, 43.317947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.482368, 38.372459, 43.225796>,  <36.788536, 38.579033, 43.072208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482368, 38.372459, 43.225796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318381, 0.214627, 0.923346,
		-0.559254, 0.828996, 0.000142,
		-0.765420, -0.516430, 0.383968,
		36.252743, 38.217529, 43.340984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628193, 38.952061, 43.628036>,  <36.788536, 38.579033, 43.072208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628193, 38.952061, 43.628036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422077, 38.618462, 43.706959>,  <36.298409, 38.418304, 43.754311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422077, 38.618462, 43.706959>,  <36.628193, 38.952061, 43.628036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422077, 38.618462, 43.706959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126515, 0.153672, 0.979989,
		-0.847625, 0.529943, 0.026327,
		-0.515292, -0.833994, 0.197302,
		36.267490, 38.368263, 43.766148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211494, 39.107395, 44.227551>,  <36.628193, 38.952061, 43.628036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211494, 39.107395, 44.227551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261505, 38.710979, 44.208721>,  <36.291512, 38.473129, 44.197422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261505, 38.710979, 44.208721>,  <36.211494, 39.107395, 44.227551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261505, 38.710979, 44.208721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440839, 0.012983, 0.897492,
		-0.888836, -0.132964, 0.438510,
		0.125027, -0.991036, -0.047076,
		36.299015, 38.413670, 44.194599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938835, 38.901375, 44.879917>,  <36.211494, 39.107395, 44.227551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938835, 38.901375, 44.879917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161678, 38.590652, 44.762474>,  <36.295383, 38.404221, 44.692009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161678, 38.590652, 44.762474>,  <35.938835, 38.901375, 44.879917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161678, 38.590652, 44.762474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348006, -0.102635, 0.931857,
		-0.754007, -0.621320, 0.213155,
		0.557104, -0.776806, -0.293610,
		36.328812, 38.357613, 44.674393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831516, 38.337505, 45.401245>,  <35.938835, 38.901375, 44.879917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831516, 38.337505, 45.401245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164394, 38.240631, 45.201729>,  <36.364120, 38.182507, 45.082020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164394, 38.240631, 45.201729>,  <35.831516, 38.337505, 45.401245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164394, 38.240631, 45.201729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478102, -0.142203, 0.866716,
		-0.280836, -0.959752, -0.002552,
		0.832196, -0.242185, -0.498795,
		36.414055, 38.167976, 45.052090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084782, 37.662140, 45.674538>,  <35.831516, 38.337505, 45.401245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084782, 37.662140, 45.674538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408813, 37.842628, 45.524780>,  <36.603233, 37.950920, 45.434925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408813, 37.842628, 45.524780>,  <36.084782, 37.662140, 45.674538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408813, 37.842628, 45.524780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522271, -0.265113, 0.810524,
		0.266468, -0.852124, -0.450421,
		0.810079, 0.451220, -0.374396,
		36.651836, 37.977993, 45.412460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145111, 36.816727, 45.564152>,  <36.084782, 37.662140, 45.674538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145111, 36.816727, 45.564152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891216, 36.562355, 45.739746>,  <35.738880, 36.409733, 45.845100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891216, 36.562355, 45.739746>,  <36.145111, 36.816727, 45.564152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891216, 36.562355, 45.739746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475079, -0.126888, -0.870746,
		0.609434, -0.761246, -0.221575,
		-0.634737, -0.635928, 0.438982,
		35.700794, 36.371578, 45.871441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080460, 36.376019, 45.013409>,  <36.145111, 36.816727, 45.564152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080460, 36.376019, 45.013409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784088, 36.307449, 45.273144>,  <35.606266, 36.266308, 45.428986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784088, 36.307449, 45.273144>,  <36.080460, 36.376019, 45.013409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784088, 36.307449, 45.273144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578992, -0.326846, -0.746954,
		0.340278, -0.929401, 0.142917,
		-0.740931, -0.171424, 0.649334,
		35.561810, 36.256023, 45.467945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834610, 35.752678, 44.839073>,  <36.080460, 36.376019, 45.013409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834610, 35.752678, 44.839073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530884, 35.910881, 45.045765>,  <35.348648, 36.005802, 45.169781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530884, 35.910881, 45.045765>,  <35.834610, 35.752678, 44.839073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530884, 35.910881, 45.045765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621552, -0.205743, -0.755872,
		-0.192618, -0.895133, 0.402038,
		-0.759323, 0.395482, 0.516742,
		35.303089, 36.029533, 45.200783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311855, 35.228115, 44.749104>,  <35.834610, 35.752678, 44.839073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311855, 35.228115, 44.749104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.167114, 35.589363, 44.841568>,  <35.080269, 35.806110, 44.897049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.167114, 35.589363, 44.841568>,  <35.311855, 35.228115, 44.749104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167114, 35.589363, 44.841568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709436, -0.105905, -0.696768,
		-0.604783, -0.416125, 0.679027,
		-0.361854, 0.903119, 0.231164,
		35.058559, 35.860298, 44.910919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594955, 35.116028, 44.886356>,  <35.311855, 35.228115, 44.749104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594955, 35.116028, 44.886356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646481, 35.500088, 44.787144>,  <34.677395, 35.730522, 44.727615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646481, 35.500088, 44.787144>,  <34.594955, 35.116028, 44.886356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646481, 35.500088, 44.787144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710737, -0.085038, -0.698299,
		-0.691563, 0.266237, 0.671460,
		0.128813, 0.960149, -0.248034,
		34.685123, 35.788132, 44.712734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849113, 35.396538, 44.777859>,  <34.594955, 35.116028, 44.886356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849113, 35.396538, 44.777859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086647, 35.644939, 44.573227>,  <34.229168, 35.793980, 44.450447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086647, 35.644939, 44.573227>,  <33.849113, 35.396538, 44.777859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086647, 35.644939, 44.573227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659073, 0.010742, -0.752002,
		-0.461503, 0.783732, 0.415668,
		0.593833, 0.621007, -0.511579,
		34.264797, 35.831242, 44.419754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423672, 35.874958, 44.608154>,  <33.849113, 35.396538, 44.777859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423672, 35.874958, 44.608154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746502, 35.881550, 44.372070>,  <33.940201, 35.885506, 44.230419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746502, 35.881550, 44.372070>,  <33.423672, 35.874958, 44.608154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746502, 35.881550, 44.372070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587401, -0.078915, -0.805439,
		-0.059850, 0.996745, -0.054010,
		0.807079, 0.016480, -0.590213,
		33.988625, 35.886494, 44.195007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.349125, 34.100254, 46.961830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.725876, 34.214737, 46.891453>,  <38.951927, 34.283424, 46.849224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.725876, 34.214737, 46.891453>,  <38.349125, 34.100254, 46.961830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725876, 34.214737, 46.891453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170266, -0.044824, -0.984378,
		-0.289618, 0.957120, 0.006512,
		0.941876, 0.286203, -0.175947,
		39.008438, 34.300598, 46.838669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430832, 34.619743, 46.394424>,  <38.349125, 34.100254, 46.961830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430832, 34.619743, 46.394424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.783909, 34.436172, 46.434898>,  <38.995754, 34.326031, 46.459183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.783909, 34.436172, 46.434898>,  <38.430832, 34.619743, 46.394424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783909, 34.436172, 46.434898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058127, -0.320271, -0.945541,
		0.466337, 0.828743, -0.309378,
		0.882695, -0.458924, 0.101182,
		39.048717, 34.298496, 46.465252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715904, 34.686104, 45.712250>,  <38.430832, 34.619743, 46.394424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715904, 34.686104, 45.712250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.908970, 34.383728, 45.889156>,  <39.024811, 34.202305, 45.995300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.908970, 34.383728, 45.889156>,  <38.715904, 34.686104, 45.712250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908970, 34.383728, 45.889156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074014, -0.467965, -0.880642,
		0.872672, 0.457789, -0.169921,
		0.482665, -0.755936, 0.442262,
		39.053768, 34.156948, 46.021835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178547, 34.527966, 45.257710>,  <38.715904, 34.686104, 45.712250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178547, 34.527966, 45.257710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.186981, 34.205750, 45.494576>,  <39.192043, 34.012421, 45.636696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.186981, 34.205750, 45.494576>,  <39.178547, 34.527966, 45.257710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186981, 34.205750, 45.494576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090812, -0.588309, -0.803521,
		0.995645, 0.070721, 0.060746,
		0.021088, -0.805538, 0.592169,
		39.193306, 33.964088, 45.672226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726974, 34.173550, 45.032463>,  <39.178547, 34.527966, 45.257710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726974, 34.173550, 45.032463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.488911, 33.919136, 45.228928>,  <39.346073, 33.766487, 45.346806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.488911, 33.919136, 45.228928>,  <39.726974, 34.173550, 45.032463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488911, 33.919136, 45.228928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001582, -0.610274, -0.792189,
		0.803605, -0.472257, 0.362205,
		-0.595161, -0.636034, 0.491166,
		39.310364, 33.728325, 45.376278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070377, 33.504219, 44.948498>,  <39.726974, 34.173550, 45.032463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070377, 33.504219, 44.948498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.673241, 33.510902, 44.995796>,  <39.434959, 33.514912, 45.024174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.673241, 33.510902, 44.995796>,  <40.070377, 33.504219, 44.948498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673241, 33.510902, 44.995796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107202, -0.560998, -0.820847,
		0.052617, -0.827649, 0.558774,
		-0.992844, 0.016711, 0.118243,
		39.375389, 33.515915, 45.031269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922295, 32.959301, 44.426914>,  <40.070377, 33.504219, 44.948498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922295, 32.959301, 44.426914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.564419, 33.053394, 44.578800>,  <39.349693, 33.109852, 44.669933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.564419, 33.053394, 44.578800>,  <39.922295, 32.959301, 44.426914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564419, 33.053394, 44.578800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428948, -0.689618, -0.583464,
		0.124609, -0.684902, 0.717901,
		-0.894693, 0.235237, 0.379719,
		39.296009, 33.123966, 44.692715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684132, 32.361908, 44.763535>,  <39.922295, 32.959301, 44.426914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684132, 32.361908, 44.763535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.393013, 32.607697, 44.641727>,  <39.218342, 32.755169, 44.568642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.393013, 32.607697, 44.641727>,  <39.684132, 32.361908, 44.763535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393013, 32.607697, 44.641727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317678, -0.695604, -0.644372,
		-0.607774, -0.372234, 0.701464,
		-0.727799, 0.614473, -0.304520,
		39.174675, 32.792038, 44.550373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078098, 31.961695, 44.740391>,  <39.684132, 32.361908, 44.763535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078098, 31.961695, 44.740391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.995823, 32.287674, 44.523670>,  <38.946457, 32.483261, 44.393639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.995823, 32.287674, 44.523670>,  <39.078098, 31.961695, 44.740391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995823, 32.287674, 44.523670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515612, -0.560810, -0.647793,
		-0.831767, 0.146114, 0.535551,
		-0.205691, 0.814949, -0.541801,
		38.934116, 32.532158, 44.361130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464664, 31.758738, 44.386471>,  <39.078098, 31.961695, 44.740391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464664, 31.758738, 44.386471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.571415, 32.089703, 44.188820>,  <38.635464, 32.288280, 44.070229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.571415, 32.089703, 44.188820>,  <38.464664, 31.758738, 44.386471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571415, 32.089703, 44.188820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420224, -0.361511, -0.832299,
		-0.867289, 0.429765, 0.251220,
		0.266874, 0.827413, -0.494132,
		38.651478, 32.337925, 44.040581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866722, 31.916626, 44.021114>,  <38.464664, 31.758738, 44.386471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866722, 31.916626, 44.021114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.186226, 32.076714, 43.841423>,  <38.377930, 32.172768, 43.733608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.186226, 32.076714, 43.841423>,  <37.866722, 31.916626, 44.021114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186226, 32.076714, 43.841423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331912, -0.329630, -0.883843,
		-0.501807, 0.855085, -0.130459,
		0.798764, 0.400218, -0.449224,
		38.425854, 32.196777, 43.706657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554062, 32.263092, 43.508312>,  <37.866722, 31.916626, 44.021114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554062, 32.263092, 43.508312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.936012, 32.213837, 43.400200>,  <38.165184, 32.184284, 43.335335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.936012, 32.213837, 43.400200>,  <37.554062, 32.263092, 43.508312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936012, 32.213837, 43.400200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291319, -0.211054, -0.933054,
		0.057852, 0.969687, -0.237403,
		0.954875, -0.123139, -0.270278,
		38.222473, 32.176895, 43.319115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212948, 32.959805, 43.407635>,  <37.554062, 32.263092, 43.508312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212948, 32.959805, 43.407635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.844814, 32.932720, 43.561722>,  <36.623932, 32.916470, 43.654175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.844814, 32.932720, 43.561722>,  <37.212948, 32.959805, 43.407635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844814, 32.932720, 43.561722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366946, 0.191445, 0.910330,
		-0.135389, 0.979165, -0.151347,
		-0.920337, -0.067712, 0.385220,
		36.568714, 32.912407, 43.677288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079926, 33.541523, 43.883373>,  <37.212948, 32.959805, 43.407635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079926, 33.541523, 43.883373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.822544, 33.254269, 43.989391>,  <36.668114, 33.081917, 44.053001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.822544, 33.254269, 43.989391>,  <37.079926, 33.541523, 43.883373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822544, 33.254269, 43.989391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133503, 0.235664, 0.962621,
		-0.753754, 0.654786, -0.055765,
		-0.643453, -0.718135, 0.265048,
		36.629509, 33.038830, 44.068905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750839, 33.863422, 44.380524>,  <37.079926, 33.541523, 43.883373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750839, 33.863422, 44.380524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.630478, 33.486038, 44.436150>,  <36.558262, 33.259609, 44.469524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.630478, 33.486038, 44.436150>,  <36.750839, 33.863422, 44.380524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630478, 33.486038, 44.436150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127340, 0.184266, 0.974593,
		-0.945115, 0.275550, -0.175586,
		-0.300904, -0.943461, 0.139064,
		36.540207, 33.202999, 44.477867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140682, 33.818867, 44.851940>,  <36.750839, 33.863422, 44.380524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140682, 33.818867, 44.851940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287594, 33.448257, 44.884590>,  <36.375740, 33.225891, 44.904179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287594, 33.448257, 44.884590>,  <36.140682, 33.818867, 44.851940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287594, 33.448257, 44.884590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279580, -0.026275, 0.959763,
		-0.887096, -0.375324, -0.268687,
		0.367282, -0.926521, 0.081625,
		36.397778, 33.170300, 44.909077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704025, 33.550579, 45.268585>,  <36.140682, 33.818867, 44.851940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704025, 33.550579, 45.268585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.022186, 33.310162, 45.299801>,  <36.213081, 33.165913, 45.318531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.022186, 33.310162, 45.299801>,  <35.704025, 33.550579, 45.268585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022186, 33.310162, 45.299801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147253, -0.066735, 0.986845,
		-0.587928, -0.796426, -0.141586,
		0.795398, -0.601043, 0.078041,
		36.260807, 33.129848, 45.323212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543850, 32.936325, 45.623146>,  <35.704025, 33.550579, 45.268585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543850, 32.936325, 45.623146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.941677, 32.957802, 45.658833>,  <36.180374, 32.970688, 45.680244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.941677, 32.957802, 45.658833>,  <35.543850, 32.936325, 45.623146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941677, 32.957802, 45.658833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077365, -0.192383, 0.978265,
		0.069693, -0.979850, -0.187183,
		0.994564, 0.053697, 0.089214,
		36.240047, 32.973911, 45.685596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598824, 32.532879, 46.325642>,  <35.543850, 32.936325, 45.623146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598824, 32.532879, 46.325642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.946739, 32.705879, 46.230637>,  <36.155491, 32.809677, 46.173634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.946739, 32.705879, 46.230637>,  <35.598824, 32.532879, 46.325642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946739, 32.705879, 46.230637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283485, -0.044040, 0.957965,
		0.403857, -0.900559, -0.160912,
		0.869791, 0.432497, -0.237509,
		36.207676, 32.835629, 46.159386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897572, 32.317516, 46.815041>,  <35.598824, 32.532879, 46.325642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897572, 32.317516, 46.815041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.151863, 32.582916, 46.657249>,  <36.304436, 32.742157, 46.562572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.151863, 32.582916, 46.657249>,  <35.897572, 32.317516, 46.815041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151863, 32.582916, 46.657249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496589, 0.039714, 0.867077,
		0.590975, -0.747119, -0.304241,
		0.635727, 0.663503, -0.394481,
		36.342583, 32.781967, 46.538906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674000, 32.206005, 46.986080>,  <35.897572, 32.317516, 46.815041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674000, 32.206005, 46.986080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.642250, 32.603199, 46.951038>,  <36.623199, 32.841515, 46.930012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.642250, 32.603199, 46.951038>,  <36.674000, 32.206005, 46.986080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642250, 32.603199, 46.951038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460965, 0.114485, 0.880003,
		0.883862, 0.029462, -0.466819,
		-0.079371, 0.992988, -0.087608,
		36.618439, 32.901096, 46.924755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298347, 32.496925, 47.272285>,  <36.674000, 32.206005, 46.986080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298347, 32.496925, 47.272285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.023212, 32.786819, 47.288502>,  <36.858131, 32.960754, 47.298233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.023212, 32.786819, 47.288502>,  <37.298347, 32.496925, 47.272285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023212, 32.786819, 47.288502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282822, 0.216146, 0.934501,
		0.668504, 0.654247, -0.353644,
		-0.687833, 0.724736, 0.040541,
		36.816864, 33.004242, 47.300663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586956, 33.146809, 47.389893>,  <37.298347, 32.496925, 47.272285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586956, 33.146809, 47.389893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.214790, 33.225086, 47.513851>,  <36.991489, 33.272053, 47.588226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.214790, 33.225086, 47.513851>,  <37.586956, 33.146809, 47.389893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214790, 33.225086, 47.513851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350112, 0.224490, 0.909410,
		0.108394, 0.954625, -0.277382,
		-0.930415, 0.195689, 0.309892,
		36.935665, 33.283794, 47.606819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738468, 33.678978, 47.900940>,  <37.586956, 33.146809, 47.389893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738468, 33.678978, 47.900940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.361683, 33.570858, 47.980591>,  <37.135612, 33.505985, 48.028381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.361683, 33.570858, 47.980591>,  <37.738468, 33.678978, 47.900940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361683, 33.570858, 47.980591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079899, 0.395598, 0.914942,
		-0.326079, 0.877749, -0.351041,
		-0.941960, -0.270295, 0.199127,
		37.079094, 33.489769, 48.040329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511696, 34.208286, 48.273544>,  <37.738468, 33.678978, 47.900940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511696, 34.208286, 48.273544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.249134, 33.921741, 48.368172>,  <37.091599, 33.749817, 48.424946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.249134, 33.921741, 48.368172>,  <37.511696, 34.208286, 48.273544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249134, 33.921741, 48.368172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145121, 0.427619, 0.892234,
		-0.740319, 0.551337, -0.384650,
		-0.656405, -0.716358, 0.236564,
		37.052212, 33.706833, 48.439140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956207, 34.549088, 48.692467>,  <37.511696, 34.208286, 48.273544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956207, 34.549088, 48.692467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.947090, 34.160156, 48.785461>,  <36.941620, 33.926796, 48.841259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.947090, 34.160156, 48.785461>,  <36.956207, 34.549088, 48.692467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947090, 34.160156, 48.785461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015422, 0.232178, 0.972551,
		-0.999621, 0.025749, 0.009704,
		-0.022790, -0.972332, 0.232487,
		36.940254, 33.868458, 48.855209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437534, 35.103619, 48.627575>,  <36.956207, 34.549088, 48.692467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437534, 35.103619, 48.627575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.332458, 35.489094, 48.608414>,  <36.269413, 35.720379, 48.596916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.332458, 35.489094, 48.608414>,  <36.437534, 35.103619, 48.627575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332458, 35.489094, 48.608414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307103, -0.130570, -0.942677,
		-0.914704, -0.232917, 0.330252,
		-0.262686, 0.963691, -0.047904,
		36.253654, 35.778202, 48.594044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877445, 35.096088, 48.136299>,  <36.437534, 35.103619, 48.627575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877445, 35.096088, 48.136299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.999149, 35.475166, 48.174858>,  <36.072170, 35.702614, 48.197994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.999149, 35.475166, 48.174858>,  <35.877445, 35.096088, 48.136299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999149, 35.475166, 48.174858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131024, 0.141867, -0.981176,
		-0.943535, 0.285904, 0.167336,
		0.304262, 0.947699, 0.096396,
		36.090427, 35.759476, 48.203777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297733, 35.562954, 47.915329>,  <35.877445, 35.096088, 48.136299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297733, 35.562954, 47.915329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.630657, 35.782566, 47.884789>,  <35.830410, 35.914333, 47.866463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.630657, 35.782566, 47.884789>,  <35.297733, 35.562954, 47.915329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630657, 35.782566, 47.884789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238905, 0.231003, -0.943166,
		-0.500186, 0.803247, 0.323431,
		0.832309, 0.549028, -0.076356,
		35.880348, 35.947273, 47.861881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089474, 36.214294, 47.651928>,  <35.297733, 35.562954, 47.915329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089474, 36.214294, 47.651928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.477428, 36.195633, 47.556305>,  <35.710201, 36.184437, 47.498932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.477428, 36.195633, 47.556305>,  <35.089474, 36.214294, 47.651928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477428, 36.195633, 47.556305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221240, 0.241738, -0.944783,
		0.101863, 0.969220, 0.224137,
		0.969885, -0.046650, -0.239055,
		35.768394, 36.181637, 47.484589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171329, 36.835205, 47.188755>,  <35.089474, 36.214294, 47.651928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171329, 36.835205, 47.188755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.483124, 36.594254, 47.120018>,  <35.670200, 36.449680, 47.078777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.483124, 36.594254, 47.120018>,  <35.171329, 36.835205, 47.188755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483124, 36.594254, 47.120018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155842, 0.079219, -0.984600,
		0.606720, 0.794266, -0.032126,
		0.779489, -0.602383, -0.171844,
		35.716972, 36.413540, 47.068466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575829, 37.211372, 46.696342>,  <35.171329, 36.835205, 47.188755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575829, 37.211372, 46.696342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.695469, 36.829918, 46.682949>,  <35.767254, 36.601048, 46.674915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.695469, 36.829918, 46.682949>,  <35.575829, 37.211372, 46.696342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695469, 36.829918, 46.682949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150147, -0.012387, -0.988586,
		0.942334, 0.300716, -0.146890,
		0.299103, -0.953633, -0.033479,
		35.785198, 36.543827, 46.672905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106441, 37.099197, 46.263096>,  <35.575829, 37.211372, 46.696342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106441, 37.099197, 46.263096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968445, 36.723778, 46.259155>,  <35.885647, 36.498524, 46.256790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968445, 36.723778, 46.259155>,  <36.106441, 37.099197, 46.263096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968445, 36.723778, 46.259155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171525, 0.073359, -0.982445,
		0.922800, -0.337247, -0.186294,
		-0.344992, -0.938553, -0.009850,
		35.864948, 36.442211, 46.256199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842350, 37.071720, 45.909592>,  <36.106441, 37.099197, 46.263096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842350, 37.071720, 45.909592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.953995, 37.443394, 45.812664>,  <37.020981, 37.666397, 45.754509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.953995, 37.443394, 45.812664>,  <36.842350, 37.071720, 45.909592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953995, 37.443394, 45.812664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426456, 0.106154, 0.898257,
		0.860367, -0.354053, -0.366626,
		0.279112, 0.929181, -0.242320,
		37.037727, 37.722149, 45.739967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542126, 37.081482, 46.046398>,  <36.842350, 37.071720, 45.909592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542126, 37.081482, 46.046398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.486698, 37.474098, 45.993652>,  <37.453442, 37.709667, 45.962006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.486698, 37.474098, 45.993652>,  <37.542126, 37.081482, 46.046398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486698, 37.474098, 45.993652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710449, 0.191278, 0.677256,
		0.689973, 0.000164, -0.723835,
		-0.138565, 0.981536, -0.131860,
		37.445129, 37.768559, 45.954094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226688, 37.452797, 45.854481>,  <37.542126, 37.081482, 46.046398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226688, 37.452797, 45.854481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.987965, 37.728378, 46.019001>,  <37.844730, 37.893726, 46.117714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.987965, 37.728378, 46.019001>,  <38.226688, 37.452797, 45.854481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987965, 37.728378, 46.019001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734381, 0.262491, 0.625926,
		0.323269, 0.675609, -0.662608,
		-0.596810, 0.688949, 0.411299,
		37.808922, 37.935062, 46.142391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630623, 38.002342, 46.110821>,  <38.226688, 37.452797, 45.854481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630623, 38.002342, 46.110821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.285519, 38.080681, 46.297279>,  <38.078457, 38.127686, 46.409157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.285519, 38.080681, 46.297279>,  <38.630623, 38.002342, 46.110821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285519, 38.080681, 46.297279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501731, 0.217479, 0.837239,
		0.062593, 0.956215, -0.285894,
		-0.862756, 0.195848, 0.466149,
		38.026691, 38.139435, 46.437122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924934, 38.547302, 46.475952>,  <38.630623, 38.002342, 46.110821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924934, 38.547302, 46.475952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.594261, 38.392391, 46.639225>,  <38.395859, 38.299446, 46.737190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.594261, 38.392391, 46.639225>,  <38.924934, 38.547302, 46.475952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594261, 38.392391, 46.639225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443374, -0.001711, 0.896335,
		-0.346428, 0.921963, 0.173121,
		-0.826684, -0.387273, 0.408182,
		38.346256, 38.276211, 46.761681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827621, 38.930607, 46.969563>,  <38.924934, 38.547302, 46.475952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827621, 38.930607, 46.969563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.639828, 38.592495, 47.071613>,  <38.527153, 38.389629, 47.132843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.639828, 38.592495, 47.071613>,  <38.827621, 38.930607, 46.969563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639828, 38.592495, 47.071613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414508, 0.044124, 0.908975,
		-0.779596, 0.532498, 0.329660,
		-0.469482, -0.845280, 0.255124,
		38.498981, 38.338909, 47.148151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736916, 39.028610, 47.647930>,  <38.827621, 38.930607, 46.969563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736916, 39.028610, 47.647930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.622379, 38.645882, 47.627949>,  <38.553658, 38.416245, 47.615959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.622379, 38.645882, 47.627949>,  <38.736916, 39.028610, 47.647930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622379, 38.645882, 47.627949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318374, -0.144196, 0.936934,
		-0.903686, 0.252375, 0.345917,
		-0.286338, -0.956825, -0.049958,
		38.536476, 38.358833, 47.612961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413250, 38.833572, 48.222130>,  <38.736916, 39.028610, 47.647930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413250, 38.833572, 48.222130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.545280, 38.484772, 48.077545>,  <38.624500, 38.275490, 47.990795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.545280, 38.484772, 48.077545>,  <38.413250, 38.833572, 48.222130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545280, 38.484772, 48.077545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230478, -0.296883, 0.926683,
		-0.915383, -0.389188, 0.102983,
		0.330080, -0.872005, -0.361461,
		38.644306, 38.223171, 47.969109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217709, 38.313953, 48.774685>,  <38.413250, 38.833572, 48.222130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217709, 38.313953, 48.774685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.504230, 38.167252, 48.537231>,  <38.676144, 38.079231, 48.394760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.504230, 38.167252, 48.537231>,  <38.217709, 38.313953, 48.774685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504230, 38.167252, 48.537231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409469, -0.467940, 0.783178,
		-0.565021, -0.804066, -0.185011,
		0.716300, -0.366756, -0.593636,
		38.719120, 38.057224, 48.359142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.049889, 34.492176, 33.551331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449188, 34.509113, 33.534828>,  <33.688770, 34.519276, 33.524929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449188, 34.509113, 33.534828>,  <33.049889, 34.492176, 33.551331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449188, 34.509113, 33.534828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012658, 0.528553, 0.848806,
		0.057746, -0.847844, 0.527092,
		0.998251, 0.042343, -0.041254,
		33.748665, 34.521816, 33.522453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250404, 34.409584, 34.244480>,  <33.049889, 34.492176, 33.551331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250404, 34.409584, 34.244480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574883, 34.563881, 34.068680>,  <33.769569, 34.656460, 33.963200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574883, 34.563881, 34.068680>,  <33.250404, 34.409584, 34.244480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574883, 34.563881, 34.068680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135569, 0.607051, 0.783013,
		0.568837, -0.694763, 0.440146,
		0.811200, 0.385737, -0.439502,
		33.818241, 34.679604, 33.936829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690491, 34.364426, 34.747837>,  <33.250404, 34.409584, 34.244480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690491, 34.364426, 34.747837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858475, 34.622959, 34.493000>,  <33.959267, 34.778080, 34.340099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858475, 34.622959, 34.493000>,  <33.690491, 34.364426, 34.747837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858475, 34.622959, 34.493000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389919, 0.505399, 0.769763,
		0.819509, -0.571684, -0.039771,
		0.419961, 0.646335, -0.637090,
		33.984463, 34.816860, 34.301872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398163, 34.515141, 34.946445>,  <33.690491, 34.364426, 34.747837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398163, 34.515141, 34.946445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308834, 34.843987, 34.736969>,  <34.255238, 35.041294, 34.611282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308834, 34.843987, 34.736969>,  <34.398163, 34.515141, 34.946445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308834, 34.843987, 34.736969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407595, 0.566796, 0.715967,
		0.885433, -0.053560, -0.461670,
		-0.223326, 0.822115, -0.523691,
		34.241837, 35.090622, 34.579861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992611, 35.059715, 35.010952>,  <34.398163, 34.515141, 34.946445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992611, 35.059715, 35.010952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644463, 35.243118, 34.939156>,  <34.435574, 35.353161, 34.896080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644463, 35.243118, 34.939156>,  <34.992611, 35.059715, 35.010952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644463, 35.243118, 34.939156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193276, 0.653404, 0.731920,
		0.452872, 0.602354, -0.657325,
		-0.870374, 0.458512, -0.179488,
		34.383350, 35.380672, 34.885311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122261, 35.687145, 35.317966>,  <34.992611, 35.059715, 35.010952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122261, 35.687145, 35.317966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730156, 35.719479, 35.245796>,  <34.494892, 35.738880, 35.202492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730156, 35.719479, 35.245796>,  <35.122261, 35.687145, 35.317966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730156, 35.719479, 35.245796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114238, 0.513259, 0.850597,
		0.161367, 0.854418, -0.493893,
		-0.980260, 0.080837, -0.180430,
		34.436077, 35.743729, 35.191666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920879, 36.281628, 35.440475>,  <35.122261, 35.687145, 35.317966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920879, 36.281628, 35.440475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576397, 36.082455, 35.481251>,  <34.369709, 35.962952, 35.505714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576397, 36.082455, 35.481251>,  <34.920879, 36.281628, 35.440475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576397, 36.082455, 35.481251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211970, 0.534152, 0.818383,
		-0.461949, 0.683187, -0.565561,
		-0.861204, -0.497933, 0.101936,
		34.318035, 35.933075, 35.511833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454990, 36.729988, 35.555042>,  <34.920879, 36.281628, 35.440475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454990, 36.729988, 35.555042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265507, 36.414494, 35.711754>,  <34.151817, 36.225197, 35.805779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265507, 36.414494, 35.711754>,  <34.454990, 36.729988, 35.555042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265507, 36.414494, 35.711754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197094, 0.528520, 0.825724,
		-0.858342, 0.313939, -0.405822,
		-0.473712, -0.788739, 0.391775,
		34.123394, 36.177872, 35.829285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985245, 36.932556, 36.007732>,  <34.454990, 36.729988, 35.555042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985245, 36.932556, 36.007732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064983, 36.572453, 36.162544>,  <34.112827, 36.356392, 36.255432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064983, 36.572453, 36.162544>,  <33.985245, 36.932556, 36.007732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064983, 36.572453, 36.162544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104936, 0.373076, 0.921848,
		-0.974294, -0.224382, -0.020098,
		0.199347, -0.900260, 0.387031,
		34.124786, 36.302376, 36.278652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648026, 37.058311, 36.644657>,  <33.985245, 36.932556, 36.007732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648026, 37.058311, 36.644657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860806, 36.720901, 36.674316>,  <33.988472, 36.518456, 36.692112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860806, 36.720901, 36.674316>,  <33.648026, 37.058311, 36.644657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860806, 36.720901, 36.674316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120846, 0.162298, 0.979314,
		-0.838110, -0.511982, 0.188271,
		0.531947, -0.843524, 0.074152,
		34.020390, 36.467846, 36.696564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392693, 36.743988, 37.093273>,  <33.648026, 37.058311, 36.644657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392693, 36.743988, 37.093273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751587, 36.567917, 37.079296>,  <33.966923, 36.462276, 37.070911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751587, 36.567917, 37.079296>,  <33.392693, 36.743988, 37.093273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751587, 36.567917, 37.079296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095390, 0.115966, 0.988662,
		-0.431133, -0.890392, 0.146037,
		0.897232, -0.440175, -0.034938,
		34.020756, 36.435863, 37.068813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395939, 36.455002, 37.685074>,  <33.392693, 36.743988, 37.093273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395939, 36.455002, 37.685074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790058, 36.465378, 37.617523>,  <34.026527, 36.471603, 37.576992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790058, 36.465378, 37.617523>,  <33.395939, 36.455002, 37.685074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790058, 36.465378, 37.617523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168380, 0.020177, 0.985516,
		0.028992, -0.999459, 0.015509,
		0.985296, 0.025960, -0.168873,
		34.085648, 36.473160, 37.566860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096951, 35.680393, 37.899101>,  <33.395939, 36.455002, 37.685074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096951, 35.680393, 37.899101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716743, 35.634457, 38.014572>,  <32.488621, 35.606895, 38.083855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716743, 35.634457, 38.014572>,  <33.096951, 35.680393, 37.899101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716743, 35.634457, 38.014572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229515, -0.366698, -0.901585,
		0.209397, -0.923225, 0.322194,
		-0.950513, -0.114841, 0.288679,
		32.431591, 35.600006, 38.101177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922127, 35.125961, 37.578197>,  <33.096951, 35.680393, 37.899101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922127, 35.125961, 37.578197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554157, 35.256008, 37.665867>,  <32.333374, 35.334038, 37.718468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554157, 35.256008, 37.665867>,  <32.922127, 35.125961, 37.578197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554157, 35.256008, 37.665867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336572, -0.367999, -0.866774,
		-0.201148, -0.871134, 0.447957,
		-0.919923, 0.325119, 0.219177,
		32.278179, 35.353546, 37.731621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546715, 34.578930, 37.490162>,  <32.922127, 35.125961, 37.578197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546715, 34.578930, 37.490162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294308, 34.889030, 37.478905>,  <32.142864, 35.075092, 37.472149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294308, 34.889030, 37.478905>,  <32.546715, 34.578930, 37.490162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294308, 34.889030, 37.478905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301050, -0.278156, -0.912139,
		-0.714971, -0.567104, 0.408913,
		-0.631019, 0.775256, -0.028147,
		32.105003, 35.121609, 37.470459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909254, 34.314270, 37.255070>,  <32.546715, 34.578930, 37.490162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909254, 34.314270, 37.255070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904209, 34.706787, 37.178226>,  <31.901182, 34.942299, 37.132122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904209, 34.706787, 37.178226>,  <31.909254, 34.314270, 37.255070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904209, 34.706787, 37.178226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378712, -0.182497, -0.907344,
		-0.925429, 0.061310, 0.373929,
		-0.012612, 0.981293, -0.192107,
		31.900425, 35.001175, 37.120594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400658, 34.374809, 36.853771>,  <31.909254, 34.314270, 37.255070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400658, 34.374809, 36.853771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506910, 34.751057, 36.769234>,  <31.570662, 34.976807, 36.718510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506910, 34.751057, 36.769234>,  <31.400658, 34.374809, 36.853771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506910, 34.751057, 36.769234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512523, -0.047895, -0.857337,
		-0.816553, 0.336057, 0.469369,
		0.265634, 0.940623, -0.211346,
		31.586601, 35.033245, 36.705830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777969, 34.731110, 36.604862>,  <31.400658, 34.374809, 36.853771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777969, 34.731110, 36.604862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084225, 34.959866, 36.487057>,  <31.267979, 35.097118, 36.416374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084225, 34.959866, 36.487057>,  <30.777969, 34.731110, 36.604862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084225, 34.959866, 36.487057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320977, -0.057123, -0.945362,
		-0.557469, 0.818338, 0.139828,
		0.765638, 0.571892, -0.294512,
		31.313915, 35.131432, 36.398705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543005, 35.318558, 36.263645>,  <30.777969, 34.731110, 36.604862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543005, 35.318558, 36.263645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907637, 35.251877, 36.113323>,  <31.126415, 35.211868, 36.023129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907637, 35.251877, 36.113323>,  <30.543005, 35.318558, 36.263645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907637, 35.251877, 36.113323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382672, -0.009917, -0.923831,
		0.150279, 0.985957, -0.072833,
		0.911580, -0.166704, -0.375808,
		31.181110, 35.201866, 36.000580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673613, 35.763618, 35.729713>,  <30.543005, 35.318558, 36.263645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673613, 35.763618, 35.729713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972675, 35.514046, 35.638748>,  <31.152113, 35.364300, 35.584167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972675, 35.514046, 35.638748>,  <30.673613, 35.763618, 35.729713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972675, 35.514046, 35.638748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238327, 0.067537, -0.968833,
		0.619848, 0.778552, -0.098206,
		0.747655, -0.623935, -0.227413,
		31.196972, 35.326866, 35.570526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829624, 35.973667, 35.073044>,  <30.673613, 35.763618, 35.729713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829624, 35.973667, 35.073044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991781, 35.608425, 35.090424>,  <31.089075, 35.389278, 35.100853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991781, 35.608425, 35.090424>,  <30.829624, 35.973667, 35.073044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991781, 35.608425, 35.090424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175547, -0.124407, -0.976579,
		0.897128, 0.388272, -0.210728,
		0.405394, -0.913109, 0.043449,
		31.113400, 35.334492, 35.103458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283310, 35.989468, 34.533203>,  <30.829624, 35.973667, 35.073044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283310, 35.989468, 34.533203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226316, 35.604774, 34.626816>,  <31.192122, 35.373959, 34.682983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226316, 35.604774, 34.626816>,  <31.283310, 35.989468, 34.533203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226316, 35.604774, 34.626816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002935, -0.236033, -0.971740,
		0.989793, -0.139142, 0.030808,
		-0.142482, -0.961732, 0.234033,
		31.183573, 35.316254, 34.697025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804478, 35.571270, 34.103436>,  <31.283310, 35.989468, 34.533203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804478, 35.571270, 34.103436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521444, 35.299660, 34.181660>,  <31.351624, 35.136692, 34.228592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521444, 35.299660, 34.181660>,  <31.804478, 35.571270, 34.103436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521444, 35.299660, 34.181660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027260, -0.302774, -0.952673,
		0.706102, -0.668766, 0.232748,
		-0.707585, -0.679029, 0.195559,
		31.309168, 35.095951, 34.240326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037392, 35.080910, 33.745560>,  <31.804478, 35.571270, 34.103436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037392, 35.080910, 33.745560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652983, 34.986431, 33.803024>,  <31.422337, 34.929745, 33.837505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652983, 34.986431, 33.803024>,  <32.037392, 35.080910, 33.745560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652983, 34.986431, 33.803024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024593, -0.444557, -0.895413,
		0.275362, -0.864048, 0.421422,
		-0.961026, -0.236199, 0.143663,
		31.364676, 34.915573, 33.846123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972120, 34.331604, 33.565048>,  <32.037392, 35.080910, 33.745560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972120, 34.331604, 33.565048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610268, 34.500633, 33.542877>,  <31.393156, 34.602051, 33.529575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610268, 34.500633, 33.542877>,  <31.972120, 34.331604, 33.565048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610268, 34.500633, 33.542877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067108, -0.269667, -0.960612,
		-0.420880, -0.865279, 0.272308,
		-0.904630, 0.422577, -0.055431,
		31.338879, 34.627407, 33.526249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383801, 34.127453, 34.145248>,  <31.972120, 34.331604, 33.565048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383801, 34.127453, 34.145248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573254, 33.871349, 33.903343>,  <32.686928, 33.717686, 33.758202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573254, 33.871349, 33.903343>,  <32.383801, 34.127453, 34.145248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573254, 33.871349, 33.903343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096100, -0.720134, 0.687148,
		-0.875463, -0.267339, -0.402609,
		0.473634, -0.640263, -0.604760,
		32.715343, 33.679272, 33.721916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888268, 33.626862, 33.837887>,  <32.383801, 34.127453, 34.145248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888268, 33.626862, 33.837887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238480, 33.437881, 33.878357>,  <32.448608, 33.324493, 33.902641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238480, 33.437881, 33.878357>,  <31.888268, 33.626862, 33.837887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238480, 33.437881, 33.878357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462721, -0.759631, 0.457002,
		-0.139051, -0.446937, -0.883692,
		0.875531, -0.472449, 0.101179,
		32.501141, 33.296146, 33.908710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819223, 32.826180, 33.826736>,  <31.888268, 33.626862, 33.837887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819223, 32.826180, 33.826736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182510, 32.884315, 33.983715>,  <32.400482, 32.919197, 34.077904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182510, 32.884315, 33.983715>,  <31.819223, 32.826180, 33.826736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182510, 32.884315, 33.983715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109213, -0.822950, 0.557518,
		0.403994, -0.549209, -0.731545,
		0.908219, 0.145340, 0.392448,
		32.454975, 32.927917, 34.101448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218208, 32.575523, 34.368797>,  <31.819223, 32.826180, 33.826736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218208, 32.575523, 34.368797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577175, 32.450298, 34.244446>,  <32.792553, 32.375164, 34.169834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577175, 32.450298, 34.244446>,  <32.218208, 32.575523, 34.368797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577175, 32.450298, 34.244446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109519, -0.524499, 0.844338,
		-0.427381, -0.791767, -0.436406,
		0.897413, -0.313060, -0.310874,
		32.846397, 32.356380, 34.151184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250759, 31.823788, 34.474117>,  <32.218208, 32.575523, 34.368797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250759, 31.823788, 34.474117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601109, 32.015621, 34.495426>,  <32.811317, 32.130722, 34.508209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601109, 32.015621, 34.495426>,  <32.250759, 31.823788, 34.474117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601109, 32.015621, 34.495426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218019, -0.491802, 0.842970,
		0.430474, -0.726724, -0.535317,
		0.875876, 0.479586, 0.053268,
		32.863873, 32.159496, 34.511406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883682, 31.375057, 34.641273>,  <32.250759, 31.823788, 34.474117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883682, 31.375057, 34.641273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010845, 31.727749, 34.780697>,  <33.087143, 31.939363, 34.864349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010845, 31.727749, 34.780697>,  <32.883682, 31.375057, 34.641273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010845, 31.727749, 34.780697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227220, -0.427764, 0.874865,
		0.920493, -0.198926, -0.336335,
		0.317906, 0.881729, 0.348554,
		33.106216, 31.992268, 34.885262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323925, 31.144178, 35.138481>,  <32.883682, 31.375057, 34.641273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323925, 31.144178, 35.138481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266594, 31.529242, 35.230347>,  <33.232197, 31.760281, 35.285465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266594, 31.529242, 35.230347>,  <33.323925, 31.144178, 35.138481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266594, 31.529242, 35.230347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254602, -0.188383, 0.948520,
		0.956366, 0.194421, -0.218094,
		-0.143327, 0.962659, 0.229663,
		33.223595, 31.818039, 35.299244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834915, 31.319998, 35.621006>,  <33.323925, 31.144178, 35.138481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834915, 31.319998, 35.621006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540215, 31.584946, 35.675350>,  <33.363392, 31.743914, 35.707958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540215, 31.584946, 35.675350>,  <33.834915, 31.319998, 35.621006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540215, 31.584946, 35.675350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115508, -0.074689, 0.990495,
		0.666220, 0.745445, -0.021482,
		-0.736755, 0.662369, 0.135864,
		33.319187, 31.783657, 35.716110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127068, 31.730930, 36.167282>,  <33.834915, 31.319998, 35.621006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127068, 31.730930, 36.167282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735584, 31.812735, 36.174358>,  <33.500694, 31.861816, 36.178604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735584, 31.812735, 36.174358>,  <34.127068, 31.730930, 36.167282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735584, 31.812735, 36.174358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060086, 0.203023, 0.977329,
		0.196283, 0.957579, -0.210988,
		-0.978705, 0.204510, 0.017687,
		33.441975, 31.874088, 36.179665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027142, 32.426685, 36.385174>,  <34.127068, 31.730930, 36.167282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027142, 32.426685, 36.385174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678024, 32.248638, 36.465279>,  <33.468555, 32.141811, 36.513340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678024, 32.248638, 36.465279>,  <34.027142, 32.426685, 36.385174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678024, 32.248638, 36.465279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137646, 0.169180, 0.975926,
		-0.468280, 0.879347, -0.086390,
		-0.872793, -0.445116, 0.200262,
		33.416187, 32.115105, 36.525356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837521, 32.779709, 36.954632>,  <34.027142, 32.426685, 36.385174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837521, 32.779709, 36.954632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602802, 32.455822, 36.956806>,  <33.461971, 32.261490, 36.958111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602802, 32.455822, 36.956806>,  <33.837521, 32.779709, 36.954632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602802, 32.455822, 36.956806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145926, 0.112352, 0.982895,
		-0.796474, 0.575970, -0.184087,
		-0.586801, -0.809713, 0.005436,
		33.426762, 32.212910, 36.958439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224930, 32.920277, 37.416859>,  <33.837521, 32.779709, 36.954632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224930, 32.920277, 37.416859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272564, 32.523129, 37.418934>,  <33.301144, 32.284840, 37.420177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272564, 32.523129, 37.418934>,  <33.224930, 32.920277, 37.416859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272564, 32.523129, 37.418934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092221, 0.016264, 0.995606,
		-0.988592, -0.118083, 0.093501,
		0.119085, -0.992871, 0.005189,
		33.308289, 32.225266, 37.420490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822277, 32.711021, 37.927582>,  <33.224930, 32.920277, 37.416859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822277, 32.711021, 37.927582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044399, 32.382553, 37.874962>,  <33.177673, 32.185471, 37.843388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044399, 32.382553, 37.874962>,  <32.822277, 32.711021, 37.927582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044399, 32.382553, 37.874962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149655, -0.056933, 0.987098,
		-0.818070, -0.567830, 0.091278,
		0.555307, -0.821175, -0.131553,
		33.210991, 32.136200, 37.835495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573658, 32.235691, 38.371296>,  <32.822277, 32.711021, 37.927582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573658, 32.235691, 38.371296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947929, 32.112217, 38.302914>,  <33.172493, 32.038132, 38.261883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947929, 32.112217, 38.302914>,  <32.573658, 32.235691, 38.371296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947929, 32.112217, 38.302914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142736, -0.111969, 0.983407,
		-0.322709, -0.944550, -0.060706,
		0.935673, -0.308689, -0.170954,
		33.228630, 32.019611, 38.251629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639198, 31.750006, 38.822094>,  <32.573658, 32.235691, 38.371296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639198, 31.750006, 38.822094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013798, 31.856159, 38.730412>,  <33.238560, 31.919851, 38.675400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013798, 31.856159, 38.730412>,  <32.639198, 31.750006, 38.822094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013798, 31.856159, 38.730412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240430, -0.010130, 0.970614,
		0.255265, -0.964089, -0.073293,
		0.936500, 0.265386, -0.229210,
		33.294746, 31.935774, 38.661648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982513, 31.294062, 39.152412>,  <32.639198, 31.750006, 38.822094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982513, 31.294062, 39.152412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265205, 31.560377, 39.056694>,  <33.434818, 31.720167, 38.999264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265205, 31.560377, 39.056694>,  <32.982513, 31.294062, 39.152412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265205, 31.560377, 39.056694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327401, -0.007937, 0.944852,
		0.627173, -0.746098, -0.223589,
		0.706727, 0.665789, -0.239296,
		33.477222, 31.760115, 38.984905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665108, 31.117210, 39.447479>,  <32.982513, 31.294062, 39.152412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665108, 31.117210, 39.447479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695351, 31.509727, 39.376663>,  <33.713497, 31.745237, 39.334171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695351, 31.509727, 39.376663>,  <33.665108, 31.117210, 39.447479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695351, 31.509727, 39.376663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358504, 0.138929, 0.923132,
		0.930462, -0.133263, -0.341295,
		0.075604, 0.981295, -0.177043,
		33.718033, 31.804115, 39.323551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408943, 31.297903, 39.659058>,  <33.665108, 31.117210, 39.447479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408943, 31.297903, 39.659058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218288, 31.648861, 39.680965>,  <34.103897, 31.859436, 39.694111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218288, 31.648861, 39.680965>,  <34.408943, 31.297903, 39.659058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218288, 31.648861, 39.680965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454855, 0.192819, 0.869441,
		0.752281, 0.439319, -0.490991,
		-0.476634, 0.877394, 0.054772,
		34.075298, 31.912079, 39.697395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910015, 31.780376, 39.791824>,  <34.408943, 31.297903, 39.659058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910015, 31.780376, 39.791824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565971, 31.938675, 39.920574>,  <34.359547, 32.033653, 39.997822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565971, 31.938675, 39.920574>,  <34.910015, 31.780376, 39.791824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565971, 31.938675, 39.920574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437865, 0.249039, 0.863860,
		0.261712, 0.883947, -0.387484,
		-0.860105, 0.395748, 0.321873,
		34.307941, 32.057400, 40.017136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044350, 32.554184, 39.863499>,  <34.910015, 31.780376, 39.791824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044350, 32.554184, 39.863499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717663, 32.467590, 40.077457>,  <34.521652, 32.415634, 40.205833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717663, 32.467590, 40.077457>,  <35.044350, 32.554184, 39.863499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717663, 32.467590, 40.077457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389995, 0.476130, 0.788165,
		-0.425304, 0.852312, -0.304435,
		-0.816713, -0.216481, 0.534897,
		34.472649, 32.402645, 40.237926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915100, 33.156078, 40.227745>,  <35.044350, 32.554184, 39.863499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915100, 33.156078, 40.227745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733696, 32.872623, 40.443958>,  <34.624855, 32.702553, 40.573685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733696, 32.872623, 40.443958>,  <34.915100, 33.156078, 40.227745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733696, 32.872623, 40.443958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580111, 0.225721, 0.782637,
		-0.676611, 0.668498, 0.308719,
		-0.453507, -0.708633, 0.540529,
		34.597645, 32.660034, 40.606117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903294, 33.439831, 40.859936>,  <34.915100, 33.156078, 40.227745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903294, 33.439831, 40.859936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786621, 33.073711, 40.971043>,  <34.716618, 32.854042, 41.037708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786621, 33.073711, 40.971043>,  <34.903294, 33.439831, 40.859936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786621, 33.073711, 40.971043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337624, 0.173184, 0.925212,
		-0.894948, 0.363649, 0.258511,
		-0.291682, -0.915296, 0.277767,
		34.699116, 32.799122, 41.054375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574726, 33.482601, 41.459270>,  <34.903294, 33.439831, 40.859936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574726, 33.482601, 41.459270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724758, 33.112137, 41.443604>,  <34.814777, 32.889858, 41.434204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724758, 33.112137, 41.443604>,  <34.574726, 33.482601, 41.459270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724758, 33.112137, 41.443604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430360, 0.136554, 0.892268,
		-0.821039, -0.351529, 0.449803,
		0.375081, -0.926164, -0.039168,
		34.837284, 32.834286, 41.431854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451805, 33.149685, 42.150261>,  <34.574726, 33.482601, 41.459270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451805, 33.149685, 42.150261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724842, 32.887474, 42.021046>,  <34.888664, 32.730148, 41.943516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724842, 32.887474, 42.021046>,  <34.451805, 33.149685, 42.150261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724842, 32.887474, 42.021046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461379, 0.043751, 0.886124,
		-0.566742, -0.753906, 0.332309,
		0.682593, -0.655524, -0.323041,
		34.929619, 32.690819, 41.924133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544701, 32.614159, 42.697369>,  <34.451805, 33.149685, 42.150261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544701, 32.614159, 42.697369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863426, 32.591736, 42.456722>,  <35.054661, 32.578281, 42.312336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863426, 32.591736, 42.456722>,  <34.544701, 32.614159, 42.697369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863426, 32.591736, 42.456722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603225, 0.016616, 0.797398,
		-0.034699, -0.998290, 0.047052,
		0.796816, -0.056052, -0.601617,
		35.102470, 32.574921, 42.276237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971096, 32.016270, 42.890274>,  <34.544701, 32.614159, 42.697369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971096, 32.016270, 42.890274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194675, 32.299034, 42.716904>,  <35.328823, 32.468693, 42.612881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194675, 32.299034, 42.716904>,  <34.971096, 32.016270, 42.890274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194675, 32.299034, 42.716904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683873, -0.097394, 0.723071,
		0.468933, -0.700566, -0.537874,
		0.558945, 0.706910, -0.433427,
		35.362358, 32.511108, 42.586876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645565, 31.764503, 42.979488>,  <34.971096, 32.016270, 42.890274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645565, 31.764503, 42.979488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701439, 32.143963, 42.865963>,  <35.734962, 32.371639, 42.797848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701439, 32.143963, 42.865963>,  <35.645565, 31.764503, 42.979488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701439, 32.143963, 42.865963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733312, 0.093500, 0.673433,
		0.665389, -0.302194, -0.682595,
		0.139685, 0.948650, -0.283817,
		35.743343, 32.428558, 42.780819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398972, 31.845322, 43.152897>,  <35.645565, 31.764503, 42.979488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398972, 31.845322, 43.152897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263447, 32.218765, 43.106281>,  <36.182133, 32.442833, 43.078312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263447, 32.218765, 43.106281>,  <36.398972, 31.845322, 43.152897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263447, 32.218765, 43.106281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666507, 0.325590, 0.670641,
		0.664059, 0.149551, -0.732571,
		-0.338813, 0.933609, -0.116534,
		36.161804, 32.498848, 43.071320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967999, 32.264881, 43.076141>,  <36.398972, 31.845322, 43.152897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967999, 32.264881, 43.076141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655853, 32.473324, 43.214405>,  <36.468567, 32.598389, 43.297363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655853, 32.473324, 43.214405>,  <36.967999, 32.264881, 43.076141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655853, 32.473324, 43.214405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418886, 0.025200, 0.907689,
		0.464289, 0.853122, -0.237948,
		-0.780366, 0.521103, 0.345660,
		36.421745, 32.629654, 43.318104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591808, 32.690842, 42.841713>,  <36.967999, 32.264881, 43.076141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591808, 32.690842, 42.841713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920727, 32.463562, 42.854252>,  <38.118076, 32.327194, 42.861774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920727, 32.463562, 42.854252>,  <37.591808, 32.690842, 42.841713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920727, 32.463562, 42.854252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034204, -0.005631, -0.999399,
		0.568037, 0.822870, 0.014805,
		0.822292, -0.568202, 0.031344,
		38.167416, 32.293102, 42.863655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103424, 33.046783, 42.389984>,  <37.591808, 32.690842, 42.841713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103424, 33.046783, 42.389984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210350, 32.662975, 42.425446>,  <38.274506, 32.432690, 42.446724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210350, 32.662975, 42.425446>,  <38.103424, 33.046783, 42.389984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210350, 32.662975, 42.425446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061898, -0.074713, -0.995282,
		0.961618, 0.271544, 0.039420,
		0.267318, -0.959522, 0.088653,
		38.290546, 32.375118, 42.452042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724037, 32.963646, 41.954586>,  <38.103424, 33.046783, 42.389984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724037, 32.963646, 41.954586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602249, 32.586788, 42.010670>,  <38.529175, 32.360672, 42.044319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602249, 32.586788, 42.010670>,  <38.724037, 32.963646, 41.954586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602249, 32.586788, 42.010670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186981, -0.203452, -0.961065,
		0.933988, -0.266403, 0.238109,
		-0.304475, -0.942145, 0.140209,
		38.510906, 32.304146, 42.052734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214264, 32.507999, 41.773685>,  <38.724037, 32.963646, 41.954586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214264, 32.507999, 41.773685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848454, 32.353176, 41.726650>,  <38.628967, 32.260281, 41.698429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848454, 32.353176, 41.726650>,  <39.214264, 32.507999, 41.773685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848454, 32.353176, 41.726650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143756, -0.039248, -0.988835,
		0.378122, -0.921219, 0.091536,
		-0.914526, -0.387059, -0.117590,
		38.574097, 32.237057, 41.691372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353157, 31.984510, 41.371300>,  <39.214264, 32.507999, 41.773685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353157, 31.984510, 41.371300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958935, 32.047760, 41.347061>,  <38.722401, 32.085709, 41.332520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958935, 32.047760, 41.347061>,  <39.353157, 31.984510, 41.371300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958935, 32.047760, 41.347061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058390, -0.018548, -0.998121,
		-0.158951, -0.987245, 0.009048,
		-0.985559, 0.158125, -0.060594,
		38.663269, 32.095196, 41.328884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
