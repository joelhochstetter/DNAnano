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
	<23.855268, 35.105324, 34.922680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.215094, 35.123512, 35.096447>,  <24.430988, 35.134426, 35.200706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.215094, 35.123512, 35.096447>,  <23.855268, 35.105324, 34.922680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.215094, 35.123512, 35.096447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368306, 0.455701, -0.810363,
		-0.234816, 0.888970, 0.393183,
		0.899562, 0.045475, 0.434419,
		24.484962, 35.137154, 35.226772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.095551, 35.731255, 35.074894>,  <23.855268, 35.105324, 34.922680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.095551, 35.731255, 35.074894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438829, 35.534931, 35.014755>,  <24.644796, 35.417137, 34.978672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438829, 35.534931, 35.014755>,  <24.095551, 35.731255, 35.074894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.438829, 35.534931, 35.014755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181058, 0.563502, -0.806029,
		0.480326, 0.664511, 0.572461,
		0.858199, -0.490806, -0.150350,
		24.696289, 35.387688, 34.969650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559952, 36.259800, 34.821106>,  <24.095551, 35.731255, 35.074894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559952, 36.259800, 34.821106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734116, 35.915066, 34.717064>,  <24.838614, 35.708225, 34.654636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734116, 35.915066, 34.717064>,  <24.559952, 36.259800, 34.821106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734116, 35.915066, 34.717064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262050, 0.397760, -0.879270,
		0.861247, 0.314683, 0.399034,
		0.435411, -0.861836, -0.260107,
		24.864738, 35.656513, 34.639030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.866270, 36.397953, 35.391140>,  <24.559952, 36.259800, 34.821106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.866270, 36.397953, 35.391140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170898, 36.268101, 35.166775>,  <25.353676, 36.190189, 35.032154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170898, 36.268101, 35.166775>,  <24.866270, 36.397953, 35.391140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170898, 36.268101, 35.166775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403484, 0.439796, -0.802359,
		0.507158, 0.837373, 0.203953,
		0.761572, -0.324631, -0.560913,
		25.399370, 36.170712, 34.998501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241781, 37.004189, 34.952717>,  <24.866270, 36.397953, 35.391140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241781, 37.004189, 34.952717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291309, 36.654163, 34.765556>,  <25.321026, 36.444149, 34.653259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291309, 36.654163, 34.765556>,  <25.241781, 37.004189, 34.952717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291309, 36.654163, 34.765556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049879, 0.465443, -0.883671,
		0.991050, 0.132757, 0.013985,
		0.123823, -0.875065, -0.467900,
		25.328457, 36.391644, 34.625187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756031, 37.192795, 34.414135>,  <25.241781, 37.004189, 34.952717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756031, 37.192795, 34.414135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602795, 36.836838, 34.315079>,  <25.510853, 36.623264, 34.255646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602795, 36.836838, 34.315079>,  <25.756031, 37.192795, 34.414135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602795, 36.836838, 34.315079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023668, 0.258545, -0.965709,
		0.923407, -0.375817, -0.077985,
		-0.383093, -0.889897, -0.247637,
		25.487867, 36.569870, 34.240788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197403, 36.969582, 33.841103>,  <25.756031, 37.192795, 34.414135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197403, 36.969582, 33.841103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861654, 36.756310, 33.798809>,  <25.660206, 36.628349, 33.773434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861654, 36.756310, 33.798809>,  <26.197403, 36.969582, 33.841103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861654, 36.756310, 33.798809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143496, 0.404979, -0.902996,
		0.524277, -0.742775, -0.416436,
		-0.839371, -0.533176, -0.105736,
		25.609842, 36.596355, 33.767090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136530, 36.642673, 33.144070>,  <26.197403, 36.969582, 33.841103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136530, 36.642673, 33.144070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759880, 36.664478, 33.276955>,  <25.533890, 36.677563, 33.356686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759880, 36.664478, 33.276955>,  <26.136530, 36.642673, 33.144070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759880, 36.664478, 33.276955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280717, 0.417604, -0.864179,
		-0.185844, -0.906993, -0.377924,
		-0.941626, 0.054513, 0.332217,
		25.477392, 36.680832, 33.376621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830101, 36.230309, 32.648323>,  <26.136530, 36.642673, 33.144070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830101, 36.230309, 32.648323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586702, 36.494232, 32.824680>,  <25.440664, 36.652588, 32.930492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586702, 36.494232, 32.824680>,  <25.830101, 36.230309, 32.648323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586702, 36.494232, 32.824680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305376, 0.318107, -0.897527,
		-0.732447, -0.680777, 0.007924,
		-0.608495, 0.659811, 0.440889,
		25.404154, 36.692177, 32.956947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187561, 36.237331, 32.246899>,  <25.830101, 36.230309, 32.648323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187561, 36.237331, 32.246899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200489, 36.572277, 32.465176>,  <25.208246, 36.773243, 32.596142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200489, 36.572277, 32.465176>,  <25.187561, 36.237331, 32.246899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200489, 36.572277, 32.465176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070026, 0.546536, -0.834503,
		-0.997021, -0.011244, 0.076300,
		0.032318, 0.837360, 0.545696,
		25.210184, 36.823486, 32.628883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635523, 36.634949, 32.078064>,  <25.187561, 36.237331, 32.246899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635523, 36.634949, 32.078064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887238, 36.901531, 32.237984>,  <25.038265, 37.061481, 32.333935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887238, 36.901531, 32.237984>,  <24.635523, 36.634949, 32.078064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887238, 36.901531, 32.237984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011655, 0.506282, -0.862289,
		-0.777087, 0.547285, 0.310828,
		0.629285, 0.666451, 0.399804,
		25.076023, 37.101467, 32.357925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.252008, 37.289845, 31.962273>,  <24.635523, 36.634949, 32.078064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.252008, 37.289845, 31.962273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.640753, 37.354462, 32.030842>,  <24.874001, 37.393230, 32.071983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.640753, 37.354462, 32.030842>,  <24.252008, 37.289845, 31.962273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.640753, 37.354462, 32.030842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076115, 0.473338, -0.877586,
		-0.222909, 0.865942, 0.447724,
		0.971863, 0.161543, 0.171423,
		24.932312, 37.402924, 32.082268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.287130, 37.938763, 31.656639>,  <24.252008, 37.289845, 31.962273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.287130, 37.938763, 31.656639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678982, 37.878338, 31.709562>,  <24.914093, 37.842083, 31.741316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678982, 37.878338, 31.709562>,  <24.287130, 37.938763, 31.656639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.678982, 37.878338, 31.709562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200718, 0.756529, -0.622395,
		-0.006075, 0.636273, 0.771439,
		0.979630, -0.151061, 0.132307,
		24.972872, 37.833019, 31.749254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640265, 38.631313, 31.789385>,  <24.287130, 37.938763, 31.656639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640265, 38.631313, 31.789385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911188, 38.379292, 31.637444>,  <25.073742, 38.228081, 31.546278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911188, 38.379292, 31.637444>,  <24.640265, 38.631313, 31.789385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911188, 38.379292, 31.637444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173800, 0.638732, -0.749543,
		0.714874, 0.441654, 0.542122,
		0.677310, -0.630050, -0.379853,
		25.114382, 38.190277, 31.523487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080256, 39.106850, 31.550646>,  <24.640265, 38.631313, 31.789385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080256, 39.106850, 31.550646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172495, 38.761719, 31.370712>,  <25.227839, 38.554642, 31.262753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172495, 38.761719, 31.370712>,  <25.080256, 39.106850, 31.550646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172495, 38.761719, 31.370712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137312, 0.486524, -0.862810,
		0.963312, 0.137196, 0.230668,
		0.230599, -0.862828, -0.449836,
		25.241674, 38.502869, 31.235762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792534, 39.130482, 31.337559>,  <25.080256, 39.106850, 31.550646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792534, 39.130482, 31.337559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592136, 38.866261, 31.113888>,  <25.471899, 38.707729, 30.979685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592136, 38.866261, 31.113888>,  <25.792534, 39.130482, 31.337559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592136, 38.866261, 31.113888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260581, 0.500995, -0.825289,
		0.825291, -0.559174, -0.078868,
		-0.500992, -0.660551, -0.559177,
		25.441839, 38.668095, 30.946135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166647, 39.165211, 30.778242>,  <25.792534, 39.130482, 31.337559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166647, 39.165211, 30.778242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820845, 38.997105, 30.667965>,  <25.613363, 38.896240, 30.601799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820845, 38.997105, 30.667965>,  <26.166647, 39.165211, 30.778242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820845, 38.997105, 30.667965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117984, 0.363506, -0.924091,
		0.488581, -0.831408, -0.264667,
		-0.864505, -0.420267, -0.275695,
		25.561493, 38.871025, 30.585257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268696, 39.040325, 30.118311>,  <26.166647, 39.165211, 30.778242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268696, 39.040325, 30.118311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873493, 38.979103, 30.126482>,  <25.636372, 38.942371, 30.131384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873493, 38.979103, 30.126482>,  <26.268696, 39.040325, 30.118311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873493, 38.979103, 30.126482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091561, 0.474204, -0.875641,
		0.124330, -0.867010, -0.482530,
		-0.988007, -0.153050, 0.020427,
		25.577091, 38.933189, 30.132610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116465, 38.853256, 29.452505>,  <26.268696, 39.040325, 30.118311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116465, 38.853256, 29.452505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775055, 38.974609, 29.621954>,  <25.570210, 39.047421, 29.723623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775055, 38.974609, 29.621954>,  <26.116465, 38.853256, 29.452505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775055, 38.974609, 29.621954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266956, 0.443589, -0.855549,
		-0.447475, -0.843319, -0.297623,
		-0.853523, 0.303384, 0.423624,
		25.518997, 39.065624, 29.749041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586504, 38.619461, 29.116497>,  <26.116465, 38.853256, 29.452505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586504, 38.619461, 29.116497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408037, 38.942928, 29.269852>,  <25.300957, 39.137009, 29.361864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408037, 38.942928, 29.269852>,  <25.586504, 38.619461, 29.116497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408037, 38.942928, 29.269852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201478, 0.326633, -0.923427,
		-0.871975, -0.489248, 0.017196,
		-0.446168, 0.808670, 0.383389,
		25.274187, 39.185528, 29.384869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915838, 38.779903, 28.730728>,  <25.586504, 38.619461, 29.116497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915838, 38.779903, 28.730728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988291, 39.122715, 28.923683>,  <25.031763, 39.328400, 29.039457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988291, 39.122715, 28.923683>,  <24.915838, 38.779903, 28.730728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.988291, 39.122715, 28.923683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193983, 0.512001, -0.836795,
		-0.964138, 0.057994, 0.258988,
		0.181131, 0.857025, 0.482390,
		25.042629, 39.379822, 29.068399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.465950, 39.250252, 28.412636>,  <24.915838, 38.779903, 28.730728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.465950, 39.250252, 28.412636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726475, 39.494705, 28.592550>,  <24.882790, 39.641376, 28.700499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726475, 39.494705, 28.592550>,  <24.465950, 39.250252, 28.412636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.726475, 39.494705, 28.592550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120774, 0.668687, -0.733670,
		-0.749138, 0.423524, 0.509332,
		0.651311, 0.611134, 0.449788,
		24.921867, 39.678047, 28.727488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.176092, 39.859005, 28.416315>,  <24.465950, 39.250252, 28.412636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.176092, 39.859005, 28.416315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.570490, 39.920704, 28.441673>,  <24.807129, 39.957722, 28.456888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.570490, 39.920704, 28.441673>,  <24.176092, 39.859005, 28.416315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.570490, 39.920704, 28.441673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064230, 0.702079, -0.709197,
		-0.153899, 0.695193, 0.702155,
		0.985997, 0.154245, 0.063397,
		24.866289, 39.966976, 28.460691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.239405, 40.573639, 28.392303>,  <24.176092, 39.859005, 28.416315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.239405, 40.573639, 28.392303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604794, 40.447624, 28.289295>,  <24.824028, 40.372017, 28.227489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604794, 40.447624, 28.289295>,  <24.239405, 40.573639, 28.392303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604794, 40.447624, 28.289295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062189, 0.733548, -0.676787,
		0.402118, 0.602212, 0.689668,
		0.913474, -0.315038, -0.257522,
		24.878836, 40.353111, 28.212038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.711033, 41.144367, 28.449125>,  <24.239405, 40.573639, 28.392303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.711033, 41.144367, 28.449125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883768, 40.899975, 28.183731>,  <24.987410, 40.753338, 28.024494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883768, 40.899975, 28.183731>,  <24.711033, 41.144367, 28.449125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883768, 40.899975, 28.183731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006554, 0.737717, -0.675078,
		0.901927, 0.287177, 0.322579,
		0.431839, -0.610985, -0.663485,
		25.013319, 40.716679, 27.984686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237524, 41.470524, 28.220587>,  <24.711033, 41.144367, 28.449125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237524, 41.470524, 28.220587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115398, 41.200069, 27.952372>,  <25.042122, 41.037796, 27.791443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115398, 41.200069, 27.952372>,  <25.237524, 41.470524, 28.220587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115398, 41.200069, 27.952372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151002, 0.729629, -0.666963,
		0.940203, -0.102381, -0.324865,
		-0.305315, -0.676135, -0.670540,
		25.023804, 40.997231, 27.751209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570288, 41.624096, 27.589853>,  <25.237524, 41.470524, 28.220587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570288, 41.624096, 27.589853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222797, 41.438885, 27.519514>,  <25.014303, 41.327759, 27.477310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222797, 41.438885, 27.519514>,  <25.570288, 41.624096, 27.589853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222797, 41.438885, 27.519514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273926, 0.744950, -0.608288,
		0.412650, -0.480267, -0.773992,
		-0.868726, -0.463026, -0.175846,
		24.962179, 41.299976, 27.466761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419392, 42.278687, 27.638874>,  <25.570288, 41.624096, 27.589853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419392, 42.278687, 27.638874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266193, 42.617306, 27.490995>,  <25.174274, 42.820477, 27.402267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266193, 42.617306, 27.490995>,  <25.419392, 42.278687, 27.638874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.266193, 42.617306, 27.490995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499592, 0.146809, 0.853730,
		0.776996, 0.511672, 0.366700,
		-0.382994, 0.846545, -0.369697,
		25.151295, 42.871269, 27.380087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576605, 42.875301, 28.115988>,  <25.419392, 42.278687, 27.638874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576605, 42.875301, 28.115988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243750, 42.849098, 27.895712>,  <25.044037, 42.833378, 27.763546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243750, 42.849098, 27.895712>,  <25.576605, 42.875301, 28.115988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243750, 42.849098, 27.895712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552520, 0.012597, 0.833404,
		-0.047656, 0.997772, -0.046676,
		-0.832136, -0.065506, -0.550689,
		24.994108, 42.829445, 27.730505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171993, 43.320438, 28.157909>,  <25.576605, 42.875301, 28.115988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171993, 43.320438, 28.157909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451035, 43.258160, 28.437653>,  <26.618460, 43.220791, 28.605499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451035, 43.258160, 28.437653>,  <26.171993, 43.320438, 28.157909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451035, 43.258160, 28.437653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613340, -0.634322, 0.470583,
		0.370351, -0.757227, -0.538002,
		0.697605, -0.155697, 0.699360,
		26.660316, 43.211449, 28.647461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284006, 42.597153, 28.260807>,  <26.171993, 43.320438, 28.157909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284006, 42.597153, 28.260807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343021, 42.811153, 28.593554>,  <26.378431, 42.939552, 28.793201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343021, 42.811153, 28.593554>,  <26.284006, 42.597153, 28.260807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343021, 42.811153, 28.593554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705198, -0.532827, 0.467752,
		0.693490, -0.655643, 0.298671,
		0.147538, 0.535003, 0.831868,
		26.387283, 42.971653, 28.843113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982492, 42.478672, 27.824743>,  <26.284006, 42.597153, 28.260807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982492, 42.478672, 27.824743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336357, 42.664757, 27.837111>,  <27.548676, 42.776405, 27.844532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336357, 42.664757, 27.837111>,  <26.982492, 42.478672, 27.824743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336357, 42.664757, 27.837111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040506, 0.010622, 0.999123,
		0.464473, -0.885137, 0.028240,
		0.884660, 0.465210, 0.030919,
		27.601755, 42.804321, 27.846386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626839, 42.249599, 27.466854>,  <26.982492, 42.478672, 27.824743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626839, 42.249599, 27.466854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616989, 42.322693, 27.859995>,  <27.611078, 42.366550, 28.095881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616989, 42.322693, 27.859995>,  <27.626839, 42.249599, 27.466854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616989, 42.322693, 27.859995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006599, -0.983161, 0.182624,
		0.999675, -0.001989, 0.025417,
		-0.024626, 0.182732, 0.982854,
		27.609602, 42.377514, 28.154852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926659, 41.592789, 27.640635>,  <27.626839, 42.249599, 27.466854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926659, 41.592789, 27.640635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821848, 41.703259, 28.010513>,  <27.758961, 41.769543, 28.232441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821848, 41.703259, 28.010513>,  <27.926659, 41.592789, 27.640635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821848, 41.703259, 28.010513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372019, -0.855216, 0.360842,
		0.890474, 0.438556, 0.121348,
		-0.262028, 0.276177, 0.924699,
		27.743240, 41.786110, 28.287924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553480, 41.436779, 28.036087>,  <27.926659, 41.592789, 27.640635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553480, 41.436779, 28.036087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202345, 41.431358, 28.227592>,  <27.991663, 41.428104, 28.342495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202345, 41.431358, 28.227592>,  <28.553480, 41.436779, 28.036087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202345, 41.431358, 28.227592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281094, -0.823923, 0.492076,
		0.387796, 0.566541, 0.727081,
		-0.877839, -0.013553, 0.478764,
		27.938993, 41.427292, 28.371222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634420, 41.522663, 28.800545>,  <28.553480, 41.436779, 28.036087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634420, 41.522663, 28.800545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325182, 41.312344, 28.658640>,  <28.139639, 41.186153, 28.573496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325182, 41.312344, 28.658640>,  <28.634420, 41.522663, 28.800545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325182, 41.312344, 28.658640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247934, -0.765316, 0.593987,
		-0.583823, 0.371252, 0.722027,
		-0.773098, -0.525798, -0.354763,
		28.093252, 41.154606, 28.552212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261753, 41.237854, 29.298470>,  <28.634420, 41.522663, 28.800545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261753, 41.237854, 29.298470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085241, 40.990082, 29.038754>,  <27.979334, 40.841419, 28.882925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085241, 40.990082, 29.038754>,  <28.261753, 41.237854, 29.298470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085241, 40.990082, 29.038754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053367, -0.740381, 0.670066,
		-0.895782, 0.261034, 0.359771,
		-0.441278, -0.619433, -0.649289,
		27.952858, 40.804253, 28.843967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730455, 40.895012, 29.661362>,  <28.261753, 41.237854, 29.298470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730455, 40.895012, 29.661362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786591, 40.678429, 29.329788>,  <27.820271, 40.548477, 29.130844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786591, 40.678429, 29.329788>,  <27.730455, 40.895012, 29.661362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786591, 40.678429, 29.329788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193777, -0.836047, 0.513299,
		-0.970956, 0.088594, -0.222250,
		0.140336, -0.541457, -0.828933,
		27.828691, 40.515991, 29.081108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224051, 40.340832, 29.632782>,  <27.730455, 40.895012, 29.661362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224051, 40.340832, 29.632782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530441, 40.209461, 29.411726>,  <27.714275, 40.130638, 29.279093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530441, 40.209461, 29.411726>,  <27.224051, 40.340832, 29.632782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530441, 40.209461, 29.411726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180725, -0.934992, 0.305168,
		-0.616941, -0.133876, -0.775539,
		0.765978, -0.328430, -0.552640,
		27.760235, 40.110931, 29.245934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927744, 39.749920, 29.185259>,  <27.224051, 40.340832, 29.632782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927744, 39.749920, 29.185259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324995, 39.731316, 29.228210>,  <27.563347, 39.720154, 29.253983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324995, 39.731316, 29.228210>,  <26.927744, 39.749920, 29.185259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324995, 39.731316, 29.228210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097336, -0.837686, 0.537409,
		0.064957, -0.544169, -0.836457,
		0.993129, -0.046509, 0.107381,
		27.622934, 39.717361, 29.260424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988167, 39.078938, 29.053436>,  <26.927744, 39.749920, 29.185259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988167, 39.078938, 29.053436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344910, 39.162384, 29.213968>,  <27.558956, 39.212452, 29.310287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344910, 39.162384, 29.213968>,  <26.988167, 39.078938, 29.053436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344910, 39.162384, 29.213968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024636, -0.863563, 0.503639,
		0.451644, -0.459062, -0.765036,
		0.891858, 0.208618, 0.401332,
		27.612467, 39.224968, 29.334368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443483, 38.478081, 29.039825>,  <26.988167, 39.078938, 29.053436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443483, 38.478081, 29.039825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599102, 38.683853, 29.345505>,  <27.692472, 38.807316, 29.528913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599102, 38.683853, 29.345505>,  <27.443483, 38.478081, 29.039825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599102, 38.683853, 29.345505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025941, -0.823107, 0.567294,
		0.920853, -0.240527, -0.306882,
		0.389046, 0.514433, 0.764200,
		27.715816, 38.838184, 29.574764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912622, 38.011173, 29.349274>,  <27.443483, 38.478081, 29.039825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912622, 38.011173, 29.349274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854298, 38.296417, 29.623562>,  <27.819304, 38.467564, 29.788134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854298, 38.296417, 29.623562>,  <27.912622, 38.011173, 29.349274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854298, 38.296417, 29.623562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038449, -0.696688, 0.716343,
		0.988565, 0.078086, 0.129005,
		-0.145813, 0.713112, 0.685719,
		27.810555, 38.510349, 29.829277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531376, 37.907066, 29.823818>,  <27.912622, 38.011173, 29.349274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531376, 37.907066, 29.823818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268927, 38.103764, 30.052794>,  <28.111456, 38.221783, 30.190178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268927, 38.103764, 30.052794>,  <28.531376, 37.907066, 29.823818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268927, 38.103764, 30.052794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006626, -0.754763, 0.655964,
		0.754623, 0.434188, 0.491961,
		-0.656125, 0.491745, 0.572439,
		28.072088, 38.251286, 30.224525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811466, 37.871956, 30.404959>,  <28.531376, 37.907066, 29.823818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811466, 37.871956, 30.404959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426014, 37.933350, 30.492464>,  <28.194742, 37.970184, 30.544968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426014, 37.933350, 30.492464>,  <28.811466, 37.871956, 30.404959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426014, 37.933350, 30.492464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055811, -0.684985, 0.726416,
		0.261341, 0.712207, 0.651508,
		-0.963632, 0.153481, 0.218764,
		28.136925, 37.979393, 30.558094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757784, 37.885944, 31.057621>,  <28.811466, 37.871956, 30.404959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757784, 37.885944, 31.057621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382429, 37.793865, 30.954514>,  <28.157217, 37.738617, 30.892649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382429, 37.793865, 30.954514>,  <28.757784, 37.885944, 31.057621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382429, 37.793865, 30.954514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040230, -0.668040, 0.743037,
		-0.343241, 0.707625, 0.617618,
		-0.938385, -0.230194, -0.257767,
		28.100914, 37.724808, 30.877184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312218, 37.906155, 31.745380>,  <28.757784, 37.885944, 31.057621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312218, 37.906155, 31.745380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078747, 37.701340, 31.493305>,  <27.938663, 37.578449, 31.342060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078747, 37.701340, 31.493305>,  <28.312218, 37.906155, 31.745380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078747, 37.701340, 31.493305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267345, -0.611647, 0.744591,
		-0.766711, 0.603079, 0.220114,
		-0.583679, -0.512039, -0.630186,
		27.903643, 37.547729, 31.304249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541388, 37.958733, 32.004108>,  <28.312218, 37.906155, 31.745380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541388, 37.958733, 32.004108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577679, 37.634354, 31.772890>,  <27.599453, 37.439728, 31.634159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577679, 37.634354, 31.772890>,  <27.541388, 37.958733, 32.004108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577679, 37.634354, 31.772890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148535, -0.584962, 0.797343,
		-0.984737, 0.013520, -0.173525,
		0.090726, -0.810948, -0.578042,
		27.604897, 37.391068, 31.599478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962870, 37.547935, 32.126289>,  <27.541388, 37.958733, 32.004108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962870, 37.547935, 32.126289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223898, 37.285461, 31.974722>,  <27.380514, 37.127975, 31.883781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223898, 37.285461, 31.974722>,  <26.962870, 37.547935, 32.126289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223898, 37.285461, 31.974722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028291, -0.478618, 0.877567,
		-0.757202, -0.583392, -0.293767,
		0.652568, -0.656184, -0.378915,
		27.419668, 37.088608, 31.861048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660194, 36.875946, 32.177715>,  <26.962870, 37.547935, 32.126289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660194, 36.875946, 32.177715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046515, 36.783955, 32.129807>,  <27.278307, 36.728760, 32.101063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046515, 36.783955, 32.129807>,  <26.660194, 36.875946, 32.177715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046515, 36.783955, 32.129807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073885, -0.686834, 0.723049,
		-0.248545, -0.689470, -0.680335,
		0.965799, -0.229977, -0.119767,
		27.336254, 36.714962, 32.093876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627092, 36.215698, 32.395634>,  <26.660194, 36.875946, 32.177715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627092, 36.215698, 32.395634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022163, 36.275116, 32.415333>,  <27.259207, 36.310768, 32.427151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022163, 36.275116, 32.415333>,  <26.627092, 36.215698, 32.395634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022163, 36.275116, 32.415333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059596, -0.647976, 0.759326,
		0.144706, -0.747035, -0.648845,
		0.987678, 0.148548, 0.049245,
		27.318466, 36.319679, 32.430107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009663, 35.481564, 32.541481>,  <26.627092, 36.215698, 32.395634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009663, 35.481564, 32.541481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274530, 35.759499, 32.653721>,  <27.433451, 35.926258, 32.721066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274530, 35.759499, 32.653721>,  <27.009663, 35.481564, 32.541481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274530, 35.759499, 32.653721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200238, -0.524907, 0.827271,
		0.722105, -0.491607, -0.486710,
		0.662169, 0.694835, 0.280599,
		27.473181, 35.967949, 32.737900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700731, 35.213657, 32.451260>,  <27.009663, 35.481564, 32.541481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700731, 35.213657, 32.451260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727810, 35.509617, 32.718983>,  <27.744057, 35.687191, 32.879616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727810, 35.509617, 32.718983>,  <27.700731, 35.213657, 32.451260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727810, 35.509617, 32.718983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333641, -0.649011, 0.683716,
		0.940266, 0.177023, -0.290795,
		0.067696, 0.739897, 0.669305,
		27.748119, 35.731586, 32.919773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161102, 35.025620, 32.868206>,  <27.700731, 35.213657, 32.451260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161102, 35.025620, 32.868206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999474, 35.312893, 33.094810>,  <27.902496, 35.485256, 33.230774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999474, 35.312893, 33.094810>,  <28.161102, 35.025620, 32.868206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999474, 35.312893, 33.094810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208704, -0.530604, 0.821524,
		0.890599, 0.450190, 0.064515,
		-0.404074, 0.718184, 0.566512,
		27.878252, 35.528347, 33.264763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709000, 35.115395, 33.383930>,  <28.161102, 35.025620, 32.868206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709000, 35.115395, 33.383930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352940, 35.247944, 33.509037>,  <28.139303, 35.327473, 33.584099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352940, 35.247944, 33.509037>,  <28.709000, 35.115395, 33.383930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352940, 35.247944, 33.509037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121135, -0.489600, 0.863492,
		0.439272, 0.806524, 0.395676,
		-0.890150, 0.331377, 0.312765,
		28.085896, 35.347359, 33.602867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658773, 35.569283, 34.048313>,  <28.709000, 35.115395, 33.383930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658773, 35.569283, 34.048313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337864, 35.338676, 33.986359>,  <28.145319, 35.200314, 33.949184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337864, 35.338676, 33.986359>,  <28.658773, 35.569283, 34.048313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337864, 35.338676, 33.986359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266299, -0.577851, 0.771474,
		-0.534269, 0.577686, 0.617119,
		-0.802273, -0.576513, -0.154891,
		28.097181, 35.165722, 33.939892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441225, 35.381123, 34.698486>,  <28.658773, 35.569283, 34.048313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441225, 35.381123, 34.698486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273529, 35.109497, 34.457455>,  <28.172913, 34.946522, 34.312836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273529, 35.109497, 34.457455>,  <28.441225, 35.381123, 34.698486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273529, 35.109497, 34.457455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006075, -0.665811, 0.746096,
		-0.907856, 0.309132, 0.283259,
		-0.419238, -0.679068, -0.602583,
		28.147758, 34.905777, 34.276680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647163, 35.100983, 35.378155>,  <28.441225, 35.381123, 34.698486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647163, 35.100983, 35.378155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625704, 35.466923, 35.218071>,  <28.612829, 35.686489, 35.122021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625704, 35.466923, 35.218071>,  <28.647163, 35.100983, 35.378155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625704, 35.466923, 35.218071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344201, 0.359278, 0.867436,
		0.937362, 0.184287, 0.295619,
		-0.053648, 0.914854, -0.400205,
		28.609610, 35.741379, 35.098011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129559, 34.447689, 35.429024>,  <28.647163, 35.100983, 35.378155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129559, 34.447689, 35.429024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007423, 34.194416, 35.713516>,  <28.934141, 34.042450, 35.884212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007423, 34.194416, 35.713516>,  <29.129559, 34.447689, 35.429024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007423, 34.194416, 35.713516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952062, -0.188401, 0.241005,
		-0.018605, 0.750720, 0.660358,
		-0.305339, -0.633186, 0.711227,
		28.915821, 34.004459, 35.926884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111631, 34.124741, 34.697037>,  <29.129559, 34.447689, 35.429024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111631, 34.124741, 34.697037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366589, 34.355640, 34.492874>,  <29.519564, 34.494179, 34.370377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366589, 34.355640, 34.492874>,  <29.111631, 34.124741, 34.697037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366589, 34.355640, 34.492874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504924, 0.187460, 0.842562,
		0.582050, -0.794758, -0.171983,
		0.637393, 0.577252, -0.510403,
		29.557806, 34.528816, 34.339752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800919, 33.954422, 34.879936>,  <29.111631, 34.124741, 34.697037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800919, 33.954422, 34.879936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739117, 34.333523, 34.768291>,  <29.702036, 34.560982, 34.701305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739117, 34.333523, 34.768291>,  <29.800919, 33.954422, 34.879936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739117, 34.333523, 34.768291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271488, 0.312355, 0.910345,
		0.949959, 0.064880, -0.305563,
		-0.154507, 0.947747, -0.279111,
		29.692764, 34.617847, 34.684559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352898, 34.408825, 34.766285>,  <29.800919, 33.954422, 34.879936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352898, 34.408825, 34.766285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025555, 34.582626, 34.916748>,  <29.829149, 34.686905, 35.007027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025555, 34.582626, 34.916748>,  <30.352898, 34.408825, 34.766285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025555, 34.582626, 34.916748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441284, 0.055754, 0.895634,
		0.368182, 0.898944, -0.237365,
		-0.818359, 0.434502, 0.376162,
		29.780046, 34.712978, 35.029598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376694, 35.176483, 35.074314>,  <30.352898, 34.408825, 34.766285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376694, 35.176483, 35.074314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108450, 34.933430, 35.244518>,  <29.947504, 34.787598, 35.346642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108450, 34.933430, 35.244518>,  <30.376694, 35.176483, 35.074314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108450, 34.933430, 35.244518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418140, 0.164170, 0.893424,
		-0.612733, 0.777063, 0.143983,
		-0.670610, -0.607635, 0.425514,
		29.907267, 34.751141, 35.372173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111128, 35.354797, 35.699745>,  <30.376694, 35.176483, 35.074314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111128, 35.354797, 35.699745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059795, 34.960506, 35.743343>,  <30.028996, 34.723934, 35.769501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059795, 34.960506, 35.743343>,  <30.111128, 35.354797, 35.699745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059795, 34.960506, 35.743343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336499, 0.060102, 0.939764,
		-0.932898, 0.157276, 0.323983,
		-0.128330, -0.985724, 0.108992,
		30.021296, 34.664787, 35.776039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752516, 35.257957, 36.314781>,  <30.111128, 35.354797, 35.699745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752516, 35.257957, 36.314781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987534, 34.957409, 36.194630>,  <30.128544, 34.777081, 36.122540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987534, 34.957409, 36.194630>,  <29.752516, 35.257957, 36.314781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987534, 34.957409, 36.194630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389571, -0.062704, 0.918859,
		-0.709244, -0.656888, 0.255874,
		0.587544, -0.751376, -0.300377,
		30.163797, 34.731995, 36.104515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782015, 34.744499, 36.870808>,  <29.752516, 35.257957, 36.314781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782015, 34.744499, 36.870808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100990, 34.697891, 36.633991>,  <30.292376, 34.669926, 36.491901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100990, 34.697891, 36.633991>,  <29.782015, 34.744499, 36.870808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100990, 34.697891, 36.633991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598062, 0.022391, 0.801137,
		-0.080093, -0.992936, 0.087543,
		0.797437, -0.116522, -0.592044,
		30.340221, 34.662933, 36.456379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155861, 34.250805, 37.183083>,  <29.782015, 34.744499, 36.870808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155861, 34.250805, 37.183083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422283, 34.436668, 36.949688>,  <30.582136, 34.548187, 36.809650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422283, 34.436668, 36.949688>,  <30.155861, 34.250805, 37.183083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422283, 34.436668, 36.949688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650788, 0.020235, 0.758990,
		0.364482, -0.885256, -0.288920,
		0.666054, 0.464664, -0.583489,
		30.622099, 34.576069, 36.774643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773804, 33.889225, 37.187706>,  <30.155861, 34.250805, 37.183083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773804, 33.889225, 37.187706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854557, 34.262989, 37.070324>,  <30.903009, 34.487247, 36.999893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854557, 34.262989, 37.070324>,  <30.773804, 33.889225, 37.187706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854557, 34.262989, 37.070324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646901, 0.097749, 0.756283,
		0.735365, -0.342520, -0.584737,
		0.201885, 0.934412, -0.293458,
		30.915123, 34.543312, 36.982288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518112, 34.047207, 37.228031>,  <30.773804, 33.889225, 37.187706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518112, 34.047207, 37.228031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325027, 34.396801, 37.250420>,  <31.209177, 34.606560, 37.263851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325027, 34.396801, 37.250420>,  <31.518112, 34.047207, 37.228031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325027, 34.396801, 37.250420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658255, 0.319920, 0.681434,
		0.577659, 0.365780, -0.729736,
		-0.482712, 0.873989, 0.055971,
		31.180214, 34.658997, 37.267212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107304, 34.408649, 37.522144>,  <31.518112, 34.047207, 37.228031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107304, 34.408649, 37.522144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808273, 34.674175, 37.513355>,  <31.628855, 34.833492, 37.508083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808273, 34.674175, 37.513355>,  <32.107304, 34.408649, 37.522144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808273, 34.674175, 37.513355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200097, 0.256641, 0.945567,
		0.633319, 0.702485, -0.324686,
		-0.747575, 0.663814, -0.021970,
		31.584002, 34.873318, 37.506763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440277, 35.090397, 37.745495>,  <32.107304, 34.408649, 37.522144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440277, 35.090397, 37.745495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051785, 35.142303, 37.825359>,  <31.818689, 35.173447, 37.873280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051785, 35.142303, 37.825359>,  <32.440277, 35.090397, 37.745495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051785, 35.142303, 37.825359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231670, 0.320913, 0.918338,
		0.055098, 0.938176, -0.341745,
		-0.971233, 0.129771, 0.199666,
		31.760414, 35.181236, 37.885258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321869, 35.771358, 38.021519>,  <32.440277, 35.090397, 37.745495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321869, 35.771358, 38.021519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012108, 35.557369, 38.156639>,  <31.826252, 35.428978, 38.237713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012108, 35.557369, 38.156639>,  <32.321869, 35.771358, 38.021519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012108, 35.557369, 38.156639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197308, 0.303088, 0.932313,
		-0.601145, 0.788634, -0.129157,
		-0.774399, -0.534972, 0.337804,
		31.779789, 35.396877, 38.257980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025410, 36.140614, 38.492428>,  <32.321869, 35.771358, 38.021519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025410, 36.140614, 38.492428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875683, 35.783134, 38.591381>,  <31.785847, 35.568649, 38.650753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875683, 35.783134, 38.591381>,  <32.025410, 36.140614, 38.492428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875683, 35.783134, 38.591381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194145, 0.185339, 0.963305,
		-0.906750, 0.408610, 0.104130,
		-0.374316, -0.893693, 0.247386,
		31.763388, 35.515026, 38.665596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607565, 36.271133, 39.066727>,  <32.025410, 36.140614, 38.492428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607565, 36.271133, 39.066727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653372, 35.873779, 39.063320>,  <31.680857, 35.635368, 39.061275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653372, 35.873779, 39.063320>,  <31.607565, 36.271133, 39.066727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653372, 35.873779, 39.063320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070456, -0.000432, 0.997515,
		-0.990920, -0.114835, 0.069941,
		0.114519, -0.993385, -0.008519,
		31.687727, 35.575764, 39.060764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276861, 36.139408, 39.674538>,  <31.607565, 36.271133, 39.066727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276861, 36.139408, 39.674538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522430, 35.836174, 39.586540>,  <31.669773, 35.654232, 39.533741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522430, 35.836174, 39.586540>,  <31.276861, 36.139408, 39.674538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522430, 35.836174, 39.586540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036995, -0.250756, 0.967343,
		-0.788497, -0.602015, -0.125900,
		0.613925, -0.758090, -0.219992,
		31.706608, 35.608746, 39.520542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928059, 35.532413, 39.858269>,  <31.276861, 36.139408, 39.674538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928059, 35.532413, 39.858269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327034, 35.504066, 39.862160>,  <31.566420, 35.487061, 39.864494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327034, 35.504066, 39.862160>,  <30.928059, 35.532413, 39.858269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327034, 35.504066, 39.862160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016407, -0.094224, 0.995416,
		-0.069612, -0.993026, -0.095146,
		0.997439, -0.070854, 0.009733,
		31.626266, 35.482807, 39.865078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079254, 35.090221, 40.303814>,  <30.928059, 35.532413, 39.858269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079254, 35.090221, 40.303814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455843, 35.216358, 40.256172>,  <31.681797, 35.292042, 40.227585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455843, 35.216358, 40.256172>,  <31.079254, 35.090221, 40.303814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455843, 35.216358, 40.256172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173224, -0.149487, 0.973472,
		0.289171, -0.937131, -0.195363,
		0.941474, 0.315341, -0.119106,
		31.738285, 35.310959, 40.220440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409931, 34.557953, 40.619026>,  <31.079254, 35.090221, 40.303814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409931, 34.557953, 40.619026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620211, 34.897697, 40.600143>,  <31.746378, 35.101543, 40.588814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620211, 34.897697, 40.600143>,  <31.409931, 34.557953, 40.619026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620211, 34.897697, 40.600143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067830, 0.013468, 0.997606,
		0.847962, -0.527642, -0.050531,
		0.525698, 0.849360, -0.047210,
		31.777920, 35.152504, 40.585979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896296, 34.485924, 41.164898>,  <31.409931, 34.557953, 40.619026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896296, 34.485924, 41.164898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892250, 34.880215, 41.097687>,  <31.889822, 35.116791, 41.057362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892250, 34.880215, 41.097687>,  <31.896296, 34.485924, 41.164898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892250, 34.880215, 41.097687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108127, 0.168125, 0.979818,
		0.994086, -0.008258, -0.108284,
		-0.010113, 0.985731, -0.168023,
		31.889215, 35.175934, 41.047279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499382, 34.751686, 41.640785>,  <31.896296, 34.485924, 41.164898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499382, 34.751686, 41.640785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252487, 35.054138, 41.553802>,  <32.104351, 35.235611, 41.501614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252487, 35.054138, 41.553802>,  <32.499382, 34.751686, 41.640785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252487, 35.054138, 41.553802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025288, 0.295309, 0.955067,
		0.786372, 0.584003, -0.201396,
		-0.617236, 0.756131, -0.217454,
		32.067318, 35.280979, 41.488567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732712, 35.286991, 42.094402>,  <32.499382, 34.751686, 41.640785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732712, 35.286991, 42.094402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383366, 35.416695, 41.949028>,  <32.173759, 35.494518, 41.861805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383366, 35.416695, 41.949028>,  <32.732712, 35.286991, 42.094402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383366, 35.416695, 41.949028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198260, 0.444888, 0.873366,
		0.444888, 0.834823, -0.324262,
		-0.873366, 0.324262, -0.363437,
		32.121357, 35.513973, 41.839996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734966, 35.996803, 42.226707>,  <32.732712, 35.286991, 42.094402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734966, 35.996803, 42.226707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364494, 35.847580, 42.204700>,  <32.142212, 35.758045, 42.191498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364494, 35.847580, 42.204700>,  <32.734966, 35.996803, 42.226707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364494, 35.847580, 42.204700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183922, 0.319527, 0.929556,
		-0.329199, 0.871051, -0.364551,
		-0.926175, -0.373058, -0.055018,
		32.086643, 35.735664, 42.188194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428665, 36.447952, 42.582069>,  <32.734966, 35.996803, 42.226707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428665, 36.447952, 42.582069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162628, 36.149284, 42.586735>,  <32.003006, 35.970085, 42.589535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162628, 36.149284, 42.586735>,  <32.428665, 36.447952, 42.582069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162628, 36.149284, 42.586735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138473, 0.138660, 0.980612,
		-0.733809, 0.650584, -0.195615,
		-0.665094, -0.746669, 0.011662,
		31.963100, 35.925285, 42.590233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818684, 36.718342, 42.827755>,  <32.428665, 36.447952, 42.582069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818684, 36.718342, 42.827755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801689, 36.328999, 42.917889>,  <31.791492, 36.095394, 42.971970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801689, 36.328999, 42.917889>,  <31.818684, 36.718342, 42.827755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801689, 36.328999, 42.917889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266689, 0.228400, 0.936328,
		-0.962846, -0.020314, -0.269286,
		-0.042484, -0.973355, 0.225332,
		31.788944, 36.036991, 42.985489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270565, 36.551254, 43.293118>,  <31.818684, 36.718342, 42.827755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270565, 36.551254, 43.293118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504118, 36.229061, 43.333687>,  <31.644249, 36.035748, 43.358028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504118, 36.229061, 43.333687>,  <31.270565, 36.551254, 43.293118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504118, 36.229061, 43.333687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235509, -0.048495, 0.970662,
		-0.776929, -0.590638, -0.218013,
		0.583882, -0.805479, 0.101423,
		31.679283, 35.987419, 43.364113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012928, 36.114445, 43.756744>,  <31.270565, 36.551254, 43.293118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012928, 36.114445, 43.756744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391722, 35.988472, 43.731319>,  <31.618998, 35.912888, 43.716064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391722, 35.988472, 43.731319>,  <31.012928, 36.114445, 43.756744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391722, 35.988472, 43.731319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094896, 0.085151, 0.991839,
		-0.306950, -0.945287, 0.110522,
		0.946983, -0.314933, -0.063567,
		31.675817, 35.893993, 43.712250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101688, 35.603458, 44.220795>,  <31.012928, 36.114445, 43.756744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101688, 35.603458, 44.220795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477741, 35.732780, 44.177666>,  <31.703373, 35.810375, 44.151791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477741, 35.732780, 44.177666>,  <31.101688, 35.603458, 44.220795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477741, 35.732780, 44.177666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119974, -0.017837, 0.992617,
		0.318998, -0.946126, -0.055557,
		0.940131, 0.323308, -0.107821,
		31.759781, 35.829773, 44.145321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338310, 35.343361, 44.836754>,  <31.101688, 35.603458, 44.220795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338310, 35.343361, 44.836754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620842, 35.594238, 44.705463>,  <31.790361, 35.744766, 44.626690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620842, 35.594238, 44.705463>,  <31.338310, 35.343361, 44.836754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620842, 35.594238, 44.705463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373882, 0.063187, 0.925322,
		0.601094, -0.776297, -0.189865,
		0.706327, 0.627193, -0.328224,
		31.832741, 35.782394, 44.606995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050392, 35.117622, 45.222298>,  <31.338310, 35.343361, 44.836754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050392, 35.117622, 45.222298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048176, 35.495316, 45.090603>,  <32.046844, 35.721931, 45.011585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048176, 35.495316, 45.090603>,  <32.050392, 35.117622, 45.222298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048176, 35.495316, 45.090603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234844, 0.321266, 0.917407,
		0.972017, -0.072233, -0.223528,
		-0.005545, 0.944230, -0.329240,
		32.046513, 35.778584, 44.991833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677921, 35.427071, 45.428886>,  <32.050392, 35.117622, 45.222298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677921, 35.427071, 45.428886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436352, 35.742645, 45.383522>,  <32.291412, 35.931988, 45.356304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436352, 35.742645, 45.383522>,  <32.677921, 35.427071, 45.428886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436352, 35.742645, 45.383522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187081, 0.278627, 0.942002,
		0.774778, 0.547677, -0.315863,
		-0.603921, 0.788934, -0.113414,
		32.255177, 35.979324, 45.349499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030926, 36.060757, 45.656689>,  <32.677921, 35.427071, 45.428886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030926, 36.060757, 45.656689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652042, 36.188969, 45.659882>,  <32.424713, 36.265896, 45.661797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652042, 36.188969, 45.659882>,  <33.030926, 36.060757, 45.656689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652042, 36.188969, 45.659882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143129, 0.400412, 0.905088,
		0.286913, 0.858446, -0.425149,
		-0.947204, 0.320532, 0.007985,
		32.367882, 36.285130, 45.662277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054810, 36.871807, 45.751572>,  <33.030926, 36.060757, 45.656689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054810, 36.871807, 45.751572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693977, 36.750549, 45.874439>,  <32.477478, 36.677795, 45.948158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693977, 36.750549, 45.874439>,  <33.054810, 36.871807, 45.751572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693977, 36.750549, 45.874439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071460, 0.597003, 0.799050,
		-0.425607, 0.742759, -0.516883,
		-0.902082, -0.303144, 0.307166,
		32.423351, 36.659607, 45.966591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716923, 37.508324, 45.816505>,  <33.054810, 36.871807, 45.751572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716923, 37.508324, 45.816505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563332, 37.213184, 46.038544>,  <32.471176, 37.036098, 46.171768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563332, 37.213184, 46.038544>,  <32.716923, 37.508324, 45.816505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563332, 37.213184, 46.038544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012690, 0.596911, 0.802207,
		-0.923254, 0.315076, -0.219839,
		-0.383981, -0.737851, 0.555099,
		32.448139, 36.991829, 46.205074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063023, 37.820808, 46.062599>,  <32.716923, 37.508324, 45.816505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063023, 37.820808, 46.062599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188313, 37.517754, 46.291637>,  <32.263489, 37.335918, 46.429062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188313, 37.517754, 46.291637>,  <32.063023, 37.820808, 46.062599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188313, 37.517754, 46.291637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128034, 0.563745, 0.815965,
		-0.941007, -0.328896, 0.079578,
		0.313230, -0.757640, 0.572598,
		32.282280, 37.290462, 46.463417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581385, 37.932343, 46.576408>,  <32.063023, 37.820808, 46.062599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581385, 37.932343, 46.576408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844679, 37.681904, 46.743614>,  <32.002655, 37.531643, 46.843937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844679, 37.681904, 46.743614>,  <31.581385, 37.932343, 46.576408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844679, 37.681904, 46.743614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055934, 0.594407, 0.802216,
		-0.750733, -0.504664, 0.426278,
		0.658233, -0.626094, 0.418014,
		32.042149, 37.494076, 46.869019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307940, 37.632973, 47.352875>,  <31.581385, 37.932343, 46.576408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307940, 37.632973, 47.352875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704929, 37.586922, 47.369553>,  <31.943123, 37.559292, 47.379559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704929, 37.586922, 47.369553>,  <31.307940, 37.632973, 47.352875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704929, 37.586922, 47.369553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006056, 0.386283, 0.922360,
		-0.122296, -0.915167, 0.384074,
		0.992475, -0.115126, 0.041699,
		32.002670, 37.552383, 47.382061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421888, 37.509087, 48.071445>,  <31.307940, 37.632973, 47.352875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421888, 37.509087, 48.071445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796993, 37.584068, 47.954510>,  <32.022057, 37.629055, 47.884350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796993, 37.584068, 47.954510>,  <31.421888, 37.509087, 48.071445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796993, 37.584068, 47.954510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221751, 0.324628, 0.919480,
		0.267256, -0.927082, 0.262857,
		0.937764, 0.187448, -0.292340,
		32.078323, 37.640305, 47.866806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887783, 37.197025, 48.523895>,  <31.421888, 37.509087, 48.071445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887783, 37.197025, 48.523895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100510, 37.484573, 48.344830>,  <32.228146, 37.657101, 48.237389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100510, 37.484573, 48.344830>,  <31.887783, 37.197025, 48.523895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100510, 37.484573, 48.344830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450286, 0.207665, 0.868400,
		0.717228, -0.663405, -0.213256,
		0.531814, 0.718867, -0.447665,
		32.260056, 37.700233, 48.210529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503963, 37.059559, 48.802212>,  <31.887783, 37.197025, 48.523895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503963, 37.059559, 48.802212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487587, 37.441639, 48.684967>,  <32.477760, 37.670887, 48.614620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487587, 37.441639, 48.684967>,  <32.503963, 37.059559, 48.802212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487587, 37.441639, 48.684967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465629, 0.277801, 0.840248,
		0.884032, -0.102079, -0.456143,
		-0.040945, 0.955200, -0.293116,
		32.475304, 37.728199, 48.597031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112881, 37.248959, 48.951725>,  <32.503963, 37.059559, 48.802212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112881, 37.248959, 48.951725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936596, 37.601120, 48.881680>,  <32.830826, 37.812416, 48.839653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936596, 37.601120, 48.881680>,  <33.112881, 37.248959, 48.951725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936596, 37.601120, 48.881680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490472, 0.399565, 0.774457,
		0.751804, 0.255424, -0.607906,
		-0.440713, 0.880401, -0.175116,
		32.804382, 37.865242, 48.829144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648602, 37.688358, 48.916370>,  <33.112881, 37.248959, 48.951725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648602, 37.688358, 48.916370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328606, 37.924206, 48.960861>,  <33.136608, 38.065712, 48.987556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328606, 37.924206, 48.960861>,  <33.648602, 37.688358, 48.916370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328606, 37.924206, 48.960861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388137, 0.367159, 0.845307,
		0.457567, 0.719408, -0.522575,
		-0.799989, 0.589615, 0.111230,
		33.088608, 38.101089, 48.994228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915833, 38.367512, 48.999428>,  <33.648602, 37.688358, 48.916370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915833, 38.367512, 48.999428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546852, 38.364395, 49.153847>,  <33.325466, 38.362526, 49.246498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546852, 38.364395, 49.153847>,  <33.915833, 38.367512, 48.999428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546852, 38.364395, 49.153847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326498, 0.518011, 0.790610,
		-0.206135, 0.855339, -0.475294,
		-0.922447, -0.007790, 0.386046,
		33.270119, 38.362057, 49.269661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821495, 38.991196, 49.403248>,  <33.915833, 38.367512, 48.999428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821495, 38.991196, 49.403248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532410, 38.757149, 49.550396>,  <33.358959, 38.616722, 49.638687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532410, 38.757149, 49.550396>,  <33.821495, 38.991196, 49.403248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532410, 38.757149, 49.550396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002309, 0.530213, 0.847861,
		-0.691148, 0.613606, -0.381839,
		-0.722709, -0.585116, 0.367873,
		33.315598, 38.581615, 49.660759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258205, 39.457664, 49.608234>,  <33.821495, 38.991196, 49.403248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258205, 39.457664, 49.608234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253471, 39.111305, 49.808266>,  <33.250633, 38.903488, 49.928284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253471, 39.111305, 49.808266>,  <33.258205, 39.457664, 49.608234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253471, 39.111305, 49.808266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167622, 0.491321, 0.854697,
		-0.985780, 0.093936, 0.139331,
		-0.011831, -0.865898, 0.500081,
		33.249924, 38.851536, 49.958290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673584, 39.519402, 50.001156>,  <33.258205, 39.457664, 49.608234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673584, 39.519402, 50.001156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935825, 39.258923, 50.154057>,  <33.093170, 39.102634, 50.245796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935825, 39.258923, 50.154057>,  <32.673584, 39.519402, 50.001156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935825, 39.258923, 50.154057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109173, 0.582656, 0.805353,
		-0.747169, -0.486263, 0.453086,
		0.655607, -0.651199, 0.382255,
		33.132507, 39.063564, 50.268734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757210, 39.815578, 50.676128>,  <32.673584, 39.519402, 50.001156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757210, 39.815578, 50.676128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035034, 39.527836, 50.671993>,  <33.201729, 39.355190, 50.669510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035034, 39.527836, 50.671993>,  <32.757210, 39.815578, 50.676128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035034, 39.527836, 50.671993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409055, 0.383048, 0.828220,
		-0.591827, -0.579479, 0.560308,
		0.694561, -0.719360, -0.010341,
		33.243401, 39.312027, 50.668892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634781, 39.243519, 51.100765>,  <32.757210, 39.815578, 50.676128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634781, 39.243519, 51.100765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019085, 39.346802, 51.060242>,  <33.249668, 39.408772, 51.035927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019085, 39.346802, 51.060242>,  <32.634781, 39.243519, 51.100765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019085, 39.346802, 51.060242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039642, 0.233680, 0.971505,
		0.274533, -0.937400, 0.214274,
		0.960760, 0.258216, -0.101314,
		33.307312, 39.424263, 51.029846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033428, 38.730999, 51.538986>,  <32.634781, 39.243519, 51.100765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033428, 38.730999, 51.538986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139694, 39.111198, 51.474525>,  <33.203453, 39.339317, 51.435848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139694, 39.111198, 51.474525>,  <33.033428, 38.730999, 51.538986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139694, 39.111198, 51.474525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317403, 0.244072, 0.916343,
		0.910317, -0.192290, 0.366534,
		0.265664, 0.950502, -0.161150,
		33.219395, 39.396347, 51.426182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429710, 38.991692, 52.074398>,  <33.033428, 38.730999, 51.538986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429710, 38.991692, 52.074398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224693, 39.293499, 51.910446>,  <33.101681, 39.474583, 51.812077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224693, 39.293499, 51.910446>,  <33.429710, 38.991692, 52.074398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224693, 39.293499, 51.910446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461545, 0.160436, 0.872489,
		0.724068, 0.636367, 0.266013,
		-0.512545, 0.754518, -0.409878,
		33.070930, 39.519855, 51.787483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756828, 38.445919, 51.609554>,  <33.429710, 38.991692, 52.074398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756828, 38.445919, 51.609554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101551, 38.243385, 51.621601>,  <34.308384, 38.121864, 51.628830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101551, 38.243385, 51.621601>,  <33.756828, 38.445919, 51.609554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101551, 38.243385, 51.621601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326093, 0.598547, 0.731714,
		-0.388520, -0.620777, 0.680946,
		0.861809, -0.506337, 0.030117,
		34.360092, 38.091484, 51.630634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023464, 38.030094, 52.250534>,  <33.756828, 38.445919, 51.609554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023464, 38.030094, 52.250534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344044, 38.191772, 52.074211>,  <34.536392, 38.288780, 51.968418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344044, 38.191772, 52.074211>,  <34.023464, 38.030094, 52.250534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344044, 38.191772, 52.074211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058274, 0.680775, 0.730171,
		0.595219, -0.610882, 0.522052,
		0.801448, 0.404190, -0.440809,
		34.584476, 38.313030, 51.941967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620373, 38.144306, 52.763466>,  <34.023464, 38.030094, 52.250534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620373, 38.144306, 52.763466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855366, 37.836445, 52.863464>,  <34.996361, 37.651726, 52.923466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855366, 37.836445, 52.863464>,  <34.620373, 38.144306, 52.763466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855366, 37.836445, 52.863464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609710, -0.624104, -0.488619,
		0.532093, 0.134626, -0.835914,
		0.587478, -0.769656, 0.249999,
		35.031609, 37.605549, 52.938465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050213, 37.668285, 52.232082>,  <34.620373, 38.144306, 52.763466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050213, 37.668285, 52.232082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919613, 37.476772, 52.558067>,  <34.841251, 37.361866, 52.753658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919613, 37.476772, 52.558067>,  <35.050213, 37.668285, 52.232082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919613, 37.476772, 52.558067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511835, -0.635301, -0.578289,
		0.794620, -0.605940, -0.037629,
		-0.326503, -0.478779, 0.814964,
		34.821663, 37.333138, 52.802555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003510, 36.992249, 51.971382>,  <35.050213, 37.668285, 52.232082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003510, 36.992249, 51.971382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764099, 36.672569, 51.993477>,  <34.620453, 36.480762, 52.006733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764099, 36.672569, 51.993477>,  <35.003510, 36.992249, 51.971382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764099, 36.672569, 51.993477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006422, -0.073732, -0.997257,
		0.801077, -0.596531, 0.049263,
		-0.598527, -0.799196, 0.055234,
		34.584541, 36.432812, 52.010048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308666, 36.405746, 51.617825>,  <35.003510, 36.992249, 51.971382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308666, 36.405746, 51.617825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910652, 36.368340, 51.631458>,  <34.671844, 36.345898, 51.639637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910652, 36.368340, 51.631458>,  <35.308666, 36.405746, 51.617825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910652, 36.368340, 51.631458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048243, 0.153633, -0.986950,
		0.087052, -0.983694, -0.157381,
		-0.995035, -0.093508, 0.034082,
		34.612141, 36.340286, 51.641682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998405, 35.823357, 51.256229>,  <35.308666, 36.405746, 51.617825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998405, 35.823357, 51.256229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761402, 36.145435, 51.246548>,  <34.619198, 36.338684, 51.240738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761402, 36.145435, 51.246548>,  <34.998405, 35.823357, 51.256229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761402, 36.145435, 51.246548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152392, 0.082533, -0.984868,
		-0.791017, -0.587233, -0.171608,
		-0.592510, 0.805199, -0.024205,
		34.583649, 36.386993, 51.239285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413223, 35.771408, 50.820164>,  <34.998405, 35.823357, 51.256229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413223, 35.771408, 50.820164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514267, 36.157608, 50.845451>,  <34.574894, 36.389328, 50.860622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514267, 36.157608, 50.845451>,  <34.413223, 35.771408, 50.820164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514267, 36.157608, 50.845451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203116, 0.010965, -0.979093,
		-0.946010, 0.260164, -0.193339,
		0.252605, 0.965502, 0.063216,
		34.590050, 36.447258, 50.864418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182297, 36.042416, 50.223541>,  <34.413223, 35.771408, 50.820164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182297, 36.042416, 50.223541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462166, 36.304985, 50.336376>,  <34.630085, 36.462528, 50.404076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462166, 36.304985, 50.336376>,  <34.182297, 36.042416, 50.223541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462166, 36.304985, 50.336376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411419, -0.047376, -0.910214,
		-0.584122, 0.752904, -0.303212,
		0.699669, 0.656423, 0.282086,
		34.672066, 36.501911, 50.421001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209137, 36.626766, 49.710918>,  <34.182297, 36.042416, 50.223541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209137, 36.626766, 49.710918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567181, 36.632973, 49.889153>,  <34.782005, 36.636696, 49.996094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567181, 36.632973, 49.889153>,  <34.209137, 36.626766, 49.710918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567181, 36.632973, 49.889153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444978, -0.093702, -0.890626,
		0.027934, 0.995479, -0.090777,
		0.895106, 0.015514, 0.445584,
		34.835712, 36.637627, 50.022827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615643, 37.161015, 49.425446>,  <34.209137, 36.626766, 49.710918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615643, 37.161015, 49.425446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882969, 36.904865, 49.576851>,  <35.043365, 36.751175, 49.667694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882969, 36.904865, 49.576851>,  <34.615643, 37.161015, 49.425446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882969, 36.904865, 49.576851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421077, -0.093801, -0.902162,
		0.613227, 0.762313, 0.206959,
		0.668316, -0.640376, 0.378514,
		35.083466, 36.712753, 49.690407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302265, 37.470535, 49.222393>,  <34.615643, 37.161015, 49.425446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302265, 37.470535, 49.222393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331631, 37.078960, 49.298595>,  <35.349251, 36.844017, 49.344315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331631, 37.078960, 49.298595>,  <35.302265, 37.470535, 49.222393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331631, 37.078960, 49.298595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551134, -0.119374, -0.825834,
		0.831181, 0.165623, 0.530762,
		0.073418, -0.978938, 0.190501,
		35.353657, 36.785278, 49.355747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941540, 37.256008, 48.880955>,  <35.302265, 37.470535, 49.222393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941540, 37.256008, 48.880955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767242, 36.899597, 48.931877>,  <35.662663, 36.685753, 48.962429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767242, 36.899597, 48.931877>,  <35.941540, 37.256008, 48.880955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767242, 36.899597, 48.931877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320702, -0.285850, -0.903017,
		0.840999, -0.352657, 0.410310,
		-0.435742, -0.891024, 0.127302,
		35.636520, 36.632290, 48.970066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364029, 36.748749, 48.546352>,  <35.941540, 37.256008, 48.880955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364029, 36.748749, 48.546352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028759, 36.537888, 48.602303>,  <35.827595, 36.411369, 48.635872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028759, 36.537888, 48.602303>,  <36.364029, 36.748749, 48.546352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028759, 36.537888, 48.602303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005459, -0.264565, -0.964352,
		0.545372, -0.807534, 0.224630,
		-0.838176, -0.527157, 0.139878,
		35.777306, 36.379742, 48.644264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516247, 36.152290, 48.258812>,  <36.364029, 36.748749, 48.546352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516247, 36.152290, 48.258812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119328, 36.120785, 48.297043>,  <35.881176, 36.101883, 48.319981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119328, 36.120785, 48.297043>,  <36.516247, 36.152290, 48.258812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119328, 36.120785, 48.297043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057502, -0.390530, -0.918793,
		0.109691, -0.917215, 0.382994,
		-0.992301, -0.078761, 0.095580,
		35.821636, 36.097157, 48.325718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361137, 35.470184, 48.095306>,  <36.516247, 36.152290, 48.258812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361137, 35.470184, 48.095306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036289, 35.695267, 48.033558>,  <35.841381, 35.830315, 47.996510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036289, 35.695267, 48.033558>,  <36.361137, 35.470184, 48.095306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036289, 35.695267, 48.033558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032928, -0.308332, -0.950709,
		-0.582564, -0.767004, 0.268931,
		-0.812118, 0.562704, -0.154367,
		35.792652, 35.864079, 47.987247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965874, 35.073032, 47.634480>,  <36.361137, 35.470184, 48.095306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965874, 35.073032, 47.634480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813480, 35.438782, 47.579666>,  <35.722042, 35.658230, 47.546780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813480, 35.438782, 47.579666>,  <35.965874, 35.073032, 47.634480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813480, 35.438782, 47.579666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038490, -0.132399, -0.990449,
		-0.923779, -0.382621, 0.015248,
		-0.380986, 0.914370, -0.137034,
		35.699184, 35.713093, 47.538555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303032, 35.038727, 47.298260>,  <35.965874, 35.073032, 47.634480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303032, 35.038727, 47.298260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444046, 35.408424, 47.239624>,  <35.528656, 35.630241, 47.204441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444046, 35.408424, 47.239624>,  <35.303032, 35.038727, 47.298260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444046, 35.408424, 47.239624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065096, -0.180489, -0.981421,
		-0.933531, 0.336444, -0.123794,
		0.352536, 0.924245, -0.146590,
		35.549809, 35.685699, 47.195648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884109, 35.443081, 46.861336>,  <35.303032, 35.038727, 47.298260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884109, 35.443081, 46.861336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223068, 35.653625, 46.833469>,  <35.426445, 35.779953, 46.816750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223068, 35.653625, 46.833469>,  <34.884109, 35.443081, 46.861336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223068, 35.653625, 46.833469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037527, -0.071512, -0.996734,
		-0.529629, 0.847246, -0.040846,
		0.847399, 0.526366, -0.069669,
		35.477287, 35.811535, 46.812569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800987, 35.897770, 46.307255>,  <34.884109, 35.443081, 46.861336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800987, 35.897770, 46.307255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194435, 35.937069, 46.367718>,  <35.430504, 35.960648, 46.403996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194435, 35.937069, 46.367718>,  <34.800987, 35.897770, 46.307255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194435, 35.937069, 46.367718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140800, 0.104956, -0.984459,
		-0.112587, 0.989612, 0.089403,
		0.983616, 0.098249, 0.151154,
		35.489521, 35.966545, 46.413063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047569, 36.419777, 45.830978>,  <34.800987, 35.897770, 46.307255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047569, 36.419777, 45.830978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361038, 36.191025, 45.927982>,  <35.549122, 36.053776, 45.986183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361038, 36.191025, 45.927982>,  <35.047569, 36.419777, 45.830978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361038, 36.191025, 45.927982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223949, -0.104037, -0.969032,
		0.579396, 0.813716, 0.046540,
		0.783675, -0.571876, 0.242509,
		35.596142, 36.019463, 46.000736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656414, 36.663776, 45.402550>,  <35.047569, 36.419777, 45.830978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656414, 36.663776, 45.402550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733284, 36.289318, 45.520332>,  <35.779408, 36.064644, 45.591003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733284, 36.289318, 45.520332>,  <35.656414, 36.663776, 45.402550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733284, 36.289318, 45.520332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328835, -0.221277, -0.918098,
		0.924627, 0.273268, 0.265311,
		0.192180, -0.936142, 0.294459,
		35.790939, 36.008476, 45.608669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343662, 36.533123, 45.334957>,  <35.656414, 36.663776, 45.402550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343662, 36.533123, 45.334957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157570, 36.179100, 45.328735>,  <36.045914, 35.966686, 45.325001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157570, 36.179100, 45.328735>,  <36.343662, 36.533123, 45.334957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157570, 36.179100, 45.328735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439912, -0.215920, -0.871697,
		0.768139, -0.412383, 0.489798,
		-0.465230, -0.885053, -0.015555,
		36.018002, 35.913586, 45.324070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681377, 35.975204, 44.835552>,  <36.343662, 36.533123, 45.334957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681377, 35.975204, 44.835552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352833, 35.755569, 44.897350>,  <36.155704, 35.623787, 44.934429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352833, 35.755569, 44.897350>,  <36.681377, 35.975204, 44.835552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352833, 35.755569, 44.897350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157838, -0.479055, -0.863477,
		0.548137, -0.684841, 0.480144,
		-0.821360, -0.549089, 0.154494,
		36.106426, 35.590843, 44.943699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845379, 35.418076, 44.463268>,  <36.681377, 35.975204, 44.835552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845379, 35.418076, 44.463268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450031, 35.378120, 44.509148>,  <36.212822, 35.354149, 44.536674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450031, 35.378120, 44.509148>,  <36.845379, 35.418076, 44.463268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450031, 35.378120, 44.509148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045329, -0.526418, -0.849016,
		0.145184, -0.844338, 0.515766,
		-0.988365, -0.099884, 0.114701,
		36.153522, 35.348156, 44.543556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591049, 34.687794, 44.345699>,  <36.845379, 35.418076, 44.463268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591049, 34.687794, 44.345699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265934, 34.915062, 44.294228>,  <36.070866, 35.051422, 44.263344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265934, 34.915062, 44.294228>,  <36.591049, 34.687794, 44.345699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265934, 34.915062, 44.294228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155797, -0.424834, -0.891764,
		-0.561341, -0.704767, 0.433819,
		-0.812788, 0.568172, -0.128676,
		36.022099, 35.085514, 44.255627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113991, 34.308132, 44.127209>,  <36.591049, 34.687794, 44.345699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113991, 34.308132, 44.127209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998150, 34.661179, 43.979092>,  <35.928646, 34.873005, 43.890221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998150, 34.661179, 43.979092>,  <36.113991, 34.308132, 44.127209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998150, 34.661179, 43.979092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349024, -0.457617, -0.817783,
		-0.891243, -0.107588, 0.440580,
		-0.289600, 0.882617, -0.370297,
		35.911270, 34.925964, 43.868004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431278, 34.139553, 43.772461>,  <36.113991, 34.308132, 44.127209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431278, 34.139553, 43.772461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559097, 34.486813, 43.620560>,  <35.635788, 34.695168, 43.529419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559097, 34.486813, 43.620560>,  <35.431278, 34.139553, 43.772461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559097, 34.486813, 43.620560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216246, -0.323373, -0.921232,
		-0.922567, 0.376493, 0.084402,
		0.319544, 0.868149, -0.379749,
		35.654961, 34.747257, 43.506634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887520, 34.297424, 43.314182>,  <35.431278, 34.139553, 43.772461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887520, 34.297424, 43.314182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192295, 34.517517, 43.177540>,  <35.375160, 34.649574, 43.095554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192295, 34.517517, 43.177540>,  <34.887520, 34.297424, 43.314182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192295, 34.517517, 43.177540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260546, -0.222480, -0.939478,
		-0.592933, 0.804827, -0.026155,
		0.761936, 0.550233, -0.341610,
		35.420876, 34.682587, 43.075058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575302, 34.805901, 42.816509>,  <34.887520, 34.297424, 43.314182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575302, 34.805901, 42.816509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959503, 34.800907, 42.705318>,  <35.190025, 34.797913, 42.638603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959503, 34.800907, 42.705318>,  <34.575302, 34.805901, 42.816509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959503, 34.800907, 42.705318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277759, 0.016603, -0.960507,
		0.016603, 0.999784, 0.012481,
		0.960507, -0.012481, -0.277975,
		35.247654, 34.797161, 42.621925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582581, 35.306049, 42.253098>,  <34.575302, 34.805901, 42.816509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582581, 35.306049, 42.253098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924755, 35.105667, 42.200542>,  <35.130062, 34.985439, 42.169010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924755, 35.105667, 42.200542>,  <34.582581, 35.306049, 42.253098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924755, 35.105667, 42.200542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171025, -0.033785, -0.984687,
		0.488847, 0.864812, -0.114577,
		0.855441, -0.500957, -0.131389,
		35.181389, 34.955379, 42.161125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857944, 35.609070, 41.594830>,  <34.582581, 35.306049, 42.253098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857944, 35.609070, 41.594830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044281, 35.264328, 41.675026>,  <35.156082, 35.057484, 41.723145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044281, 35.264328, 41.675026>,  <34.857944, 35.609070, 41.594830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044281, 35.264328, 41.675026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038858, -0.246285, -0.968418,
		0.884015, 0.443337, -0.148219,
		0.465840, -0.861856, 0.200492,
		35.184032, 35.005772, 41.735172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467430, 35.587288, 41.125034>,  <34.857944, 35.609070, 41.594830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467430, 35.587288, 41.125034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354134, 35.216057, 41.221733>,  <35.286156, 34.993317, 41.279751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354134, 35.216057, 41.221733>,  <35.467430, 35.587288, 41.125034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354134, 35.216057, 41.221733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086792, -0.275841, -0.957277,
		0.955114, -0.250155, 0.158678,
		-0.283238, -0.928081, 0.241748,
		35.269161, 34.937634, 41.294258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731396, 35.156246, 40.581390>,  <35.467430, 35.587288, 41.125034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731396, 35.156246, 40.581390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469414, 34.916714, 40.765751>,  <35.312225, 34.772995, 40.876366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469414, 34.916714, 40.765751>,  <35.731396, 35.156246, 40.581390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469414, 34.916714, 40.765751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008197, -0.604260, -0.796745,
		0.755623, -0.525610, 0.390855,
		-0.654955, -0.598836, 0.460901,
		35.272926, 34.737064, 40.904022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024094, 34.547749, 40.637726>,  <35.731396, 35.156246, 40.581390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024094, 34.547749, 40.637726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625057, 34.528278, 40.617947>,  <35.385635, 34.516598, 40.606079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625057, 34.528278, 40.617947>,  <36.024094, 34.547749, 40.637726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625057, 34.528278, 40.617947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066421, -0.463756, -0.883469,
		0.020069, -0.884625, 0.465872,
		-0.997590, -0.048674, -0.049451,
		35.325779, 34.513676, 40.603111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963989, 34.098309, 40.104641>,  <36.024094, 34.547749, 40.637726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963989, 34.098309, 40.104641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585255, 34.207329, 40.173023>,  <35.358013, 34.272739, 40.214050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585255, 34.207329, 40.173023>,  <35.963989, 34.098309, 40.104641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585255, 34.207329, 40.173023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245811, -0.270031, -0.930946,
		-0.207561, -0.923474, 0.322669,
		-0.946835, 0.272543, 0.170952,
		35.301205, 34.289093, 40.224308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456200, 33.505676, 39.899940>,  <35.963989, 34.098309, 40.104641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456200, 33.505676, 39.899940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263935, 33.855789, 39.878628>,  <35.148579, 34.065857, 39.865841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263935, 33.855789, 39.878628>,  <35.456200, 33.505676, 39.899940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263935, 33.855789, 39.878628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228546, -0.183707, -0.956043,
		-0.846601, -0.447352, 0.288344,
		-0.480659, 0.875287, -0.053286,
		35.119736, 34.118374, 39.862640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814804, 33.322582, 39.537193>,  <35.456200, 33.505676, 39.899940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814804, 33.322582, 39.537193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861397, 33.719124, 39.513046>,  <34.889351, 33.957050, 39.498558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861397, 33.719124, 39.513046>,  <34.814804, 33.322582, 39.537193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861397, 33.719124, 39.513046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189076, -0.037535, -0.981245,
		-0.975030, 0.125708, 0.183069,
		0.116479, 0.991357, -0.060367,
		34.896339, 34.016529, 39.494938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260406, 33.506508, 39.162598>,  <34.814804, 33.322582, 39.537193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260406, 33.506508, 39.162598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502697, 33.821129, 39.114544>,  <34.648071, 34.009899, 39.085712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502697, 33.821129, 39.114544>,  <34.260406, 33.506508, 39.162598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502697, 33.821129, 39.114544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359566, 0.135901, -0.923170,
		-0.709791, 0.602390, 0.365136,
		0.605730, 0.786548, -0.120138,
		34.684418, 34.057095, 39.078503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891178, 33.981869, 38.826797>,  <34.260406, 33.506508, 39.162598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891178, 33.981869, 38.826797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273952, 34.078327, 38.762150>,  <34.503616, 34.136204, 38.723362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273952, 34.078327, 38.762150>,  <33.891178, 33.981869, 38.826797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273952, 34.078327, 38.762150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174515, 0.032949, -0.984103,
		-0.231990, 0.969929, 0.073613,
		0.956935, 0.241148, -0.161623,
		34.561031, 34.150673, 38.713661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879261, 34.577011, 38.391380>,  <33.891178, 33.981869, 38.826797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879261, 34.577011, 38.391380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231506, 34.393768, 38.342964>,  <34.442856, 34.283821, 38.313915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231506, 34.393768, 38.342964>,  <33.879261, 34.577011, 38.391380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231506, 34.393768, 38.342964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092725, 0.083899, -0.992151,
		0.464668, 0.884928, 0.031405,
		0.880617, -0.458109, -0.121041,
		34.495693, 34.256336, 38.306652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167137, 34.868832, 37.661148>,  <33.879261, 34.577011, 38.391380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167137, 34.868832, 37.661148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348785, 34.530113, 37.771927>,  <34.457775, 34.326881, 37.838394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348785, 34.530113, 37.771927>,  <34.167137, 34.868832, 37.661148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348785, 34.530113, 37.771927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064981, -0.278543, -0.958223,
		0.888566, 0.453148, -0.071467,
		0.454123, -0.846801, 0.276950,
		34.485023, 34.276073, 37.855011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516891, 34.725136, 37.159512>,  <34.167137, 34.868832, 37.661148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516891, 34.725136, 37.159512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524590, 34.365093, 37.333607>,  <34.529209, 34.149067, 37.438065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524590, 34.365093, 37.333607>,  <34.516891, 34.725136, 37.159512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524590, 34.365093, 37.333607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008713, -0.435154, -0.900314,
		0.999777, 0.021118, -0.000532,
		0.019245, -0.900108, 0.435241,
		34.530361, 34.095062, 37.464180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928829, 34.282101, 36.645149>,  <34.516891, 34.725136, 37.159512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928829, 34.282101, 36.645149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728111, 34.042965, 36.895203>,  <34.607681, 33.899483, 37.045235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728111, 34.042965, 36.895203>,  <34.928829, 34.282101, 36.645149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728111, 34.042965, 36.895203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245360, -0.594651, -0.765630,
		0.829460, -0.537570, 0.151705,
		-0.501791, -0.597837, 0.625137,
		34.577576, 33.863613, 37.082745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188774, 33.622883, 36.554699>,  <34.928829, 34.282101, 36.645149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188774, 33.622883, 36.554699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828796, 33.579502, 36.723625>,  <34.612812, 33.553474, 36.824982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828796, 33.579502, 36.723625>,  <35.188774, 33.622883, 36.554699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828796, 33.579502, 36.723625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264505, -0.634200, -0.726517,
		0.346621, -0.765525, 0.542057,
		-0.899940, -0.108450, 0.422312,
		34.558815, 33.546967, 36.850319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737385, 33.954948, 37.048092>,  <35.188774, 33.622883, 36.554699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737385, 33.954948, 37.048092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992256, 33.708660, 36.862667>,  <36.145180, 33.560886, 36.751411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992256, 33.708660, 36.862667>,  <35.737385, 33.954948, 37.048092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992256, 33.708660, 36.862667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656563, 0.118638, 0.744883,
		-0.403644, -0.778982, 0.479853,
		0.637179, -0.615721, -0.463563,
		36.183411, 33.523945, 36.723598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940254, 33.377335, 37.423847>,  <35.737385, 33.954948, 37.048092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940254, 33.377335, 37.423847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259544, 33.452435, 37.194904>,  <36.451118, 33.497494, 37.057541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259544, 33.452435, 37.194904>,  <35.940254, 33.377335, 37.423847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259544, 33.452435, 37.194904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596194, -0.110642, 0.795180,
		0.085966, -0.975966, -0.200251,
		0.798225, 0.187747, -0.572353,
		36.499012, 33.508759, 37.023197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459343, 32.790775, 37.465866>,  <35.940254, 33.377335, 37.423847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459343, 32.790775, 37.465866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634464, 33.135399, 37.363071>,  <36.739536, 33.342175, 37.301395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634464, 33.135399, 37.363071>,  <36.459343, 32.790775, 37.465866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634464, 33.135399, 37.363071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542887, -0.025487, 0.839419,
		0.716660, -0.507015, -0.478889,
		0.437803, 0.861561, -0.256986,
		36.765804, 33.393867, 37.285976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254677, 32.667286, 37.636841>,  <36.459343, 32.790775, 37.465866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254677, 32.667286, 37.636841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188774, 33.061119, 37.613335>,  <37.149235, 33.297421, 37.599232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188774, 33.061119, 37.613335>,  <37.254677, 32.667286, 37.636841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188774, 33.061119, 37.613335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665044, 0.154885, 0.730566,
		0.728404, 0.081285, -0.680309,
		-0.164754, 0.984583, -0.058761,
		37.139347, 33.356495, 37.595707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939030, 32.951580, 37.636734>,  <37.254677, 32.667286, 37.636841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939030, 32.951580, 37.636734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684757, 33.238674, 37.750408>,  <37.532192, 33.410931, 37.818611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684757, 33.238674, 37.750408>,  <37.939030, 32.951580, 37.636734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684757, 33.238674, 37.750408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632231, 0.272827, 0.725155,
		0.442938, 0.640638, -0.627207,
		-0.635681, 0.717738, 0.284185,
		37.494053, 33.453995, 37.835663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380173, 33.254387, 37.993935>,  <37.939030, 32.951580, 37.636734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380173, 33.254387, 37.993935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048199, 33.449547, 38.102127>,  <37.849014, 33.566643, 38.167042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048199, 33.449547, 38.102127>,  <38.380173, 33.254387, 37.993935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048199, 33.449547, 38.102127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467562, 0.343901, 0.814320,
		0.304286, 0.802302, -0.513539,
		-0.829937, 0.487897, 0.270482,
		37.799217, 33.595917, 38.183273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476452, 33.933971, 38.287476>,  <38.380173, 33.254387, 37.993935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476452, 33.933971, 38.287476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120609, 33.826939, 38.435532>,  <37.907104, 33.762718, 38.524364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120609, 33.826939, 38.435532>,  <38.476452, 33.933971, 38.287476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120609, 33.826939, 38.435532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314977, 0.227433, 0.921446,
		-0.330746, 0.936308, -0.118043,
		-0.889605, -0.267584, 0.370138,
		37.853729, 33.746662, 38.546574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336693, 34.418930, 38.654808>,  <38.476452, 33.933971, 38.287476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336693, 34.418930, 38.654808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096657, 34.138939, 38.809685>,  <37.952637, 33.970943, 38.902611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096657, 34.138939, 38.809685>,  <38.336693, 34.418930, 38.654808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096657, 34.138939, 38.809685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245983, 0.299109, 0.921969,
		-0.761173, 0.648508, -0.007309,
		-0.600090, -0.699979, 0.387196,
		37.916630, 33.928944, 38.925842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035843, 34.734375, 39.191872>,  <38.336693, 34.418930, 38.654808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035843, 34.734375, 39.191872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961582, 34.350838, 39.277805>,  <37.917027, 34.120716, 39.329365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961582, 34.350838, 39.277805>,  <38.035843, 34.734375, 39.191872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961582, 34.350838, 39.277805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156065, 0.187083, 0.969868,
		-0.970142, 0.213589, 0.114909,
		-0.185656, -0.958843, 0.214831,
		37.905884, 34.063187, 39.342255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582909, 34.766346, 39.701481>,  <38.035843, 34.734375, 39.191872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582909, 34.766346, 39.701481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717686, 34.394356, 39.760273>,  <37.798553, 34.171162, 39.795547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717686, 34.394356, 39.760273>,  <37.582909, 34.766346, 39.701481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717686, 34.394356, 39.760273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184048, 0.218161, 0.958401,
		-0.923360, -0.295877, 0.244669,
		0.336946, -0.929980, 0.146985,
		37.818771, 34.115360, 39.804367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185432, 34.450226, 40.291294>,  <37.582909, 34.766346, 39.701481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185432, 34.450226, 40.291294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505341, 34.210964, 40.270935>,  <37.697285, 34.067410, 40.258720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505341, 34.210964, 40.270935>,  <37.185432, 34.450226, 40.291294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505341, 34.210964, 40.270935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178879, 0.156527, 0.971340,
		-0.573041, -0.785949, 0.232181,
		0.799767, -0.598150, -0.050893,
		37.745270, 34.031521, 40.255669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166466, 34.023151, 40.801048>,  <37.185432, 34.450226, 40.291294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166466, 34.023151, 40.801048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557976, 34.029419, 40.719318>,  <37.792881, 34.033180, 40.670280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557976, 34.029419, 40.719318>,  <37.166466, 34.023151, 40.801048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557976, 34.029419, 40.719318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197021, 0.202373, 0.959285,
		0.056378, -0.979183, 0.194992,
		0.978777, 0.015665, -0.204329,
		37.851608, 34.034119, 40.658020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546928, 33.618565, 41.352448>,  <37.166466, 34.023151, 40.801048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546928, 33.618565, 41.352448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831123, 33.846817, 41.187725>,  <38.001640, 33.983768, 41.088890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831123, 33.846817, 41.187725>,  <37.546928, 33.618565, 41.352448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831123, 33.846817, 41.187725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438152, 0.099204, 0.893410,
		0.550659, -0.815194, -0.179539,
		0.710491, 0.570629, -0.411807,
		38.044270, 34.018005, 41.064182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220589, 33.361000, 41.505501>,  <37.546928, 33.618565, 41.352448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220589, 33.361000, 41.505501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273071, 33.747684, 41.417629>,  <38.304562, 33.979694, 41.364906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273071, 33.747684, 41.417629>,  <38.220589, 33.361000, 41.505501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273071, 33.747684, 41.417629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405511, 0.149876, 0.901720,
		0.904624, -0.207397, -0.372345,
		0.131209, 0.966708, -0.219683,
		38.312435, 34.037697, 41.351723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771786, 33.493137, 41.867336>,  <38.220589, 33.361000, 41.505501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771786, 33.493137, 41.867336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647404, 33.857357, 41.758369>,  <38.572777, 34.075890, 41.692989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647404, 33.857357, 41.758369>,  <38.771786, 33.493137, 41.867336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647404, 33.857357, 41.758369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264017, 0.358104, 0.895576,
		0.913019, 0.206557, -0.351753,
		-0.310952, 0.910547, -0.272421,
		38.554119, 34.130520, 41.676643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347748, 33.948063, 42.106495>,  <38.771786, 33.493137, 41.867336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347748, 33.948063, 42.106495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009384, 34.157871, 42.067867>,  <38.806366, 34.283756, 42.044693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009384, 34.157871, 42.067867>,  <39.347748, 33.948063, 42.106495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009384, 34.157871, 42.067867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138011, 0.390173, 0.910340,
		0.515166, 0.756735, -0.402439,
		-0.845906, 0.524517, -0.096566,
		38.755611, 34.315228, 42.038898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455769, 34.645130, 42.414867>,  <39.347748, 33.948063, 42.106495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455769, 34.645130, 42.414867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061901, 34.576889, 42.400364>,  <38.825581, 34.535946, 42.391663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061901, 34.576889, 42.400364>,  <39.455769, 34.645130, 42.414867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061901, 34.576889, 42.400364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101394, 0.390768, 0.914888,
		-0.141909, 0.904542, -0.402076,
		-0.984673, -0.170599, -0.036262,
		38.766499, 34.525711, 42.389484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175488, 35.157795, 42.789459>,  <39.455769, 34.645130, 42.414867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175488, 35.157795, 42.789459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848637, 34.927502, 42.777863>,  <38.652527, 34.789326, 42.770905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848637, 34.927502, 42.777863>,  <39.175488, 35.157795, 42.789459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848637, 34.927502, 42.777863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173597, 0.197802, 0.964748,
		-0.549703, 0.793351, -0.261574,
		-0.817123, -0.575733, -0.028992,
		38.603500, 34.754780, 42.769165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615421, 35.494598, 42.988205>,  <39.175488, 35.157795, 42.789459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615421, 35.494598, 42.988205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488213, 35.124409, 43.070534>,  <38.411888, 34.902294, 43.119930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488213, 35.124409, 43.070534>,  <38.615421, 35.494598, 42.988205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488213, 35.124409, 43.070534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396643, 0.327054, 0.857736,
		-0.861124, 0.191146, -0.471093,
		-0.318025, -0.925472, 0.205818,
		38.392803, 34.846767, 43.132278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801079, 35.534916, 43.128712>,  <38.615421, 35.494598, 42.988205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801079, 35.534916, 43.128712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007236, 35.233913, 43.292713>,  <38.130932, 35.053310, 43.391113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007236, 35.233913, 43.292713>,  <37.801079, 35.534916, 43.128712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007236, 35.233913, 43.292713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273147, 0.309230, 0.910916,
		-0.812259, -0.581467, -0.046172,
		0.515390, -0.752511, 0.410001,
		38.161854, 35.008160, 43.415714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353333, 35.238724, 43.741119>,  <37.801079, 35.534916, 43.128712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353333, 35.238724, 43.741119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725960, 35.107304, 43.803394>,  <37.949535, 35.028450, 43.840759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725960, 35.107304, 43.803394>,  <37.353333, 35.238724, 43.741119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725960, 35.107304, 43.803394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132956, 0.090712, 0.986962,
		-0.338389, -0.940120, 0.040822,
		0.931566, -0.328550, 0.155690,
		38.005428, 35.008739, 43.850101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328686, 34.852245, 44.398827>,  <37.353333, 35.238724, 43.741119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328686, 34.852245, 44.398827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705292, 34.961674, 44.320137>,  <37.931255, 35.027332, 44.272923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705292, 34.961674, 44.320137>,  <37.328686, 34.852245, 44.398827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705292, 34.961674, 44.320137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146546, 0.193281, 0.970137,
		0.303427, -0.942231, 0.141886,
		0.941518, 0.273573, -0.196727,
		37.987747, 35.043747, 44.261120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659981, 34.693100, 44.988277>,  <37.328686, 34.852245, 44.398827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659981, 34.693100, 44.988277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933849, 34.936962, 44.828506>,  <38.098171, 35.083279, 44.732643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933849, 34.936962, 44.828506>,  <37.659981, 34.693100, 44.988277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933849, 34.936962, 44.828506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171054, 0.398313, 0.901159,
		0.708497, -0.685320, 0.168428,
		0.684669, 0.609658, -0.399431,
		38.139252, 35.119858, 44.708675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264744, 34.704685, 45.475403>,  <37.659981, 34.693100, 44.988277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264744, 34.704685, 45.475403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319168, 35.028366, 45.246780>,  <38.351822, 35.222576, 45.109608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319168, 35.028366, 45.246780>,  <38.264744, 34.704685, 45.475403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319168, 35.028366, 45.246780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146775, 0.554088, 0.819417,
		0.979768, -0.195379, -0.043382,
		0.136060, 0.809205, -0.571555,
		38.359985, 35.271126, 45.075314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817360, 34.998466, 45.631351>,  <38.264744, 34.704685, 45.475403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817360, 34.998466, 45.631351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599667, 35.287876, 45.461491>,  <38.469051, 35.461521, 45.359573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599667, 35.287876, 45.461491>,  <38.817360, 34.998466, 45.631351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599667, 35.287876, 45.461491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027168, 0.521115, 0.853054,
		0.838496, 0.452721, -0.303264,
		-0.544230, 0.723521, -0.424653,
		38.436398, 35.504932, 45.334095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190392, 35.690014, 45.764896>,  <38.817360, 34.998466, 45.631351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190392, 35.690014, 45.764896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801395, 35.756214, 45.699333>,  <38.567997, 35.795933, 45.659996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801395, 35.756214, 45.699333>,  <39.190392, 35.690014, 45.764896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801395, 35.756214, 45.699333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022674, 0.633064, 0.773767,
		0.231821, 0.756200, -0.611899,
		-0.972494, 0.165501, -0.163904,
		38.509647, 35.805866, 45.650162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112038, 36.350780, 45.819420>,  <39.190392, 35.690014, 45.764896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112038, 36.350780, 45.819420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736046, 36.220303, 45.859474>,  <38.510448, 36.142014, 45.883507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736046, 36.220303, 45.859474>,  <39.112038, 36.350780, 45.819420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736046, 36.220303, 45.859474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181771, 0.727050, 0.662086,
		-0.288778, 0.604146, -0.742707,
		-0.939982, -0.326199, 0.100140,
		38.454052, 36.122444, 45.889515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665379, 36.914246, 46.042744>,  <39.112038, 36.350780, 45.819420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665379, 36.914246, 46.042744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407330, 36.619209, 46.122520>,  <38.252502, 36.442188, 46.170387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407330, 36.619209, 46.122520>,  <38.665379, 36.914246, 46.042744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407330, 36.619209, 46.122520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314575, 0.494265, 0.810398,
		-0.696322, 0.460063, -0.550888,
		-0.645119, -0.737593, 0.199443,
		38.213795, 36.397930, 46.182354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022640, 37.277557, 46.030300>,  <38.665379, 36.914246, 46.042744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022640, 37.277557, 46.030300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994518, 36.939556, 46.242348>,  <37.977646, 36.736755, 46.369576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994518, 36.939556, 46.242348>,  <38.022640, 37.277557, 46.030300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994518, 36.939556, 46.242348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362322, 0.516768, 0.775677,
		-0.929398, -0.137540, -0.342495,
		-0.070303, -0.845005, 0.530116,
		37.973427, 36.686054, 46.401382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308826, 37.263226, 46.327469>,  <38.022640, 37.277557, 46.030300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308826, 37.263226, 46.327469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561481, 37.051273, 46.553837>,  <37.713074, 36.924103, 46.689655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561481, 37.051273, 46.553837>,  <37.308826, 37.263226, 46.327469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561481, 37.051273, 46.553837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309549, 0.496880, 0.810734,
		-0.710785, -0.687268, 0.149823,
		0.631636, -0.529880, 0.565918,
		37.750973, 36.892311, 46.723614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968204, 37.248009, 46.921894>,  <37.308826, 37.263226, 46.327469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968204, 37.248009, 46.921894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339054, 37.145481, 47.031250>,  <37.561565, 37.083965, 47.096863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339054, 37.145481, 47.031250>,  <36.968204, 37.248009, 46.921894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339054, 37.145481, 47.031250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202143, 0.272250, 0.940754,
		-0.315566, -0.927459, 0.200596,
		0.927123, -0.256321, 0.273392,
		37.617191, 37.068584, 47.113266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896194, 36.852787, 47.511921>,  <36.968204, 37.248009, 46.921894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896194, 36.852787, 47.511921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273670, 36.984676, 47.522705>,  <37.500156, 37.063808, 47.529175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273670, 36.984676, 47.522705>,  <36.896194, 36.852787, 47.511921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273670, 36.984676, 47.522705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091631, 0.182194, 0.978984,
		0.317881, -0.926330, 0.202148,
		0.943692, 0.329724, 0.026965,
		37.556778, 37.083595, 47.530796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198841, 36.569519, 48.144703>,  <36.896194, 36.852787, 47.511921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198841, 36.569519, 48.144703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382225, 36.903183, 48.022068>,  <37.492256, 37.103382, 47.948486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382225, 36.903183, 48.022068>,  <37.198841, 36.569519, 48.144703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382225, 36.903183, 48.022068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022139, 0.355592, 0.934379,
		0.888438, -0.421591, 0.181493,
		0.458463, 0.834155, -0.306588,
		37.519764, 37.153431, 47.930092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517868, 36.726257, 48.822075>,  <37.198841, 36.569519, 48.144703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517868, 36.726257, 48.822075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617760, 37.054974, 48.617214>,  <37.677696, 37.252201, 48.494297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617760, 37.054974, 48.617214>,  <37.517868, 36.726257, 48.822075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617760, 37.054974, 48.617214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014652, 0.525644, 0.850579,
		0.968205, -0.219919, 0.119229,
		0.249731, 0.821787, -0.512153,
		37.692680, 37.301510, 48.463570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097828, 37.029831, 49.206379>,  <37.517868, 36.726257, 48.822075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097828, 37.029831, 49.206379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885540, 37.276539, 48.973854>,  <37.758167, 37.424564, 48.834339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885540, 37.276539, 48.973854>,  <38.097828, 37.029831, 49.206379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885540, 37.276539, 48.973854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085179, 0.643593, 0.760613,
		0.843254, 0.453190, -0.289034,
		-0.530723, 0.616771, -0.581315,
		37.726322, 37.461571, 48.799461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294399, 37.621330, 49.492023>,  <38.097828, 37.029831, 49.206379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294399, 37.621330, 49.492023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977390, 37.726616, 49.271976>,  <37.787186, 37.789787, 49.139946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977390, 37.726616, 49.271976>,  <38.294399, 37.621330, 49.492023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977390, 37.726616, 49.271976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221408, 0.716326, 0.661707,
		0.568236, 0.646216, -0.509424,
		-0.792519, 0.263215, -0.550120,
		37.739635, 37.805580, 49.106941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273090, 38.325146, 49.369205>,  <38.294399, 37.621330, 49.492023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273090, 38.325146, 49.369205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883209, 38.248695, 49.322845>,  <37.649281, 38.202827, 49.295029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883209, 38.248695, 49.322845>,  <38.273090, 38.325146, 49.369205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883209, 38.248695, 49.322845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222674, 0.785190, 0.577834,
		-0.019431, 0.589023, -0.807882,
		-0.974699, -0.191123, -0.115903,
		37.590801, 38.191360, 49.288074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932957, 38.994400, 49.132374>,  <38.273090, 38.325146, 49.369205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932957, 38.994400, 49.132374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696213, 38.735126, 49.324024>,  <37.554169, 38.579563, 49.439014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696213, 38.735126, 49.324024>,  <37.932957, 38.994400, 49.132374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696213, 38.735126, 49.324024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226404, 0.704177, 0.672961,
		-0.773593, 0.289820, -0.563523,
		-0.591858, -0.648182, 0.479130,
		37.518654, 38.540672, 49.467762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349266, 39.385952, 49.497101>,  <37.932957, 38.994400, 49.132374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349266, 39.385952, 49.497101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318649, 39.026947, 49.670822>,  <37.300278, 38.811546, 49.775055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318649, 39.026947, 49.670822>,  <37.349266, 39.385952, 49.497101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318649, 39.026947, 49.670822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318693, 0.434755, 0.842272,
		-0.944762, -0.073940, -0.319306,
		-0.076542, -0.897508, 0.434305,
		37.295685, 38.757694, 49.801113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634193, 39.719002, 49.265862>,  <37.349266, 39.385952, 49.497101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634193, 39.719002, 49.265862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846348, 40.033287, 49.138523>,  <36.973640, 40.221859, 49.062119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846348, 40.033287, 49.138523>,  <36.634193, 39.719002, 49.265862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846348, 40.033287, 49.138523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117364, -0.303852, -0.945463,
		-0.839591, 0.538826, -0.068946,
		0.530389, 0.785711, -0.318350,
		37.005463, 40.269001, 49.043018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494896, 39.728062, 48.613979>,  <36.634193, 39.719002, 49.265862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494896, 39.728062, 48.613979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769215, 40.019176, 48.614403>,  <36.933807, 40.193848, 48.614655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769215, 40.019176, 48.614403>,  <36.494896, 39.728062, 48.613979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769215, 40.019176, 48.614403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166134, -0.155135, -0.973824,
		-0.708574, 0.668024, -0.227302,
		0.685800, 0.727789, 0.001057,
		36.974957, 40.237514, 48.614719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346466, 40.258587, 48.128754>,  <36.494896, 39.728062, 48.613979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346466, 40.258587, 48.128754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741966, 40.279503, 48.184811>,  <36.979267, 40.292053, 48.218445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741966, 40.279503, 48.184811>,  <36.346466, 40.258587, 48.128754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741966, 40.279503, 48.184811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149296, -0.287674, -0.946020,
		-0.009152, 0.956300, -0.292244,
		0.988750, 0.052289, 0.140139,
		37.038589, 40.295189, 48.226852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696846, 40.860214, 47.740784>,  <36.346466, 40.258587, 48.128754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696846, 40.860214, 47.740784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962368, 40.571075, 47.817566>,  <37.121681, 40.397591, 47.863636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962368, 40.571075, 47.817566>,  <36.696846, 40.860214, 47.740784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962368, 40.571075, 47.817566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194796, -0.080705, -0.977518,
		0.722092, 0.686275, 0.087236,
		0.663805, -0.722851, 0.191960,
		37.161510, 40.354221, 47.875153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227909, 41.017754, 47.305016>,  <36.696846, 40.860214, 47.740784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227909, 41.017754, 47.305016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301292, 40.633076, 47.386490>,  <37.345322, 40.402267, 47.435375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301292, 40.633076, 47.386490>,  <37.227909, 41.017754, 47.305016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301292, 40.633076, 47.386490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204666, -0.165296, -0.964774,
		0.961486, 0.218683, 0.166501,
		0.183458, -0.961694, 0.203686,
		37.356331, 40.344566, 47.447598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781582, 40.913372, 46.855560>,  <37.227909, 41.017754, 47.305016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781582, 40.913372, 46.855560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646896, 40.547474, 46.944885>,  <37.566086, 40.327934, 46.998478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646896, 40.547474, 46.944885>,  <37.781582, 40.913372, 46.855560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646896, 40.547474, 46.944885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112057, -0.274401, -0.955064,
		0.934916, -0.296557, 0.194897,
		-0.336711, -0.914745, 0.223310,
		37.545883, 40.273052, 47.011879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190334, 40.517536, 46.460011>,  <37.781582, 40.913372, 46.855560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190334, 40.517536, 46.460011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924629, 40.249077, 46.591663>,  <37.765205, 40.088001, 46.670654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924629, 40.249077, 46.591663>,  <38.190334, 40.517536, 46.460011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924629, 40.249077, 46.591663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060206, -0.486912, -0.871374,
		0.745075, -0.559002, 0.363842,
		-0.664258, -0.671144, 0.329130,
		37.725353, 40.047733, 46.690403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465778, 39.903080, 46.407162>,  <38.190334, 40.517536, 46.460011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465778, 39.903080, 46.407162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074501, 39.820019, 46.408752>,  <37.839733, 39.770184, 46.409706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074501, 39.820019, 46.408752>,  <38.465778, 39.903080, 46.407162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074501, 39.820019, 46.408752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125400, -0.605790, -0.785680,
		0.165558, -0.768049, 0.618620,
		-0.978195, -0.207651, 0.003980,
		37.781044, 39.757725, 46.409946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467903, 39.264416, 46.124935>,  <38.465778, 39.903080, 46.407162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467903, 39.264416, 46.124935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092239, 39.392513, 46.075253>,  <37.866840, 39.469372, 46.045444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092239, 39.392513, 46.075253>,  <38.467903, 39.264416, 46.124935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092239, 39.392513, 46.075253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076746, -0.548107, -0.832880,
		-0.334800, -0.772674, 0.539337,
		-0.939159, 0.320240, -0.124206,
		37.810493, 39.488586, 46.037991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023968, 38.721157, 46.082237>,  <38.467903, 39.264416, 46.124935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023968, 38.721157, 46.082237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844009, 39.025558, 45.895279>,  <37.736034, 39.208199, 45.783104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844009, 39.025558, 45.895279>,  <38.023968, 38.721157, 46.082237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844009, 39.025558, 45.895279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073556, -0.553153, -0.829826,
		-0.890046, -0.338957, 0.304839,
		-0.449898, 0.761006, -0.467400,
		37.709042, 39.253860, 45.755058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459492, 38.366894, 45.784973>,  <38.023968, 38.721157, 46.082237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459492, 38.366894, 45.784973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519192, 38.715099, 45.597389>,  <37.555012, 38.924023, 45.484837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519192, 38.715099, 45.597389>,  <37.459492, 38.366894, 45.784973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519192, 38.715099, 45.597389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101302, -0.485240, -0.868493,
		-0.983597, 0.082117, -0.160608,
		0.149252, 0.870517, -0.468962,
		37.563969, 38.976254, 45.456699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052803, 38.318703, 45.262009>,  <37.459492, 38.366894, 45.784973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052803, 38.318703, 45.262009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281315, 38.626850, 45.148743>,  <37.418423, 38.811737, 45.080784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281315, 38.626850, 45.148743>,  <37.052803, 38.318703, 45.262009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281315, 38.626850, 45.148743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179357, -0.219491, -0.958986,
		-0.800920, 0.598634, 0.012780,
		0.571277, 0.770364, -0.283164,
		37.452698, 38.857960, 45.063793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683170, 38.696095, 44.690483>,  <37.052803, 38.318703, 45.262009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683170, 38.696095, 44.690483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071640, 38.786087, 44.658985>,  <37.304722, 38.840080, 44.640087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071640, 38.786087, 44.658985>,  <36.683170, 38.696095, 44.690483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071640, 38.786087, 44.658985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015284, -0.270902, -0.962486,
		-0.237872, 0.935947, -0.259655,
		0.971176, 0.224980, -0.078745,
		37.362991, 38.853580, 44.635361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822659, 38.944881, 43.983936>,  <36.683170, 38.696095, 44.690483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822659, 38.944881, 43.983936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195972, 38.850895, 44.092575>,  <37.419960, 38.794502, 44.157757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195972, 38.850895, 44.092575>,  <36.822659, 38.944881, 43.983936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195972, 38.850895, 44.092575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212774, -0.247458, -0.945247,
		0.289312, 0.939976, -0.180955,
		0.933288, -0.234969, 0.271595,
		37.475960, 38.780403, 44.174053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277485, 39.164261, 43.410431>,  <36.822659, 38.944881, 43.983936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277485, 39.164261, 43.410431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516808, 38.923229, 43.621685>,  <37.660400, 38.778610, 43.748436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516808, 38.923229, 43.621685>,  <37.277485, 39.164261, 43.410431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516808, 38.923229, 43.621685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335673, -0.410001, -0.848070,
		0.727569, 0.684684, -0.043034,
		0.598304, -0.602584, 0.528134,
		37.696301, 38.742455, 43.780125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053860, 39.160549, 43.127552>,  <37.277485, 39.164261, 43.410431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053860, 39.160549, 43.127552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966290, 38.820526, 43.319160>,  <37.913746, 38.616512, 43.434128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966290, 38.820526, 43.319160>,  <38.053860, 39.160549, 43.127552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966290, 38.820526, 43.319160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379263, -0.526467, -0.760916,
		0.899016, 0.015089, 0.437656,
		-0.218929, -0.850062, 0.479025,
		37.900612, 38.565506, 43.462868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629612, 38.789909, 43.034550>,  <38.053860, 39.160549, 43.127552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629612, 38.789909, 43.034550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370239, 38.504890, 43.141739>,  <38.214615, 38.333878, 43.206051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370239, 38.504890, 43.141739>,  <38.629612, 38.789909, 43.034550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370239, 38.504890, 43.141739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362748, -0.598678, -0.714142,
		0.669288, -0.365869, 0.646679,
		-0.648435, -0.712548, 0.267970,
		38.175709, 38.291126, 43.222130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991074, 38.192719, 43.125278>,  <38.629612, 38.789909, 43.034550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991074, 38.192719, 43.125278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624821, 38.043331, 43.065750>,  <38.405071, 37.953701, 43.030033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624821, 38.043331, 43.065750>,  <38.991074, 38.192719, 43.125278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624821, 38.043331, 43.065750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354189, -0.574236, -0.738108,
		0.190197, -0.728545, 0.658064,
		-0.915629, -0.373465, -0.148825,
		38.350132, 37.931293, 43.021103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007725, 37.446842, 43.259647>,  <38.991074, 38.192719, 43.125278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007725, 37.446842, 43.259647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707245, 37.538761, 43.012135>,  <38.526955, 37.593914, 42.863628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707245, 37.538761, 43.012135>,  <39.007725, 37.446842, 43.259647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707245, 37.538761, 43.012135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284306, -0.733381, -0.617513,
		-0.595705, -0.639799, 0.485584,
		-0.751202, 0.229801, -0.618777,
		38.481884, 37.607700, 42.826500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035877, 36.789036, 42.981304>,  <39.007725, 37.446842, 43.259647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035877, 36.789036, 42.981304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802292, 37.020046, 42.753113>,  <38.662140, 37.158653, 42.616199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802292, 37.020046, 42.753113>,  <39.035877, 36.789036, 42.981304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802292, 37.020046, 42.753113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197230, -0.580757, -0.789824,
		-0.787455, -0.573746, 0.225236,
		-0.583965, 0.577527, -0.570480,
		38.627102, 37.193306, 42.581970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598446, 36.369419, 42.581608>,  <39.035877, 36.789036, 42.981304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598446, 36.369419, 42.581608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614471, 36.716595, 42.383583>,  <38.624088, 36.924900, 42.264771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614471, 36.716595, 42.383583>,  <38.598446, 36.369419, 42.581608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614471, 36.716595, 42.383583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245630, -0.488809, -0.837097,
		-0.968535, -0.088062, -0.232775,
		0.040066, 0.867935, -0.495059,
		38.626492, 36.976974, 42.235065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207485, 36.205582, 41.985092>,  <38.598446, 36.369419, 42.581608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207485, 36.205582, 41.985092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353741, 36.567028, 41.895844>,  <38.441494, 36.783897, 41.842297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353741, 36.567028, 41.895844>,  <38.207485, 36.205582, 41.985092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353741, 36.567028, 41.895844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164111, -0.298551, -0.940178,
		-0.916175, 0.307148, -0.257456,
		0.365638, 0.903619, -0.223119,
		38.463432, 36.838112, 41.828907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827625, 36.525074, 41.332844>,  <38.207485, 36.205582, 41.985092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827625, 36.525074, 41.332844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199635, 36.667141, 41.370617>,  <38.422840, 36.752380, 41.393280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199635, 36.667141, 41.370617>,  <37.827625, 36.525074, 41.332844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199635, 36.667141, 41.370617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204014, -0.285217, -0.936498,
		-0.305678, 0.890229, -0.337717,
		0.930021, 0.355166, 0.094435,
		38.478642, 36.773689, 41.398949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978580, 36.714012, 40.696907>,  <37.827625, 36.525074, 41.332844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978580, 36.714012, 40.696907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347393, 36.727169, 40.851196>,  <38.568680, 36.735065, 40.943771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347393, 36.727169, 40.851196>,  <37.978580, 36.714012, 40.696907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347393, 36.727169, 40.851196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386441, -0.137368, -0.912027,
		0.022985, 0.989974, -0.139369,
		0.922028, 0.032895, 0.385724,
		38.624001, 36.737038, 40.966915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391281, 37.256569, 40.371731>,  <37.978580, 36.714012, 40.696907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391281, 37.256569, 40.371731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660095, 36.997307, 40.514984>,  <38.821384, 36.841751, 40.600937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660095, 36.997307, 40.514984>,  <38.391281, 37.256569, 40.371731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660095, 36.997307, 40.514984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374488, -0.119758, -0.919465,
		0.638844, 0.752034, 0.162244,
		0.672039, -0.648153, 0.358134,
		38.861706, 36.802860, 40.622425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931767, 37.395119, 40.037632>,  <38.391281, 37.256569, 40.371731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931767, 37.395119, 40.037632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039173, 37.041821, 40.191395>,  <39.103619, 36.829842, 40.283653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039173, 37.041821, 40.191395>,  <38.931767, 37.395119, 40.037632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039173, 37.041821, 40.191395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595686, -0.161350, -0.786844,
		0.757004, 0.440268, 0.482814,
		0.268521, -0.883250, 0.384404,
		39.119728, 36.776844, 40.306717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766117, 37.253799, 40.045509>,  <38.931767, 37.395119, 40.037632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766117, 37.253799, 40.045509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593266, 36.893280, 40.033360>,  <39.489555, 36.676968, 40.026070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593266, 36.893280, 40.033360>,  <39.766117, 37.253799, 40.045509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593266, 36.893280, 40.033360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533454, -0.228320, -0.814430,
		0.727110, -0.368144, 0.579466,
		-0.432131, -0.901299, -0.030374,
		39.463627, 36.622890, 40.024246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295452, 36.835617, 39.665760>,  <39.766117, 37.253799, 40.045509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295452, 36.835617, 39.665760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968525, 36.606239, 39.688244>,  <39.772369, 36.468613, 39.701736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968525, 36.606239, 39.688244>,  <40.295452, 36.835617, 39.665760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968525, 36.606239, 39.688244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284456, -0.486415, -0.826126,
		0.501079, -0.659216, 0.560674,
		-0.817316, -0.573441, 0.056214,
		39.723331, 36.434208, 39.705109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548656, 36.080704, 39.629585>,  <40.295452, 36.835617, 39.665760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548656, 36.080704, 39.629585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162521, 36.052071, 39.529190>,  <39.930840, 36.034889, 39.468952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162521, 36.052071, 39.529190>,  <40.548656, 36.080704, 39.629585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162521, 36.052071, 39.529190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244362, -0.585678, -0.772832,
		-0.091674, -0.807377, 0.582871,
		-0.965341, -0.071583, -0.250984,
		39.872921, 36.030594, 39.453896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326389, 35.339615, 39.530350>,  <40.548656, 36.080704, 39.629585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326389, 35.339615, 39.530350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104954, 35.586197, 39.306374>,  <39.972092, 35.734146, 39.171989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104954, 35.586197, 39.306374>,  <40.326389, 35.339615, 39.530350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104954, 35.586197, 39.306374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370176, -0.420142, -0.828523,
		-0.745999, -0.665933, 0.004389,
		-0.553585, 0.616452, -0.559938,
		39.938877, 35.771133, 39.138393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068523, 34.896114, 38.940964>,  <40.326389, 35.339615, 39.530350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068523, 34.896114, 38.940964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994282, 35.264904, 38.805019>,  <39.949738, 35.486179, 38.723454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994282, 35.264904, 38.805019>,  <40.068523, 34.896114, 38.940964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994282, 35.264904, 38.805019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141999, -0.317077, -0.937709,
		-0.972311, -0.222302, -0.072070,
		-0.185603, 0.921979, -0.339864,
		39.938602, 35.541496, 38.703060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616005, 34.879356, 38.446487>,  <40.068523, 34.896114, 38.940964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616005, 34.879356, 38.446487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810654, 35.221352, 38.374718>,  <39.927444, 35.426548, 38.331657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810654, 35.221352, 38.374718>,  <39.616005, 34.879356, 38.446487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810654, 35.221352, 38.374718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233306, -0.325107, -0.916447,
		-0.841883, 0.404104, -0.357678,
		0.486624, 0.854989, -0.179422,
		39.956642, 35.477848, 38.320892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610462, 35.088558, 37.736767>,  <39.616005, 34.879356, 38.446487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610462, 35.088558, 37.736767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913147, 35.340435, 37.807060>,  <40.094757, 35.491562, 37.849236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913147, 35.340435, 37.807060>,  <39.610462, 35.088558, 37.736767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913147, 35.340435, 37.807060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345474, -0.156960, -0.925209,
		-0.555013, 0.760824, -0.336315,
		0.756709, 0.629691, 0.175730,
		40.140160, 35.529343, 37.859779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484692, 35.615040, 37.283268>,  <39.610462, 35.088558, 37.736767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484692, 35.615040, 37.283268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873280, 35.611664, 37.378067>,  <40.106434, 35.609638, 37.434948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873280, 35.611664, 37.378067>,  <39.484692, 35.615040, 37.283268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873280, 35.611664, 37.378067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234510, -0.114506, -0.965346,
		0.035283, 0.993387, -0.109261,
		0.971473, -0.008438, 0.236999,
		40.164722, 35.609131, 37.449165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829350, 36.136654, 36.854637>,  <39.484692, 35.615040, 37.283268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829350, 36.136654, 36.854637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125294, 35.896526, 36.976109>,  <40.302860, 35.752449, 37.048992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125294, 35.896526, 36.976109>,  <39.829350, 36.136654, 36.854637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125294, 35.896526, 36.976109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260707, -0.160288, -0.952018,
		0.620196, 0.783530, 0.037918,
		0.739857, -0.600323, 0.303682,
		40.347252, 35.716431, 37.067215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411026, 36.412632, 36.598560>,  <39.829350, 36.136654, 36.854637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411026, 36.412632, 36.598560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518272, 36.036537, 36.682533>,  <40.582619, 35.810879, 36.732918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518272, 36.036537, 36.682533>,  <40.411026, 36.412632, 36.598560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518272, 36.036537, 36.682533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282945, -0.131444, -0.950087,
		0.920900, 0.314130, 0.230793,
		0.268114, -0.940237, 0.209928,
		40.598705, 35.754467, 36.745510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133381, 36.284943, 36.299061>,  <40.411026, 36.412632, 36.598560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133381, 36.284943, 36.299061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981136, 35.920563, 36.362690>,  <40.889790, 35.701935, 36.400867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981136, 35.920563, 36.362690>,  <41.133381, 36.284943, 36.299061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981136, 35.920563, 36.362690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319533, -0.290976, -0.901794,
		0.867775, -0.292405, 0.401828,
		-0.380611, -0.910951, 0.159069,
		40.866951, 35.647278, 36.410412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679195, 35.907696, 36.015526>,  <41.133381, 36.284943, 36.299061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679195, 35.907696, 36.015526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350155, 35.682796, 36.049454>,  <41.152729, 35.547855, 36.069809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350155, 35.682796, 36.049454>,  <41.679195, 35.907696, 36.015526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350155, 35.682796, 36.049454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064440, -0.240388, -0.968536,
		0.564951, -0.791256, 0.233976,
		-0.822605, -0.562252, 0.084818,
		41.103374, 35.514122, 36.074898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842834, 35.334591, 35.841122>,  <41.679195, 35.907696, 36.015526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842834, 35.334591, 35.841122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448528, 35.283260, 35.797657>,  <41.211945, 35.252464, 35.771580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448528, 35.283260, 35.797657>,  <41.842834, 35.334591, 35.841122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448528, 35.283260, 35.797657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140686, -0.275514, -0.950947,
		0.092093, -0.952693, 0.289645,
		-0.985762, -0.128325, -0.108657,
		41.152802, 35.244762, 35.765060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700150, 34.722980, 35.504379>,  <41.842834, 35.334591, 35.841122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700150, 34.722980, 35.504379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384869, 34.954693, 35.421265>,  <41.195702, 35.093719, 35.371395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384869, 34.954693, 35.421265>,  <41.700150, 34.722980, 35.504379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384869, 34.954693, 35.421265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060995, -0.262442, -0.963018,
		-0.612393, -0.771722, 0.171523,
		-0.788197, 0.579283, -0.207788,
		41.148411, 35.128479, 35.358929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049828, 34.406235, 35.118000>,  <41.700150, 34.722980, 35.504379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049828, 34.406235, 35.118000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078541, 34.797661, 35.040798>,  <41.095768, 35.032516, 34.994476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078541, 34.797661, 35.040798>,  <41.049828, 34.406235, 35.118000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078541, 34.797661, 35.040798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023761, -0.195128, -0.980490,
		-0.997137, 0.065792, -0.037258,
		0.071779, 0.978568, -0.193006,
		41.100075, 35.091232, 34.982895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595398, 34.569035, 34.591560>,  <41.049828, 34.406235, 35.118000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595398, 34.569035, 34.591560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909809, 34.816311, 34.592487>,  <41.098457, 34.964676, 34.593044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909809, 34.816311, 34.592487>,  <40.595398, 34.569035, 34.591560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909809, 34.816311, 34.592487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120994, -0.150172, -0.981228,
		-0.606236, 0.771552, -0.192836,
		0.786027, 0.618188, 0.002313,
		41.145618, 35.001766, 34.593182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509628, 35.103550, 34.097378>,  <40.595398, 34.569035, 34.591560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509628, 35.103550, 34.097378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902088, 35.035870, 34.134708>,  <41.137566, 34.995262, 34.157108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902088, 35.035870, 34.134708>,  <40.509628, 35.103550, 34.097378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902088, 35.035870, 34.134708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107631, 0.077411, -0.991173,
		0.160479, 0.982537, 0.094163,
		0.981153, -0.169197, 0.093329,
		41.196434, 34.985111, 34.162708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874344, 35.666691, 33.783424>,  <40.509628, 35.103550, 34.097378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874344, 35.666691, 33.783424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145218, 35.372833, 33.799961>,  <41.307743, 35.196518, 33.809883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145218, 35.372833, 33.799961>,  <40.874344, 35.666691, 33.783424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145218, 35.372833, 33.799961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199175, 0.128925, -0.971446,
		0.708339, 0.666088, 0.233630,
		0.677190, -0.734646, 0.041345,
		41.348373, 35.152439, 33.812366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501575, 35.907307, 33.637455>,  <40.874344, 35.666691, 33.783424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501575, 35.907307, 33.637455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482773, 35.527164, 33.514416>,  <41.471489, 35.299080, 33.440590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482773, 35.527164, 33.514416>,  <41.501575, 35.907307, 33.637455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482773, 35.527164, 33.514416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228561, 0.289538, -0.929477,
		0.972394, -0.114000, 0.203602,
		-0.047010, -0.950353, -0.307601,
		41.468670, 35.242058, 33.422134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192642, 35.593285, 33.357758>,  <41.501575, 35.907307, 33.637455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192642, 35.593285, 33.357758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849560, 35.460335, 33.200855>,  <41.643711, 35.380566, 33.106716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849560, 35.460335, 33.200855>,  <42.192642, 35.593285, 33.357758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849560, 35.460335, 33.200855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346752, 0.189331, -0.918649,
		0.379601, -0.923948, -0.047139,
		-0.857709, -0.332375, -0.392251,
		41.592247, 35.360622, 33.083179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237644, 35.057343, 32.797131>,  <42.192642, 35.593285, 33.357758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237644, 35.057343, 32.797131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904160, 35.273708, 32.752708>,  <41.704067, 35.403530, 32.726055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904160, 35.273708, 32.752708>,  <42.237644, 35.057343, 32.797131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904160, 35.273708, 32.752708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240802, 0.175142, -0.954641,
		-0.496932, -0.822637, -0.276272,
		-0.833710, 0.540919, -0.111059,
		41.654045, 35.435986, 32.719391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009453, 34.814541, 32.006203>,  <42.237644, 35.057343, 32.797131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009453, 34.814541, 32.006203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395702, 34.829460, 32.109104>,  <42.627453, 34.838413, 32.170845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395702, 34.829460, 32.109104>,  <42.009453, 34.814541, 32.006203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395702, 34.829460, 32.109104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252944, 0.093336, -0.962968,
		-0.059927, 0.994936, 0.080693,
		0.965623, 0.037297, 0.257257,
		42.685390, 34.840649, 32.186279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261425, 35.373188, 31.615034>,  <42.009453, 34.814541, 32.006203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261425, 35.373188, 31.615034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.583832, 35.162819, 31.723658>,  <42.777275, 35.036598, 31.788832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.583832, 35.162819, 31.723658>,  <42.261425, 35.373188, 31.615034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583832, 35.162819, 31.723658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485584, 0.325202, -0.811450,
		0.338446, 0.785908, 0.517497,
		0.806016, -0.525921, 0.271561,
		42.825638, 35.005043, 31.805126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850803, 35.854202, 31.565210>,  <42.261425, 35.373188, 31.615034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850803, 35.854202, 31.565210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983883, 35.479916, 31.518303>,  <43.063732, 35.255344, 31.490158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983883, 35.479916, 31.518303>,  <42.850803, 35.854202, 31.565210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983883, 35.479916, 31.518303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328425, 0.231537, -0.915712,
		0.883994, 0.266147, 0.384344,
		0.332703, -0.935712, -0.117268,
		43.083694, 35.199203, 31.483122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545597, 35.941071, 31.296764>,  <42.850803, 35.854202, 31.565210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545597, 35.941071, 31.296764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423988, 35.572689, 31.199265>,  <43.351025, 35.351662, 31.140764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423988, 35.572689, 31.199265>,  <43.545597, 35.941071, 31.296764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423988, 35.572689, 31.199265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431404, 0.095034, -0.897140,
		0.849390, -0.377902, 0.368411,
		-0.304019, -0.920955, -0.243749,
		43.332783, 35.296402, 31.126141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145496, 35.623714, 30.966017>,  <43.545597, 35.941071, 31.296764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145496, 35.623714, 30.966017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850605, 35.374447, 30.861593>,  <43.673668, 35.224888, 30.798939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850605, 35.374447, 30.861593>,  <44.145496, 35.623714, 30.966017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850605, 35.374447, 30.861593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370184, -0.049332, -0.927647,
		0.565202, -0.780530, 0.267057,
		-0.737231, -0.623169, -0.261057,
		43.629436, 35.187496, 30.783276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502941, 35.175415, 30.554705>,  <44.145496, 35.623714, 30.966017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502941, 35.175415, 30.554705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130814, 35.078690, 30.444407>,  <43.907536, 35.020653, 30.378227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130814, 35.078690, 30.444407>,  <44.502941, 35.175415, 30.554705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130814, 35.078690, 30.444407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301656, -0.076891, -0.950311,
		0.208598, -0.967271, 0.144478,
		-0.930318, -0.241815, -0.275744,
		43.851719, 35.006145, 30.361683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532795, 34.513264, 30.226843>,  <44.502941, 35.175415, 30.554705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532795, 34.513264, 30.226843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189991, 34.666126, 30.088573>,  <43.984310, 34.757843, 30.005611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189991, 34.666126, 30.088573>,  <44.532795, 34.513264, 30.226843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189991, 34.666126, 30.088573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265527, -0.247404, -0.931819,
		-0.441619, -0.890365, 0.110556,
		-0.857011, 0.382154, -0.345674,
		43.932888, 34.780773, 29.984871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255238, 33.999660, 29.685177>,  <44.532795, 34.513264, 30.226843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255238, 33.999660, 29.685177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100101, 34.361362, 29.613733>,  <44.007019, 34.578384, 29.570868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100101, 34.361362, 29.613733>,  <44.255238, 33.999660, 29.685177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100101, 34.361362, 29.613733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227230, -0.093995, -0.969294,
		-0.893277, -0.416520, -0.169018,
		-0.387844, 0.904254, -0.178610,
		43.983749, 34.632637, 29.560150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079601, 33.892380, 29.009007>,  <44.255238, 33.999660, 29.685177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079601, 33.892380, 29.009007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048180, 34.285660, 29.074923>,  <44.029327, 34.521626, 29.114471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048180, 34.285660, 29.074923>,  <44.079601, 33.892380, 29.009007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048180, 34.285660, 29.074923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297400, 0.180884, -0.937462,
		-0.951516, -0.024630, -0.306611,
		-0.078551, 0.983196, 0.164789,
		44.024616, 34.580620, 29.124359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676765, 34.262241, 28.571026>,  <44.079601, 33.892380, 29.009007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676765, 34.262241, 28.571026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942394, 34.539909, 28.682116>,  <44.101772, 34.706509, 28.748770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942394, 34.539909, 28.682116>,  <43.676765, 34.262241, 28.571026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942394, 34.539909, 28.682116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373052, 0.014279, -0.927701,
		-0.647948, 0.719669, -0.249480,
		0.664075, 0.694171, 0.277726,
		44.141617, 34.748161, 28.765434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786610, 34.610840, 27.984114>,  <43.676765, 34.262241, 28.571026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786610, 34.610840, 27.984114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087265, 34.736420, 28.216141>,  <44.267658, 34.811768, 28.355356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087265, 34.736420, 28.216141>,  <43.786610, 34.610840, 27.984114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087265, 34.736420, 28.216141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570998, 0.130497, -0.810513,
		-0.330156, 0.940429, -0.081178,
		0.751637, 0.313949, 0.580068,
		44.312756, 34.830605, 28.390162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159122, 35.297771, 27.552767>,  <43.786610, 34.610840, 27.984114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159122, 35.297771, 27.552767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404217, 35.141354, 27.827473>,  <44.551273, 35.047504, 27.992296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404217, 35.141354, 27.827473>,  <44.159122, 35.297771, 27.552767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404217, 35.141354, 27.827473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784099, 0.192259, -0.590106,
		0.098720, 0.900068, 0.424419,
		0.612734, -0.391042, 0.686763,
		44.588036, 35.024040, 28.033501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649323, 35.841927, 27.756651>,  <44.159122, 35.297771, 27.552767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649323, 35.841927, 27.756651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840282, 35.502922, 27.849447>,  <44.954857, 35.299519, 27.905125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840282, 35.502922, 27.849447>,  <44.649323, 35.841927, 27.756651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840282, 35.502922, 27.849447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769523, 0.275798, -0.575994,
		0.424179, 0.453499, 0.783844,
		0.477395, -0.847511, 0.231990,
		44.983501, 35.248669, 27.919044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282486, 36.028294, 27.981682>,  <44.649323, 35.841927, 27.756651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282486, 36.028294, 27.981682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312546, 35.646851, 27.865070>,  <45.330582, 35.417984, 27.795103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312546, 35.646851, 27.865070>,  <45.282486, 36.028294, 27.981682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312546, 35.646851, 27.865070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761931, 0.243511, -0.600137,
		0.643284, -0.177024, 0.744881,
		0.075148, -0.953606, -0.291527,
		45.335091, 35.360767, 27.777613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965027, 35.838295, 28.043386>,  <45.282486, 36.028294, 27.981682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965027, 35.838295, 28.043386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.810551, 35.554256, 27.807886>,  <45.717865, 35.383835, 27.666586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.810551, 35.554256, 27.807886>,  <45.965027, 35.838295, 28.043386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.810551, 35.554256, 27.807886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804073, 0.053623, -0.592108,
		0.452022, -0.702063, 0.550258,
		-0.386191, -0.710093, -0.588749,
		45.694695, 35.341228, 27.631262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527245, 35.476707, 27.964819>,  <45.965027, 35.838295, 28.043386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527245, 35.476707, 27.964819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265541, 35.364243, 27.683992>,  <46.108521, 35.296764, 27.515497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265541, 35.364243, 27.683992>,  <46.527245, 35.476707, 27.964819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.265541, 35.364243, 27.683992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689357, 0.160067, -0.706517,
		0.311026, -0.946216, 0.089099,
		-0.654256, -0.281166, -0.702065,
		46.069263, 35.279892, 27.473373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908836, 35.024212, 27.531771>,  <46.527245, 35.476707, 27.964819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.908836, 35.024212, 27.531771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595501, 35.135235, 27.309294>,  <46.407501, 35.201847, 27.175808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595501, 35.135235, 27.309294>,  <46.908836, 35.024212, 27.531771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.595501, 35.135235, 27.309294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612576, 0.192778, -0.766542,
		-0.105537, -0.941169, -0.321033,
		-0.783334, 0.277556, -0.556193,
		46.360500, 35.218502, 27.142435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.015198, 34.778027, 26.955982>,  <46.908836, 35.024212, 27.531771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.015198, 34.778027, 26.955982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752659, 35.057919, 26.843134>,  <46.595135, 35.225853, 26.775425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752659, 35.057919, 26.843134>,  <47.015198, 34.778027, 26.955982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752659, 35.057919, 26.843134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562246, 0.204301, -0.801337,
		-0.503080, -0.684574, -0.527511,
		-0.656346, 0.699728, -0.282119,
		46.555756, 35.267838, 26.758497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.248329, 34.846405, 26.274761>,  <47.015198, 34.778027, 26.955982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.248329, 34.846405, 26.274761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.015972, 35.163414, 26.349031>,  <46.876560, 35.353619, 26.393593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.015972, 35.163414, 26.349031>,  <47.248329, 34.846405, 26.274761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.015972, 35.163414, 26.349031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490855, 0.523022, -0.696785,
		-0.649330, -0.313615, -0.692832,
		-0.580889, 0.792523, 0.185675,
		46.841705, 35.401173, 26.404734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.013271, 35.126820, 25.641844>,  <47.248329, 34.846405, 26.274761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.013271, 35.126820, 25.641844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.990211, 35.439995, 25.889612>,  <46.976376, 35.627899, 26.038273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.990211, 35.439995, 25.889612>,  <47.013271, 35.126820, 25.641844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.990211, 35.439995, 25.889612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417275, 0.582554, -0.697504,
		-0.906950, 0.218255, -0.360287,
		-0.057653, 0.782940, 0.619420,
		46.972916, 35.674877, 26.075438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.800144, 35.673260, 25.228508>,  <47.013271, 35.126820, 25.641844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.800144, 35.673260, 25.228508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.965851, 35.853989, 25.544542>,  <47.065277, 35.962425, 25.734163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.965851, 35.853989, 25.544542>,  <46.800144, 35.673260, 25.228508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.965851, 35.853989, 25.544542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529085, 0.586790, -0.612981,
		-0.740574, 0.671962, 0.004036,
		0.414268, 0.451823, 0.790087,
		47.090130, 35.989536, 25.781569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660316, 36.415920, 25.148901>,  <46.800144, 35.673260, 25.228508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660316, 36.415920, 25.148901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967133, 36.348072, 25.396410>,  <47.151222, 36.307365, 25.544914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967133, 36.348072, 25.396410>,  <46.660316, 36.415920, 25.148901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.967133, 36.348072, 25.396410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551059, 0.668110, -0.499963,
		-0.328604, 0.724472, 0.605937,
		0.767042, -0.169617, 0.618771,
		47.197247, 36.297188, 25.582041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.762783, 37.110149, 24.967169>,  <46.660316, 36.415920, 25.148901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.762783, 37.110149, 24.967169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376099, 37.126488, 24.866131>,  <46.144089, 37.136292, 24.805508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376099, 37.126488, 24.866131>,  <46.762783, 37.110149, 24.967169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.376099, 37.126488, 24.866131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104467, 0.838160, 0.535327,
		0.233578, 0.543893, -0.805991,
		-0.966710, 0.040841, -0.252595,
		46.086086, 37.138741, 24.790352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582130, 37.793594, 24.598030>,  <46.762783, 37.110149, 24.967169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582130, 37.793594, 24.598030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.282875, 37.632618, 24.809055>,  <46.103321, 37.536030, 24.935671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.282875, 37.632618, 24.809055>,  <46.582130, 37.793594, 24.598030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.282875, 37.632618, 24.809055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167704, 0.883945, 0.436482,
		-0.641995, 0.238077, -0.728808,
		-0.748143, -0.402444, 0.527562,
		46.058434, 37.511887, 24.967323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848186, 38.119164, 24.527517>,  <46.582130, 37.793594, 24.598030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848186, 38.119164, 24.527517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879696, 37.959259, 24.892809>,  <45.898602, 37.863316, 25.111984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879696, 37.959259, 24.892809>,  <45.848186, 38.119164, 24.527517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879696, 37.959259, 24.892809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045022, 0.913713, 0.403858,
		-0.995875, -0.072929, 0.053979,
		0.078774, -0.399762, 0.913228,
		45.903328, 37.839329, 25.166777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420265, 38.407730, 24.988728>,  <45.848186, 38.119164, 24.527517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420265, 38.407730, 24.988728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707127, 38.323643, 25.254511>,  <45.879242, 38.273190, 25.413980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707127, 38.323643, 25.254511>,  <45.420265, 38.407730, 24.988728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707127, 38.323643, 25.254511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291151, 0.775866, 0.559700,
		-0.633188, -0.594846, 0.495208,
		0.717150, -0.210215, 0.664459,
		45.922272, 38.260578, 25.453848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305679, 38.302731, 25.730604>,  <45.420265, 38.407730, 24.988728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305679, 38.302731, 25.730604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680180, 38.442329, 25.746761>,  <45.904881, 38.526089, 25.756456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680180, 38.442329, 25.746761>,  <45.305679, 38.302731, 25.730604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680180, 38.442329, 25.746761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313796, 0.778983, 0.542879,
		0.157998, -0.520947, 0.838839,
		0.936252, 0.348998, 0.040394,
		45.961056, 38.547028, 25.758879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448978, 38.381680, 26.488182>,  <45.305679, 38.302731, 25.730604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448978, 38.381680, 26.488182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583275, 38.608997, 26.187696>,  <45.663853, 38.745388, 26.007404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583275, 38.608997, 26.187696>,  <45.448978, 38.381680, 26.488182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583275, 38.608997, 26.187696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603141, 0.742278, 0.291966,
		0.723530, 0.355060, 0.591977,
		0.335746, 0.568292, -0.751211,
		45.683998, 38.779484, 25.962332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548698, 39.164669, 26.689423>,  <45.448978, 38.381680, 26.488182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548698, 39.164669, 26.689423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455212, 39.100849, 26.305773>,  <45.399120, 39.062557, 26.075583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455212, 39.100849, 26.305773>,  <45.548698, 39.164669, 26.689423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.455212, 39.100849, 26.305773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653557, 0.756137, 0.033475,
		0.719889, 0.634666, -0.280997,
		-0.233718, -0.159549, -0.959125,
		45.385098, 39.052986, 26.018036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254929, 39.851387, 26.412439>,  <45.548698, 39.164669, 26.689423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254929, 39.851387, 26.412439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042694, 39.512398, 26.418987>,  <44.915352, 39.309006, 26.422916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042694, 39.512398, 26.418987>,  <45.254929, 39.851387, 26.412439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042694, 39.512398, 26.418987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222295, 0.157761, 0.962131,
		-0.817962, 0.506856, -0.272095,
		-0.530588, -0.847472, 0.016371,
		44.883518, 39.258156, 26.423899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684353, 39.951935, 26.866755>,  <45.254929, 39.851387, 26.412439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684353, 39.951935, 26.866755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675964, 39.559849, 26.945490>,  <44.670933, 39.324596, 26.992731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675964, 39.559849, 26.945490>,  <44.684353, 39.951935, 26.866755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675964, 39.559849, 26.945490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140499, 0.197816, 0.970118,
		-0.989859, -0.007315, -0.141867,
		-0.020967, -0.980212, 0.196838,
		44.669674, 39.265785, 27.004541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956806, 40.089569, 27.577164>,  <44.684353, 39.951935, 26.866755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956806, 40.089569, 27.577164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.563625, 40.094822, 27.503807>,  <44.327717, 40.097973, 27.459793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.563625, 40.094822, 27.503807>,  <44.956806, 40.089569, 27.577164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563625, 40.094822, 27.503807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181916, -0.214075, 0.959728,
		-0.026658, 0.976729, 0.212815,
		-0.982953, 0.013130, -0.183390,
		44.268738, 40.098763, 27.448790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659893, 40.455235, 28.139036>,  <44.956806, 40.089569, 27.577164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659893, 40.455235, 28.139036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359879, 40.232487, 27.996296>,  <44.179871, 40.098839, 27.910652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359879, 40.232487, 27.996296>,  <44.659893, 40.455235, 28.139036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359879, 40.232487, 27.996296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219797, -0.299018, 0.928589,
		-0.623808, 0.774910, 0.101875,
		-0.750035, -0.556869, -0.356853,
		44.134869, 40.065426, 27.889240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233292, 40.453350, 28.668636>,  <44.659893, 40.455235, 28.139036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233292, 40.453350, 28.668636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124836, 40.145313, 28.437660>,  <44.059761, 39.960491, 28.299074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124836, 40.145313, 28.437660>,  <44.233292, 40.453350, 28.668636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124836, 40.145313, 28.437660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251972, -0.522208, 0.814745,
		-0.928975, 0.366408, -0.052451,
		-0.271139, -0.770094, -0.577442,
		44.043495, 39.914284, 28.264427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745270, 40.147942, 29.001734>,  <44.233292, 40.453350, 28.668636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745270, 40.147942, 29.001734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872776, 39.872528, 28.741179>,  <43.949280, 39.707279, 28.584845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872776, 39.872528, 28.741179>,  <43.745270, 40.147942, 29.001734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872776, 39.872528, 28.741179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019546, -0.691866, 0.721761,
		-0.947633, -0.217338, -0.234000,
		0.318763, -0.688538, -0.651387,
		43.968403, 39.665966, 28.545763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284603, 39.550392, 29.003050>,  <43.745270, 40.147942, 29.001734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284603, 39.550392, 29.003050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611763, 39.391624, 28.836437>,  <43.808060, 39.296364, 28.736469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611763, 39.391624, 28.836437>,  <43.284603, 39.550392, 29.003050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611763, 39.391624, 28.836437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056947, -0.776237, 0.627864,
		-0.572534, -0.489811, -0.657488,
		0.817901, -0.396916, -0.416529,
		43.857132, 39.272549, 28.711479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103889, 38.886421, 29.033976>,  <43.284603, 39.550392, 29.003050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103889, 38.886421, 29.033976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498112, 38.887661, 28.966244>,  <43.734646, 38.888405, 28.925606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498112, 38.887661, 28.966244>,  <43.103889, 38.886421, 29.033976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498112, 38.887661, 28.966244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101195, -0.812501, 0.574109,
		-0.135798, -0.582952, -0.801078,
		0.985555, 0.003102, -0.169328,
		43.793777, 38.888592, 28.915445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286854, 38.238930, 28.799969>,  <43.103889, 38.886421, 29.033976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286854, 38.238930, 28.799969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636646, 38.387074, 28.925268>,  <43.846519, 38.475960, 29.000448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636646, 38.387074, 28.925268>,  <43.286854, 38.238930, 28.799969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636646, 38.387074, 28.925268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183022, -0.849977, 0.494005,
		0.449214, -0.374665, -0.811069,
		0.874477, 0.370357, 0.313250,
		43.898991, 38.498180, 29.019243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673607, 37.687374, 28.906235>,  <43.286854, 38.238930, 28.799969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673607, 37.687374, 28.906235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886837, 37.966747, 29.097239>,  <44.014774, 38.134373, 29.211842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886837, 37.966747, 29.097239>,  <43.673607, 37.687374, 28.906235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886837, 37.966747, 29.097239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427883, -0.709446, 0.560002,
		0.729892, -0.094207, -0.677039,
		0.533079, 0.698435, 0.477510,
		44.046761, 38.176277, 29.240492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364864, 37.362587, 29.016031>,  <43.673607, 37.687374, 28.906235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364864, 37.362587, 29.016031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342365, 37.651581, 29.291670>,  <44.328865, 37.824978, 29.457052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342365, 37.651581, 29.291670>,  <44.364864, 37.362587, 29.016031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342365, 37.651581, 29.291670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337037, -0.635933, 0.694258,
		0.939809, 0.271303, -0.207733,
		-0.056250, 0.722484, 0.689095,
		44.325489, 37.868324, 29.498398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000164, 37.410030, 29.346972>,  <44.364864, 37.362587, 29.016031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000164, 37.410030, 29.346972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747799, 37.568127, 29.614025>,  <44.596382, 37.662983, 29.774258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747799, 37.568127, 29.614025>,  <45.000164, 37.410030, 29.346972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747799, 37.568127, 29.614025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462085, -0.499827, 0.732564,
		0.623241, 0.770687, 0.132712,
		-0.630911, 0.395240, 0.667635,
		44.558525, 37.686699, 29.814316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407738, 37.560104, 29.963436>,  <45.000164, 37.410030, 29.346972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407738, 37.560104, 29.963436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034496, 37.523518, 30.102552>,  <44.810551, 37.501568, 30.186022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034496, 37.523518, 30.102552>,  <45.407738, 37.560104, 29.963436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.034496, 37.523518, 30.102552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332228, -0.589447, 0.736327,
		0.137656, 0.802612, 0.580400,
		-0.933100, -0.091465, 0.347791,
		44.754566, 37.496078, 30.206890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400414, 37.724960, 30.746288>,  <45.407738, 37.560104, 29.963436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400414, 37.724960, 30.746288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065350, 37.511909, 30.697895>,  <44.864311, 37.384079, 30.668859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065350, 37.511909, 30.697895>,  <45.400414, 37.724960, 30.746288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065350, 37.511909, 30.697895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172312, -0.467890, 0.866826,
		-0.518301, 0.705257, 0.483710,
		-0.837659, -0.532626, -0.120984,
		44.814053, 37.352123, 30.661600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.019207, 37.817802, 31.328411>,  <45.400414, 37.724960, 30.746288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.019207, 37.817802, 31.328411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878197, 37.481876, 31.163271>,  <44.793591, 37.280323, 31.064186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878197, 37.481876, 31.163271>,  <45.019207, 37.817802, 31.328411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878197, 37.481876, 31.163271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189880, -0.496186, 0.847198,
		-0.916337, 0.220265, 0.334380,
		-0.352522, -0.839811, -0.412850,
		44.772442, 37.229935, 31.039415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625885, 37.471321, 31.880198>,  <45.019207, 37.817802, 31.328411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625885, 37.471321, 31.880198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715656, 37.196556, 31.603708>,  <44.769520, 37.031696, 31.437815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715656, 37.196556, 31.603708>,  <44.625885, 37.471321, 31.880198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715656, 37.196556, 31.603708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154702, -0.675206, 0.721224,
		-0.962132, -0.268797, -0.045269,
		0.224429, -0.686910, -0.691221,
		44.782986, 36.990482, 31.396341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162128, 36.870895, 32.081680>,  <44.625885, 37.471321, 31.880198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162128, 36.870895, 32.081680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460949, 36.743916, 31.848055>,  <44.640244, 36.667728, 31.707878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460949, 36.743916, 31.848055>,  <44.162128, 36.870895, 32.081680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460949, 36.743916, 31.848055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222374, -0.708654, 0.669597,
		-0.626463, -0.630108, -0.458812,
		0.747056, -0.317450, -0.584065,
		44.685066, 36.648682, 31.672834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009892, 36.125801, 32.022209>,  <44.162128, 36.870895, 32.081680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009892, 36.125801, 32.022209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392097, 36.176365, 31.915621>,  <44.621422, 36.206703, 31.851667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392097, 36.176365, 31.915621>,  <44.009892, 36.125801, 32.022209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392097, 36.176365, 31.915621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270624, -0.734983, 0.621742,
		-0.117263, -0.666199, -0.736497,
		0.955517, 0.126406, -0.266475,
		44.678753, 36.214287, 31.835678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136917, 35.472603, 31.680178>,  <44.009892, 36.125801, 32.022209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136917, 35.472603, 31.680178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476917, 35.630112, 31.820150>,  <44.680916, 35.724617, 31.904135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476917, 35.630112, 31.820150>,  <44.136917, 35.472603, 31.680178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476917, 35.630112, 31.820150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166811, -0.831281, 0.530233,
		0.499682, -0.392323, -0.772270,
		0.849996, 0.393770, 0.349932,
		44.731915, 35.748241, 31.925131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530960, 34.842434, 31.706053>,  <44.136917, 35.472603, 31.680178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530960, 34.842434, 31.706053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730713, 35.122375, 31.910336>,  <44.850563, 35.290340, 32.032906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730713, 35.122375, 31.910336>,  <44.530960, 34.842434, 31.706053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730713, 35.122375, 31.910336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375217, -0.706024, 0.600618,
		0.780916, -0.108312, -0.615173,
		0.499381, 0.699856, 0.510705,
		44.880527, 35.332333, 32.063545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221977, 34.498589, 31.791378>,  <44.530960, 34.842434, 31.706053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221977, 34.498589, 31.791378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187824, 34.796677, 32.055908>,  <45.167332, 34.975529, 32.214626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187824, 34.796677, 32.055908>,  <45.221977, 34.498589, 31.791378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187824, 34.796677, 32.055908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514513, -0.535424, 0.669774,
		0.853221, 0.397447, -0.337712,
		-0.085380, 0.745223, 0.661327,
		45.162209, 35.020245, 32.254307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826302, 34.539795, 32.160057>,  <45.221977, 34.498589, 31.791378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826302, 34.539795, 32.160057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568268, 34.743713, 32.387730>,  <45.413448, 34.866066, 32.524334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568268, 34.743713, 32.387730>,  <45.826302, 34.539795, 32.160057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568268, 34.743713, 32.387730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355840, -0.458769, 0.814192,
		0.676195, 0.727764, 0.114541,
		-0.645088, 0.509795, 0.569185,
		45.374741, 34.896652, 32.558483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.242340, 34.809456, 32.665775>,  <45.826302, 34.539795, 32.160057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.242340, 34.809456, 32.665775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869568, 34.782150, 32.808239>,  <45.645905, 34.765766, 32.893719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869568, 34.782150, 32.808239>,  <46.242340, 34.809456, 32.665775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869568, 34.782150, 32.808239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355972, -0.359764, 0.862470,
		0.069255, 0.930543, 0.359575,
		-0.931927, -0.068269, 0.356162,
		45.589989, 34.761669, 32.915089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.619785, 34.972389, 33.244263>,  <46.242340, 34.809456, 32.665775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.619785, 34.972389, 33.244263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989609, 35.124115, 33.258724>,  <47.211502, 35.215149, 33.267403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989609, 35.124115, 33.258724>,  <46.619785, 34.972389, 33.244263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.989609, 35.124115, 33.258724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245746, 0.521087, 0.817360,
		0.291193, -0.764586, 0.574992,
		0.924562, 0.379311, 0.036158,
		47.266979, 35.237907, 33.269569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019482, 34.804222, 33.887211>,  <46.619785, 34.972389, 33.244263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019482, 34.804222, 33.887211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130611, 35.153637, 33.727341>,  <47.197289, 35.363285, 33.631420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130611, 35.153637, 33.727341>,  <47.019482, 34.804222, 33.887211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.130611, 35.153637, 33.727341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121304, 0.444625, 0.887465,
		0.952943, -0.198076, 0.229491,
		0.277824, 0.873541, -0.399675,
		47.213959, 35.415699, 33.607437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652451, 35.027138, 34.260010>,  <47.019482, 34.804222, 33.887211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652451, 35.027138, 34.260010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461735, 35.353691, 34.129665>,  <47.347305, 35.549625, 34.051460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461735, 35.353691, 34.129665>,  <47.652451, 35.027138, 34.260010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.461735, 35.353691, 34.129665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078156, 0.408613, 0.909355,
		0.875535, 0.408105, -0.258629,
		-0.476792, 0.816386, -0.325859,
		47.318699, 35.598606, 34.031906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.745602, 34.575535, 34.834808>,  <47.652451, 35.027138, 34.260010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.745602, 34.575535, 34.834808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694687, 34.950459, 34.964581>,  <47.664139, 35.175411, 35.042442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694687, 34.950459, 34.964581>,  <47.745602, 34.575535, 34.834808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.694687, 34.950459, 34.964581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991228, 0.131934, 0.007723,
		-0.035564, 0.322565, -0.945879,
		-0.127284, 0.937307, 0.324428,
		47.656502, 35.231651, 35.061909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.213661, 39.763985, 42.653099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.052551, 39.440556, 42.824677>,  <32.955887, 39.246498, 42.927624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.052551, 39.440556, 42.824677>,  <33.213661, 39.763985, 42.653099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052551, 39.440556, 42.824677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156622, -0.522604, -0.838066,
		0.901801, -0.270368, 0.337129,
		-0.402771, -0.808570, 0.428939,
		32.931721, 39.197983, 42.953358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671543, 39.130836, 42.446583>,  <33.213661, 39.763985, 42.653099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671543, 39.130836, 42.446583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.334885, 38.964729, 42.584679>,  <33.132889, 38.865063, 42.667534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.334885, 38.964729, 42.584679>,  <33.671543, 39.130836, 42.446583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334885, 38.964729, 42.584679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141540, -0.786564, -0.601069,
		0.521156, -0.457021, 0.720783,
		-0.841643, -0.415270, 0.345236,
		33.082390, 38.840149, 42.688248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832500, 38.442318, 42.498386>,  <33.671543, 39.130836, 42.446583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832500, 38.442318, 42.498386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.433846, 38.459404, 42.470406>,  <33.194653, 38.469658, 42.453617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.433846, 38.459404, 42.470406>,  <33.832500, 38.442318, 42.498386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433846, 38.459404, 42.470406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025236, -0.652047, -0.757758,
		-0.077983, -0.756974, 0.648775,
		-0.996635, 0.042719, -0.069951,
		33.134853, 38.472221, 42.449421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550339, 37.781490, 42.521557>,  <33.832500, 38.442318, 42.498386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550339, 37.781490, 42.521557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.282639, 38.002342, 42.322659>,  <33.122021, 38.134853, 42.203320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.282639, 38.002342, 42.322659>,  <33.550339, 37.781490, 42.521557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282639, 38.002342, 42.322659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101038, -0.595370, -0.797073,
		-0.736137, -0.583681, 0.342664,
		-0.669248, 0.552133, -0.497248,
		33.081863, 38.167980, 42.173485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035465, 37.331139, 42.053574>,  <33.550339, 37.781490, 42.521557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035465, 37.331139, 42.053574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.005566, 37.690979, 41.881470>,  <32.987625, 37.906883, 41.778206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.005566, 37.690979, 41.881470>,  <33.035465, 37.331139, 42.053574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005566, 37.690979, 41.881470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021689, -0.432830, -0.901214,
		-0.996966, -0.058037, 0.051867,
		-0.074753, 0.899605, -0.430258,
		32.983139, 37.960861, 41.752392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438972, 37.280331, 41.575867>,  <33.035465, 37.331139, 42.053574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438972, 37.280331, 41.575867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.637520, 37.607365, 41.459129>,  <32.756649, 37.803585, 41.389088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.637520, 37.607365, 41.459129>,  <32.438972, 37.280331, 41.575867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637520, 37.607365, 41.459129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159515, -0.244563, -0.956422,
		-0.853330, 0.521294, 0.009023,
		0.496371, 0.817583, -0.291847,
		32.786430, 37.852638, 41.371574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118664, 37.503315, 41.132511>,  <32.438972, 37.280331, 41.575867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118664, 37.503315, 41.132511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.479206, 37.655025, 41.048893>,  <32.695534, 37.746052, 40.998722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.479206, 37.655025, 41.048893>,  <32.118664, 37.503315, 41.132511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479206, 37.655025, 41.048893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052806, -0.382858, -0.922297,
		-0.429840, 0.842360, -0.325064,
		0.901359, 0.379275, -0.209050,
		32.749615, 37.768806, 40.986179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087826, 37.801834, 40.427631>,  <32.118664, 37.503315, 41.132511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087826, 37.801834, 40.427631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481224, 37.745975, 40.473637>,  <32.717262, 37.712460, 40.501240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481224, 37.745975, 40.473637>,  <32.087826, 37.801834, 40.427631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481224, 37.745975, 40.473637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009146, -0.596565, -0.802513,
		0.180679, 0.790323, -0.585445,
		0.983500, -0.139643, 0.115015,
		32.776276, 37.704082, 40.508141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406689, 37.913902, 39.726944>,  <32.087826, 37.801834, 40.427631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406689, 37.913902, 39.726944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.693184, 37.730171, 39.937096>,  <32.865082, 37.619934, 40.063187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.693184, 37.730171, 39.937096>,  <32.406689, 37.913902, 39.726944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693184, 37.730171, 39.937096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300259, -0.476764, -0.826161,
		0.629958, 0.749478, -0.203561,
		0.716239, -0.459325, 0.525378,
		32.908054, 37.592373, 40.094707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012829, 37.950504, 39.225407>,  <32.406689, 37.913902, 39.726944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012829, 37.950504, 39.225407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.143715, 37.685570, 39.494995>,  <33.222248, 37.526608, 39.656750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.143715, 37.685570, 39.494995>,  <33.012829, 37.950504, 39.225407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143715, 37.685570, 39.494995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730377, -0.275269, -0.625121,
		0.599564, 0.696804, 0.393683,
		0.327218, -0.662337, 0.673971,
		33.241879, 37.486870, 39.697186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773811, 37.950920, 39.300613>,  <33.012829, 37.950504, 39.225407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773811, 37.950920, 39.300613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663734, 37.580505, 39.403942>,  <33.597687, 37.358257, 39.465939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663734, 37.580505, 39.403942>,  <33.773811, 37.950920, 39.300613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663734, 37.580505, 39.403942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718849, -0.376618, -0.584308,
		0.638377, 0.024895, 0.769321,
		-0.275194, -0.926034, 0.258320,
		33.581177, 37.302696, 39.481438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439224, 37.579430, 39.463360>,  <33.773811, 37.950920, 39.300613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439224, 37.579430, 39.463360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.164440, 37.298992, 39.386898>,  <33.999569, 37.130730, 39.341019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.164440, 37.298992, 39.386898>,  <34.439224, 37.579430, 39.463360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164440, 37.298992, 39.386898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675800, -0.519649, -0.522741,
		0.267159, -0.488288, 0.830783,
		-0.686965, -0.701098, -0.191157,
		33.958351, 37.088661, 39.329552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739407, 36.901859, 39.551403>,  <34.439224, 37.579430, 39.463360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739407, 36.901859, 39.551403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421188, 36.825138, 39.321510>,  <34.230259, 36.779106, 39.183575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421188, 36.825138, 39.321510>,  <34.739407, 36.901859, 39.551403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421188, 36.825138, 39.321510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564203, -0.580303, -0.587301,
		-0.220873, -0.791491, 0.569874,
		-0.795544, -0.191805, -0.574735,
		34.182526, 36.767597, 39.149090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765514, 36.207062, 39.434956>,  <34.739407, 36.901859, 39.551403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765514, 36.207062, 39.434956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531734, 36.371685, 39.155231>,  <34.391464, 36.470459, 38.987396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531734, 36.371685, 39.155231>,  <34.765514, 36.207062, 39.434956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531734, 36.371685, 39.155231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554150, -0.427107, -0.714492,
		-0.592734, -0.805110, 0.021560,
		-0.584453, 0.411556, -0.699312,
		34.356400, 36.495152, 38.945438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795940, 35.800087, 38.926826>,  <34.765514, 36.207062, 39.434956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795940, 35.800087, 38.926826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.654179, 36.101658, 38.705559>,  <34.569122, 36.282600, 38.572800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.654179, 36.101658, 38.705559>,  <34.795940, 35.800087, 38.926826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654179, 36.101658, 38.705559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502134, -0.345600, -0.792731,
		-0.788836, -0.558708, -0.256092,
		-0.354400, 0.753927, -0.553168,
		34.547859, 36.327835, 38.539608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654640, 35.529999, 38.162739>,  <34.795940, 35.800087, 38.926826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654640, 35.529999, 38.162739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.689137, 35.927101, 38.129284>,  <34.709835, 36.165363, 38.109211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.689137, 35.927101, 38.129284>,  <34.654640, 35.529999, 38.162739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689137, 35.927101, 38.129284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619007, -0.119174, -0.776291,
		-0.780636, 0.015176, -0.624801,
		0.086241, 0.992757, -0.083637,
		34.715008, 36.224930, 38.104191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524448, 35.635612, 37.465309>,  <34.654640, 35.529999, 38.162739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524448, 35.635612, 37.465309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.746414, 35.934341, 37.611912>,  <34.879593, 36.113579, 37.699875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.746414, 35.934341, 37.611912>,  <34.524448, 35.635612, 37.465309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746414, 35.934341, 37.611912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632744, -0.092872, -0.768772,
		-0.540094, 0.658511, -0.524082,
		0.554917, 0.746819, 0.366509,
		34.912888, 36.158386, 37.721863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700684, 36.194450, 36.972733>,  <34.524448, 35.635612, 37.465309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700684, 36.194450, 36.972733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.999523, 36.248066, 37.233154>,  <35.178829, 36.280235, 37.389408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.999523, 36.248066, 37.233154>,  <34.700684, 36.194450, 36.972733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999523, 36.248066, 37.233154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640269, 0.118039, -0.759027,
		-0.178586, 0.983921, 0.002369,
		0.747103, 0.134035, 0.651054,
		35.223656, 36.288277, 37.428471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090290, 36.766262, 36.651279>,  <34.700684, 36.194450, 36.972733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090290, 36.766262, 36.651279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.316967, 36.589603, 36.929504>,  <35.452972, 36.483608, 37.096439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.316967, 36.589603, 36.929504>,  <35.090290, 36.766262, 36.651279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316967, 36.589603, 36.929504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693517, -0.200114, -0.692090,
		0.444853, 0.874586, 0.192888,
		0.566692, -0.441649, 0.695561,
		35.486977, 36.457108, 37.138172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676601, 37.077442, 36.608421>,  <35.090290, 36.766262, 36.651279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676601, 37.077442, 36.608421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768829, 36.735878, 36.795044>,  <35.824165, 36.530941, 36.907017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768829, 36.735878, 36.795044>,  <35.676601, 37.077442, 36.608421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768829, 36.735878, 36.795044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750258, -0.149321, -0.644062,
		0.619637, 0.498541, 0.606223,
		0.230570, -0.853908, 0.466560,
		35.838001, 36.479706, 36.935013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410919, 37.014427, 36.662491>,  <35.676601, 37.077442, 36.608421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410919, 37.014427, 36.662491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.268875, 36.641293, 36.686867>,  <36.183647, 36.417412, 36.701492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.268875, 36.641293, 36.686867>,  <36.410919, 37.014427, 36.662491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268875, 36.641293, 36.686867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702694, -0.309358, -0.640718,
		0.616538, -0.184700, 0.765354,
		-0.355109, -0.932836, 0.060943,
		36.162342, 36.361443, 36.705151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936008, 36.453342, 36.903690>,  <36.410919, 37.014427, 36.662491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936008, 36.453342, 36.903690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658833, 36.345371, 36.636265>,  <36.492527, 36.280590, 36.475811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658833, 36.345371, 36.636265>,  <36.936008, 36.453342, 36.903690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658833, 36.345371, 36.636265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720138, -0.213894, -0.660039,
		0.035163, -0.938823, 0.342602,
		-0.692940, -0.269929, -0.668561,
		36.450951, 36.264393, 36.435696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217957, 36.090687, 36.203339>,  <36.936008, 36.453342, 36.903690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217957, 36.090687, 36.203339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514656, 36.346066, 36.121181>,  <37.692677, 36.499294, 36.071888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514656, 36.346066, 36.121181>,  <37.217957, 36.090687, 36.203339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514656, 36.346066, 36.121181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125247, 0.432727, 0.892782,
		0.658876, -0.636497, 0.400940,
		0.741751, 0.638450, -0.205394,
		37.737183, 36.537601, 36.059563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619858, 36.147259, 36.788139>,  <37.217957, 36.090687, 36.203339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619858, 36.147259, 36.788139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723511, 36.471012, 36.577332>,  <37.785702, 36.665264, 36.450848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723511, 36.471012, 36.577332>,  <37.619858, 36.147259, 36.788139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723511, 36.471012, 36.577332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073829, 0.560657, 0.824750,
		0.963016, -0.174811, 0.205041,
		0.259133, 0.809386, -0.527015,
		37.801250, 36.713829, 36.419228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302742, 36.345585, 37.021397>,  <37.619858, 36.147259, 36.788139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302742, 36.345585, 37.021397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113808, 36.666809, 36.876072>,  <38.000446, 36.859543, 36.788876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113808, 36.666809, 36.876072>,  <38.302742, 36.345585, 37.021397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113808, 36.666809, 36.876072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174762, 0.489335, 0.854406,
		0.863922, 0.340069, -0.371473,
		-0.472331, 0.803060, -0.363316,
		37.972107, 36.907726, 36.767078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432842, 36.752232, 37.549782>,  <38.302742, 36.345585, 37.021397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432842, 36.752232, 37.549782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220791, 36.985020, 37.303116>,  <38.093559, 37.124691, 37.155117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220791, 36.985020, 37.303116>,  <38.432842, 36.752232, 37.549782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220791, 36.985020, 37.303116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079333, 0.758121, 0.647271,
		0.844195, 0.294218, -0.448074,
		-0.530133, 0.581970, -0.616661,
		38.061752, 37.159611, 37.118118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799065, 37.416626, 37.484528>,  <38.432842, 36.752232, 37.549782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799065, 37.416626, 37.484528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.403267, 37.446129, 37.434807>,  <38.165787, 37.463829, 37.404972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.403267, 37.446129, 37.434807>,  <38.799065, 37.416626, 37.484528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403267, 37.446129, 37.434807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040638, 0.683369, 0.728941,
		0.138709, 0.726338, -0.673196,
		-0.989499, 0.073753, -0.124306,
		38.106419, 37.468254, 37.397514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635593, 37.985622, 37.796993>,  <38.799065, 37.416626, 37.484528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635593, 37.985622, 37.796993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265312, 37.840149, 37.755398>,  <38.043144, 37.752865, 37.730442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265312, 37.840149, 37.755398>,  <38.635593, 37.985622, 37.796993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265312, 37.840149, 37.755398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288506, 0.501054, 0.815910,
		-0.244631, 0.785289, -0.568750,
		-0.925700, -0.363685, -0.103987,
		37.987602, 37.731045, 37.724201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248207, 38.497459, 37.967342>,  <38.635593, 37.985622, 37.796993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248207, 38.497459, 37.967342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029045, 38.167664, 38.023945>,  <37.897549, 37.969788, 38.057907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029045, 38.167664, 38.023945>,  <38.248207, 38.497459, 37.967342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029045, 38.167664, 38.023945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360946, 0.385597, 0.849136,
		-0.754665, 0.414170, -0.508866,
		-0.547904, -0.824487, 0.141503,
		37.864674, 37.920319, 38.066395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628136, 38.717411, 38.187428>,  <38.248207, 38.497459, 37.967342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628136, 38.717411, 38.187428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603760, 38.335670, 38.304390>,  <37.589134, 38.106628, 38.374569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603760, 38.335670, 38.304390>,  <37.628136, 38.717411, 38.187428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603760, 38.335670, 38.304390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526210, 0.279656, 0.803054,
		-0.848168, -0.104928, -0.519231,
		-0.060943, -0.954350, 0.292410,
		37.585476, 38.049366, 38.392113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949192, 38.623211, 38.414822>,  <37.628136, 38.717411, 38.187428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949192, 38.623211, 38.414822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143219, 38.316784, 38.583511>,  <37.259636, 38.132927, 38.684723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143219, 38.316784, 38.583511>,  <36.949192, 38.623211, 38.414822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143219, 38.316784, 38.583511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613698, 0.045337, 0.788238,
		-0.622963, -0.641159, -0.448143,
		0.485068, -0.766067, 0.421721,
		37.288738, 38.086964, 38.710030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482338, 38.293880, 38.756588>,  <36.949192, 38.623211, 38.414822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482338, 38.293880, 38.756588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824215, 38.183605, 38.932541>,  <37.029343, 38.117439, 39.038113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824215, 38.183605, 38.932541>,  <36.482338, 38.293880, 38.756588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824215, 38.183605, 38.932541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419110, 0.133586, 0.898054,
		-0.306348, -0.951918, -0.001370,
		0.854691, -0.275692, 0.439883,
		37.080624, 38.100899, 39.064507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235664, 37.746056, 39.184074>,  <36.482338, 38.293880, 38.756588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235664, 37.746056, 39.184074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574184, 37.905071, 39.325916>,  <36.777294, 38.000481, 39.411022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574184, 37.905071, 39.325916>,  <36.235664, 37.746056, 39.184074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574184, 37.905071, 39.325916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436351, 0.135476, 0.889519,
		0.305580, -0.907528, 0.288120,
		0.846297, 0.397541, 0.354601,
		36.828075, 38.024334, 39.432297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247856, 37.459755, 39.825947>,  <36.235664, 37.746056, 39.184074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247856, 37.459755, 39.825947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530670, 37.741909, 39.846069>,  <36.700359, 37.911201, 39.858143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530670, 37.741909, 39.846069>,  <36.247856, 37.459755, 39.825947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530670, 37.741909, 39.846069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310596, 0.245841, 0.918201,
		0.635323, -0.664821, 0.392909,
		0.707032, 0.705390, 0.050302,
		36.742779, 37.953526, 39.861160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838238, 37.239510, 40.291550>,  <36.247856, 37.459755, 39.825947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838238, 37.239510, 40.291550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811085, 37.638374, 40.278530>,  <36.794792, 37.877693, 40.270718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811085, 37.638374, 40.278530>,  <36.838238, 37.239510, 40.291550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811085, 37.638374, 40.278530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040072, 0.029875, 0.998750,
		0.996888, 0.069100, 0.037931,
		-0.067881, 0.997162, -0.032551,
		36.790722, 37.937523, 40.268764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966114, 37.465904, 41.035316>,  <36.838238, 37.239510, 40.291550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966114, 37.465904, 41.035316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847473, 37.814240, 40.878510>,  <36.776287, 38.023239, 40.784424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847473, 37.814240, 40.878510>,  <36.966114, 37.465904, 41.035316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847473, 37.814240, 40.878510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253601, 0.323928, 0.911459,
		0.920714, 0.369756, 0.124766,
		-0.296602, 0.870833, -0.392016,
		36.758492, 38.075489, 40.760906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151482, 38.024357, 41.516163>,  <36.966114, 37.465904, 41.035316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151482, 38.024357, 41.516163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.883797, 38.192097, 41.270790>,  <36.723186, 38.292740, 41.123566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.883797, 38.192097, 41.270790>,  <37.151482, 38.024357, 41.516163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883797, 38.192097, 41.270790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428071, 0.457218, 0.779556,
		0.607375, 0.784284, -0.126468,
		-0.669216, 0.419346, -0.613432,
		36.683033, 38.317902, 41.086761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164085, 38.741386, 41.675610>,  <37.151482, 38.024357, 41.516163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164085, 38.741386, 41.675610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819641, 38.662689, 41.488087>,  <36.612976, 38.615471, 41.375572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819641, 38.662689, 41.488087>,  <37.164085, 38.741386, 41.675610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819641, 38.662689, 41.488087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495697, 0.529855, 0.688141,
		0.113011, 0.824952, -0.553789,
		-0.861111, -0.196744, -0.468806,
		36.561306, 38.603664, 41.347446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742523, 39.351143, 41.670647>,  <37.164085, 38.741386, 41.675610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742523, 39.351143, 41.670647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482189, 39.050148, 41.630291>,  <36.325989, 38.869549, 41.606075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482189, 39.050148, 41.630291>,  <36.742523, 39.351143, 41.670647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482189, 39.050148, 41.630291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597141, 0.425281, 0.680117,
		-0.468873, 0.502887, -0.726128,
		-0.650831, -0.752489, -0.100892,
		36.286942, 38.824402, 41.600025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154213, 39.713894, 41.717159>,  <36.742523, 39.351143, 41.670647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154213, 39.713894, 41.717159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.027527, 39.343361, 41.798737>,  <35.951515, 39.121040, 41.847683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.027527, 39.343361, 41.798737>,  <36.154213, 39.713894, 41.717159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027527, 39.343361, 41.798737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564692, 0.356901, 0.744141,
		-0.762113, 0.120512, -0.636130,
		-0.316714, -0.926336, 0.203947,
		35.932514, 39.065460, 41.859921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.442741, 39.676575, 41.745796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.514584, 39.333366, 41.938271>,  <35.557690, 39.127441, 42.053753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.514584, 39.333366, 41.938271>,  <35.442741, 39.676575, 41.745796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514584, 39.333366, 41.938271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322663, 0.410696, 0.852771,
		-0.929317, -0.308426, -0.203087,
		0.179610, -0.858022, 0.481184,
		35.568466, 39.075958, 42.082626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879227, 39.606628, 42.164734>,  <35.442741, 39.676575, 41.745796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879227, 39.606628, 42.164734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154675, 39.368793, 42.330757>,  <35.319942, 39.226093, 42.430370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154675, 39.368793, 42.330757>,  <34.879227, 39.606628, 42.164734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154675, 39.368793, 42.330757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286988, 0.302183, 0.909023,
		-0.665917, -0.745086, 0.037450,
		0.688617, -0.594586, 0.415060,
		35.361259, 39.190418, 42.455276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566742, 39.247120, 42.734642>,  <34.879227, 39.606628, 42.164734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566742, 39.247120, 42.734642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.958416, 39.239452, 42.815475>,  <35.193420, 39.234852, 42.863976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.958416, 39.239452, 42.815475>,  <34.566742, 39.247120, 42.734642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958416, 39.239452, 42.815475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176716, 0.409365, 0.895093,
		-0.099886, -0.912169, 0.397454,
		0.979180, -0.019171, 0.202085,
		35.252171, 39.233700, 42.876102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594505, 38.917446, 43.345764>,  <34.566742, 39.247120, 42.734642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594505, 38.917446, 43.345764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948380, 39.103912, 43.347775>,  <35.160702, 39.215794, 43.348980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948380, 39.103912, 43.347775>,  <34.594505, 38.917446, 43.345764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948380, 39.103912, 43.347775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235623, 0.437807, 0.867644,
		0.402265, -0.768775, 0.497160,
		0.884684, 0.466165, 0.005027,
		35.213783, 39.243763, 43.349281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809856, 38.891300, 43.980629>,  <34.594505, 38.917446, 43.345764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809856, 38.891300, 43.980629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030128, 39.197151, 43.846703>,  <35.162292, 39.380661, 43.766346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030128, 39.197151, 43.846703>,  <34.809856, 38.891300, 43.980629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030128, 39.197151, 43.846703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139987, 0.480030, 0.866011,
		0.822896, -0.430023, 0.371380,
		0.550678, 0.764625, -0.334817,
		35.195332, 39.426540, 43.746258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161953, 39.140026, 44.544197>,  <34.809856, 38.891300, 43.980629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161953, 39.140026, 44.544197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166553, 39.445583, 44.286102>,  <35.169315, 39.628918, 44.131245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166553, 39.445583, 44.286102>,  <35.161953, 39.140026, 44.544197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166553, 39.445583, 44.286102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224263, 0.630814, 0.742819,
		0.974461, 0.136160, 0.178569,
		0.011501, 0.763894, -0.645239,
		35.170002, 39.674751, 44.092529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669621, 39.750820, 44.816425>,  <35.161953, 39.140026, 44.544197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669621, 39.750820, 44.816425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410618, 39.922085, 44.564266>,  <35.255215, 40.024845, 44.412971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410618, 39.922085, 44.564266>,  <35.669621, 39.750820, 44.816425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410618, 39.922085, 44.564266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120967, 0.758997, 0.639757,
		0.752395, 0.490507, -0.439664,
		-0.647509, 0.428166, -0.630401,
		35.216366, 40.050533, 44.375145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802505, 40.449604, 44.719963>,  <35.669621, 39.750820, 44.816425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802505, 40.449604, 44.719963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419281, 40.469288, 44.607044>,  <35.189346, 40.481098, 44.539295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419281, 40.469288, 44.607044>,  <35.802505, 40.449604, 44.719963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419281, 40.469288, 44.607044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187816, 0.636195, 0.748319,
		0.216416, 0.769957, -0.600275,
		-0.958066, 0.049207, -0.282293,
		35.131863, 40.484051, 44.522358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673126, 41.112274, 44.551186>,  <35.802505, 40.449604, 44.719963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673126, 41.112274, 44.551186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297401, 40.985867, 44.604595>,  <35.071968, 40.910023, 44.636639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297401, 40.985867, 44.604595>,  <35.673126, 41.112274, 44.551186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297401, 40.985867, 44.604595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134640, 0.697549, 0.703774,
		-0.315543, 0.643085, -0.697764,
		-0.939311, -0.316018, 0.133521,
		35.015610, 40.891060, 44.644653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222935, 41.708664, 44.503647>,  <35.673126, 41.112274, 44.551186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222935, 41.708664, 44.503647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004940, 41.437527, 44.701038>,  <34.874142, 41.274845, 44.819473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004940, 41.437527, 44.701038>,  <35.222935, 41.708664, 44.503647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004940, 41.437527, 44.701038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147571, 0.656920, 0.739377,
		-0.825356, 0.330129, -0.458043,
		-0.544987, -0.677843, 0.493475,
		34.841442, 41.234173, 44.849079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662270, 42.070591, 44.767605>,  <35.222935, 41.708664, 44.503647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662270, 42.070591, 44.767605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688507, 41.740559, 44.992085>,  <34.704250, 41.542542, 45.126774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688507, 41.740559, 44.992085>,  <34.662270, 42.070591, 44.767605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688507, 41.740559, 44.992085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129089, 0.550668, 0.824682,
		-0.989461, -0.126542, -0.070385,
		0.065598, -0.825077, 0.561200,
		34.708187, 41.493034, 45.160446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380466, 42.324005, 45.349308>,  <34.662270, 42.070591, 44.767605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380466, 42.324005, 45.349308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491882, 41.963737, 45.482697>,  <34.558731, 41.747578, 45.562729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491882, 41.963737, 45.482697>,  <34.380466, 42.324005, 45.349308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491882, 41.963737, 45.482697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114129, 0.313713, 0.942634,
		-0.953619, -0.300622, -0.015411,
		0.278542, -0.900672, 0.333473,
		34.575443, 41.693535, 45.582737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872147, 42.092136, 45.875092>,  <34.380466, 42.324005, 45.349308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872147, 42.092136, 45.875092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231678, 41.935215, 45.953274>,  <34.447395, 41.841061, 46.000183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231678, 41.935215, 45.953274>,  <33.872147, 42.092136, 45.875092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231678, 41.935215, 45.953274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072700, 0.306324, 0.949147,
		-0.432230, -0.867330, 0.246812,
		0.898828, -0.392306, 0.195458,
		34.501328, 41.817524, 46.011909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837669, 41.787697, 46.535305>,  <33.872147, 42.092136, 45.875092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837669, 41.787697, 46.535305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236584, 41.795120, 46.506802>,  <34.475933, 41.799572, 46.489700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236584, 41.795120, 46.506802>,  <33.837669, 41.787697, 46.535305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236584, 41.795120, 46.506802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061168, 0.329948, 0.942015,
		0.040991, -0.943817, 0.327918,
		0.997285, 0.018556, -0.071257,
		34.535770, 41.800686, 46.485424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167900, 41.280041, 47.117092>,  <33.837669, 41.787697, 46.535305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167900, 41.280041, 47.117092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396679, 41.586651, 47.000259>,  <34.533947, 41.770618, 46.930161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396679, 41.586651, 47.000259>,  <34.167900, 41.280041, 47.117092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396679, 41.586651, 47.000259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093045, 0.293152, 0.951527,
		0.814994, -0.571403, 0.096348,
		0.571950, 0.766525, -0.292084,
		34.568264, 41.816608, 46.912636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804695, 41.275948, 47.533989>,  <34.167900, 41.280041, 47.117092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804695, 41.275948, 47.533989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774792, 41.655392, 47.410992>,  <34.756847, 41.883057, 47.337193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774792, 41.655392, 47.410992>,  <34.804695, 41.275948, 47.533989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774792, 41.655392, 47.410992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153991, 0.315640, 0.936300,
		0.985240, 0.022648, -0.169675,
		-0.074761, 0.948609, -0.307494,
		34.752365, 41.939976, 47.318745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516571, 41.602879, 47.496506>,  <34.804695, 41.275948, 47.533989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516571, 41.602879, 47.496506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239449, 41.882351, 47.567917>,  <35.073174, 42.050034, 47.610764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239449, 41.882351, 47.567917>,  <35.516571, 41.602879, 47.496506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239449, 41.882351, 47.567917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496878, 0.283089, 0.820349,
		0.522621, 0.657048, -0.543283,
		-0.692806, 0.698677, 0.178524,
		35.031609, 42.091953, 47.621475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880283, 42.061230, 47.932156>,  <35.516571, 41.602879, 47.496506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880283, 42.061230, 47.932156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502651, 42.191544, 47.952477>,  <35.276073, 42.269733, 47.964668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502651, 42.191544, 47.952477>,  <35.880283, 42.061230, 47.932156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502651, 42.191544, 47.952477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150148, 0.287615, 0.945904,
		0.293554, 0.900633, -0.320447,
		-0.944077, 0.325788, 0.050798,
		35.219429, 42.289280, 47.967716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951263, 42.649544, 48.437775>,  <35.880283, 42.061230, 47.932156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951263, 42.649544, 48.437775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552944, 42.625549, 48.410099>,  <35.313953, 42.611153, 48.393494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552944, 42.625549, 48.410099>,  <35.951263, 42.649544, 48.437775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552944, 42.625549, 48.410099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086011, 0.353343, 0.931531,
		-0.031430, 0.933569, -0.357018,
		-0.995798, -0.059985, -0.069191,
		35.254204, 42.607555, 48.389343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727577, 43.320869, 48.678165>,  <35.951263, 42.649544, 48.437775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727577, 43.320869, 48.678165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453903, 43.031776, 48.717236>,  <35.289700, 42.858318, 48.740677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453903, 43.031776, 48.717236>,  <35.727577, 43.320869, 48.678165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453903, 43.031776, 48.717236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116979, 0.240944, 0.963463,
		-0.719862, 0.647765, -0.249396,
		-0.684189, -0.722735, 0.097671,
		35.248646, 42.814957, 48.746536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187275, 43.573467, 49.098789>,  <35.727577, 43.320869, 48.678165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187275, 43.573467, 49.098789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154861, 43.175228, 49.117607>,  <35.135414, 42.936283, 49.128899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154861, 43.175228, 49.117607>,  <35.187275, 43.573467, 49.098789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154861, 43.175228, 49.117607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146334, 0.058575, 0.987499,
		-0.985911, 0.073138, -0.150437,
		-0.081035, -0.995600, 0.047047,
		35.130550, 42.876549, 49.131721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527470, 43.434048, 49.505642>,  <35.187275, 43.573467, 49.098789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527470, 43.434048, 49.505642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786594, 43.129345, 49.502327>,  <34.942070, 42.946526, 49.500340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786594, 43.129345, 49.502327>,  <34.527470, 43.434048, 49.505642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786594, 43.129345, 49.502327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063723, -0.065025, 0.995847,
		-0.759130, -0.644594, -0.090665,
		0.647812, -0.761755, -0.008287,
		34.980938, 42.900818, 49.499840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235821, 42.947613, 49.828136>,  <34.527470, 43.434048, 49.505642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235821, 42.947613, 49.828136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627010, 42.875465, 49.870155>,  <34.861725, 42.832176, 49.895367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627010, 42.875465, 49.870155>,  <34.235821, 42.947613, 49.828136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627010, 42.875465, 49.870155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140134, -0.194368, 0.970867,
		-0.154696, -0.964203, -0.215363,
		0.977973, -0.180369, 0.105050,
		34.920403, 42.821354, 49.901669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542027, 42.831566, 49.550465>,  <34.235821, 42.947613, 49.828136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542027, 42.831566, 49.550465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.235355, 42.982571, 49.758194>,  <33.051353, 43.073174, 49.882832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.235355, 42.982571, 49.758194>,  <33.542027, 42.831566, 49.550465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235355, 42.982571, 49.758194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110456, -0.719248, 0.685917,
		0.632462, 0.583238, 0.509731,
		-0.766676, 0.377513, 0.519319,
		33.005352, 43.095825, 49.913990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555794, 42.418346, 50.168716>,  <33.542027, 42.831566, 49.550465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555794, 42.418346, 50.168716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262119, 42.202812, 50.333942>,  <33.085915, 42.073490, 50.433079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262119, 42.202812, 50.333942>,  <33.555794, 42.418346, 50.168716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262119, 42.202812, 50.333942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042199, -0.570999, -0.819865,
		0.677636, -0.619365, 0.396481,
		-0.734186, -0.538839, 0.413066,
		33.041862, 42.041161, 50.457863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787647, 41.757690, 50.139961>,  <33.555794, 42.418346, 50.168716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787647, 41.757690, 50.139961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.389946, 41.723465, 50.165703>,  <33.151325, 41.702930, 50.181149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.389946, 41.723465, 50.165703>,  <33.787647, 41.757690, 50.139961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389946, 41.723465, 50.165703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006335, -0.553023, -0.833142,
		0.106881, -0.828761, 0.549302,
		-0.994251, -0.085567, 0.064358,
		33.091671, 41.697796, 50.185009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545372, 41.001331, 50.136139>,  <33.787647, 41.757690, 50.139961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545372, 41.001331, 50.136139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.211033, 41.189083, 50.022263>,  <33.010429, 41.301735, 49.953938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.211033, 41.189083, 50.022263>,  <33.545372, 41.001331, 50.136139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211033, 41.189083, 50.022263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067436, -0.602456, -0.795298,
		-0.544807, -0.645548, 0.535213,
		-0.835845, 0.469376, -0.284689,
		32.960281, 41.329895, 49.936855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077133, 40.397167, 49.979099>,  <33.545372, 41.001331, 50.136139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077133, 40.397167, 49.979099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.948891, 40.724552, 49.788383>,  <32.871944, 40.920982, 49.673954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.948891, 40.724552, 49.788383>,  <33.077133, 40.397167, 49.979099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948891, 40.724552, 49.788383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171840, -0.545269, -0.820459,
		-0.931495, -0.181110, 0.315460,
		-0.320604, 0.818462, -0.476794,
		32.852711, 40.970089, 49.645344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389149, 40.149872, 49.541698>,  <33.077133, 40.397167, 49.979099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389149, 40.149872, 49.541698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.517551, 40.501507, 49.400753>,  <32.594593, 40.712490, 49.316185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.517551, 40.501507, 49.400753>,  <32.389149, 40.149872, 49.541698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517551, 40.501507, 49.400753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052311, -0.355023, -0.933393,
		-0.945632, 0.318056, -0.067978,
		0.321005, 0.879090, -0.352359,
		32.613853, 40.765232, 49.295044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892599, 40.425774, 49.013100>,  <32.389149, 40.149872, 49.541698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892599, 40.425774, 49.013100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.253277, 40.587067, 48.950680>,  <32.469685, 40.683842, 48.913227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.253277, 40.587067, 48.950680>,  <31.892599, 40.425774, 49.013100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253277, 40.587067, 48.950680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068521, -0.223079, -0.972389,
		-0.426910, 0.887490, -0.173519,
		0.901694, 0.403233, -0.156046,
		32.523785, 40.708038, 48.903866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720142, 40.532719, 48.441975>,  <31.892599, 40.425774, 49.013100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720142, 40.532719, 48.441975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.117748, 40.576393, 48.443459>,  <32.356312, 40.602596, 48.444351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.117748, 40.576393, 48.443459>,  <31.720142, 40.532719, 48.441975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117748, 40.576393, 48.443459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013421, -0.088308, -0.996003,
		-0.108419, 0.990091, -0.089245,
		0.994015, 0.109183, 0.003714,
		32.415955, 40.609150, 48.444572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856585, 41.017353, 47.995014>,  <31.720142, 40.532719, 48.441975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856585, 41.017353, 47.995014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192993, 40.802498, 48.020821>,  <32.394840, 40.673584, 48.036304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192993, 40.802498, 48.020821>,  <31.856585, 41.017353, 47.995014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192993, 40.802498, 48.020821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044401, -0.050322, -0.997746,
		0.539176, 0.841990, -0.018473,
		0.841022, -0.537141, 0.064517,
		32.445301, 40.641357, 48.040176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270992, 41.310444, 47.426498>,  <31.856585, 41.017353, 47.995014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270992, 41.310444, 47.426498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.420605, 40.951824, 47.521404>,  <32.510372, 40.736652, 47.578346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.420605, 40.951824, 47.521404>,  <32.270992, 41.310444, 47.426498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420605, 40.951824, 47.521404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071392, -0.227240, -0.971218,
		0.924664, 0.380206, -0.020988,
		0.374032, -0.896552, 0.237264,
		32.532814, 40.682858, 47.592583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825176, 41.251938, 47.053486>,  <32.270992, 41.310444, 47.426498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825176, 41.251938, 47.053486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737061, 40.866852, 47.116299>,  <32.684193, 40.635799, 47.153988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737061, 40.866852, 47.116299>,  <32.825176, 41.251938, 47.053486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737061, 40.866852, 47.116299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146321, -0.191777, -0.970470,
		0.964398, -0.190804, 0.183111,
		-0.220286, -0.962712, 0.157030,
		32.670975, 40.578037, 47.163406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354271, 40.878422, 46.743984>,  <32.825176, 41.251938, 47.053486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354271, 40.878422, 46.743984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045010, 40.626968, 46.777580>,  <32.859451, 40.476097, 46.797737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045010, 40.626968, 46.777580>,  <33.354271, 40.878422, 46.743984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045010, 40.626968, 46.777580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144240, -0.303244, -0.941933,
		0.617600, -0.716144, 0.325128,
		-0.773152, -0.628634, 0.083987,
		32.813065, 40.438377, 46.802776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565678, 40.315823, 46.434387>,  <33.354271, 40.878422, 46.743984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565678, 40.315823, 46.434387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.169033, 40.266685, 46.450432>,  <32.931046, 40.237202, 46.460056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.169033, 40.266685, 46.450432>,  <33.565678, 40.315823, 46.434387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169033, 40.266685, 46.450432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013283, -0.405635, -0.913939,
		0.128542, -0.905743, 0.403865,
		-0.991615, -0.122844, 0.040110,
		32.871548, 40.229832, 46.462463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436852, 39.620888, 46.245014>,  <33.565678, 40.315823, 46.434387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436852, 39.620888, 46.245014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098392, 39.822948, 46.177074>,  <32.895317, 39.944183, 46.136311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098392, 39.822948, 46.177074>,  <33.436852, 39.620888, 46.245014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098392, 39.822948, 46.177074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062468, -0.410521, -0.909709,
		-0.529269, -0.759141, 0.378918,
		-0.846152, 0.505151, -0.169854,
		32.844547, 39.974495, 46.126118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184868, 39.234184, 45.739960>,  <33.436852, 39.620888, 46.245014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184868, 39.234184, 45.739960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931896, 39.543404, 45.720238>,  <32.780113, 39.728935, 45.708405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931896, 39.543404, 45.720238>,  <33.184868, 39.234184, 45.739960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931896, 39.543404, 45.720238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146416, -0.181800, -0.972374,
		-0.760653, -0.607740, 0.228162,
		-0.632431, 0.773046, -0.049304,
		32.742168, 39.775318, 45.705448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548508, 38.975872, 45.491302>,  <33.184868, 39.234184, 45.739960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548508, 38.975872, 45.491302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.558247, 39.366249, 45.404629>,  <32.564091, 39.600475, 45.352627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.558247, 39.366249, 45.404629>,  <32.548508, 38.975872, 45.491302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558247, 39.366249, 45.404629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036365, -0.217467, -0.975390,
		-0.999042, 0.015873, -0.040785,
		0.024352, 0.975939, -0.216681,
		32.565552, 39.659031, 45.339622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921453, 39.145729, 45.114826>,  <32.548508, 38.975872, 45.491302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921453, 39.145729, 45.114826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.205166, 39.408806, 45.013351>,  <32.375393, 39.566654, 44.952465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.205166, 39.408806, 45.013351>,  <31.921453, 39.145729, 45.114826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205166, 39.408806, 45.013351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238417, -0.114859, -0.964347,
		-0.663386, 0.744475, 0.075339,
		0.709279, 0.657696, -0.253691,
		32.417950, 39.606113, 44.937244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676109, 39.562771, 44.625114>,  <31.921453, 39.145729, 45.114826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676109, 39.562771, 44.625114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.073269, 39.578026, 44.580040>,  <32.311565, 39.587177, 44.552994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.073269, 39.578026, 44.580040>,  <31.676109, 39.562771, 44.625114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073269, 39.578026, 44.580040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098083, -0.273673, -0.956809,
		-0.067329, 0.961066, -0.267989,
		0.992898, 0.038136, -0.112691,
		32.371140, 39.589466, 44.546234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723274, 39.555851, 43.923775>,  <31.676109, 39.562771, 44.625114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723274, 39.555851, 43.923775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.108780, 39.519947, 44.024258>,  <32.340084, 39.498405, 44.084545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.108780, 39.519947, 44.024258>,  <31.723274, 39.555851, 43.923775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108780, 39.519947, 44.024258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209112, -0.330475, -0.920358,
		0.165624, 0.939537, -0.299731,
		0.963764, -0.089756, 0.251203,
		32.397907, 39.493019, 44.099617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976402, 39.832966, 43.393539>,  <31.723274, 39.555851, 43.923775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976402, 39.832966, 43.393539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277084, 39.616032, 43.543644>,  <32.457493, 39.485870, 43.633705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277084, 39.616032, 43.543644>,  <31.976402, 39.832966, 43.393539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277084, 39.616032, 43.543644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181226, -0.377233, -0.908214,
		0.634114, 0.750713, -0.185283,
		0.751703, -0.542333, 0.375257,
		32.502594, 39.453331, 43.656219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541363, 39.989445, 43.022251>,  <31.976402, 39.832966, 43.393539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541363, 39.989445, 43.022251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629719, 39.630875, 43.175938>,  <32.682732, 39.415733, 43.268150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629719, 39.630875, 43.175938>,  <32.541363, 39.989445, 43.022251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629719, 39.630875, 43.175938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343926, -0.297043, -0.890775,
		0.912645, 0.328907, 0.242691,
		0.220892, -0.896429, 0.384215,
		32.695988, 39.361946, 43.291203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<47.701542, 36.402454, 26.884394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.509087, 36.312439, 26.545486>,  <47.393612, 36.258430, 26.342142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.509087, 36.312439, 26.545486>,  <47.701542, 36.402454, 26.884394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.509087, 36.312439, 26.545486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633201, -0.579190, 0.513415,
		-0.606268, 0.783514, 0.136175,
		-0.481139, -0.225041, -0.847267,
		47.364746, 36.244926, 26.291306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916786, 36.573933, 26.979803>,  <47.701542, 36.402454, 26.884394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916786, 36.573933, 26.979803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.931789, 36.301285, 26.687504>,  <46.940792, 36.137695, 26.512125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.931789, 36.301285, 26.687504>,  <46.916786, 36.573933, 26.979803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.931789, 36.301285, 26.687504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658266, -0.567039, 0.495128,
		-0.751850, 0.462456, -0.469953,
		0.037506, -0.681616, -0.730748,
		46.943043, 36.096798, 26.468279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232304, 36.520794, 26.801630>,  <46.916786, 36.573933, 26.979803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232304, 36.520794, 26.801630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.403652, 36.182629, 26.674026>,  <46.506462, 35.979729, 26.597464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.403652, 36.182629, 26.674026>,  <46.232304, 36.520794, 26.801630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.403652, 36.182629, 26.674026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709583, -0.533315, 0.460507,
		-0.559452, 0.029095, -0.828352,
		0.428374, -0.845416, -0.319010,
		46.532166, 35.929005, 26.578323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714226, 36.248440, 26.522882>,  <46.232304, 36.520794, 26.801630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714226, 36.248440, 26.522882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.972363, 35.947330, 26.574827>,  <46.127243, 35.766663, 26.605995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.972363, 35.947330, 26.574827>,  <45.714226, 36.248440, 26.522882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.972363, 35.947330, 26.574827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687705, -0.498505, 0.527783,
		-0.332565, -0.429907, -0.839393,
		0.645339, -0.752776, 0.129864,
		46.165966, 35.721497, 26.613787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390869, 35.628277, 26.335844>,  <45.714226, 36.248440, 26.522882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390869, 35.628277, 26.335844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.668125, 35.514599, 26.600809>,  <45.834476, 35.446392, 26.759789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.668125, 35.514599, 26.600809>,  <45.390869, 35.628277, 26.335844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.668125, 35.514599, 26.600809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682855, -0.553167, 0.477196,
		0.230808, -0.783095, -0.577486,
		0.693136, -0.284199, 0.662415,
		45.876064, 35.429340, 26.799534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258568, 34.963600, 26.499571>,  <45.390869, 35.628277, 26.335844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258568, 34.963600, 26.499571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.507790, 35.051754, 26.799765>,  <45.657322, 35.104649, 26.979881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.507790, 35.051754, 26.799765>,  <45.258568, 34.963600, 26.499571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.507790, 35.051754, 26.799765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551443, -0.556694, 0.621290,
		0.554716, -0.800950, -0.225321,
		0.623058, 0.220388, 0.750486,
		45.694706, 35.117870, 27.024910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370846, 34.308216, 26.882257>,  <45.258568, 34.963600, 26.499571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370846, 34.308216, 26.882257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426785, 34.634605, 27.106627>,  <45.460350, 34.830437, 27.241249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426785, 34.634605, 27.106627>,  <45.370846, 34.308216, 26.882257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426785, 34.634605, 27.106627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532163, -0.415783, 0.737514,
		0.835012, -0.401645, 0.376082,
		0.139850, 0.815970, 0.560924,
		45.468739, 34.879395, 27.274904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306988, 34.031208, 27.495531>,  <45.370846, 34.308216, 26.882257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306988, 34.031208, 27.495531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.304882, 34.426239, 27.558352>,  <45.303619, 34.663258, 27.596043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.304882, 34.426239, 27.558352>,  <45.306988, 34.031208, 27.495531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304882, 34.426239, 27.558352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580960, -0.130846, 0.803346,
		0.813915, -0.087013, 0.574431,
		-0.005260, 0.987577, 0.157049,
		45.303303, 34.722511, 27.605467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528839, 34.092884, 28.183575>,  <45.306988, 34.031208, 27.495531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528839, 34.092884, 28.183575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.346134, 34.436356, 28.090597>,  <45.236511, 34.642441, 28.034811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.346134, 34.436356, 28.090597>,  <45.528839, 34.092884, 28.183575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346134, 34.436356, 28.090597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547536, -0.065432, 0.834220,
		0.701121, 0.508314, 0.500047,
		-0.456764, 0.858683, -0.232445,
		45.209106, 34.693962, 28.020864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543892, 34.574608, 28.765245>,  <45.528839, 34.092884, 28.183575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543892, 34.574608, 28.765245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.233662, 34.670025, 28.531466>,  <45.047523, 34.727276, 28.391197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.233662, 34.670025, 28.531466>,  <45.543892, 34.574608, 28.765245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233662, 34.670025, 28.531466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543024, 0.219984, 0.810390,
		0.321884, 0.945888, -0.041079,
		-0.775574, 0.238545, -0.584449,
		45.000988, 34.741589, 28.356131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324654, 35.177242, 29.107721>,  <45.543892, 34.574608, 28.765245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324654, 35.177242, 29.107721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015831, 35.049648, 28.887836>,  <44.830540, 34.973091, 28.755905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015831, 35.049648, 28.887836>,  <45.324654, 35.177242, 29.107721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015831, 35.049648, 28.887836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607389, 0.115671, 0.785939,
		-0.187116, 0.940675, -0.283051,
		-0.772054, -0.318983, -0.549712,
		44.784214, 34.953953, 28.722923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797722, 35.724957, 29.208773>,  <45.324654, 35.177242, 29.107721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797722, 35.724957, 29.208773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.624187, 35.388622, 29.079290>,  <44.520065, 35.186821, 29.001602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.624187, 35.388622, 29.079290>,  <44.797722, 35.724957, 29.208773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624187, 35.388622, 29.079290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672458, 0.063059, 0.737444,
		-0.599656, 0.537607, -0.592783,
		-0.433835, -0.840834, -0.323704,
		44.494038, 35.136372, 28.982180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224445, 35.857243, 29.418434>,  <44.797722, 35.724957, 29.208773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224445, 35.857243, 29.418434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.176464, 35.476562, 29.305380>,  <44.147675, 35.248154, 29.237547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.176464, 35.476562, 29.305380>,  <44.224445, 35.857243, 29.418434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176464, 35.476562, 29.305380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778031, -0.086720, 0.622212,
		-0.616667, 0.294537, -0.730047,
		-0.119955, -0.951697, -0.282636,
		44.140476, 35.191051, 29.220589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500072, 35.848110, 29.367573>,  <44.224445, 35.857243, 29.418434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500072, 35.848110, 29.367573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.650753, 35.482033, 29.424866>,  <43.741161, 35.262386, 29.459242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.650753, 35.482033, 29.424866>,  <43.500072, 35.848110, 29.367573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650753, 35.482033, 29.424866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565120, -0.104529, 0.818360,
		-0.733987, -0.389220, -0.556571,
		0.376700, -0.915195, 0.143233,
		43.763763, 35.207474, 29.467836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892822, 35.457489, 29.597630>,  <43.500072, 35.848110, 29.367573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892822, 35.457489, 29.597630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215954, 35.249367, 29.708406>,  <43.409832, 35.124493, 29.774872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215954, 35.249367, 29.708406>,  <42.892822, 35.457489, 29.597630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215954, 35.249367, 29.708406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330661, -0.011091, 0.943684,
		-0.487937, -0.853905, -0.181006,
		0.807825, -0.520310, 0.276941,
		43.458302, 35.093273, 29.791489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685970, 34.760864, 29.849901>,  <42.892822, 35.457489, 29.597630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685970, 34.760864, 29.849901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.032684, 34.851421, 30.027634>,  <43.240711, 34.905754, 30.134274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.032684, 34.851421, 30.027634>,  <42.685970, 34.760864, 29.849901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032684, 34.851421, 30.027634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428726, -0.116799, 0.895853,
		0.254713, -0.967008, -0.004178,
		0.866785, 0.226394, 0.444332,
		43.292721, 34.919338, 30.160933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663036, 34.372337, 30.356733>,  <42.685970, 34.760864, 29.849901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663036, 34.372337, 30.356733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.959221, 34.609493, 30.483353>,  <43.136932, 34.751785, 30.559324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.959221, 34.609493, 30.483353>,  <42.663036, 34.372337, 30.356733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959221, 34.609493, 30.483353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214081, -0.238393, 0.947280,
		0.637092, -0.769191, -0.049595,
		0.740461, 0.592887, 0.316547,
		43.181358, 34.787357, 30.578318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082062, 33.984337, 30.927113>,  <42.663036, 34.372337, 30.356733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082062, 33.984337, 30.927113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159176, 34.374641, 30.968534>,  <43.205444, 34.608826, 30.993389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159176, 34.374641, 30.968534>,  <43.082062, 33.984337, 30.927113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159176, 34.374641, 30.968534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067110, -0.092178, 0.993478,
		0.978943, -0.198481, 0.047713,
		0.192789, 0.975761, 0.103557,
		43.217014, 34.667370, 30.999601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636673, 34.028751, 31.429428>,  <43.082062, 33.984337, 30.927113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636673, 34.028751, 31.429428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451546, 34.383289, 31.435114>,  <43.340469, 34.596012, 31.438526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451546, 34.383289, 31.435114>,  <43.636673, 34.028751, 31.429428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451546, 34.383289, 31.435114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227054, -0.134031, 0.964615,
		0.856883, 0.443211, 0.263279,
		-0.462815, 0.886341, 0.014216,
		43.312702, 34.649193, 31.439379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880905, 34.339756, 31.993553>,  <43.636673, 34.028751, 31.429428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880905, 34.339756, 31.993553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.556084, 34.569820, 31.954058>,  <43.361191, 34.707859, 31.930361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.556084, 34.569820, 31.954058>,  <43.880905, 34.339756, 31.993553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556084, 34.569820, 31.954058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152406, -0.045692, 0.987261,
		0.563325, 0.816761, 0.124763,
		-0.812057, 0.575163, -0.098740,
		43.312466, 34.742371, 31.924437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969448, 34.830776, 32.465729>,  <43.880905, 34.339756, 31.993553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969448, 34.830776, 32.465729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.578224, 34.803806, 32.386879>,  <43.343491, 34.787624, 32.339569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.578224, 34.803806, 32.386879>,  <43.969448, 34.830776, 32.465729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578224, 34.803806, 32.386879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186633, -0.136897, 0.972845,
		-0.092577, 0.988288, 0.121310,
		-0.978058, -0.067422, -0.197121,
		43.284805, 34.783581, 32.327744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343632, 34.741783, 33.234474>,  <43.969448, 34.830776, 32.465729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343632, 34.741783, 33.234474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.738380, 34.758904, 33.172188>,  <44.975231, 34.769176, 33.134815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.738380, 34.758904, 33.172188>,  <44.343632, 34.741783, 33.234474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738380, 34.758904, 33.172188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146003, 0.648479, -0.747100,
		0.069003, 0.760029, 0.646216,
		0.986875, 0.042798, -0.155713,
		45.034443, 34.771744, 33.125473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451317, 35.442818, 33.135563>,  <44.343632, 34.741783, 33.234474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451317, 35.442818, 33.135563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.788631, 35.274757, 33.001492>,  <44.991020, 35.173923, 32.921047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.788631, 35.274757, 33.001492>,  <44.451317, 35.442818, 33.135563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788631, 35.274757, 33.001492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042814, 0.569137, -0.821127,
		0.535758, 0.706795, 0.461957,
		0.843286, -0.420147, -0.335180,
		45.041618, 35.148712, 32.900936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961010, 36.027775, 33.121490>,  <44.451317, 35.442818, 33.135563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961010, 36.027775, 33.121490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015549, 35.724594, 32.866329>,  <45.048271, 35.542686, 32.713230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015549, 35.724594, 32.866329>,  <44.961010, 36.027775, 33.121490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015549, 35.724594, 32.866329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051266, 0.648455, -0.759524,
		0.989334, 0.070855, 0.127272,
		0.136346, -0.757948, -0.637906,
		45.056454, 35.497211, 32.674957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524490, 36.241737, 32.743870>,  <44.961010, 36.027775, 33.121490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524490, 36.241737, 32.743870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375507, 35.944679, 32.521248>,  <45.286118, 35.766445, 32.387676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375507, 35.944679, 32.521248>,  <45.524490, 36.241737, 32.743870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375507, 35.944679, 32.521248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046689, 0.583950, -0.810446,
		0.926875, -0.327839, -0.182822,
		-0.372455, -0.742647, -0.556555,
		45.263771, 35.721886, 32.354282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967491, 36.244534, 32.145126>,  <45.524490, 36.241737, 32.743870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967491, 36.244534, 32.145126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.605778, 36.093010, 32.066357>,  <45.388752, 36.002098, 32.019093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.605778, 36.093010, 32.066357>,  <45.967491, 36.244534, 32.145126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605778, 36.093010, 32.066357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065555, 0.578987, -0.812697,
		0.421873, -0.721997, -0.548400,
		-0.904281, -0.378806, -0.196928,
		45.334492, 35.979366, 32.007278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897598, 36.187786, 31.441593>,  <45.967491, 36.244534, 32.145126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897598, 36.187786, 31.441593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.514263, 36.200710, 31.555109>,  <45.284260, 36.208466, 31.623219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.514263, 36.200710, 31.555109>,  <45.897598, 36.187786, 31.441593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514263, 36.200710, 31.555109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207770, 0.602915, -0.770276,
		-0.195994, -0.797151, -0.571084,
		-0.958341, 0.032315, 0.283792,
		45.226761, 36.210403, 31.640247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540455, 36.104305, 30.804365>,  <45.897598, 36.187786, 31.441593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540455, 36.104305, 30.804365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284939, 36.278538, 31.058046>,  <45.131630, 36.383076, 31.210255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284939, 36.278538, 31.058046>,  <45.540455, 36.104305, 30.804365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284939, 36.278538, 31.058046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366087, 0.552931, -0.748497,
		-0.676704, -0.710306, -0.193745,
		-0.638790, 0.435583, 0.634204,
		45.093304, 36.409214, 31.248308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913250, 36.062946, 30.465796>,  <45.540455, 36.104305, 30.804365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913250, 36.062946, 30.465796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868832, 36.340973, 30.749922>,  <44.842178, 36.507790, 30.920399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868832, 36.340973, 30.749922>,  <44.913250, 36.062946, 30.465796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868832, 36.340973, 30.749922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482076, 0.587344, -0.650099,
		-0.869063, -0.414620, 0.269851,
		-0.111049, 0.695066, 0.710318,
		44.835518, 36.549492, 30.963017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191967, 36.244995, 30.549660>,  <44.913250, 36.062946, 30.465796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191967, 36.244995, 30.549660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.401478, 36.560314, 30.678806>,  <44.527184, 36.749504, 30.756294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.401478, 36.560314, 30.678806>,  <44.191967, 36.244995, 30.549660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401478, 36.560314, 30.678806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488451, 0.588444, -0.644321,
		-0.697905, 0.179778, 0.693259,
		0.523779, 0.788298, 0.322865,
		44.558613, 36.796803, 30.775665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698231, 36.767429, 30.661137>,  <44.191967, 36.244995, 30.549660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698231, 36.767429, 30.661137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.057446, 36.939835, 30.625893>,  <44.272972, 37.043278, 30.604746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.057446, 36.939835, 30.625893>,  <43.698231, 36.767429, 30.661137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057446, 36.939835, 30.625893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390668, 0.689229, -0.610198,
		-0.202275, 0.582400, 0.787334,
		0.898033, 0.431014, -0.088111,
		44.326855, 37.069138, 30.599459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558865, 37.516560, 30.647779>,  <43.698231, 36.767429, 30.661137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558865, 37.516560, 30.647779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.930805, 37.505829, 30.500999>,  <44.153969, 37.499390, 30.412931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.930805, 37.505829, 30.500999>,  <43.558865, 37.516560, 30.647779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930805, 37.505829, 30.500999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219150, 0.760738, -0.610943,
		0.295543, 0.648504, 0.701496,
		0.929853, -0.026827, -0.366951,
		44.209763, 37.497780, 30.390915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688557, 38.253288, 30.625059>,  <43.558865, 37.516560, 30.647779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688557, 38.253288, 30.625059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.957111, 38.093971, 30.375067>,  <44.118244, 37.998379, 30.225071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.957111, 38.093971, 30.375067>,  <43.688557, 38.253288, 30.625059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957111, 38.093971, 30.375067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272659, 0.651407, -0.708043,
		0.689128, 0.645777, 0.328747,
		0.671386, -0.398296, -0.624980,
		44.158527, 37.974483, 30.187572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145691, 38.773647, 30.413401>,  <43.688557, 38.253288, 30.625059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145691, 38.773647, 30.413401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.199593, 38.490940, 30.135603>,  <44.231934, 38.321316, 29.968924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.199593, 38.490940, 30.135603>,  <44.145691, 38.773647, 30.413401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199593, 38.490940, 30.135603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012333, 0.702029, -0.712042,
		0.990802, 0.087387, 0.103319,
		0.134756, -0.706767, -0.694494,
		44.240021, 38.278912, 29.927256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727654, 39.037460, 29.981979>,  <44.145691, 38.773647, 30.413401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727654, 39.037460, 29.981979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.501190, 38.791348, 29.762566>,  <44.365311, 38.643681, 29.630917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.501190, 38.791348, 29.762566>,  <44.727654, 39.037460, 29.981979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501190, 38.791348, 29.762566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099398, 0.609646, -0.786417,
		0.818280, -0.499762, -0.284000,
		-0.566161, -0.615280, -0.548536,
		44.331341, 38.606762, 29.598005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944218, 39.127827, 29.378279>,  <44.727654, 39.037460, 29.981979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944218, 39.127827, 29.378279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.618496, 38.924713, 29.265804>,  <44.423061, 38.802845, 29.198318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.618496, 38.924713, 29.265804>,  <44.944218, 39.127827, 29.378279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618496, 38.924713, 29.265804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010574, 0.497338, -0.867492,
		0.580341, -0.703430, -0.410354,
		-0.814305, -0.507780, -0.281188,
		44.374203, 38.772381, 29.181448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157097, 38.969536, 28.821201>,  <44.944218, 39.127827, 29.378279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157097, 38.969536, 28.821201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760124, 38.921207, 28.812370>,  <44.521942, 38.892212, 28.807072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760124, 38.921207, 28.812370>,  <45.157097, 38.969536, 28.821201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760124, 38.921207, 28.812370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060691, 0.638671, -0.767083,
		0.106779, -0.759935, -0.641168,
		-0.992428, -0.120822, -0.022075,
		44.462395, 38.884960, 28.805748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919353, 38.837357, 28.105885>,  <45.157097, 38.969536, 28.821201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919353, 38.837357, 28.105885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.610443, 38.979187, 28.316734>,  <44.425095, 39.064285, 28.443245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.610443, 38.979187, 28.316734>,  <44.919353, 38.837357, 28.105885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610443, 38.979187, 28.316734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269488, 0.568545, -0.777260,
		-0.575292, -0.742316, -0.343522,
		-0.772280, 0.354577, 0.527124,
		44.378757, 39.085560, 28.474871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354408, 38.701298, 27.738398>,  <44.919353, 38.837357, 28.105885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354408, 38.701298, 27.738398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263760, 39.006672, 27.980330>,  <44.209370, 39.189896, 28.125488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263760, 39.006672, 27.980330>,  <44.354408, 38.701298, 27.738398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263760, 39.006672, 27.980330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171737, 0.579935, -0.796356,
		-0.958724, -0.284339, -0.000315,
		-0.226618, 0.763431, 0.604829,
		44.195774, 39.235703, 28.161777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603680, 38.819016, 27.655983>,  <44.354408, 38.701298, 27.738398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603680, 38.819016, 27.655983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726173, 39.152622, 27.839563>,  <43.799671, 39.352787, 27.949711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726173, 39.152622, 27.839563>,  <43.603680, 38.819016, 27.655983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726173, 39.152622, 27.839563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501602, 0.551127, -0.666824,
		-0.809082, -0.026004, 0.587120,
		0.306238, 0.834016, 0.458951,
		43.818047, 39.402828, 27.977249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229885, 39.325253, 27.341913>,  <43.603680, 38.819016, 27.655983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229885, 39.325253, 27.341913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481968, 39.581322, 27.517647>,  <43.633217, 39.734962, 27.623087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481968, 39.581322, 27.517647>,  <43.229885, 39.325253, 27.341913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481968, 39.581322, 27.517647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066485, 0.608253, -0.790954,
		-0.773576, 0.469255, 0.425888,
		0.630207, 0.640178, 0.439332,
		43.671028, 39.773376, 27.649446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978436, 39.965836, 27.096811>,  <43.229885, 39.325253, 27.341913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978436, 39.965836, 27.096811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358997, 40.003120, 27.214216>,  <43.587334, 40.025490, 27.284658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358997, 40.003120, 27.214216>,  <42.978436, 39.965836, 27.096811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358997, 40.003120, 27.214216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153226, 0.683470, -0.713716,
		-0.267132, 0.724004, 0.635971,
		0.951400, 0.093209, 0.293513,
		43.644417, 40.031082, 27.302271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.681538, 38.923767, 39.903656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415565, 38.625034, 39.907825>,  <37.255981, 38.445793, 39.910328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415565, 38.625034, 39.907825>,  <37.681538, 38.923767, 39.903656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415565, 38.625034, 39.907825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306749, -0.285780, -0.907874,
		0.681012, -0.600472, 0.419114,
		-0.664927, -0.746835, 0.010426,
		37.216087, 38.400982, 39.910954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020931, 38.224159, 39.722561>,  <37.681538, 38.923767, 39.903656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020931, 38.224159, 39.722561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634232, 38.206215, 39.621857>,  <37.402210, 38.195450, 39.561436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634232, 38.206215, 39.621857>,  <38.020931, 38.224159, 39.722561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634232, 38.206215, 39.621857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226805, -0.605196, -0.763084,
		-0.118134, -0.794812, 0.595247,
		-0.966749, -0.044859, -0.251762,
		37.344208, 38.192757, 39.546329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915627, 37.538300, 39.844585>,  <38.020931, 38.224159, 39.722561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915627, 37.538300, 39.844585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673870, 37.726505, 39.587421>,  <37.528816, 37.839428, 39.433125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673870, 37.726505, 39.587421>,  <37.915627, 37.538300, 39.844585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673870, 37.726505, 39.587421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419989, -0.497566, -0.758971,
		-0.676993, -0.728730, 0.103115,
		-0.604391, 0.470511, -0.642908,
		37.492554, 37.867661, 39.394550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024067, 37.149532, 39.272404>,  <37.915627, 37.538300, 39.844585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024067, 37.149532, 39.272404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811081, 37.447086, 39.110851>,  <37.683289, 37.625618, 39.013920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811081, 37.447086, 39.110851>,  <38.024067, 37.149532, 39.272404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811081, 37.447086, 39.110851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263821, -0.307529, -0.914234,
		-0.804291, -0.593346, -0.032506,
		-0.532460, 0.743886, -0.403880,
		37.651344, 37.670254, 38.989689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819408, 36.886433, 38.638802>,  <38.024067, 37.149532, 39.272404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819408, 36.886433, 38.638802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670250, 37.250832, 38.568336>,  <37.580757, 37.469471, 38.526058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670250, 37.250832, 38.568336>,  <37.819408, 36.886433, 38.638802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670250, 37.250832, 38.568336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067076, -0.162895, -0.984361,
		-0.925447, -0.378877, -0.000364,
		-0.372892, 0.910998, -0.176164,
		37.558384, 37.524132, 38.515488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200939, 36.792934, 38.179333>,  <37.819408, 36.886433, 38.638802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200939, 36.792934, 38.179333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363029, 37.157410, 38.149574>,  <37.460285, 37.376095, 38.131718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363029, 37.157410, 38.149574>,  <37.200939, 36.792934, 38.179333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363029, 37.157410, 38.149574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128204, -0.137213, -0.982210,
		-0.905182, 0.388480, -0.172420,
		0.405227, 0.911184, -0.074398,
		37.484596, 37.430763, 38.127254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815510, 37.246017, 37.820015>,  <37.200939, 36.792934, 38.179333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815510, 37.246017, 37.820015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178715, 37.411198, 37.791752>,  <37.396637, 37.510303, 37.774796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178715, 37.411198, 37.791752>,  <36.815510, 37.246017, 37.820015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178715, 37.411198, 37.791752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040185, -0.082020, -0.995820,
		-0.417016, 0.907054, -0.057880,
		0.908010, 0.412947, -0.070654,
		37.451118, 37.535084, 37.770557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828453, 37.466656, 37.092625>,  <36.815510, 37.246017, 37.820015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828453, 37.466656, 37.092625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216946, 37.499886, 37.181900>,  <37.450039, 37.519825, 37.235466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216946, 37.499886, 37.181900>,  <36.828453, 37.466656, 37.092625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216946, 37.499886, 37.181900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237588, -0.273839, -0.931968,
		-0.016306, 0.958181, -0.285698,
		0.971229, 0.083075, 0.223187,
		37.508316, 37.524807, 37.248856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155491, 37.925301, 36.613266>,  <36.828453, 37.466656, 37.092625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155491, 37.925301, 36.613266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433563, 37.683430, 36.768742>,  <37.600407, 37.538307, 36.862026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433563, 37.683430, 36.768742>,  <37.155491, 37.925301, 36.613266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433563, 37.683430, 36.768742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361516, -0.173263, -0.916125,
		0.621310, 0.777393, 0.098153,
		0.695183, -0.604682, 0.388690,
		37.642117, 37.502026, 36.885349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667927, 38.046932, 36.176907>,  <37.155491, 37.925301, 36.613266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667927, 38.046932, 36.176907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742397, 37.697430, 36.356636>,  <37.787079, 37.487728, 36.464474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742397, 37.697430, 36.356636>,  <37.667927, 38.046932, 36.176907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742397, 37.697430, 36.356636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249027, -0.400425, -0.881842,
		0.950434, 0.276069, 0.143040,
		0.186173, -0.873754, 0.449326,
		37.798248, 37.435303, 36.491432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241585, 37.741104, 35.804668>,  <37.667927, 38.046932, 36.176907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241585, 37.741104, 35.804668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119286, 37.419674, 36.008938>,  <38.045906, 37.226818, 36.131500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119286, 37.419674, 36.008938>,  <38.241585, 37.741104, 35.804668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119286, 37.419674, 36.008938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213733, -0.580599, -0.785636,
		0.927812, -0.131060, 0.349269,
		-0.305751, -0.803572, 0.510674,
		38.027561, 37.178604, 36.162140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776207, 37.292286, 35.770756>,  <38.241585, 37.741104, 35.804668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776207, 37.292286, 35.770756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444530, 37.083214, 35.849998>,  <38.245525, 36.957771, 35.897545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444530, 37.083214, 35.849998>,  <38.776207, 37.292286, 35.770756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444530, 37.083214, 35.849998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147823, -0.546846, -0.824080,
		0.539065, -0.654035, 0.530704,
		-0.829191, -0.522683, 0.198104,
		38.195774, 36.926411, 35.909431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901684, 36.624115, 35.810608>,  <38.776207, 37.292286, 35.770756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901684, 36.624115, 35.810608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515789, 36.662766, 35.712666>,  <38.284252, 36.685955, 35.653900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515789, 36.662766, 35.712666>,  <38.901684, 36.624115, 35.810608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515789, 36.662766, 35.712666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161889, -0.515678, -0.841349,
		-0.207564, -0.851316, 0.481848,
		-0.964733, 0.096628, -0.244855,
		38.226368, 36.691753, 35.639210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528446, 36.380962, 35.624329>,  <38.901684, 36.624115, 35.810608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528446, 36.380962, 35.624329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731174, 36.516018, 35.307056>,  <39.852810, 36.597054, 35.116695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731174, 36.516018, 35.307056>,  <39.528446, 36.380962, 35.624329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731174, 36.516018, 35.307056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088292, -0.935598, -0.341850,
		-0.857518, 0.103225, -0.503992,
		0.506821, 0.337641, -0.793178,
		39.883221, 36.617310, 35.069103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053734, 35.835106, 35.347443>,  <39.528446, 36.380962, 35.624329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053734, 35.835106, 35.347443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348774, 35.569252, 35.299778>,  <40.525799, 35.409740, 35.271179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348774, 35.569252, 35.299778>,  <40.053734, 35.835106, 35.347443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348774, 35.569252, 35.299778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114225, -0.296749, 0.948099,
		-0.665506, -0.685707, -0.294801,
		0.737600, -0.664640, -0.119163,
		40.570053, 35.369862, 35.264030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890450, 35.175346, 35.555592>,  <40.053734, 35.835106, 35.347443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890450, 35.175346, 35.555592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279175, 35.207458, 35.644253>,  <40.512409, 35.226727, 35.697449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279175, 35.207458, 35.644253>,  <39.890450, 35.175346, 35.555592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279175, 35.207458, 35.644253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213566, -0.098351, 0.971965,
		0.099827, -0.991909, -0.078434,
		0.971815, 0.080278, 0.221656,
		40.570721, 35.231541, 35.710751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112373, 34.657139, 36.018791>,  <39.890450, 35.175346, 35.555592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112373, 34.657139, 36.018791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403469, 34.928085, 36.061813>,  <40.578129, 35.090652, 36.087627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403469, 34.928085, 36.061813>,  <40.112373, 34.657139, 36.018791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403469, 34.928085, 36.061813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060573, -0.092724, 0.993847,
		0.683171, -0.729780, -0.026449,
		0.727742, 0.677366, 0.107551,
		40.621792, 35.131294, 36.094078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478794, 34.412029, 36.616333>,  <40.112373, 34.657139, 36.018791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478794, 34.412029, 36.616333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592499, 34.790371, 36.553654>,  <40.660721, 35.017376, 36.516045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592499, 34.790371, 36.553654>,  <40.478794, 34.412029, 36.616333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592499, 34.790371, 36.553654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034907, 0.153121, 0.987591,
		0.958111, -0.286203, 0.010509,
		0.284260, 0.945855, -0.156698,
		40.677776, 35.074127, 36.506645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056553, 34.596100, 37.111042>,  <40.478794, 34.412029, 36.616333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056553, 34.596100, 37.111042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894772, 34.942318, 36.992886>,  <40.797703, 35.150047, 36.921993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894772, 34.942318, 36.992886>,  <41.056553, 34.596100, 37.111042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894772, 34.942318, 36.992886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013044, 0.328412, 0.944445,
		0.914465, 0.378133, -0.144118,
		-0.404455, 0.865541, -0.295389,
		40.773434, 35.201981, 36.904270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346050, 35.045025, 37.509552>,  <41.056553, 34.596100, 37.111042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346050, 35.045025, 37.509552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026657, 35.242607, 37.371902>,  <40.835022, 35.361156, 37.289310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026657, 35.242607, 37.371902>,  <41.346050, 35.045025, 37.509552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026657, 35.242607, 37.371902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049851, 0.515415, 0.855490,
		0.599944, 0.700253, -0.386928,
		-0.798488, 0.493957, -0.344128,
		40.787109, 35.390793, 37.268665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428257, 35.718002, 37.726246>,  <41.346050, 35.045025, 37.509552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428257, 35.718002, 37.726246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035187, 35.689758, 37.657700>,  <40.799347, 35.672813, 37.616570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035187, 35.689758, 37.657700>,  <41.428257, 35.718002, 37.726246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035187, 35.689758, 37.657700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183237, 0.509165, 0.840937,
		0.027878, 0.857768, -0.513281,
		-0.982673, -0.070609, -0.171369,
		40.740383, 35.668575, 37.606289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078308, 36.406246, 37.975327>,  <41.428257, 35.718002, 37.726246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078308, 36.406246, 37.975327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783577, 36.137619, 37.944107>,  <40.606739, 35.976444, 37.925377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783577, 36.137619, 37.944107>,  <41.078308, 36.406246, 37.975327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783577, 36.137619, 37.944107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381285, 0.317429, 0.868251,
		-0.558310, 0.669509, -0.489946,
		-0.736825, -0.671563, -0.078050,
		40.562531, 35.936150, 37.920692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380516, 36.685791, 37.985386>,  <41.078308, 36.406246, 37.975327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380516, 36.685791, 37.985386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265381, 36.321060, 38.102497>,  <40.196301, 36.102222, 38.172764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265381, 36.321060, 38.102497>,  <40.380516, 36.685791, 37.985386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265381, 36.321060, 38.102497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542922, 0.407207, 0.734451,
		-0.788914, 0.052447, -0.612262,
		-0.287837, -0.911829, 0.292776,
		40.179031, 36.047512, 38.190331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688450, 36.770168, 38.216263>,  <40.380516, 36.685791, 37.985386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688450, 36.770168, 38.216263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756187, 36.403297, 38.360546>,  <39.796829, 36.183174, 38.447117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756187, 36.403297, 38.360546>,  <39.688450, 36.770168, 38.216263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756187, 36.403297, 38.360546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529342, 0.224078, 0.818282,
		-0.831336, -0.329507, -0.447555,
		0.169343, -0.917177, 0.360706,
		39.806992, 36.128143, 38.468758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123451, 36.534142, 38.531170>,  <39.688450, 36.770168, 38.216263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123451, 36.534142, 38.531170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374603, 36.283020, 38.715187>,  <39.525295, 36.132347, 38.825596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374603, 36.283020, 38.715187>,  <39.123451, 36.534142, 38.531170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374603, 36.283020, 38.715187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525157, 0.094521, 0.845740,
		-0.574441, -0.772613, -0.270347,
		0.627876, -0.627802, 0.460040,
		39.562965, 36.094681, 38.853199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675068, 36.215271, 39.029385>,  <39.123451, 36.534142, 38.531170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675068, 36.215271, 39.029385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047661, 36.142868, 39.155613>,  <39.271217, 36.099426, 39.231350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047661, 36.142868, 39.155613>,  <38.675068, 36.215271, 39.029385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047661, 36.142868, 39.155613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275868, 0.214048, 0.937059,
		-0.237162, -0.959906, 0.149447,
		0.931478, -0.181008, 0.315571,
		39.327103, 36.088566, 39.250286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600109, 35.815464, 39.575966>,  <38.675068, 36.215271, 39.029385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600109, 35.815464, 39.575966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948658, 36.010368, 39.598930>,  <39.157787, 36.127312, 39.612709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948658, 36.010368, 39.598930>,  <38.600109, 35.815464, 39.575966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948658, 36.010368, 39.598930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215226, 0.274461, 0.937203,
		0.440903, -0.829005, 0.344027,
		0.871368, 0.487259, 0.057413,
		39.210068, 36.156548, 39.616154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867229, 35.502625, 40.082085>,  <38.600109, 35.815464, 39.575966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867229, 35.502625, 40.082085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062096, 35.851109, 40.057873>,  <39.179016, 36.060200, 40.043346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062096, 35.851109, 40.057873>,  <38.867229, 35.502625, 40.082085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062096, 35.851109, 40.057873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153284, 0.153536, 0.976182,
		0.859753, -0.466282, 0.208340,
		0.487163, 0.871210, -0.060529,
		39.208244, 36.112473, 40.039715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912861, 34.756927, 40.434380>,  <38.867229, 35.502625, 40.082085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912861, 34.756927, 40.434380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648754, 34.521450, 40.620922>,  <38.490288, 34.380165, 40.732849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648754, 34.521450, 40.620922>,  <38.912861, 34.756927, 40.434380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648754, 34.521450, 40.620922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193134, -0.466983, -0.862917,
		0.725772, -0.659827, 0.194638,
		-0.660269, -0.588690, 0.466358,
		38.450672, 34.344845, 40.760830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078888, 33.969063, 40.271111>,  <38.912861, 34.756927, 40.434380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078888, 33.969063, 40.271111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694866, 34.014595, 40.373348>,  <38.464451, 34.041916, 40.434692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694866, 34.014595, 40.373348>,  <39.078888, 33.969063, 40.271111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694866, 34.014595, 40.373348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279486, -0.433203, -0.856868,
		0.013184, -0.894079, 0.447716,
		-0.960059, 0.113833, 0.255594,
		38.406849, 34.048744, 40.450027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814919, 33.344994, 40.136017>,  <39.078888, 33.969063, 40.271111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814919, 33.344994, 40.136017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473866, 33.546337, 40.192078>,  <38.269234, 33.667145, 40.225716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473866, 33.546337, 40.192078>,  <38.814919, 33.344994, 40.136017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473866, 33.546337, 40.192078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327366, -0.305569, -0.894125,
		-0.407241, -0.808243, 0.425321,
		-0.852635, 0.503360, 0.140151,
		38.218075, 33.697346, 40.234123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261951, 32.896725, 40.029633>,  <38.814919, 33.344994, 40.136017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261951, 32.896725, 40.029633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127987, 33.266838, 39.958424>,  <38.047607, 33.488907, 39.915699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127987, 33.266838, 39.958424>,  <38.261951, 32.896725, 40.029633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127987, 33.266838, 39.958424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433187, -0.318979, -0.842972,
		-0.836770, -0.205204, 0.507649,
		-0.334910, 0.925280, -0.178020,
		38.027515, 33.544422, 39.905018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630058, 32.813992, 39.635963>,  <38.261951, 32.896725, 40.029633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630058, 32.813992, 39.635963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698784, 33.197594, 39.545811>,  <37.740021, 33.427753, 39.491718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698784, 33.197594, 39.545811>,  <37.630058, 32.813992, 39.635963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698784, 33.197594, 39.545811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337883, -0.157538, -0.927910,
		-0.925373, 0.235579, 0.296963,
		0.171813, 0.959002, -0.225379,
		37.750328, 33.485294, 39.478195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159302, 32.910248, 39.195930>,  <37.630058, 32.813992, 39.635963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159302, 32.910248, 39.195930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378551, 33.240307, 39.141254>,  <37.510101, 33.438343, 39.108448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378551, 33.240307, 39.141254>,  <37.159302, 32.910248, 39.195930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378551, 33.240307, 39.141254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262008, 0.014193, -0.964961,
		-0.794297, 0.564736, 0.223975,
		0.548127, 0.825150, -0.136692,
		37.542988, 33.487850, 39.100246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729973, 33.436192, 39.039028>,  <37.159302, 32.910248, 39.195930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729973, 33.436192, 39.039028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083618, 33.543812, 38.886215>,  <37.295807, 33.608383, 38.794529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083618, 33.543812, 38.886215>,  <36.729973, 33.436192, 39.039028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083618, 33.543812, 38.886215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419684, 0.097783, -0.902388,
		-0.205432, 0.958149, 0.199368,
		0.884117, 0.269051, -0.382032,
		37.348854, 33.624527, 38.771606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515129, 33.854565, 38.634445>,  <36.729973, 33.436192, 39.039028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515129, 33.854565, 38.634445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887062, 33.776913, 38.509403>,  <37.110222, 33.730320, 38.434376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887062, 33.776913, 38.509403>,  <36.515129, 33.854565, 38.634445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887062, 33.776913, 38.509403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307807, 0.055222, -0.949845,
		0.201659, 0.979420, -0.008408,
		0.929833, -0.194133, -0.312608,
		37.166012, 33.718674, 38.415619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861698, 34.461548, 38.232468>,  <36.515129, 33.854565, 38.634445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861698, 34.461548, 38.232468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028576, 34.110088, 38.139576>,  <37.128704, 33.899212, 38.083839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028576, 34.110088, 38.139576>,  <36.861698, 34.461548, 38.232468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028576, 34.110088, 38.139576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368165, 0.070226, -0.927105,
		0.830904, 0.472285, -0.294188,
		0.417198, -0.878644, -0.232229,
		37.153736, 33.846497, 38.069908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030849, 34.600464, 37.652470>,  <36.861698, 34.461548, 38.232468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030849, 34.600464, 37.652470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061497, 34.202347, 37.628704>,  <37.079887, 33.963478, 37.614445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061497, 34.202347, 37.628704>,  <37.030849, 34.600464, 37.652470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061497, 34.202347, 37.628704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436985, 0.020038, -0.899245,
		0.896199, 0.094864, -0.433391,
		0.076622, -0.995289, -0.059412,
		37.084484, 33.903759, 37.610882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325733, 34.583878, 37.010853>,  <37.030849, 34.600464, 37.652470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325733, 34.583878, 37.010853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185734, 34.220604, 37.102684>,  <37.101734, 34.002640, 37.157784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185734, 34.220604, 37.102684>,  <37.325733, 34.583878, 37.010853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185734, 34.220604, 37.102684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220882, -0.158159, -0.962391,
		0.910336, -0.387547, -0.145245,
		-0.350000, -0.908181, 0.229580,
		37.080734, 33.948151, 37.171558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648392, 34.063862, 36.534283>,  <37.325733, 34.583878, 37.010853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648392, 34.063862, 36.534283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301105, 33.923580, 36.674683>,  <37.092731, 33.839413, 36.758923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301105, 33.923580, 36.674683>,  <37.648392, 34.063862, 36.534283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301105, 33.923580, 36.674683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270969, -0.257484, -0.927512,
		0.415658, -0.900394, 0.128523,
		-0.868219, -0.350702, 0.351004,
		37.040642, 33.818371, 36.779984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.291222, 35.196396, 43.906105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.911743, 35.152420, 44.024693>,  <38.684055, 35.126034, 44.095844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.911743, 35.152420, 44.024693>,  <39.291222, 35.196396, 43.906105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911743, 35.152420, 44.024693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183142, -0.573262, -0.798642,
		0.257754, -0.811963, 0.523716,
		-0.948695, -0.109939, 0.296465,
		38.627136, 35.119438, 44.113632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149361, 34.450882, 44.013645>,  <39.291222, 35.196396, 43.906105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149361, 34.450882, 44.013645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.790581, 34.619793, 43.961243>,  <38.575314, 34.721138, 43.929802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.790581, 34.619793, 43.961243>,  <39.149361, 34.450882, 44.013645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790581, 34.619793, 43.961243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098150, -0.479092, -0.872260,
		-0.431094, -0.769518, 0.471169,
		-0.896953, 0.422271, -0.131006,
		38.521496, 34.746475, 43.921940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771420, 33.889023, 43.657551>,  <39.149361, 34.450882, 44.013645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771420, 33.889023, 43.657551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.573105, 34.232719, 43.607113>,  <38.454117, 34.438938, 43.576851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.573105, 34.232719, 43.607113>,  <38.771420, 33.889023, 43.657551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573105, 34.232719, 43.607113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240871, -0.275557, -0.930618,
		-0.834370, -0.431017, 0.343585,
		-0.495790, 0.859239, -0.126097,
		38.424370, 34.490490, 43.569283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210068, 33.649075, 43.244091>,  <38.771420, 33.889023, 43.657551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210068, 33.649075, 43.244091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.207554, 34.047176, 43.205254>,  <38.206043, 34.286037, 43.181953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.207554, 34.047176, 43.205254>,  <38.210068, 33.649075, 43.244091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207554, 34.047176, 43.205254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249504, -0.095582, -0.963645,
		-0.968354, 0.018164, 0.248921,
		-0.006288, 0.995256, -0.097089,
		38.205666, 34.345753, 43.176128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625187, 33.890480, 42.793056>,  <38.210068, 33.649075, 43.244091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625187, 33.890480, 42.793056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918270, 34.162643, 42.787647>,  <38.094120, 34.325943, 42.784401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918270, 34.162643, 42.787647>,  <37.625187, 33.890480, 42.793056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918270, 34.162643, 42.787647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072919, -0.098249, -0.992487,
		-0.676627, 0.726215, -0.121602,
		0.732706, 0.680411, -0.013523,
		38.138081, 34.366768, 42.783588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429867, 34.438347, 42.342293>,  <37.625187, 33.890480, 42.793056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429867, 34.438347, 42.342293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829506, 34.438263, 42.359241>,  <38.069290, 34.438213, 42.369411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829506, 34.438263, 42.359241>,  <37.429867, 34.438347, 42.342293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829506, 34.438263, 42.359241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042196, 0.096221, -0.994465,
		-0.003867, 0.995360, 0.096143,
		0.999102, -0.000211, 0.042373,
		38.129238, 34.438198, 42.371952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605225, 34.862556, 41.845512>,  <37.429867, 34.438347, 42.342293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605225, 34.862556, 41.845512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.965080, 34.699692, 41.908581>,  <38.180996, 34.601971, 41.946423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.965080, 34.699692, 41.908581>,  <37.605225, 34.862556, 41.845512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965080, 34.699692, 41.908581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142532, -0.067473, -0.987488,
		0.412708, 0.910859, -0.002668,
		0.899642, -0.407164, 0.157674,
		38.234974, 34.577541, 41.955883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103840, 35.327526, 41.433399>,  <37.605225, 34.862556, 41.845512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103840, 35.327526, 41.433399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.273232, 34.972744, 41.507130>,  <38.374866, 34.759872, 41.551369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.273232, 34.972744, 41.507130>,  <38.103840, 35.327526, 41.433399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273232, 34.972744, 41.507130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089771, -0.243551, -0.965724,
		0.901448, 0.392414, -0.182761,
		0.423476, -0.886958, 0.184321,
		38.400272, 34.706657, 41.562428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532543, 35.224060, 40.875359>,  <38.103840, 35.327526, 41.433399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532543, 35.224060, 40.875359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450279, 34.865620, 41.032688>,  <38.400921, 34.650555, 41.127087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450279, 34.865620, 41.032688>,  <38.532543, 35.224060, 40.875359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450279, 34.865620, 41.032688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099327, -0.380723, -0.919339,
		0.973570, -0.228137, -0.010709,
		-0.205658, -0.896105, 0.393320,
		38.388580, 34.596786, 41.150684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294659, 35.559280, 40.731327>,  <38.532543, 35.224060, 40.875359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294659, 35.559280, 40.731327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.264717, 35.934906, 40.597134>,  <39.246754, 36.160282, 40.516617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.264717, 35.934906, 40.597134>,  <39.294659, 35.559280, 40.731327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264717, 35.934906, 40.597134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203355, 0.314984, 0.927056,
		0.976240, 0.137617, 0.167386,
		-0.074854, 0.939067, -0.335485,
		39.242260, 36.216625, 40.496487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752583, 36.034893, 41.128403>,  <39.294659, 35.559280, 40.731327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752583, 36.034893, 41.128403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.458614, 36.263306, 40.982079>,  <39.282234, 36.400352, 40.894283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.458614, 36.263306, 40.982079>,  <39.752583, 36.034893, 41.128403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458614, 36.263306, 40.982079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122623, 0.418640, 0.899836,
		0.666975, 0.706165, -0.237646,
		-0.734920, 0.571027, -0.365814,
		39.238140, 36.434612, 40.872334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862862, 36.630974, 41.462418>,  <39.752583, 36.034893, 41.128403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862862, 36.630974, 41.462418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.492443, 36.646915, 41.312298>,  <39.270191, 36.656479, 41.222225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.492443, 36.646915, 41.312298>,  <39.862862, 36.630974, 41.462418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492443, 36.646915, 41.312298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333653, 0.378327, 0.863449,
		0.176396, 0.924814, -0.337052,
		-0.926045, 0.039850, -0.375302,
		39.214630, 36.658871, 41.199707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686314, 37.258484, 41.513699>,  <39.862862, 36.630974, 41.462418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686314, 37.258484, 41.513699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312401, 37.118477, 41.489441>,  <39.088055, 37.034473, 41.474888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312401, 37.118477, 41.489441>,  <39.686314, 37.258484, 41.513699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312401, 37.118477, 41.489441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248243, 0.521549, 0.816310,
		-0.254094, 0.778123, -0.574422,
		-0.934779, -0.350015, -0.060641,
		39.031967, 37.013474, 41.471249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310631, 37.829105, 41.662743>,  <39.686314, 37.258484, 41.513699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310631, 37.829105, 41.662743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.057697, 37.521671, 41.701611>,  <38.905937, 37.337212, 41.724934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.057697, 37.521671, 41.701611>,  <39.310631, 37.829105, 41.662743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057697, 37.521671, 41.701611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482310, 0.488723, 0.726998,
		-0.606248, 0.412835, -0.679728,
		-0.632329, -0.768581, 0.097173,
		38.868000, 37.291096, 41.730762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612514, 38.089046, 41.649517>,  <39.310631, 37.829105, 41.662743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612514, 38.089046, 41.649517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.595398, 37.728897, 41.822720>,  <38.585129, 37.512806, 41.926643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.595398, 37.728897, 41.822720>,  <38.612514, 38.089046, 41.649517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595398, 37.728897, 41.822720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530924, 0.387637, 0.753563,
		-0.846338, -0.197649, -0.494618,
		-0.042791, -0.900374, 0.433009,
		38.582561, 37.458786, 41.952621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859253, 38.026104, 41.849186>,  <38.612514, 38.089046, 41.649517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859253, 38.026104, 41.849186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073074, 37.772480, 42.072689>,  <38.201366, 37.620304, 42.206791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073074, 37.772480, 42.072689>,  <37.859253, 38.026104, 41.849186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073074, 37.772480, 42.072689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554108, 0.236262, 0.798213,
		-0.638132, -0.736304, -0.225044,
		0.534558, -0.634064, 0.558758,
		38.233440, 37.582260, 42.240318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461208, 37.448166, 42.102089>,  <37.859253, 38.026104, 41.849186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461208, 37.448166, 42.102089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.773636, 37.510483, 42.343967>,  <37.961094, 37.547874, 42.489094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.773636, 37.510483, 42.343967>,  <37.461208, 37.448166, 42.102089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773636, 37.510483, 42.343967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607896, 0.411171, 0.679265,
		-0.142808, -0.898146, 0.415859,
		0.781069, 0.155794, 0.604698,
		38.007957, 37.557220, 42.525375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233566, 37.363400, 42.768703>,  <37.461208, 37.448166, 42.102089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233566, 37.363400, 42.768703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.587822, 37.526371, 42.857830>,  <37.800373, 37.624153, 42.911304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.587822, 37.526371, 42.857830>,  <37.233566, 37.363400, 42.768703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587822, 37.526371, 42.857830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403122, 0.436348, 0.804421,
		0.230520, -0.802247, 0.550690,
		0.885637, 0.407430, 0.222817,
		37.853512, 37.648602, 42.924675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402374, 37.336311, 43.520962>,  <37.233566, 37.363400, 42.768703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402374, 37.336311, 43.520962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.618351, 37.655975, 43.415279>,  <37.747936, 37.847775, 43.351868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.618351, 37.655975, 43.415279>,  <37.402374, 37.336311, 43.520962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618351, 37.655975, 43.415279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218841, 0.436389, 0.872739,
		0.812758, -0.413406, 0.410512,
		0.539939, 0.799163, -0.264209,
		37.780334, 37.895725, 43.336018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656605, 37.441837, 44.118557>,  <37.402374, 37.336311, 43.520962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656605, 37.441837, 44.118557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723080, 37.781574, 43.918156>,  <37.762966, 37.985416, 43.797916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723080, 37.781574, 43.918156>,  <37.656605, 37.441837, 44.118557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723080, 37.781574, 43.918156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024092, 0.511412, 0.858998,
		0.985800, -0.130684, 0.105452,
		0.166186, 0.849341, -0.501001,
		37.772934, 38.036377, 43.767857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265957, 37.773083, 44.392414>,  <37.656605, 37.441837, 44.118557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265957, 37.773083, 44.392414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097446, 38.082600, 44.203197>,  <37.996342, 38.268311, 44.089668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097446, 38.082600, 44.203197>,  <38.265957, 37.773083, 44.392414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097446, 38.082600, 44.203197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034244, 0.534786, 0.844293,
		0.906285, 0.339483, -0.251791,
		-0.421277, 0.773793, -0.473043,
		37.971062, 38.314739, 44.061283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639561, 38.365723, 44.531345>,  <38.265957, 37.773083, 44.392414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639561, 38.365723, 44.531345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.273254, 38.482388, 44.420860>,  <38.053471, 38.552387, 44.354568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.273254, 38.482388, 44.420860>,  <38.639561, 38.365723, 44.531345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273254, 38.482388, 44.420860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101497, 0.497298, 0.861622,
		0.388668, 0.817083, -0.425807,
		-0.915770, 0.291667, -0.276215,
		37.998524, 38.569889, 44.337997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671818, 39.072411, 44.487431>,  <38.639561, 38.365723, 44.531345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671818, 39.072411, 44.487431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.279762, 39.003513, 44.526760>,  <38.044529, 38.962173, 44.550358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.279762, 39.003513, 44.526760>,  <38.671818, 39.072411, 44.487431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279762, 39.003513, 44.526760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025317, 0.600355, 0.799333,
		-0.196709, 0.780965, -0.592790,
		-0.980135, -0.172243, 0.098324,
		37.985722, 38.951839, 44.556255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.131937, 36.655224, 45.683479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.520029, 36.558384, 45.686020>,  <31.752884, 36.500282, 45.687542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.520029, 36.558384, 45.686020>,  <31.131937, 36.655224, 45.683479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520029, 36.558384, 45.686020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045716, -0.208829, -0.976883,
		0.237826, 0.947512, -0.213680,
		0.970231, -0.242097, 0.006349,
		31.811098, 36.485756, 45.687923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522642, 36.979908, 45.082317>,  <31.131937, 36.655224, 45.683479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522642, 36.979908, 45.082317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.761057, 36.674553, 45.181900>,  <31.904106, 36.491341, 45.241650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.761057, 36.674553, 45.181900>,  <31.522642, 36.979908, 45.082317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761057, 36.674553, 45.181900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289254, -0.085096, -0.953463,
		0.749047, 0.640310, 0.170093,
		0.596037, -0.763389, 0.248953,
		31.939869, 36.445538, 45.256584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006157, 37.039188, 44.543171>,  <31.522642, 36.979908, 45.082317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006157, 37.039188, 44.543171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.031986, 36.666111, 44.685108>,  <32.047485, 36.442265, 44.770271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.031986, 36.666111, 44.685108>,  <32.006157, 37.039188, 44.543171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031986, 36.666111, 44.685108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161706, -0.341102, -0.926013,
		0.984724, 0.117175, 0.128796,
		0.064573, -0.932695, 0.354839,
		32.051357, 36.386303, 44.791561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702103, 36.735077, 44.346985>,  <32.006157, 37.039188, 44.543171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702103, 36.735077, 44.346985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450512, 36.428963, 44.401718>,  <32.299557, 36.245293, 44.434559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450512, 36.428963, 44.401718>,  <32.702103, 36.735077, 44.346985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450512, 36.428963, 44.401718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197467, -0.327506, -0.923984,
		0.751926, -0.554146, 0.357113,
		-0.628979, -0.765285, 0.136834,
		32.261818, 36.199379, 44.442768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024178, 36.121311, 44.042023>,  <32.702103, 36.735077, 44.346985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024178, 36.121311, 44.042023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.631687, 36.045616, 44.056923>,  <32.396194, 36.000198, 44.065865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.631687, 36.045616, 44.056923>,  <33.024178, 36.121311, 44.042023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631687, 36.045616, 44.056923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067556, -0.518146, -0.852620,
		0.180647, -0.834095, 0.521202,
		-0.981225, -0.189233, 0.037253,
		32.337318, 35.988846, 44.068100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966713, 35.514137, 43.649460>,  <33.024178, 36.121311, 44.042023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966713, 35.514137, 43.649460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584114, 35.620338, 43.697838>,  <32.354557, 35.684059, 43.726864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584114, 35.620338, 43.697838>,  <32.966713, 35.514137, 43.649460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584114, 35.620338, 43.697838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205745, -0.319935, -0.924830,
		-0.206849, -0.909478, 0.360642,
		-0.956495, 0.265501, 0.120942,
		32.297165, 35.699989, 43.734119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597485, 35.011127, 43.360016>,  <32.966713, 35.514137, 43.649460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597485, 35.011127, 43.360016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318920, 35.298103, 43.353130>,  <32.151783, 35.470287, 43.348999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318920, 35.298103, 43.353130>,  <32.597485, 35.011127, 43.360016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318920, 35.298103, 43.353130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241954, -0.257310, -0.935548,
		-0.675625, -0.647362, 0.352780,
		-0.696412, 0.717436, -0.017214,
		32.109997, 35.513332, 43.347965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866875, 34.766865, 43.045555>,  <32.597485, 35.011127, 43.360016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866875, 34.766865, 43.045555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.834475, 35.164459, 43.016075>,  <31.815035, 35.403015, 42.998386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.834475, 35.164459, 43.016075>,  <31.866875, 34.766865, 43.045555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834475, 35.164459, 43.016075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337297, -0.096916, -0.936396,
		-0.937907, -0.050988, 0.343118,
		-0.080999, 0.993986, -0.073701,
		31.810175, 35.462654, 42.993965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188240, 34.896595, 42.738773>,  <31.866875, 34.766865, 43.045555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188240, 34.896595, 42.738773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407734, 35.226288, 42.682869>,  <31.539431, 35.424103, 42.649326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407734, 35.226288, 42.682869>,  <31.188240, 34.896595, 42.738773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407734, 35.226288, 42.682869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119063, -0.088421, -0.988942,
		-0.827475, 0.559306, 0.049616,
		0.548734, 0.824232, -0.139759,
		31.572353, 35.473557, 42.640942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856594, 35.357819, 42.172729>,  <31.188240, 34.896595, 42.738773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856594, 35.357819, 42.172729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.246901, 35.444019, 42.187901>,  <31.481085, 35.495739, 42.197002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.246901, 35.444019, 42.187901>,  <30.856594, 35.357819, 42.172729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246901, 35.444019, 42.187901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067976, -0.133791, -0.988675,
		-0.207984, 0.967295, -0.145198,
		0.975767, 0.215499, 0.037927,
		31.539631, 35.508671, 42.199280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896427, 35.685356, 41.496864>,  <30.856594, 35.357819, 42.172729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896427, 35.685356, 41.496864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.280361, 35.671776, 41.608265>,  <31.510721, 35.663628, 41.675106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.280361, 35.671776, 41.608265>,  <30.896427, 35.685356, 41.496864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280361, 35.671776, 41.608265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278605, -0.001658, -0.960404,
		0.033072, 0.999422, 0.007869,
		0.959836, -0.033954, 0.278499,
		31.568312, 35.661591, 41.691814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383512, 36.335976, 41.326164>,  <30.896427, 35.685356, 41.496864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383512, 36.335976, 41.326164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.553911, 35.974331, 41.339447>,  <31.656151, 35.757343, 41.347416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.553911, 35.974331, 41.339447>,  <31.383512, 36.335976, 41.326164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553911, 35.974331, 41.339447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438399, 0.174178, -0.881742,
		0.791412, 0.390178, 0.470562,
		0.425997, -0.904115, 0.033207,
		31.681711, 35.703098, 41.349411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987423, 36.434834, 40.930401>,  <31.383512, 36.335976, 41.326164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987423, 36.434834, 40.930401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.946623, 36.037548, 40.952759>,  <31.922142, 35.799175, 40.966175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.946623, 36.037548, 40.952759>,  <31.987423, 36.434834, 40.930401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946623, 36.037548, 40.952759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308336, -0.084989, -0.947473,
		0.945793, -0.079409, 0.314912,
		-0.102002, -0.993212, 0.055897,
		31.916021, 35.739586, 40.969528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679058, 36.093136, 40.639782>,  <31.987423, 36.434834, 40.930401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679058, 36.093136, 40.639782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394299, 35.812286, 40.645786>,  <32.223442, 35.643776, 40.649391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394299, 35.812286, 40.645786>,  <32.679058, 36.093136, 40.639782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394299, 35.812286, 40.645786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208256, -0.231480, -0.950287,
		0.670691, -0.673384, 0.311012,
		-0.711901, -0.702119, 0.015015,
		32.180729, 35.601650, 40.650291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431240, 36.483501, 40.475376>,  <32.679058, 36.093136, 40.639782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431240, 36.483501, 40.475376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412186, 36.803425, 40.236031>,  <33.400753, 36.995380, 40.092422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412186, 36.803425, 40.236031>,  <33.431240, 36.483501, 40.475376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412186, 36.803425, 40.236031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192755, 0.580420, 0.791175,
		0.980090, 0.153023, 0.126520,
		-0.047633, 0.799811, -0.598359,
		33.397896, 37.043369, 40.056522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875511, 37.005402, 40.679134>,  <33.431240, 36.483501, 40.475376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875511, 37.005402, 40.679134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593918, 37.202015, 40.474079>,  <33.424961, 37.319984, 40.351048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593918, 37.202015, 40.474079>,  <33.875511, 37.005402, 40.679134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593918, 37.202015, 40.474079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075294, 0.666086, 0.742065,
		0.706211, 0.561003, -0.431906,
		-0.703987, 0.491534, -0.512637,
		33.382721, 37.349476, 40.320290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027725, 37.625671, 40.804348>,  <33.875511, 37.005402, 40.679134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027725, 37.625671, 40.804348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643135, 37.654068, 40.698116>,  <33.412380, 37.671104, 40.634377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643135, 37.654068, 40.698116>,  <34.027725, 37.625671, 40.804348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643135, 37.654068, 40.698116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162997, 0.630728, 0.758692,
		0.221369, 0.772750, -0.594856,
		-0.961472, 0.070991, -0.265579,
		33.354694, 37.675365, 40.618443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842888, 38.298756, 40.677532>,  <34.027725, 37.625671, 40.804348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842888, 38.298756, 40.677532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502106, 38.128056, 40.798893>,  <33.297634, 38.025635, 40.871708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502106, 38.128056, 40.798893>,  <33.842888, 38.298756, 40.677532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502106, 38.128056, 40.798893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054462, 0.648518, 0.759248,
		-0.520767, 0.630326, -0.575753,
		-0.851960, -0.426748, 0.303397,
		33.246517, 38.000031, 40.889912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472664, 38.891655, 40.954060>,  <33.842888, 38.298756, 40.677532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472664, 38.891655, 40.954060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255848, 38.579163, 41.077911>,  <33.125759, 38.391666, 41.152222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255848, 38.579163, 41.077911>,  <33.472664, 38.891655, 40.954060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255848, 38.579163, 41.077911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220935, 0.487972, 0.844435,
		-0.810792, 0.389306, -0.437100,
		-0.542036, -0.781233, 0.309632,
		33.093239, 38.344791, 41.170799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903095, 39.157692, 41.300339>,  <33.472664, 38.891655, 40.954060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903095, 39.157692, 41.300339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916611, 38.780533, 41.432888>,  <32.924721, 38.554237, 41.512417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916611, 38.780533, 41.432888>,  <32.903095, 39.157692, 41.300339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916611, 38.780533, 41.432888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207684, 0.317697, 0.925168,
		-0.977612, -0.100076, -0.185091,
		0.033784, -0.942896, 0.331369,
		32.926746, 38.497665, 41.532299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253143, 39.013969, 41.687119>,  <32.903095, 39.157692, 41.300339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253143, 39.013969, 41.687119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500362, 38.731789, 41.825886>,  <32.648693, 38.562481, 41.909145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500362, 38.731789, 41.825886>,  <32.253143, 39.013969, 41.687119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500362, 38.731789, 41.825886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173955, 0.307626, 0.935471,
		-0.766654, -0.638512, 0.067410,
		0.618047, -0.705456, 0.346915,
		32.685776, 38.520153, 41.929958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857256, 38.644192, 42.173824>,  <32.253143, 39.013969, 41.687119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857256, 38.644192, 42.173824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239185, 38.591381, 42.280319>,  <32.468342, 38.559696, 42.344215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239185, 38.591381, 42.280319>,  <31.857256, 38.644192, 42.173824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239185, 38.591381, 42.280319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196616, 0.391112, 0.899096,
		-0.222830, -0.910824, 0.347485,
		0.954824, -0.132025, 0.266235,
		32.525631, 38.551773, 42.360191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909391, 38.282463, 42.892567>,  <31.857256, 38.644192, 42.173824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909391, 38.282463, 42.892567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251663, 38.477913, 42.824375>,  <32.457027, 38.595181, 42.783463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251663, 38.477913, 42.824375>,  <31.909391, 38.282463, 42.892567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251663, 38.477913, 42.824375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045751, 0.399556, 0.915566,
		0.515479, -0.775632, 0.364247,
		0.855680, 0.488620, -0.170477,
		32.508366, 38.624500, 42.773232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317730, 38.132046, 43.457191>,  <31.909391, 38.282463, 42.892567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317730, 38.132046, 43.457191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487125, 38.454979, 43.292816>,  <32.588764, 38.648739, 43.194191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487125, 38.454979, 43.292816>,  <32.317730, 38.132046, 43.457191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487125, 38.454979, 43.292816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006080, 0.451085, 0.892460,
		0.905879, -0.380448, 0.186122,
		0.423492, 0.807330, -0.410942,
		32.614174, 38.697178, 43.169533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941788, 38.191727, 43.832508>,  <32.317730, 38.132046, 43.457191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941788, 38.191727, 43.832508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.882015, 38.552792, 43.671082>,  <32.846153, 38.769432, 43.574226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.882015, 38.552792, 43.671082>,  <32.941788, 38.191727, 43.832508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882015, 38.552792, 43.671082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016024, 0.410306, 0.911807,
		0.988642, 0.129786, -0.075777,
		-0.149432, 0.902665, -0.403566,
		32.837185, 38.823589, 43.550011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400295, 38.685093, 44.177544>,  <32.941788, 38.191727, 43.832508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400295, 38.685093, 44.177544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124874, 38.928982, 44.020508>,  <32.959621, 39.075317, 43.926285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124874, 38.928982, 44.020508>,  <33.400295, 38.685093, 44.177544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124874, 38.928982, 44.020508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092979, 0.611125, 0.786054,
		0.719198, 0.504740, -0.477485,
		-0.688556, 0.609725, -0.392590,
		32.918308, 39.111900, 43.902729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638470, 39.283001, 44.502918>,  <33.400295, 38.685093, 44.177544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638470, 39.283001, 44.502918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267521, 39.350037, 44.369114>,  <33.044952, 39.390259, 44.288830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267521, 39.350037, 44.369114>,  <33.638470, 39.283001, 44.502918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267521, 39.350037, 44.369114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197488, 0.540107, 0.818097,
		0.317778, 0.824741, -0.467782,
		-0.927370, 0.167592, -0.334510,
		32.989311, 39.400314, 44.268761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588028, 39.983715, 44.367458>,  <33.638470, 39.283001, 44.502918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588028, 39.983715, 44.367458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.215637, 39.847969, 44.421284>,  <32.992203, 39.766521, 44.453579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.215637, 39.847969, 44.421284>,  <33.588028, 39.983715, 44.367458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215637, 39.847969, 44.421284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146262, 0.684450, 0.714238,
		-0.334489, 0.645260, -0.686846,
		-0.930981, -0.339364, 0.134564,
		32.936344, 39.746159, 44.461655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898754, 40.581112, 44.088848>,  <33.588028, 39.983715, 44.367458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898754, 40.581112, 44.088848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.279369, 40.559731, 44.209984>,  <34.507740, 40.546902, 44.282665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.279369, 40.559731, 44.209984>,  <33.898754, 40.581112, 44.088848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279369, 40.559731, 44.209984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219572, -0.571387, -0.790762,
		0.215304, 0.818938, -0.531963,
		0.951542, -0.053450, 0.302838,
		34.564831, 40.543694, 44.300835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414814, 40.488045, 43.457779>,  <33.898754, 40.581112, 44.088848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414814, 40.488045, 43.457779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661137, 40.374100, 43.751621>,  <34.808929, 40.305733, 43.927925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661137, 40.374100, 43.751621>,  <34.414814, 40.488045, 43.457779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661137, 40.374100, 43.751621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457940, -0.629299, -0.627912,
		0.641154, 0.723073, -0.257072,
		0.615802, -0.284865, 0.734602,
		34.845879, 40.288639, 43.972000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128822, 40.680367, 43.314938>,  <34.414814, 40.488045, 43.457779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128822, 40.680367, 43.314938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.171307, 40.378372, 43.573772>,  <35.196796, 40.197178, 43.729073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.171307, 40.378372, 43.573772>,  <35.128822, 40.680367, 43.314938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171307, 40.378372, 43.573772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445121, -0.545821, -0.709891,
		0.889149, 0.363429, 0.278088,
		0.106209, -0.754982, 0.647087,
		35.203171, 40.151878, 43.767899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857044, 40.430229, 43.256428>,  <35.128822, 40.680367, 43.314938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857044, 40.430229, 43.256428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630306, 40.126740, 43.384819>,  <35.494263, 39.944645, 43.461853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630306, 40.126740, 43.384819>,  <35.857044, 40.430229, 43.256428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630306, 40.126740, 43.384819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442497, -0.609051, -0.658220,
		0.694900, -0.231074, 0.680969,
		-0.566843, -0.758723, 0.320980,
		35.460255, 39.899124, 43.481113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344707, 39.918312, 43.182007>,  <35.857044, 40.430229, 43.256428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344707, 39.918312, 43.182007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998386, 39.722206, 43.222046>,  <35.790592, 39.604542, 43.246067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998386, 39.722206, 43.222046>,  <36.344707, 39.918312, 43.182007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998386, 39.722206, 43.222046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298578, -0.666709, -0.682899,
		0.401536, -0.561372, 0.723623,
		-0.865806, -0.490266, 0.100095,
		35.738644, 39.575127, 43.252075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477112, 39.224598, 43.207623>,  <36.344707, 39.918312, 43.182007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477112, 39.224598, 43.207623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098244, 39.238468, 43.080078>,  <35.870922, 39.246792, 43.003551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098244, 39.238468, 43.080078>,  <36.477112, 39.224598, 43.207623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098244, 39.238468, 43.080078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207837, -0.690825, -0.692506,
		-0.244289, -0.722190, 0.647120,
		-0.947168, 0.034676, -0.318858,
		35.814095, 39.248871, 42.984421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394257, 38.591022, 42.915684>,  <36.477112, 39.224598, 43.207623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394257, 38.591022, 42.915684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.059120, 38.763321, 42.781528>,  <35.858040, 38.866699, 42.701035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.059120, 38.763321, 42.781528>,  <36.394257, 38.591022, 42.915684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059120, 38.763321, 42.781528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068226, -0.526919, -0.847173,
		-0.541648, -0.732671, 0.412081,
		-0.837832, 0.430755, -0.335392,
		35.807770, 38.892544, 42.680912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969742, 38.026382, 42.708363>,  <36.394257, 38.591022, 42.915684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969742, 38.026382, 42.708363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.855137, 38.362324, 42.523949>,  <35.786373, 38.563889, 42.413300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.855137, 38.362324, 42.523949>,  <35.969742, 38.026382, 42.708363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855137, 38.362324, 42.523949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082384, -0.457830, -0.885214,
		-0.954527, -0.291608, 0.061985,
		-0.286514, 0.839855, -0.461035,
		35.769184, 38.614281, 42.385639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487125, 37.850552, 42.193600>,  <35.969742, 38.026382, 42.708363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487125, 37.850552, 42.193600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640568, 38.204983, 42.089516>,  <35.732632, 38.417641, 42.027065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640568, 38.204983, 42.089516>,  <35.487125, 37.850552, 42.193600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640568, 38.204983, 42.089516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275822, -0.378839, -0.883404,
		-0.881345, 0.267107, -0.389725,
		0.383607, 0.886078, -0.260214,
		35.755650, 38.470806, 42.011452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434250, 37.849838, 41.484543>,  <35.487125, 37.850552, 42.193600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434250, 37.849838, 41.484543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.688328, 38.157841, 41.508610>,  <35.840775, 38.342640, 41.523052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.688328, 38.157841, 41.508610>,  <35.434250, 37.849838, 41.484543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688328, 38.157841, 41.508610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336189, -0.205510, -0.919099,
		-0.695344, 0.604036, -0.389406,
		0.635195, 0.770004, 0.060170,
		35.878887, 38.388844, 41.526661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353661, 38.335815, 40.888371>,  <35.434250, 37.849838, 41.484543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353661, 38.335815, 40.888371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.721569, 38.418259, 41.021961>,  <35.942314, 38.467724, 41.102116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.721569, 38.418259, 41.021961>,  <35.353661, 38.335815, 40.888371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721569, 38.418259, 41.021961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341758, -0.002313, -0.939785,
		-0.192921, 0.978528, -0.072565,
		0.919773, 0.206103, 0.333973,
		35.997501, 38.480091, 41.122154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702023, 38.776421, 40.333958>,  <35.353661, 38.335815, 40.888371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702023, 38.776421, 40.333958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002510, 38.644791, 40.562828>,  <36.182800, 38.565811, 40.700150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002510, 38.644791, 40.562828>,  <35.702023, 38.776421, 40.333958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002510, 38.644791, 40.562828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511427, -0.257811, -0.819741,
		0.417272, 0.908427, -0.025372,
		0.751217, -0.329079, 0.572172,
		36.227875, 38.546066, 40.734478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336208, 39.078663, 40.065990>,  <35.702023, 38.776421, 40.333958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336208, 39.078663, 40.065990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430584, 38.753716, 40.279301>,  <36.487209, 38.558746, 40.407288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430584, 38.753716, 40.279301>,  <36.336208, 39.078663, 40.065990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430584, 38.753716, 40.279301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615263, -0.299891, -0.729052,
		0.752185, 0.500121, 0.429065,
		0.235941, -0.812370, 0.533279,
		36.501366, 38.510006, 40.439285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988548, 39.241043, 40.202847>,  <36.336208, 39.078663, 40.065990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988548, 39.241043, 40.202847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.931671, 38.845127, 40.206638>,  <36.897545, 38.607578, 40.208912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.931671, 38.845127, 40.206638>,  <36.988548, 39.241043, 40.202847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931671, 38.845127, 40.206638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550264, -0.087005, -0.830446,
		0.822794, -0.112871, 0.557019,
		-0.142197, -0.989793, 0.009478,
		36.889011, 38.548187, 40.209480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.572500, 39.778763, 27.292126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.445456, 40.074394, 27.529743>,  <25.369228, 40.251774, 27.672314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.445456, 40.074394, 27.529743>,  <25.572500, 39.778763, 27.292126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445456, 40.074394, 27.529743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012585, -0.629711, 0.776728,
		0.948137, 0.239222, 0.209306,
		-0.317612, 0.739079, 0.594042,
		25.350172, 40.296120, 27.707956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052828, 39.858063, 27.922071>,  <25.572500, 39.778763, 27.292126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052828, 39.858063, 27.922071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.694618, 40.007477, 28.018829>,  <25.479692, 40.097126, 28.076885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.694618, 40.007477, 28.018829>,  <26.052828, 39.858063, 27.922071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694618, 40.007477, 28.018829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007740, -0.530411, 0.847705,
		0.444950, 0.761011, 0.472104,
		-0.895522, 0.373532, 0.241897,
		25.425962, 40.119537, 28.091398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124825, 40.244064, 28.609146>,  <26.052828, 39.858063, 27.922071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124825, 40.244064, 28.609146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.742044, 40.137344, 28.563419>,  <25.512377, 40.073311, 28.535982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.742044, 40.137344, 28.563419>,  <26.124825, 40.244064, 28.609146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742044, 40.137344, 28.563419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026983, -0.473917, 0.880156,
		-0.289002, 0.839179, 0.460713,
		-0.956948, -0.266798, -0.114319,
		25.454960, 40.057304, 28.529123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839470, 40.391499, 29.249226>,  <26.124825, 40.244064, 28.609146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839470, 40.391499, 29.249226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.563528, 40.155190, 29.081852>,  <25.397963, 40.013405, 28.981428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.563528, 40.155190, 29.081852>,  <25.839470, 40.391499, 29.249226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563528, 40.155190, 29.081852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161174, -0.438154, 0.884332,
		-0.705780, 0.677500, 0.207044,
		-0.689853, -0.590774, -0.418436,
		25.356573, 39.977959, 28.956322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264580, 40.481071, 29.626324>,  <25.839470, 40.391499, 29.249226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264580, 40.481071, 29.626324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.140163, 40.147049, 29.444801>,  <25.065514, 39.946636, 29.335888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.140163, 40.147049, 29.444801>,  <25.264580, 40.481071, 29.626324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140163, 40.147049, 29.444801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198386, -0.409928, 0.890282,
		-0.929461, 0.366942, -0.038159,
		-0.311039, -0.835052, -0.453808,
		25.046852, 39.896534, 29.308659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.711918, 40.164474, 30.026865>,  <25.264580, 40.481071, 29.626324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.711918, 40.164474, 30.026865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.899136, 39.870056, 29.831242>,  <25.011467, 39.693405, 29.713867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.899136, 39.870056, 29.831242>,  <24.711918, 40.164474, 30.026865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.899136, 39.870056, 29.831242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111380, -0.598138, 0.793615,
		-0.876658, -0.316975, -0.361935,
		0.468043, -0.736042, -0.489058,
		25.039549, 39.649242, 29.684525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.337582, 39.535805, 30.063765>,  <24.711918, 40.164474, 30.026865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.337582, 39.535805, 30.063765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.708515, 39.396961, 30.007805>,  <24.931074, 39.313656, 29.974228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.708515, 39.396961, 30.007805>,  <24.337582, 39.535805, 30.063765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.708515, 39.396961, 30.007805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131051, -0.651346, 0.747378,
		-0.350543, -0.674734, -0.649503,
		0.927332, -0.347106, -0.139900,
		24.986715, 39.292828, 29.965836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.294186, 38.844376, 30.146307>,  <24.337582, 39.535805, 30.063765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.294186, 38.844376, 30.146307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.693384, 38.855396, 30.123526>,  <24.932903, 38.862007, 30.109856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.693384, 38.855396, 30.123526>,  <24.294186, 38.844376, 30.146307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693384, 38.855396, 30.123526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053936, -0.841032, 0.538289,
		-0.033071, -0.540283, -0.840833,
		0.997997, 0.027550, -0.056955,
		24.992783, 38.863663, 30.106440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554983, 38.194710, 30.047663>,  <24.294186, 38.844376, 30.146307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554983, 38.194710, 30.047663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.856794, 38.379578, 30.234034>,  <25.037882, 38.490498, 30.345856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.856794, 38.379578, 30.234034>,  <24.554983, 38.194710, 30.047663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856794, 38.379578, 30.234034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012567, -0.720007, 0.693854,
		0.656147, -0.517677, -0.549073,
		0.754528, 0.462170, 0.465925,
		25.083153, 38.518230, 30.373812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053049, 37.688900, 30.183264>,  <24.554983, 38.194710, 30.047663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053049, 37.688900, 30.183264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.154339, 37.991814, 30.424059>,  <25.215113, 38.173561, 30.568537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.154339, 37.991814, 30.424059>,  <25.053049, 37.688900, 30.183264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.154339, 37.991814, 30.424059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231418, -0.651622, 0.722381,
		0.939320, -0.043614, -0.340258,
		0.253226, 0.757289, 0.601989,
		25.230307, 38.219002, 30.604656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515362, 37.438396, 30.574295>,  <25.053049, 37.688900, 30.183264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515362, 37.438396, 30.574295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.425337, 37.764439, 30.787817>,  <25.371323, 37.960064, 30.915930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.425337, 37.764439, 30.787817>,  <25.515362, 37.438396, 30.574295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425337, 37.764439, 30.787817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177915, -0.504271, 0.845019,
		0.957963, 0.285154, -0.031528,
		-0.225062, 0.815107, 0.533806,
		25.357819, 38.008972, 30.947958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984871, 37.437241, 31.049749>,  <25.515362, 37.438396, 30.574295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984871, 37.437241, 31.049749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.737480, 37.701626, 31.219744>,  <25.589046, 37.860256, 31.321739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.737480, 37.701626, 31.219744>,  <25.984871, 37.437241, 31.049749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737480, 37.701626, 31.219744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119878, -0.455135, 0.882316,
		0.776605, 0.596638, 0.202255,
		-0.618477, 0.660965, 0.424984,
		25.551937, 37.899914, 31.347239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200541, 37.475597, 31.755856>,  <25.984871, 37.437241, 31.049749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200541, 37.475597, 31.755856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823658, 37.608772, 31.770849>,  <25.597528, 37.688675, 31.779846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823658, 37.608772, 31.770849>,  <26.200541, 37.475597, 31.755856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823658, 37.608772, 31.770849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114260, -0.424479, 0.898200,
		0.314953, 0.842005, 0.437987,
		-0.942205, 0.332935, 0.037483,
		25.540997, 37.708652, 31.782095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118191, 37.680897, 32.406174>,  <26.200541, 37.475597, 31.755856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118191, 37.680897, 32.406174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.740328, 37.606499, 32.298077>,  <25.513611, 37.561859, 32.233219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.740328, 37.606499, 32.298077>,  <26.118191, 37.680897, 32.406174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740328, 37.606499, 32.298077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144556, -0.503486, 0.851825,
		-0.294498, 0.843747, 0.448735,
		-0.944656, -0.185993, -0.270244,
		25.456932, 37.550701, 32.217003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711632, 37.993187, 32.968052>,  <26.118191, 37.680897, 32.406174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711632, 37.993187, 32.968052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.506023, 37.707691, 32.777740>,  <25.382658, 37.536396, 32.663555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.506023, 37.707691, 32.777740>,  <25.711632, 37.993187, 32.968052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506023, 37.707691, 32.777740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321670, -0.353791, 0.878271,
		-0.795179, 0.604493, -0.047731,
		-0.514022, -0.713736, -0.475775,
		25.351816, 37.493568, 32.635010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.987894, 37.955414, 33.224182>,  <25.711632, 37.993187, 32.968052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.987894, 37.955414, 33.224182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.083172, 37.603691, 33.059219>,  <25.140339, 37.392658, 32.960243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.083172, 37.603691, 33.059219>,  <24.987894, 37.955414, 33.224182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083172, 37.603691, 33.059219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122652, -0.448464, 0.885345,
		-0.963442, -0.160301, -0.214670,
		0.238193, -0.879308, -0.412407,
		25.154631, 37.339897, 32.935497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.434139, 37.408928, 33.441895>,  <24.987894, 37.955414, 33.224182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.434139, 37.408928, 33.441895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.758160, 37.207756, 33.321304>,  <24.952572, 37.087055, 33.248951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.758160, 37.207756, 33.321304>,  <24.434139, 37.408928, 33.441895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.758160, 37.207756, 33.321304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053386, -0.575264, 0.816224,
		-0.583943, -0.645076, -0.492835,
		0.810037, -0.502939, -0.301484,
		25.001175, 37.056877, 33.230862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.247820, 36.664440, 33.723747>,  <24.434139, 37.408928, 33.441895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.247820, 36.664440, 33.723747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.635250, 36.682026, 33.625824>,  <24.867708, 36.692577, 33.567070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.635250, 36.682026, 33.625824>,  <24.247820, 36.664440, 33.723747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635250, 36.682026, 33.625824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208465, -0.680376, 0.702589,
		-0.135673, -0.731544, -0.668159,
		0.968574, 0.043966, -0.244810,
		24.925821, 36.695217, 33.552380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424393, 35.979271, 33.752140>,  <24.247820, 36.664440, 33.723747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424393, 35.979271, 33.752140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.767719, 36.184208, 33.763443>,  <24.973715, 36.307171, 33.770226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.767719, 36.184208, 33.763443>,  <24.424393, 35.979271, 33.752140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.767719, 36.184208, 33.763443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417902, -0.729933, 0.540884,
		0.297746, -0.452439, -0.840622,
		0.858315, 0.512344, 0.028260,
		25.025213, 36.337910, 33.771919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944311, 35.472660, 33.775959>,  <24.424393, 35.979271, 33.752140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944311, 35.472660, 33.775959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.100189, 35.808025, 33.928379>,  <25.193716, 36.009247, 34.019829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.100189, 35.808025, 33.928379>,  <24.944311, 35.472660, 33.775959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100189, 35.808025, 33.928379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438304, -0.532740, 0.723932,
		0.809955, -0.115098, -0.575087,
		0.389696, 0.838415, 0.381048,
		25.217098, 36.059551, 34.042694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679960, 35.307598, 33.989967>,  <24.944311, 35.472660, 33.775959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679960, 35.307598, 33.989967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.562962, 35.644890, 34.170368>,  <25.492762, 35.847267, 34.278610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.562962, 35.644890, 34.170368>,  <25.679960, 35.307598, 33.989967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562962, 35.644890, 34.170368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348538, -0.345183, 0.871418,
		0.890487, 0.412079, -0.192933,
		-0.292496, 0.843232, 0.451006,
		25.475212, 35.897858, 34.305672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358498, 35.566830, 34.454620>,  <25.679960, 35.307598, 33.989967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358498, 35.566830, 34.454620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012642, 35.715588, 34.589729>,  <25.805128, 35.804844, 34.670795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012642, 35.715588, 34.589729>,  <26.358498, 35.566830, 34.454620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012642, 35.715588, 34.589729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276075, -0.210005, 0.937913,
		0.419744, 0.904206, 0.078906,
		-0.864637, 0.371899, 0.337777,
		25.753250, 35.827156, 34.691063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940222, 35.737686, 34.085903>,  <26.358498, 35.566830, 34.454620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940222, 35.737686, 34.085903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.305521, 35.631321, 33.962440>,  <27.524700, 35.567501, 33.888363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.305521, 35.631321, 33.962440>,  <26.940222, 35.737686, 34.085903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305521, 35.631321, 33.962440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023475, 0.722008, -0.691486,
		0.406727, 0.638744, 0.653130,
		0.913248, -0.265914, -0.308655,
		27.579494, 35.551548, 33.869843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342119, 36.326405, 34.051571>,  <26.940222, 35.737686, 34.085903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342119, 36.326405, 34.051571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.515509, 36.067871, 33.800381>,  <27.619541, 35.912750, 33.649666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.515509, 36.067871, 33.800381>,  <27.342119, 36.326405, 34.051571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515509, 36.067871, 33.800381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029445, 0.706635, -0.706965,
		0.900685, 0.287959, 0.325338,
		0.433473, -0.646333, -0.627977,
		27.645550, 35.873970, 33.611988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856585, 36.739326, 33.744934>,  <27.342119, 36.326405, 34.051571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856585, 36.739326, 33.744934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834301, 36.427238, 33.495724>,  <27.820930, 36.239986, 33.346199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834301, 36.427238, 33.495724>,  <27.856585, 36.739326, 33.744934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834301, 36.427238, 33.495724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033100, 0.622205, -0.782155,
		0.997898, -0.064194, -0.008837,
		-0.055707, -0.780218, -0.623021,
		27.817589, 36.193172, 33.308819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330536, 36.834782, 33.165501>,  <27.856585, 36.739326, 33.744934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330536, 36.834782, 33.165501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.061504, 36.570412, 33.032349>,  <27.900085, 36.411789, 32.952457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.061504, 36.570412, 33.032349>,  <28.330536, 36.834782, 33.165501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061504, 36.570412, 33.032349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020169, 0.466029, -0.884539,
		0.739751, -0.588208, -0.326771,
		-0.672579, -0.660930, -0.332882,
		27.859732, 36.372131, 32.932484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602531, 36.645363, 32.521667>,  <28.330536, 36.834782, 33.165501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602531, 36.645363, 32.521667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214132, 36.552128, 32.500366>,  <27.981092, 36.496189, 32.487587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214132, 36.552128, 32.500366>,  <28.602531, 36.645363, 32.521667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214132, 36.552128, 32.500366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031468, 0.345373, -0.937938,
		0.237007, -0.909060, -0.342691,
		-0.970998, -0.233082, -0.053250,
		27.922832, 36.482204, 32.484390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565413, 36.504219, 31.904783>,  <28.602531, 36.645363, 32.521667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565413, 36.504219, 31.904783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174473, 36.553490, 31.973618>,  <27.939909, 36.583054, 32.014919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174473, 36.553490, 31.973618>,  <28.565413, 36.504219, 31.904783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174473, 36.553490, 31.973618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146871, 0.190646, -0.970610,
		-0.152365, -0.973900, -0.168236,
		-0.977350, 0.123178, 0.172085,
		27.881268, 36.590443, 32.025242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177992, 36.175304, 31.322790>,  <28.565413, 36.504219, 31.904783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177992, 36.175304, 31.322790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956203, 36.469784, 31.478004>,  <27.823130, 36.646473, 31.571133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956203, 36.469784, 31.478004>,  <28.177992, 36.175304, 31.322790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956203, 36.469784, 31.478004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044701, 0.439257, -0.897249,
		-0.831002, -0.514843, -0.210646,
		-0.554470, 0.736200, 0.388038,
		27.789862, 36.690643, 31.594416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695547, 36.369537, 30.853067>,  <28.177992, 36.175304, 31.322790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695547, 36.369537, 30.853067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.678259, 36.698540, 31.079914>,  <27.667885, 36.895939, 31.216022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.678259, 36.698540, 31.079914>,  <27.695547, 36.369537, 30.853067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678259, 36.698540, 31.079914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076848, 0.563227, -0.822721,
		-0.996106, -0.079142, 0.038864,
		-0.043222, 0.822503, 0.567116,
		27.665293, 36.945290, 31.250050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210058, 36.822800, 30.473679>,  <27.695547, 36.369537, 30.853067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210058, 36.822800, 30.473679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406908, 37.060020, 30.728584>,  <27.525017, 37.202354, 30.881527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406908, 37.060020, 30.728584>,  <27.210058, 36.822800, 30.473679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406908, 37.060020, 30.728584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016860, 0.738400, -0.674152,
		-0.870362, 0.321022, 0.373382,
		0.492123, 0.593052, 0.637263,
		27.554544, 37.237938, 30.919764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934082, 37.488079, 30.424995>,  <27.210058, 36.822800, 30.473679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934082, 37.488079, 30.424995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.277399, 37.588100, 30.604242>,  <27.483389, 37.648113, 30.711790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.277399, 37.588100, 30.604242>,  <26.934082, 37.488079, 30.424995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277399, 37.588100, 30.604242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001249, 0.874258, -0.485460,
		-0.513161, 0.416106, 0.750680,
		0.858291, 0.250056, 0.448116,
		27.534887, 37.663116, 30.738678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829399, 38.187923, 30.543228>,  <26.934082, 37.488079, 30.424995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829399, 38.187923, 30.543228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224499, 38.141842, 30.585327>,  <27.461559, 38.114193, 30.610586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224499, 38.141842, 30.585327>,  <26.829399, 38.187923, 30.543228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224499, 38.141842, 30.585327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154387, 0.819546, -0.551824,
		-0.022680, 0.561313, 0.827293,
		0.987750, -0.115208, 0.105247,
		27.520824, 38.107281, 30.616901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103880, 38.847858, 30.762390>,  <26.829399, 38.187923, 30.543228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103880, 38.847858, 30.762390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413454, 38.656704, 30.596184>,  <27.599197, 38.542011, 30.496460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413454, 38.656704, 30.596184>,  <27.103880, 38.847858, 30.762390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413454, 38.656704, 30.596184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188582, 0.800300, -0.569172,
		0.604535, 0.362143, 0.709500,
		0.773934, -0.477883, -0.415516,
		27.645634, 38.513340, 30.471529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709160, 39.248894, 30.850824>,  <27.103880, 38.847858, 30.762390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709160, 39.248894, 30.850824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731728, 39.017605, 30.525255>,  <27.745268, 38.878830, 30.329914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731728, 39.017605, 30.525255>,  <27.709160, 39.248894, 30.850824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731728, 39.017605, 30.525255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281367, 0.791390, -0.542711,
		0.957940, -0.198392, 0.207343,
		0.056420, -0.578224, -0.813925,
		27.748653, 38.844139, 30.281078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290876, 39.507416, 30.453068>,  <27.709160, 39.248894, 30.850824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290876, 39.507416, 30.453068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.090670, 39.303757, 30.172995>,  <27.970545, 39.181561, 30.004951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.090670, 39.303757, 30.172995>,  <28.290876, 39.507416, 30.453068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090670, 39.303757, 30.172995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100561, 0.769111, -0.631155,
		0.859868, -0.386313, -0.333751,
		-0.500515, -0.509148, -0.700181,
		27.940516, 39.151012, 29.962940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751976, 39.569645, 29.941196>,  <28.290876, 39.507416, 30.453068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751976, 39.569645, 29.941196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399950, 39.470516, 29.779175>,  <28.188734, 39.411037, 29.681961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399950, 39.470516, 29.779175>,  <28.751976, 39.569645, 29.941196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399950, 39.470516, 29.779175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150349, 0.663699, -0.732734,
		0.450423, -0.705754, -0.546838,
		-0.880065, -0.247824, -0.405054,
		28.135931, 39.396168, 29.657658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890127, 39.408184, 29.262383>,  <28.751976, 39.569645, 29.941196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890127, 39.408184, 29.262383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496929, 39.479664, 29.245485>,  <28.261009, 39.522552, 29.235348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496929, 39.479664, 29.245485>,  <28.890127, 39.408184, 29.262383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496929, 39.479664, 29.245485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165306, 0.761048, -0.627280,
		-0.079946, -0.623597, -0.777648,
		-0.982997, 0.178698, -0.042242,
		28.202030, 39.533272, 29.232813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741165, 39.606098, 28.592842>,  <28.890127, 39.408184, 29.262383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741165, 39.606098, 28.592842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.433048, 39.763851, 28.793287>,  <28.248178, 39.858501, 28.913555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.433048, 39.763851, 28.793287>,  <28.741165, 39.606098, 28.592842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433048, 39.763851, 28.793287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035404, 0.758164, -0.651102,
		-0.636710, -0.519279, -0.570044,
		-0.770291, 0.394381, 0.501115,
		28.201962, 39.882164, 28.943621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560869, 39.984673, 28.099257>,  <28.741165, 39.606098, 28.592842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560869, 39.984673, 28.099257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.328976, 40.104061, 28.402525>,  <28.189840, 40.175694, 28.584486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.328976, 40.104061, 28.402525>,  <28.560869, 39.984673, 28.099257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328976, 40.104061, 28.402525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429871, 0.678422, -0.595780,
		-0.692185, -0.671309, -0.264998,
		-0.579733, 0.298475, 0.758170,
		28.155056, 40.193604, 28.629976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796932, 39.956135, 27.922884>,  <28.560869, 39.984673, 28.099257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796932, 39.956135, 27.922884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861374, 40.244617, 28.192373>,  <27.900040, 40.417709, 28.354067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861374, 40.244617, 28.192373>,  <27.796932, 39.956135, 27.922884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861374, 40.244617, 28.192373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397467, 0.672247, -0.624583,
		-0.903363, -0.167158, 0.394960,
		0.161106, 0.721209, 0.673723,
		27.909706, 40.460979, 28.394489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203495, 40.412766, 27.927599>,  <27.796932, 39.956135, 27.922884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203495, 40.412766, 27.927599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.480339, 40.635128, 28.111753>,  <27.646446, 40.768543, 28.222246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.480339, 40.635128, 28.111753>,  <27.203495, 40.412766, 27.927599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480339, 40.635128, 28.111753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323847, 0.809194, -0.490232,
		-0.645063, 0.190201, 0.740079,
		0.692111, 0.555903, 0.460385,
		27.687973, 40.801899, 28.249868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.258110, 39.794056, 44.513939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.014584, 39.531528, 44.692188>,  <37.868469, 39.374012, 44.799137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.014584, 39.531528, 44.692188>,  <38.258110, 39.794056, 44.513939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014584, 39.531528, 44.692188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242466, 0.688795, 0.683206,
		-0.755350, 0.307897, -0.578486,
		-0.608816, -0.656323, 0.445627,
		37.831940, 39.334633, 44.825878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676155, 40.064129, 44.752155>,  <38.258110, 39.794056, 44.513939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676155, 40.064129, 44.752155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.649601, 39.730701, 44.971519>,  <37.633671, 39.530643, 45.103138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.649601, 39.730701, 44.971519>,  <37.676155, 40.064129, 44.752155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649601, 39.730701, 44.971519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340164, 0.535603, 0.772928,
		-0.938020, -0.135242, -0.319105,
		-0.066381, -0.833570, 0.548411,
		37.629688, 39.480629, 45.136044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048313, 40.142326, 45.127121>,  <37.676155, 40.064129, 44.752155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048313, 40.142326, 45.127121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.269978, 39.880680, 45.333046>,  <37.402977, 39.723690, 45.456600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.269978, 39.880680, 45.333046>,  <37.048313, 40.142326, 45.127121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269978, 39.880680, 45.333046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183184, 0.507473, 0.841971,
		-0.812006, -0.560890, 0.161395,
		0.554157, -0.654120, 0.514817,
		37.436226, 39.684444, 45.487492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687469, 40.077000, 45.711540>,  <37.048313, 40.142326, 45.127121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687469, 40.077000, 45.711540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023468, 39.892841, 45.826393>,  <37.225067, 39.782345, 45.895306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023468, 39.892841, 45.826393>,  <36.687469, 40.077000, 45.711540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023468, 39.892841, 45.826393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218204, 0.197874, 0.955632,
		-0.496788, -0.865377, 0.065752,
		0.839993, -0.460399, 0.287130,
		37.275467, 39.754723, 45.912533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517532, 39.542759, 46.383301>,  <36.687469, 40.077000, 45.711540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517532, 39.542759, 46.383301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914803, 39.587456, 46.396622>,  <37.153164, 39.614273, 46.404613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914803, 39.587456, 46.396622>,  <36.517532, 39.542759, 46.383301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914803, 39.587456, 46.396622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048678, 0.137841, 0.989257,
		0.105944, -0.984132, 0.142340,
		0.993180, 0.111735, 0.033302,
		37.212757, 39.620979, 46.406612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627857, 39.440254, 46.994453>,  <36.517532, 39.542759, 46.383301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627857, 39.440254, 46.994453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994911, 39.582146, 46.922779>,  <37.215145, 39.667278, 46.879776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994911, 39.582146, 46.922779>,  <36.627857, 39.440254, 46.994453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994911, 39.582146, 46.922779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053318, 0.336909, 0.940026,
		0.393825, -0.872158, 0.290247,
		0.917638, 0.354730, -0.179185,
		37.270203, 39.688564, 46.869022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128883, 39.076904, 47.444138>,  <36.627857, 39.440254, 46.994453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128883, 39.076904, 47.444138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287842, 39.418858, 47.310722>,  <37.383217, 39.624031, 47.230671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287842, 39.418858, 47.310722>,  <37.128883, 39.076904, 47.444138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287842, 39.418858, 47.310722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149153, 0.298466, 0.942694,
		0.905443, -0.424374, -0.008898,
		0.397400, 0.854883, -0.333541,
		37.407063, 39.675323, 47.210659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745125, 39.137493, 47.710274>,  <37.128883, 39.076904, 47.444138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745125, 39.137493, 47.710274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.617691, 39.507061, 47.625538>,  <37.541229, 39.728802, 47.574696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.617691, 39.507061, 47.625538>,  <37.745125, 39.137493, 47.710274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617691, 39.507061, 47.625538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056808, 0.241691, 0.968689,
		0.946190, 0.296577, -0.129486,
		-0.318587, 0.923920, -0.211837,
		37.522114, 39.784237, 47.561985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182728, 39.613785, 48.149792>,  <37.745125, 39.137493, 47.710274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182728, 39.613785, 48.149792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.839394, 39.798126, 48.059563>,  <37.633392, 39.908730, 48.005424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.839394, 39.798126, 48.059563>,  <38.182728, 39.613785, 48.149792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839394, 39.798126, 48.059563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074352, 0.323281, 0.943377,
		0.507681, 0.826502, -0.243217,
		-0.858331, 0.460851, -0.225576,
		37.581894, 39.936382, 47.991890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272446, 40.172401, 48.604630>,  <38.182728, 39.613785, 48.149792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272446, 40.172401, 48.604630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.901775, 40.205906, 48.458061>,  <37.679375, 40.226009, 48.370121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.901775, 40.205906, 48.458061>,  <38.272446, 40.172401, 48.604630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901775, 40.205906, 48.458061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267908, 0.536577, 0.800194,
		0.263638, 0.839684, -0.474790,
		-0.926672, 0.083761, -0.366420,
		37.623775, 40.231033, 48.348137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082783, 40.918140, 48.492626>,  <38.272446, 40.172401, 48.604630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082783, 40.918140, 48.492626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.745781, 40.711052, 48.552151>,  <37.543579, 40.586800, 48.587864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.745781, 40.711052, 48.552151>,  <38.082783, 40.918140, 48.492626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745781, 40.711052, 48.552151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178659, 0.529162, 0.829499,
		-0.508198, 0.672272, -0.538318,
		-0.842506, -0.517725, 0.148812,
		37.493031, 40.555733, 48.596794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570641, 41.411968, 48.584415>,  <38.082783, 40.918140, 48.492626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570641, 41.411968, 48.584415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428677, 41.071678, 48.739494>,  <37.343498, 40.867504, 48.832542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428677, 41.071678, 48.739494>,  <37.570641, 41.411968, 48.584415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428677, 41.071678, 48.739494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369588, 0.508584, 0.777655,
		-0.858744, 0.132712, -0.494920,
		-0.354913, -0.850723, 0.387695,
		37.322205, 40.816460, 48.855804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893478, 41.514221, 48.709965>,  <37.570641, 41.411968, 48.584415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893478, 41.514221, 48.709965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025249, 41.236702, 48.966129>,  <37.104313, 41.070190, 49.119827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025249, 41.236702, 48.966129>,  <36.893478, 41.514221, 48.709965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025249, 41.236702, 48.966129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038653, 0.667789, 0.743346,
		-0.943390, -0.269631, 0.193169,
		0.329425, -0.693799, 0.640408,
		37.124077, 41.028561, 49.158253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351398, 41.440807, 49.156979>,  <36.893478, 41.514221, 48.709965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351398, 41.440807, 49.156979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715588, 41.439316, 49.322403>,  <36.934101, 41.438419, 49.421658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715588, 41.439316, 49.322403>,  <36.351398, 41.440807, 49.156979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715588, 41.439316, 49.322403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196815, 0.875562, 0.441197,
		-0.363746, -0.483092, 0.796436,
		0.910468, -0.003733, 0.413562,
		36.988728, 41.438194, 49.446472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783989, 41.847713, 49.287758>,  <36.351398, 41.440807, 49.156979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783989, 41.847713, 49.287758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.528870, 42.113964, 49.442760>,  <35.375797, 42.273712, 49.535763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.528870, 42.113964, 49.442760>,  <35.783989, 41.847713, 49.287758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528870, 42.113964, 49.442760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563999, -0.060999, -0.823519,
		-0.524516, -0.743791, 0.414316,
		-0.637799, 0.665623, 0.387503,
		35.337528, 42.313652, 49.559010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035931, 41.594688, 49.349133>,  <35.783989, 41.847713, 49.287758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035931, 41.594688, 49.349133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044952, 41.989201, 49.283718>,  <35.050365, 42.225906, 49.244469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044952, 41.989201, 49.283718>,  <35.035931, 41.594688, 49.349133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044952, 41.989201, 49.283718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340691, -0.146205, -0.928738,
		-0.939905, 0.076663, 0.332719,
		0.022554, 0.986279, -0.163537,
		35.051720, 42.285084, 49.234657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478767, 41.760719, 48.975872>,  <35.035931, 41.594688, 49.349133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478767, 41.760719, 48.975872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686146, 42.089500, 48.881550>,  <34.810574, 42.286770, 48.824955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686146, 42.089500, 48.881550>,  <34.478767, 41.760719, 48.975872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686146, 42.089500, 48.881550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339058, -0.055565, -0.939123,
		-0.785021, 0.566834, 0.249883,
		0.518442, 0.821956, -0.235809,
		34.841679, 42.336086, 48.810806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044170, 42.200455, 48.474957>,  <34.478767, 41.760719, 48.975872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044170, 42.200455, 48.474957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413208, 42.345776, 48.423061>,  <34.634632, 42.432968, 48.391926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413208, 42.345776, 48.423061>,  <34.044170, 42.200455, 48.474957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413208, 42.345776, 48.423061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162084, 0.059880, -0.984958,
		-0.350069, 0.929745, 0.114130,
		0.922594, 0.363302, -0.129734,
		34.689987, 42.454765, 48.384140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001709, 42.647644, 47.914017>,  <34.044170, 42.200455, 48.474957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001709, 42.647644, 47.914017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393360, 42.569542, 47.936554>,  <34.628353, 42.522678, 47.950077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393360, 42.569542, 47.936554>,  <34.001709, 42.647644, 47.914017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393360, 42.569542, 47.936554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063761, 0.031925, -0.997454,
		0.192961, 0.980232, 0.043708,
		0.979133, -0.195257, 0.056340,
		34.687099, 42.510963, 47.953457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289326, 43.044304, 47.425003>,  <34.001709, 42.647644, 47.914017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289326, 43.044304, 47.425003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561867, 42.760075, 47.495255>,  <34.725391, 42.589535, 47.537403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561867, 42.760075, 47.495255>,  <34.289326, 43.044304, 47.425003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561867, 42.760075, 47.495255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099530, -0.147768, -0.984001,
		0.725158, 0.687930, -0.029958,
		0.681351, -0.710575, 0.175625,
		34.766273, 42.546902, 47.547943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939884, 43.127316, 46.913052>,  <34.289326, 43.044304, 47.425003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939884, 43.127316, 46.913052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.879681, 42.752651, 47.039551>,  <34.843559, 42.527851, 47.115452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.879681, 42.752651, 47.039551>,  <34.939884, 43.127316, 46.913052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879681, 42.752651, 47.039551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034034, -0.324611, -0.945235,
		0.988023, -0.131503, 0.080735,
		-0.150509, -0.936661, 0.316248,
		34.834526, 42.471653, 47.134426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349617, 42.715324, 46.412048>,  <34.939884, 43.127316, 46.913052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349617, 42.715324, 46.412048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117085, 42.438850, 46.583775>,  <34.977566, 42.272964, 46.686810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117085, 42.438850, 46.583775>,  <35.349617, 42.715324, 46.412048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117085, 42.438850, 46.583775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027280, -0.510774, -0.859282,
		0.813208, -0.511241, 0.278074,
		-0.581334, -0.691189, 0.429312,
		34.942684, 42.231495, 46.712566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719437, 42.077320, 46.258148>,  <35.349617, 42.715324, 46.412048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719437, 42.077320, 46.258148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328979, 42.024849, 46.327358>,  <35.094704, 41.993366, 46.368885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328979, 42.024849, 46.327358>,  <35.719437, 42.077320, 46.258148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328979, 42.024849, 46.327358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041026, -0.671095, -0.740236,
		0.213219, -0.729674, 0.649703,
		-0.976143, -0.131177, 0.173026,
		35.036137, 41.985497, 46.379265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640926, 41.327076, 46.329475>,  <35.719437, 42.077320, 46.258148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640926, 41.327076, 46.329475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288765, 41.481327, 46.219067>,  <35.077469, 41.573875, 46.152821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288765, 41.481327, 46.219067>,  <35.640926, 41.327076, 46.329475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288765, 41.481327, 46.219067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094784, -0.713383, -0.694334,
		-0.464659, -0.585131, 0.664615,
		-0.880402, 0.385624, -0.276019,
		35.024643, 41.597015, 46.136261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211235, 40.793041, 46.194069>,  <35.640926, 41.327076, 46.329475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211235, 40.793041, 46.194069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980434, 41.055695, 45.999790>,  <34.841953, 41.213287, 45.883224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980434, 41.055695, 45.999790>,  <35.211235, 40.793041, 46.194069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980434, 41.055695, 45.999790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095435, -0.644804, -0.758367,
		-0.811146, -0.391228, 0.434720,
		-0.577004, 0.656634, -0.485693,
		34.807335, 41.252686, 45.854084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706802, 40.387726, 45.884869>,  <35.211235, 40.793041, 46.194069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706802, 40.387726, 45.884869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744259, 40.716377, 45.659958>,  <34.766731, 40.913570, 45.525013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744259, 40.716377, 45.659958>,  <34.706802, 40.387726, 45.884869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744259, 40.716377, 45.659958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185575, -0.540454, -0.820653,
		-0.978158, 0.181190, 0.101866,
		0.093640, 0.821632, -0.562274,
		34.772350, 40.962868, 45.491276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232109, 40.238052, 45.432491>,  <34.706802, 40.387726, 45.884869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232109, 40.238052, 45.432491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464622, 40.518143, 45.266701>,  <34.604130, 40.686195, 45.167225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464622, 40.518143, 45.266701>,  <34.232109, 40.238052, 45.432491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464622, 40.518143, 45.266701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133001, -0.420760, -0.897369,
		-0.802755, 0.576755, -0.151452,
		0.581287, 0.700224, -0.414477,
		34.639008, 40.728210, 45.142357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807888, 40.531250, 44.894924>,  <34.232109, 40.238052, 45.432491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807888, 40.531250, 44.894924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196911, 40.600723, 44.832996>,  <34.430325, 40.642406, 44.795837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196911, 40.600723, 44.832996>,  <33.807888, 40.531250, 44.894924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196911, 40.600723, 44.832996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098991, -0.293312, -0.950878,
		-0.210566, 0.940107, -0.268068,
		0.972555, 0.173686, -0.154824,
		34.488678, 40.652828, 44.786549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205719, 40.565372, 44.666214>,  <33.807888, 40.531250, 44.894924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205719, 40.565372, 44.666214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009083, 40.226696, 44.747650>,  <32.891102, 40.023491, 44.796513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009083, 40.226696, 44.747650>,  <33.205719, 40.565372, 44.666214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009083, 40.226696, 44.747650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293606, 0.381254, 0.876608,
		-0.819840, 0.371152, -0.436014,
		-0.491587, -0.846695, 0.203594,
		32.861607, 39.972687, 44.808727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569271, 40.926460, 45.056667>,  <33.205719, 40.565372, 44.666214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569271, 40.926460, 45.056667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589485, 40.537361, 45.147179>,  <32.601612, 40.303902, 45.201485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589485, 40.537361, 45.147179>,  <32.569271, 40.926460, 45.056667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589485, 40.537361, 45.147179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381503, 0.190585, 0.904507,
		-0.922985, -0.132031, -0.361477,
		0.050531, -0.972751, 0.226278,
		32.604645, 40.245537, 45.215061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176571, 40.957077, 45.568287>,  <32.569271, 40.926460, 45.056667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176571, 40.957077, 45.568287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338039, 40.593128, 45.606609>,  <32.434921, 40.374760, 45.629601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338039, 40.593128, 45.606609>,  <32.176571, 40.957077, 45.568287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338039, 40.593128, 45.606609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257793, -0.012647, 0.966117,
		-0.877832, -0.414695, -0.239664,
		0.403675, -0.909873, 0.095803,
		32.459141, 40.320168, 45.635349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735353, 40.569126, 45.925236>,  <32.176571, 40.957077, 45.568287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735353, 40.569126, 45.925236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084278, 40.380558, 45.977142>,  <32.293633, 40.267418, 46.008286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084278, 40.380558, 45.977142>,  <31.735353, 40.569126, 45.925236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084278, 40.380558, 45.977142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216411, -0.134252, 0.967028,
		-0.438451, -0.871633, -0.219129,
		0.872311, -0.471416, 0.129768,
		32.345970, 40.239132, 46.016071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581776, 39.990593, 46.443226>,  <31.735353, 40.569126, 45.925236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581776, 39.990593, 46.443226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973516, 40.071194, 46.436665>,  <32.208561, 40.119553, 46.432728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973516, 40.071194, 46.436665>,  <31.581776, 39.990593, 46.443226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973516, 40.071194, 46.436665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037760, -0.102606, 0.994005,
		0.198609, -0.974099, -0.108096,
		0.979351, 0.201500, -0.016404,
		32.267323, 40.131645, 46.431744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979971, 39.455399, 46.923576>,  <31.581776, 39.990593, 46.443226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979971, 39.455399, 46.923576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.221149, 39.773705, 46.900887>,  <32.365856, 39.964687, 46.887272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.221149, 39.773705, 46.900887>,  <31.979971, 39.455399, 46.923576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221149, 39.773705, 46.900887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100788, -0.005444, 0.994893,
		0.791390, -0.605584, -0.083486,
		0.602946, 0.795763, -0.056728,
		32.402035, 40.012432, 46.883869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479557, 39.321445, 47.407570>,  <31.979971, 39.455399, 46.923576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479557, 39.321445, 47.407570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512238, 39.713909, 47.337547>,  <32.531845, 39.949387, 47.295536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512238, 39.713909, 47.337547>,  <32.479557, 39.321445, 47.407570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512238, 39.713909, 47.337547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182425, 0.157953, 0.970449,
		0.979820, -0.111218, -0.166084,
		0.081698, 0.981163, -0.175055,
		32.536747, 40.008259, 47.285030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858246, 38.650394, 47.543678>,  <32.479557, 39.321445, 47.407570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858246, 38.650394, 47.543678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705860, 38.350719, 47.760410>,  <32.614429, 38.170914, 47.890450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705860, 38.350719, 47.760410>,  <32.858246, 38.650394, 47.543678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705860, 38.350719, 47.760410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133091, -0.535487, -0.833991,
		0.914961, -0.389833, 0.104291,
		-0.380964, -0.749189, 0.541833,
		32.591572, 38.125961, 47.922958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184120, 38.131844, 47.358749>,  <32.858246, 38.650394, 47.543678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184120, 38.131844, 47.358749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.856953, 37.957390, 47.508842>,  <32.660652, 37.852718, 47.598900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.856953, 37.957390, 47.508842>,  <33.184120, 38.131844, 47.358749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856953, 37.957390, 47.508842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023824, -0.677311, -0.735311,
		0.574846, -0.592482, 0.564373,
		-0.817915, -0.436136, 0.375234,
		32.611580, 37.826550, 47.621414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272545, 37.364681, 47.442616>,  <33.184120, 38.131844, 47.358749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272545, 37.364681, 47.442616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875374, 37.407215, 47.421490>,  <32.637070, 37.432735, 47.408813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875374, 37.407215, 47.421490>,  <33.272545, 37.364681, 47.442616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875374, 37.407215, 47.421490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034815, -0.686058, -0.726714,
		-0.113510, -0.719735, 0.684907,
		-0.992927, 0.106334, -0.052817,
		32.577496, 37.439114, 47.405643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969894, 36.693108, 47.499916>,  <33.272545, 37.364681, 47.442616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969894, 36.693108, 47.499916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711514, 36.939190, 47.319134>,  <32.556484, 37.086842, 47.210663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711514, 36.939190, 47.319134>,  <32.969894, 36.693108, 47.499916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711514, 36.939190, 47.319134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291160, -0.745844, -0.599119,
		-0.705668, -0.255413, 0.660905,
		-0.645955, 0.615208, -0.451953,
		32.517727, 37.123753, 47.183548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450226, 36.300957, 47.228588>,  <32.969894, 36.693108, 47.499916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450226, 36.300957, 47.228588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.405437, 36.625923, 46.999695>,  <32.378567, 36.820904, 46.862358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.405437, 36.625923, 46.999695>,  <32.450226, 36.300957, 47.228588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405437, 36.625923, 46.999695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210211, -0.582182, -0.785414,
		-0.971223, 0.032349, 0.235963,
		-0.111966, 0.812415, -0.572229,
		32.371849, 36.869648, 46.828026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789347, 36.178032, 46.971050>,  <32.450226, 36.300957, 47.228588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789347, 36.178032, 46.971050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012894, 36.409386, 46.733349>,  <32.147022, 36.548199, 46.590729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012894, 36.409386, 46.733349>,  <31.789347, 36.178032, 46.971050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012894, 36.409386, 46.733349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293048, -0.532621, -0.794001,
		-0.775751, 0.617886, -0.128169,
		0.558868, 0.578387, -0.594251,
		32.180553, 36.582901, 46.555073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275721, 36.385353, 46.417568>,  <31.789347, 36.178032, 46.971050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275721, 36.385353, 46.417568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632608, 36.471344, 46.258705>,  <31.846741, 36.522938, 46.163387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632608, 36.471344, 46.258705>,  <31.275721, 36.385353, 46.417568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632608, 36.471344, 46.258705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344747, -0.243851, -0.906469,
		-0.291715, 0.945686, -0.143456,
		0.892217, 0.214974, -0.397158,
		31.900274, 36.535835, 46.139557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.765965, 37.177334, 49.883106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.091576, 37.220650, 50.111362>,  <37.286942, 37.246639, 50.248318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.091576, 37.220650, 50.111362>,  <36.765965, 37.177334, 49.883106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091576, 37.220650, 50.111362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573959, 0.300629, 0.761704,
		-0.089065, -0.947573, 0.306876,
		0.814026, 0.108293, 0.570643,
		37.335785, 37.253139, 50.282555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500225, 37.762962, 49.863571>,  <36.765965, 37.177334, 49.883106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500225, 37.762962, 49.863571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.782631, 38.016281, 49.736782>,  <36.952076, 38.168274, 49.660709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.782631, 38.016281, 49.736782>,  <36.500225, 37.762962, 49.863571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782631, 38.016281, 49.736782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039517, -0.482111, -0.875218,
		-0.707092, 0.605393, -0.365405,
		0.706017, 0.633299, -0.316974,
		36.994434, 38.206272, 49.641689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328293, 37.951359, 49.187199>,  <36.500225, 37.762962, 49.863571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328293, 37.951359, 49.187199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.723160, 38.002678, 49.225220>,  <36.960079, 38.033470, 49.248032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.723160, 38.002678, 49.225220>,  <36.328293, 37.951359, 49.187199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723160, 38.002678, 49.225220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140742, -0.417952, -0.897501,
		-0.075422, 0.899364, -0.430646,
		0.987169, 0.128301, 0.095055,
		37.019310, 38.041168, 49.253735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616779, 38.090725, 48.531784>,  <36.328293, 37.951359, 49.187199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616779, 38.090725, 48.531784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.969055, 38.018440, 48.706936>,  <37.180420, 37.975067, 48.812027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.969055, 38.018440, 48.706936>,  <36.616779, 38.090725, 48.531784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969055, 38.018440, 48.706936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298500, -0.506039, -0.809210,
		0.367819, 0.843366, -0.391718,
		0.880685, -0.180715, 0.437876,
		37.233261, 37.964226, 48.838299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151802, 38.343525, 48.077942>,  <36.616779, 38.090725, 48.531784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151802, 38.343525, 48.077942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.332306, 38.079853, 48.318558>,  <37.440609, 37.921650, 48.462925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.332306, 38.079853, 48.318558>,  <37.151802, 38.343525, 48.077942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332306, 38.079853, 48.318558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422965, -0.435560, -0.794599,
		0.785788, 0.613001, 0.082259,
		0.451261, -0.659179, 0.601537,
		37.467686, 37.882099, 48.499020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827713, 38.394119, 47.764988>,  <37.151802, 38.343525, 48.077942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827713, 38.394119, 47.764988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.794437, 38.047714, 47.962208>,  <37.774471, 37.839870, 48.080540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.794437, 38.047714, 47.962208>,  <37.827713, 38.394119, 47.764988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794437, 38.047714, 47.962208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342139, -0.489511, -0.802072,
		0.935960, 0.101971, 0.337018,
		-0.083186, -0.866014, 0.493051,
		37.769482, 37.787910, 48.110123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497669, 37.962780, 47.661282>,  <37.827713, 38.394119, 47.764988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497669, 37.962780, 47.661282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.184349, 37.724796, 47.733360>,  <37.996357, 37.582005, 47.776608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.184349, 37.724796, 47.733360>,  <38.497669, 37.962780, 47.661282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184349, 37.724796, 47.733360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255316, -0.572183, -0.779372,
		0.566799, -0.564473, 0.600091,
		-0.783296, -0.594960, 0.180194,
		37.949360, 37.546307, 47.787418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820087, 37.320908, 47.432934>,  <38.497669, 37.962780, 47.661282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820087, 37.320908, 47.432934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.427074, 37.257095, 47.471268>,  <38.191269, 37.218807, 47.494270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.427074, 37.257095, 47.471268>,  <38.820087, 37.320908, 47.432934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427074, 37.257095, 47.471268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036009, -0.668208, -0.743103,
		0.182584, -0.726670, 0.662279,
		-0.982530, -0.159527, 0.095837,
		38.132317, 37.209236, 47.500019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834705, 36.698002, 47.403481>,  <38.820087, 37.320908, 47.432934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834705, 36.698002, 47.403481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.454746, 36.798603, 47.329250>,  <38.226772, 36.858963, 47.284714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.454746, 36.798603, 47.329250>,  <38.834705, 36.698002, 47.403481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454746, 36.798603, 47.329250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040583, -0.687949, -0.724623,
		-0.309913, -0.680787, 0.663688,
		-0.949898, 0.251505, -0.185576,
		38.169777, 36.874054, 47.273579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463066, 36.056400, 47.456268>,  <38.834705, 36.698002, 47.403481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463066, 36.056400, 47.456268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.253483, 36.314499, 47.233871>,  <38.127731, 36.469357, 47.100433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.253483, 36.314499, 47.233871>,  <38.463066, 36.056400, 47.456268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253483, 36.314499, 47.233871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004583, -0.650622, -0.759387,
		-0.851732, -0.400435, 0.337941,
		-0.523958, 0.645246, -0.555991,
		38.096294, 36.508072, 47.067074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998009, 35.633205, 47.099583>,  <38.463066, 36.056400, 47.456268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998009, 35.633205, 47.099583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.964222, 35.962772, 46.875427>,  <37.943951, 36.160511, 46.740936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.964222, 35.962772, 46.875427>,  <37.998009, 35.633205, 47.099583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964222, 35.962772, 46.875427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136940, -0.547460, -0.825551,
		-0.986972, -0.146467, -0.066587,
		-0.084462, 0.823914, -0.560385,
		37.938885, 36.209946, 46.707314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430756, 35.505917, 46.618122>,  <37.998009, 35.633205, 47.099583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430756, 35.505917, 46.618122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.657192, 35.800800, 46.470577>,  <37.793053, 35.977730, 46.382050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.657192, 35.800800, 46.470577>,  <37.430756, 35.505917, 46.618122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657192, 35.800800, 46.470577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052926, -0.414041, -0.908718,
		-0.822642, 0.533940, -0.195367,
		0.566091, 0.737209, -0.368867,
		37.827019, 36.021965, 46.359917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667427, 35.795597, 46.858624>,  <37.430756, 35.505917, 46.618122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667427, 35.795597, 46.858624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.317883, 35.869129, 46.678593>,  <36.108154, 35.913246, 46.570576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.317883, 35.869129, 46.678593>,  <36.667427, 35.795597, 46.858624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317883, 35.869129, 46.678593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359507, 0.378872, 0.852766,
		0.327283, 0.907008, -0.264996,
		-0.873865, 0.183828, -0.450074,
		36.055721, 35.924278, 46.543571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533218, 36.540234, 46.827297>,  <36.667427, 35.795597, 46.858624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533218, 36.540234, 46.827297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.199001, 36.321335, 46.807766>,  <35.998470, 36.189995, 46.796047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.199001, 36.321335, 46.807766>,  <36.533218, 36.540234, 46.827297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199001, 36.321335, 46.807766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301801, 0.382887, 0.873105,
		-0.459110, 0.744255, -0.485080,
		-0.835544, -0.547250, -0.048829,
		35.948338, 36.157162, 46.793118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974834, 36.904980, 47.089355>,  <36.533218, 36.540234, 46.827297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974834, 36.904980, 47.089355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.821037, 36.536026, 47.074543>,  <35.728760, 36.314655, 47.065655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.821037, 36.536026, 47.074543>,  <35.974834, 36.904980, 47.089355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821037, 36.536026, 47.074543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579070, 0.209751, 0.787834,
		-0.718918, 0.324362, -0.614773,
		-0.384493, -0.922385, -0.037035,
		35.705688, 36.259312, 47.063431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173592, 36.930611, 47.388565>,  <35.974834, 36.904980, 47.089355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173592, 36.930611, 47.388565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324844, 36.563503, 47.437099>,  <35.415596, 36.343239, 47.466221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324844, 36.563503, 47.437099>,  <35.173592, 36.930611, 47.388565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324844, 36.563503, 47.437099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323681, -0.008276, 0.946130,
		-0.867321, -0.397038, -0.300193,
		0.378134, -0.917765, 0.121335,
		35.438286, 36.288174, 47.473499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654099, 36.540142, 47.783360>,  <35.173592, 36.930611, 47.388565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654099, 36.540142, 47.783360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.996422, 36.339828, 47.835197>,  <35.201817, 36.219639, 47.866302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.996422, 36.339828, 47.835197>,  <34.654099, 36.540142, 47.783360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996422, 36.339828, 47.835197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167614, -0.031441, 0.985351,
		-0.489377, -0.864999, -0.110847,
		0.855813, -0.500788, 0.129599,
		35.253166, 36.189590, 47.874077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538589, 36.113853, 48.288082>,  <34.654099, 36.540142, 47.783360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538589, 36.113853, 48.288082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.938011, 36.134312, 48.294586>,  <35.177666, 36.146587, 48.298489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.938011, 36.134312, 48.294586>,  <34.538589, 36.113853, 48.288082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938011, 36.134312, 48.294586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016041, -0.004652, 0.999861,
		0.051212, -0.998681, -0.003825,
		0.998559, 0.051143, 0.016258,
		35.237579, 36.149654, 48.299465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645985, 35.776642, 48.872398>,  <34.538589, 36.113853, 48.288082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645985, 35.776642, 48.872398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990620, 35.966442, 48.800262>,  <35.197399, 36.080322, 48.756981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990620, 35.966442, 48.800262>,  <34.645985, 35.776642, 48.872398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990620, 35.966442, 48.800262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217610, -0.024292, 0.975733,
		0.458607, -0.879919, -0.124186,
		0.861583, 0.474502, -0.180339,
		35.249096, 36.108791, 48.746162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173618, 35.433624, 49.325356>,  <34.645985, 35.776642, 48.872398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173618, 35.433624, 49.325356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.306095, 35.799294, 49.231884>,  <35.385582, 36.018696, 49.175800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.306095, 35.799294, 49.231884>,  <35.173618, 35.433624, 49.325356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306095, 35.799294, 49.231884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183134, 0.180666, 0.966345,
		0.925619, -0.362843, -0.107579,
		0.331196, 0.914169, -0.233677,
		35.405453, 36.073544, 49.161781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754585, 35.556839, 49.732296>,  <35.173618, 35.433624, 49.325356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754585, 35.556839, 49.732296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618443, 35.921989, 49.642132>,  <35.536758, 36.141079, 49.588036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618443, 35.921989, 49.642132>,  <35.754585, 35.556839, 49.732296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618443, 35.921989, 49.642132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122453, 0.280710, 0.951949,
		0.932289, 0.296400, -0.207326,
		-0.340356, 0.912879, -0.225408,
		35.516335, 36.195854, 49.574509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029152, 36.012619, 50.264687>,  <35.754585, 35.556839, 49.732296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029152, 36.012619, 50.264687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.747875, 36.237988, 50.091209>,  <35.579109, 36.373207, 49.987125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.747875, 36.237988, 50.091209>,  <36.029152, 36.012619, 50.264687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747875, 36.237988, 50.091209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302503, 0.314934, 0.899616,
		0.643444, 0.763791, -0.051022,
		-0.703187, 0.563418, -0.433691,
		35.536919, 36.407013, 49.961102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988605, 36.611706, 50.592381>,  <36.029152, 36.012619, 50.264687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988605, 36.611706, 50.592381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.623890, 36.612221, 50.428116>,  <35.405060, 36.612530, 50.329559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.623890, 36.612221, 50.428116>,  <35.988605, 36.611706, 50.592381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623890, 36.612221, 50.428116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358564, 0.484979, 0.797638,
		0.200185, 0.874525, -0.441738,
		-0.911788, 0.001284, -0.410658,
		35.350353, 36.612606, 50.304920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689354, 37.244789, 50.798153>,  <35.988605, 36.611706, 50.592381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689354, 37.244789, 50.798153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.385967, 37.003284, 50.700005>,  <35.203938, 36.858383, 50.641113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.385967, 37.003284, 50.700005>,  <35.689354, 37.244789, 50.798153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385967, 37.003284, 50.700005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491196, 0.282135, 0.824091,
		-0.428324, 0.745569, -0.510553,
		-0.758462, -0.603760, -0.245375,
		35.158428, 36.822155, 50.626392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106499, 37.610218, 50.943005>,  <35.689354, 37.244789, 50.798153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106499, 37.610218, 50.943005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.972538, 37.233505, 50.954891>,  <34.892162, 37.007477, 50.962025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.972538, 37.233505, 50.954891>,  <35.106499, 37.610218, 50.943005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972538, 37.233505, 50.954891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477574, 0.196846, 0.856256,
		-0.812259, 0.272568, -0.515696,
		-0.334901, -0.941785, 0.029718,
		34.872066, 36.950970, 50.963806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372719, 37.638638, 51.030033>,  <35.106499, 37.610218, 50.943005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372719, 37.638638, 51.030033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517357, 37.292789, 51.169567>,  <34.604141, 37.085281, 51.253288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517357, 37.292789, 51.169567>,  <34.372719, 37.638638, 51.030033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517357, 37.292789, 51.169567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567085, 0.093024, 0.818389,
		-0.740044, -0.493744, -0.456675,
		0.361594, -0.864617, 0.348836,
		34.625835, 37.033405, 51.274220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760323, 38.108891, 50.915623>,  <34.372719, 37.638638, 51.030033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760323, 38.108891, 50.915623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.583187, 38.406544, 50.715561>,  <33.476906, 38.585136, 50.595524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.583187, 38.406544, 50.715561>,  <33.760323, 38.108891, 50.915623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583187, 38.406544, 50.715561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251171, -0.638460, -0.727517,
		-0.860703, -0.196546, 0.469639,
		-0.442836, 0.744136, -0.500157,
		33.450336, 38.629784, 50.565514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043198, 37.743835, 50.677864>,  <33.760323, 38.108891, 50.915623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043198, 37.743835, 50.677864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126965, 38.068745, 50.460110>,  <33.177227, 38.263691, 50.329456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126965, 38.068745, 50.460110>,  <33.043198, 37.743835, 50.677864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126965, 38.068745, 50.460110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340376, -0.461360, -0.819323,
		-0.916672, 0.356880, 0.179860,
		0.209420, 0.812271, -0.544389,
		33.189789, 38.312428, 50.296791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442947, 37.957047, 50.426765>,  <33.043198, 37.743835, 50.677864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442947, 37.957047, 50.426765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.723976, 38.110130, 50.186790>,  <32.892593, 38.201981, 50.042805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.723976, 38.110130, 50.186790>,  <32.442947, 37.957047, 50.426765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723976, 38.110130, 50.186790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514835, -0.308638, -0.799805,
		-0.491257, 0.870790, -0.019808,
		0.702575, 0.382712, -0.599934,
		32.934750, 38.224945, 50.006809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128506, 38.128426, 49.875191>,  <32.442947, 37.957047, 50.426765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128506, 38.128426, 49.875191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.469604, 38.222546, 49.688660>,  <32.674263, 38.279018, 49.576740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.469604, 38.222546, 49.688660>,  <32.128506, 38.128426, 49.875191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469604, 38.222546, 49.688660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391639, -0.302705, -0.868900,
		-0.345609, 0.923583, -0.165979,
		0.852744, 0.235296, -0.466329,
		32.725430, 38.293133, 49.548759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959488, 38.685459, 49.394058>,  <32.128506, 38.128426, 49.875191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959488, 38.685459, 49.394058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304436, 38.518826, 49.278976>,  <32.511406, 38.418846, 49.209927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304436, 38.518826, 49.278976>,  <31.959488, 38.685459, 49.394058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304436, 38.518826, 49.278976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277911, 0.085483, -0.956796,
		0.423182, 0.905068, -0.042055,
		0.862370, -0.416587, -0.287703,
		32.563148, 38.393848, 49.192665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164761, 38.986656, 48.720387>,  <31.959488, 38.685459, 49.394058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164761, 38.986656, 48.720387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.368256, 38.643291, 48.746662>,  <32.490353, 38.437271, 48.762428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.368256, 38.643291, 48.746662>,  <32.164761, 38.986656, 48.720387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368256, 38.643291, 48.746662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286180, -0.240581, -0.927482,
		0.811963, 0.453048, -0.368053,
		0.508740, -0.858410, 0.065690,
		32.520878, 38.385769, 48.766369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507832, 38.938763, 48.115585>,  <32.164761, 38.986656, 48.720387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507832, 38.938763, 48.115585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.486229, 38.571632, 48.272900>,  <32.473267, 38.351353, 48.367287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.486229, 38.571632, 48.272900>,  <32.507832, 38.938763, 48.115585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486229, 38.571632, 48.272900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171330, -0.379504, -0.909188,
		0.983732, -0.116486, -0.136755,
		-0.054008, -0.917828, 0.393287,
		32.470028, 38.296284, 48.390884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054462, 39.574867, 47.886086>,  <32.507832, 38.938763, 48.115585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054462, 39.574867, 47.886086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.918747, 39.941673, 47.802204>,  <32.837318, 40.161755, 47.751877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.918747, 39.941673, 47.802204>,  <33.054462, 39.574867, 47.886086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918747, 39.941673, 47.802204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299063, 0.316511, 0.900212,
		0.891878, 0.242715, -0.381632,
		-0.339286, 0.917012, -0.209702,
		32.816959, 40.216778, 47.739292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536945, 39.999413, 48.179276>,  <33.054462, 39.574867, 47.886086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536945, 39.999413, 48.179276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.210758, 40.224373, 48.124550>,  <33.015045, 40.359348, 48.091713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.210758, 40.224373, 48.124550>,  <33.536945, 39.999413, 48.179276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210758, 40.224373, 48.124550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186572, 0.479163, 0.857668,
		0.547911, 0.673873, -0.495669,
		-0.815466, 0.562404, -0.136813,
		32.966118, 40.393093, 48.083508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684692, 40.638859, 48.424839>,  <33.536945, 39.999413, 48.179276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684692, 40.638859, 48.424839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285141, 40.633560, 48.442982>,  <33.045410, 40.630379, 48.453865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285141, 40.633560, 48.442982>,  <33.684692, 40.638859, 48.424839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285141, 40.633560, 48.442982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037103, 0.374429, 0.926513,
		-0.029258, 0.927161, -0.373519,
		-0.998883, -0.013249, 0.045355,
		32.985477, 40.629585, 48.456589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603680, 41.371281, 48.629398>,  <33.684692, 40.638859, 48.424839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603680, 41.371281, 48.629398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.272869, 41.156536, 48.696095>,  <33.074383, 41.027687, 48.736111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.272869, 41.156536, 48.696095>,  <33.603680, 41.371281, 48.629398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272869, 41.156536, 48.696095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139739, 0.483623, 0.864049,
		-0.544516, 0.691293, -0.474991,
		-0.827028, -0.536863, 0.166739,
		33.024761, 40.995476, 48.746117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051304, 41.833076, 48.674759>,  <33.603680, 41.371281, 48.629398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051304, 41.833076, 48.674759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.911617, 41.511433, 48.867199>,  <32.827805, 41.318447, 48.982662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.911617, 41.511433, 48.867199>,  <33.051304, 41.833076, 48.674759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911617, 41.511433, 48.867199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012971, 0.517519, 0.855574,
		-0.936953, 0.292538, -0.191155,
		-0.349215, -0.804112, 0.481096,
		32.806854, 41.270199, 49.011528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417755, 42.048416, 49.039078>,  <33.051304, 41.833076, 48.674759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417755, 42.048416, 49.039078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.557625, 41.719318, 49.218330>,  <32.641544, 41.521862, 49.325882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.557625, 41.719318, 49.218330>,  <32.417755, 42.048416, 49.039078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557625, 41.719318, 49.218330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041074, 0.464408, 0.884669,
		-0.935972, -0.327750, 0.128596,
		0.349671, -0.822743, 0.448135,
		32.662525, 41.472496, 49.352772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882635, 41.975834, 49.526417>,  <32.417755, 42.048416, 49.039078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882635, 41.975834, 49.526417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214886, 41.788761, 49.647297>,  <32.414238, 41.676517, 49.719826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214886, 41.788761, 49.647297>,  <31.882635, 41.975834, 49.526417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214886, 41.788761, 49.647297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061998, 0.461671, 0.884882,
		-0.553365, -0.753744, 0.354482,
		0.830628, -0.467686, 0.302203,
		32.464073, 41.648457, 49.737957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778896, 41.637890, 50.228901>,  <31.882635, 41.975834, 49.526417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778896, 41.637890, 50.228901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.177467, 41.665535, 50.209484>,  <32.416611, 41.682121, 50.197834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.177467, 41.665535, 50.209484>,  <31.778896, 41.637890, 50.228901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177467, 41.665535, 50.209484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012576, 0.446903, 0.894494,
		0.083518, -0.891909, 0.444437,
		0.996427, 0.069117, -0.048541,
		32.476395, 41.686272, 50.194923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097496, 41.178299, 50.762119>,  <31.778896, 41.637890, 50.228901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097496, 41.178299, 50.762119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.343998, 41.486244, 50.695728>,  <32.491898, 41.671009, 50.655895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.343998, 41.486244, 50.695728>,  <32.097496, 41.178299, 50.762119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343998, 41.486244, 50.695728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052802, 0.250666, 0.966633,
		0.785776, -0.586927, 0.195124,
		0.616253, 0.769860, -0.165976,
		32.528873, 41.717201, 50.645935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.879787, 35.196571, 36.347748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119308, 35.499531, 36.451889>,  <36.263023, 35.681305, 36.514374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119308, 35.499531, 36.451889>,  <35.879787, 35.196571, 36.347748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119308, 35.499531, 36.451889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678647, 0.307221, 0.667123,
		0.425289, -0.576166, 0.697970,
		0.598805, 0.757396, 0.260356,
		36.298950, 35.726749, 36.529995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975735, 35.119221, 37.072029>,  <35.879787, 35.196571, 36.347748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975735, 35.119221, 37.072029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050816, 35.495979, 36.960598>,  <36.095863, 35.722034, 36.893738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050816, 35.495979, 36.960598>,  <35.975735, 35.119221, 37.072029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050816, 35.495979, 36.960598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553416, 0.335732, 0.762243,
		0.811479, 0.011093, 0.584277,
		0.187705, 0.941892, -0.278578,
		36.107128, 35.778545, 36.877026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253719, 35.431824, 37.592602>,  <35.975735, 35.119221, 37.072029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253719, 35.431824, 37.592602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121494, 35.746231, 37.383640>,  <36.042160, 35.934875, 37.258263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121494, 35.746231, 37.383640>,  <36.253719, 35.431824, 37.592602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121494, 35.746231, 37.383640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579992, 0.267482, 0.769456,
		0.744540, 0.557342, 0.367464,
		-0.330561, 0.786017, -0.522405,
		36.022327, 35.982037, 37.226917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242073, 35.976467, 38.085258>,  <36.253719, 35.431824, 37.592602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242073, 35.976467, 38.085258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985558, 36.086010, 37.798553>,  <35.831650, 36.151737, 37.626530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985558, 36.086010, 37.798553>,  <36.242073, 35.976467, 38.085258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985558, 36.086010, 37.798553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590244, 0.420798, 0.688870,
		0.490264, 0.864830, -0.108211,
		-0.641290, 0.273857, -0.716763,
		35.793171, 36.168167, 37.583523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062759, 36.652939, 38.274246>,  <36.242073, 35.976467, 38.085258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062759, 36.652939, 38.274246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790112, 36.541409, 38.003647>,  <35.626522, 36.474491, 37.841286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790112, 36.541409, 38.003647>,  <36.062759, 36.652939, 38.274246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790112, 36.541409, 38.003647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729927, 0.323607, 0.602068,
		0.051046, 0.904175, -0.424102,
		-0.681617, -0.278830, -0.676500,
		35.585625, 36.457760, 37.800697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494774, 37.224838, 38.198078>,  <36.062759, 36.652939, 38.274246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494774, 37.224838, 38.198078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322567, 36.887585, 38.069221>,  <35.219242, 36.685230, 37.991905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322567, 36.887585, 38.069221>,  <35.494774, 37.224838, 38.198078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322567, 36.887585, 38.069221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815371, 0.210238, 0.539416,
		-0.387075, 0.494894, -0.777980,
		-0.430515, -0.843137, -0.322144,
		35.193413, 36.634644, 37.972580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907333, 37.469463, 37.905624>,  <35.494774, 37.224838, 38.198078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907333, 37.469463, 37.905624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879921, 37.094761, 38.042912>,  <34.863476, 36.869942, 38.125286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879921, 37.094761, 38.042912>,  <34.907333, 37.469463, 37.905624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879921, 37.094761, 38.042912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840623, 0.239488, 0.485797,
		-0.537269, -0.255228, -0.803866,
		-0.068527, -0.936752, 0.343220,
		34.859364, 36.813736, 38.145878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259964, 37.482414, 38.011822>,  <34.907333, 37.469463, 37.905624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259964, 37.482414, 38.011822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363739, 37.134609, 38.179939>,  <34.426003, 36.925926, 38.280807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363739, 37.134609, 38.179939>,  <34.259964, 37.482414, 38.011822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363739, 37.134609, 38.179939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789996, 0.059260, 0.610242,
		-0.555518, -0.490346, -0.671535,
		0.259435, -0.869510, 0.420291,
		34.441570, 36.873756, 38.306026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622177, 37.167522, 38.041004>,  <34.259964, 37.482414, 38.011822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622177, 37.167522, 38.041004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833897, 36.947495, 38.299389>,  <33.960930, 36.815475, 38.454418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833897, 36.947495, 38.299389>,  <33.622177, 37.167522, 38.041004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833897, 36.947495, 38.299389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714923, 0.120811, 0.688687,
		-0.456868, -0.826331, -0.329316,
		0.529298, -0.550075, 0.645958,
		33.992687, 36.782471, 38.493176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088860, 36.709747, 38.450489>,  <33.622177, 37.167522, 38.041004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088860, 36.709747, 38.450489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415470, 36.680496, 38.679554>,  <33.611435, 36.662945, 38.816994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415470, 36.680496, 38.679554>,  <33.088860, 36.709747, 38.450489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415470, 36.680496, 38.679554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574382, -0.003140, 0.818581,
		-0.058069, -0.997317, -0.044572,
		0.816525, -0.073135, 0.572659,
		33.660427, 36.658558, 38.851353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964390, 36.211773, 39.012436>,  <33.088860, 36.709747, 38.450489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964390, 36.211773, 39.012436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264767, 36.452240, 39.121750>,  <33.444992, 36.596519, 39.187340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264767, 36.452240, 39.121750>,  <32.964390, 36.211773, 39.012436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264767, 36.452240, 39.121750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514350, 0.272915, 0.812995,
		0.414159, -0.751079, 0.514152,
		0.750943, 0.601164, 0.273287,
		33.490051, 36.632587, 39.203735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057915, 36.197826, 39.743057>,  <32.964390, 36.211773, 39.012436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057915, 36.197826, 39.743057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241821, 36.542297, 39.656361>,  <33.352165, 36.748981, 39.604343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241821, 36.542297, 39.656361>,  <33.057915, 36.197826, 39.743057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241821, 36.542297, 39.656361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432178, 0.430205, 0.792557,
		0.775779, -0.270722, 0.569979,
		0.459770, 0.861181, -0.216744,
		33.379753, 36.800652, 39.591339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976067, 35.569248, 40.203194>,  <33.057915, 36.197826, 39.743057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976067, 35.569248, 40.203194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582130, 35.499966, 40.206818>,  <32.345768, 35.458397, 40.208992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582130, 35.499966, 40.206818>,  <32.976067, 35.569248, 40.203194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582130, 35.499966, 40.206818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030219, -0.222799, -0.974396,
		0.170790, -0.959354, 0.224656,
		-0.984844, -0.173206, 0.009061,
		32.286678, 35.448006, 40.209538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956104, 35.322918, 39.585262>,  <32.976067, 35.569248, 40.203194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956104, 35.322918, 39.585262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569061, 35.295895, 39.682560>,  <32.336834, 35.279682, 39.740936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569061, 35.295895, 39.682560>,  <32.956104, 35.322918, 39.585262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569061, 35.295895, 39.682560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230632, -0.155259, -0.960574,
		0.102661, -0.985561, 0.134649,
		-0.967610, -0.067559, 0.243241,
		32.278778, 35.275627, 39.755531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594837, 34.645641, 39.345947>,  <32.956104, 35.322918, 39.585262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594837, 34.645641, 39.345947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299313, 34.909615, 39.400562>,  <32.121998, 35.067997, 39.433331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299313, 34.909615, 39.400562>,  <32.594837, 34.645641, 39.345947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299313, 34.909615, 39.400562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426867, -0.301498, -0.852575,
		-0.521477, -0.688177, 0.504455,
		-0.738815, 0.659933, 0.136536,
		32.077667, 35.107594, 39.441525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032722, 34.304775, 39.176033>,  <32.594837, 34.645641, 39.345947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032722, 34.304775, 39.176033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931488, 34.689655, 39.135792>,  <31.870749, 34.920582, 39.111645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931488, 34.689655, 39.135792>,  <32.032722, 34.304775, 39.176033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931488, 34.689655, 39.135792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460888, -0.211348, -0.861925,
		-0.850607, -0.171768, 0.496954,
		-0.253081, 0.962200, -0.100608,
		31.855564, 34.978313, 39.105610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270851, 34.348923, 39.029243>,  <32.032722, 34.304775, 39.176033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270851, 34.348923, 39.029243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411680, 34.701530, 38.903412>,  <31.496178, 34.913097, 38.827911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411680, 34.701530, 38.903412>,  <31.270851, 34.348923, 39.029243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411680, 34.701530, 38.903412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493693, -0.110642, -0.862569,
		-0.795180, 0.458996, 0.396247,
		0.352075, 0.881522, -0.314583,
		31.517303, 34.965988, 38.809036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719700, 34.713493, 38.560711>,  <31.270851, 34.348923, 39.029243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719700, 34.713493, 38.560711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043015, 34.932018, 38.472881>,  <31.237003, 35.063133, 38.420185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043015, 34.932018, 38.472881>,  <30.719700, 34.713493, 38.560711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043015, 34.932018, 38.472881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277782, 0.025015, -0.960318,
		-0.519144, 0.837206, 0.171975,
		0.808286, 0.546315, -0.219575,
		31.285500, 35.095913, 38.407009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516531, 35.241077, 38.101238>,  <30.719700, 34.713493, 38.560711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516531, 35.241077, 38.101238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909946, 35.252422, 38.029858>,  <31.145996, 35.259228, 37.987030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909946, 35.252422, 38.029858>,  <30.516531, 35.241077, 38.101238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909946, 35.252422, 38.029858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180380, 0.095742, -0.978926,
		-0.010675, 0.995002, 0.099281,
		0.983539, 0.028359, -0.178456,
		31.205008, 35.260929, 37.976322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617304, 35.789940, 37.706036>,  <30.516531, 35.241077, 38.101238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617304, 35.789940, 37.706036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888397, 35.501217, 37.649933>,  <31.051052, 35.327984, 37.616272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888397, 35.501217, 37.649933>,  <30.617304, 35.789940, 37.706036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888397, 35.501217, 37.649933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284256, -0.081273, -0.955298,
		0.678144, 0.687304, -0.260260,
		0.677732, -0.721809, -0.140255,
		31.091717, 35.284676, 37.607857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747906, 35.823784, 36.972424>,  <30.617304, 35.789940, 37.706036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747906, 35.823784, 36.972424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925425, 35.479214, 37.071209>,  <31.031937, 35.272472, 37.130478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925425, 35.479214, 37.071209>,  <30.747906, 35.823784, 36.972424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925425, 35.479214, 37.071209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076503, -0.311002, -0.947325,
		0.892856, 0.401527, -0.203923,
		0.443797, -0.861426, 0.246962,
		31.058563, 35.220787, 37.145298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255840, 35.715260, 36.493279>,  <30.747906, 35.823784, 36.972424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255840, 35.715260, 36.493279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168295, 35.351997, 36.636021>,  <31.115767, 35.134041, 36.721664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168295, 35.351997, 36.636021>,  <31.255840, 35.715260, 36.493279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168295, 35.351997, 36.636021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305208, -0.283655, -0.909059,
		0.926793, -0.307877, -0.215095,
		-0.218866, -0.908158, 0.356856,
		31.102634, 35.079552, 36.743076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341454, 35.257866, 35.926838>,  <31.255840, 35.715260, 36.493279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341454, 35.257866, 35.926838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128450, 35.051838, 36.195503>,  <31.000648, 34.928223, 36.356705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128450, 35.051838, 36.195503>,  <31.341454, 35.257866, 35.926838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128450, 35.051838, 36.195503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391863, -0.553351, -0.735014,
		0.750252, -0.654603, 0.092827,
		-0.532509, -0.515070, 0.671667,
		30.968699, 34.897316, 36.397003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467289, 34.529324, 35.771057>,  <31.341454, 35.257866, 35.926838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467289, 34.529324, 35.771057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117764, 34.595520, 35.953953>,  <30.908049, 34.635239, 36.063690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117764, 34.595520, 35.953953>,  <31.467289, 34.529324, 35.771057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117764, 34.595520, 35.953953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483014, -0.403938, -0.776873,
		0.056127, -0.899692, 0.432902,
		-0.873812, 0.165494, 0.457236,
		30.855619, 34.645168, 36.091122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001558, 33.897099, 35.712120>,  <31.467289, 34.529324, 35.771057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001558, 33.897099, 35.712120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743664, 34.189507, 35.801498>,  <30.588926, 34.364952, 35.855125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743664, 34.189507, 35.801498>,  <31.001558, 33.897099, 35.712120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743664, 34.189507, 35.801498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604162, -0.308241, -0.734830,
		-0.468295, -0.608773, 0.640386,
		-0.644739, 0.731015, 0.223450,
		30.550241, 34.408810, 35.868534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624800, 33.566578, 35.994274>,  <31.001558, 33.897099, 35.712120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624800, 33.566578, 35.994274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999104, 33.432022, 36.036602>,  <32.223686, 33.351288, 36.061996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999104, 33.432022, 36.036602>,  <31.624800, 33.566578, 35.994274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999104, 33.432022, 36.036602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020062, 0.350366, 0.936398,
		-0.352068, -0.874120, 0.334607,
		0.935759, -0.336389, 0.105816,
		32.279831, 33.331104, 36.068348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744629, 32.944046, 36.522697>,  <31.624800, 33.566578, 35.994274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744629, 32.944046, 36.522697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023376, 33.226227, 36.470989>,  <32.190624, 33.395535, 36.439964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023376, 33.226227, 36.470989>,  <31.744629, 32.944046, 36.522697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023376, 33.226227, 36.470989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247965, 0.406116, 0.879536,
		0.672970, -0.580866, 0.457937,
		0.696868, 0.705454, -0.129270,
		32.232437, 33.437862, 36.432209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247131, 32.923862, 37.054920>,  <31.744629, 32.944046, 36.522697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247131, 32.923862, 37.054920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205814, 33.301247, 36.928925>,  <32.181023, 33.527676, 36.853329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205814, 33.301247, 36.928925>,  <32.247131, 32.923862, 37.054920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205814, 33.301247, 36.928925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134509, 0.300520, 0.944243,
		0.985514, 0.139901, 0.095863,
		-0.103292, 0.943459, -0.314985,
		32.174828, 33.584286, 36.834431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664501, 33.416412, 37.523457>,  <32.247131, 32.923862, 37.054920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664501, 33.416412, 37.523457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362915, 33.618622, 37.355659>,  <32.181961, 33.739948, 37.254982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362915, 33.618622, 37.355659>,  <32.664501, 33.416412, 37.523457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362915, 33.618622, 37.355659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167049, 0.470048, 0.866689,
		0.635315, 0.723533, -0.269954,
		-0.753969, 0.505525, -0.419494,
		32.136723, 33.770279, 37.229813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416290, 33.340881, 37.380825>,  <32.664501, 33.416412, 37.523457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416290, 33.340881, 37.380825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777092, 33.368988, 37.210438>,  <33.993572, 33.385853, 37.108204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777092, 33.368988, 37.210438>,  <33.416290, 33.340881, 37.380825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777092, 33.368988, 37.210438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370302, 0.381326, 0.847034,
		0.221955, -0.921766, 0.317936,
		0.902005, 0.070271, -0.425969,
		34.047695, 33.390068, 37.082645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896702, 32.930771, 37.725426>,  <33.416290, 33.340881, 37.380825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896702, 32.930771, 37.725426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109001, 33.223171, 37.553871>,  <34.236382, 33.398613, 37.450939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109001, 33.223171, 37.553871>,  <33.896702, 32.930771, 37.725426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109001, 33.223171, 37.553871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336973, 0.282312, 0.898192,
		0.777662, -0.621234, -0.096493,
		0.530746, 0.731005, -0.428883,
		34.268227, 33.442474, 37.425205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571819, 32.964981, 38.141666>,  <33.896702, 32.930771, 37.725426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571819, 32.964981, 38.141666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566982, 33.298542, 37.920952>,  <34.564079, 33.498676, 37.788525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566982, 33.298542, 37.920952>,  <34.571819, 32.964981, 38.141666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566982, 33.298542, 37.920952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424850, 0.503824, 0.752106,
		0.905183, -0.225335, -0.360372,
		-0.012088, 0.833898, -0.551787,
		34.563354, 33.548710, 37.755417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197399, 33.236771, 38.121189>,  <34.571819, 32.964981, 38.141666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197399, 33.236771, 38.121189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972485, 33.556168, 38.035175>,  <34.837536, 33.747807, 37.983566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972485, 33.556168, 38.035175>,  <35.197399, 33.236771, 38.121189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972485, 33.556168, 38.035175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325883, 0.452956, 0.829838,
		0.760023, 0.396530, -0.514907,
		-0.562286, 0.798495, -0.215035,
		34.803799, 33.795715, 37.970665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666077, 33.720066, 38.163700>,  <35.197399, 33.236771, 38.121189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666077, 33.720066, 38.163700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311497, 33.900486, 38.205193>,  <35.098747, 34.008739, 38.230087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311497, 33.900486, 38.205193>,  <35.666077, 33.720066, 38.163700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311497, 33.900486, 38.205193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272554, 0.327613, 0.904646,
		0.374057, 0.830195, -0.413348,
		-0.886451, 0.451049, 0.103727,
		35.045563, 34.035801, 38.236309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829330, 34.274395, 38.500019>,  <35.666077, 33.720066, 38.163700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829330, 34.274395, 38.500019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436161, 34.228252, 38.557358>,  <35.200260, 34.200569, 38.591763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436161, 34.228252, 38.557358>,  <35.829330, 34.274395, 38.500019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436161, 34.228252, 38.557358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094118, 0.354219, 0.930414,
		-0.158102, 0.928021, -0.337314,
		-0.982927, -0.115353, 0.143347,
		35.141281, 34.193645, 38.600361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616699, 34.840534, 38.783089>,  <35.829330, 34.274395, 38.500019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616699, 34.840534, 38.783089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315765, 34.603352, 38.897907>,  <35.135204, 34.461044, 38.966797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315765, 34.603352, 38.897907>,  <35.616699, 34.840534, 38.783089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315765, 34.603352, 38.897907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167390, 0.249361, 0.953834,
		-0.637158, 0.765653, -0.088349,
		-0.752337, -0.592954, 0.287045,
		35.090065, 34.425465, 38.984020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167156, 35.290531, 39.277020>,  <35.616699, 34.840534, 38.783089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167156, 35.290531, 39.277020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073513, 34.906273, 39.336830>,  <35.017326, 34.675720, 39.372719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073513, 34.906273, 39.336830>,  <35.167156, 35.290531, 39.277020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073513, 34.906273, 39.336830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068210, 0.169653, 0.983140,
		-0.969815, 0.219963, -0.105243,
		-0.234109, -0.960643, 0.149529,
		35.003281, 34.618080, 39.381687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538773, 35.273872, 39.798206>,  <35.167156, 35.290531, 39.277020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538773, 35.273872, 39.798206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732700, 34.924145, 39.807220>,  <34.849056, 34.714306, 39.812630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732700, 34.924145, 39.807220>,  <34.538773, 35.273872, 39.798206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732700, 34.924145, 39.807220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016190, 0.034734, 0.999265,
		-0.874464, -0.484100, 0.030995,
		0.484821, -0.874323, 0.022536,
		34.878147, 34.661846, 39.813980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155807, 34.903793, 40.324795>,  <34.538773, 35.273872, 39.798206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155807, 34.903793, 40.324795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517113, 34.736683, 40.285637>,  <34.733894, 34.636417, 40.262142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517113, 34.736683, 40.285637>,  <34.155807, 34.903793, 40.324795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517113, 34.736683, 40.285637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035703, -0.154180, 0.987397,
		-0.427601, -0.895374, -0.124349,
		0.903262, -0.417772, -0.097895,
		34.788090, 34.611351, 40.256268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067249, 34.280674, 40.617138>,  <34.155807, 34.903793, 40.324795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067249, 34.280674, 40.617138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453686, 34.383564, 40.626064>,  <34.685547, 34.445297, 40.631420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453686, 34.383564, 40.626064>,  <34.067249, 34.280674, 40.617138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453686, 34.383564, 40.626064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004195, -0.102076, 0.994768,
		0.258156, -0.960946, -0.099695,
		0.966094, 0.257224, 0.022320,
		34.743515, 34.460732, 40.632759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333160, 33.974770, 41.282852>,  <34.067249, 34.280674, 40.617138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333160, 33.974770, 41.282852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637142, 34.214146, 41.181393>,  <34.819530, 34.357773, 41.120518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637142, 34.214146, 41.181393>,  <34.333160, 33.974770, 41.282852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637142, 34.214146, 41.181393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269741, 0.064680, 0.960758,
		0.591364, -0.798552, -0.112271,
		0.759953, 0.598442, -0.253652,
		34.865128, 34.393677, 41.105297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006901, 33.717896, 41.657085>,  <34.333160, 33.974770, 41.282852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006901, 33.717896, 41.657085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083420, 34.092091, 41.538242>,  <35.129333, 34.316608, 41.466938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083420, 34.092091, 41.538242>,  <35.006901, 33.717896, 41.657085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083420, 34.092091, 41.538242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433464, 0.191060, 0.880684,
		0.880632, -0.297259, -0.368950,
		0.191299, 0.935485, -0.297105,
		35.140808, 34.372738, 41.449112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741100, 33.780457, 41.825825>,  <35.006901, 33.717896, 41.657085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741100, 33.780457, 41.825825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545769, 34.129208, 41.811050>,  <35.428570, 34.338459, 41.802185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545769, 34.129208, 41.811050>,  <35.741100, 33.780457, 41.825825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545769, 34.129208, 41.811050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444417, 0.284889, 0.849313,
		0.751020, 0.398327, -0.526597,
		-0.488326, 0.871880, -0.036934,
		35.399273, 34.390770, 41.799969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229130, 34.278618, 42.000359>,  <35.741100, 33.780457, 41.825825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229130, 34.278618, 42.000359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881119, 34.463505, 42.068939>,  <35.672310, 34.574436, 42.110088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881119, 34.463505, 42.068939>,  <36.229130, 34.278618, 42.000359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881119, 34.463505, 42.068939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297619, 0.215190, 0.930116,
		0.393024, 0.860259, -0.324788,
		-0.870032, 0.462221, 0.171455,
		35.620110, 34.602173, 42.120377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471024, 34.907482, 42.363674>,  <36.229130, 34.278618, 42.000359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471024, 34.907482, 42.363674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086327, 34.836006, 42.446732>,  <35.855507, 34.793121, 42.496567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086327, 34.836006, 42.446732>,  <36.471024, 34.907482, 42.363674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086327, 34.836006, 42.446732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153126, 0.277869, 0.948336,
		-0.227157, 0.943853, -0.239877,
		-0.961744, -0.178689, 0.207648,
		35.797802, 34.782398, 42.509026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311592, 35.526836, 42.623283>,  <36.471024, 34.907482, 42.363674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311592, 35.526836, 42.623283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035187, 35.271427, 42.758804>,  <35.869343, 35.118183, 42.840118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035187, 35.271427, 42.758804>,  <36.311592, 35.526836, 42.623283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035187, 35.271427, 42.758804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187122, 0.294716, 0.937085,
		-0.698198, 0.710939, -0.084173,
		-0.691018, -0.638520, 0.338802,
		35.827881, 35.079872, 42.860443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804344, 35.909691, 43.013672>,  <36.311592, 35.526836, 42.623283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804344, 35.909691, 43.013672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781506, 35.543739, 43.173546>,  <35.767803, 35.324169, 43.269470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781506, 35.543739, 43.173546>,  <35.804344, 35.909691, 43.013672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781506, 35.543739, 43.173546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103301, 0.392772, 0.913815,
		-0.993010, 0.093461, 0.072082,
		-0.057094, -0.914874, 0.399681,
		35.764378, 35.269276, 43.293449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366966, 36.022030, 43.531322>,  <35.804344, 35.909691, 43.013672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366966, 36.022030, 43.531322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518658, 35.662464, 43.619087>,  <35.609673, 35.446724, 43.671745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518658, 35.662464, 43.619087>,  <35.366966, 36.022030, 43.531322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518658, 35.662464, 43.619087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007026, 0.239916, 0.970768,
		-0.925276, -0.366602, 0.097299,
		0.379229, -0.898912, 0.219413,
		35.632427, 35.392792, 43.684910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062450, 35.930729, 44.170834>,  <35.366966, 36.022030, 43.531322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062450, 35.930729, 44.170834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347492, 35.650112, 44.172966>,  <35.518517, 35.481743, 44.174244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347492, 35.650112, 44.172966>,  <35.062450, 35.930729, 44.170834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347492, 35.650112, 44.172966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136094, 0.145685, 0.979926,
		-0.688236, -0.697577, 0.199292,
		0.712608, -0.701543, 0.005330,
		35.561275, 35.439648, 44.174564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862221, 35.362106, 44.629215>,  <35.062450, 35.930729, 44.170834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862221, 35.362106, 44.629215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260559, 35.348133, 44.595573>,  <35.499561, 35.339748, 44.575390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260559, 35.348133, 44.595573>,  <34.862221, 35.362106, 44.629215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260559, 35.348133, 44.595573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089651, 0.213758, 0.972764,
		-0.016002, -0.976262, 0.216001,
		0.995845, -0.034931, -0.084102,
		35.559311, 35.337654, 44.570343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036739, 34.957096, 45.147102>,  <34.862221, 35.362106, 44.629215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036739, 34.957096, 45.147102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347439, 35.191387, 45.054516>,  <35.533859, 35.331963, 44.998962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347439, 35.191387, 45.054516>,  <35.036739, 34.957096, 45.147102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347439, 35.191387, 45.054516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197459, 0.122508, 0.972626,
		0.598053, -0.801195, -0.020500,
		0.776751, 0.585730, -0.231470,
		35.580463, 35.367107, 44.985073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700768, 34.661755, 45.436703>,  <35.036739, 34.957096, 45.147102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700768, 34.661755, 45.436703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779270, 35.052605, 45.403942>,  <35.826374, 35.287113, 45.384285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779270, 35.052605, 45.403942>,  <35.700768, 34.661755, 45.436703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779270, 35.052605, 45.403942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203452, 0.041127, 0.978221,
		0.959213, -0.208647, -0.190727,
		0.196259, 0.977126, -0.081899,
		35.838146, 35.345741, 45.379372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197327, 34.797607, 45.896717>,  <35.700768, 34.661755, 45.436703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197327, 34.797607, 45.896717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082420, 35.171783, 45.814323>,  <36.013477, 35.396290, 45.764889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082420, 35.171783, 45.814323>,  <36.197327, 34.797607, 45.896717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082420, 35.171783, 45.814323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081227, 0.238060, 0.967848,
		0.954399, 0.261303, -0.144370,
		-0.287270, 0.935440, -0.205979,
		35.996239, 35.452415, 45.752529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660282, 35.198051, 46.236393>,  <36.197327, 34.797607, 45.896717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660282, 35.198051, 46.236393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344616, 35.433582, 46.166531>,  <36.155216, 35.574902, 46.124615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344616, 35.433582, 46.166531>,  <36.660282, 35.198051, 46.236393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344616, 35.433582, 46.166531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075156, 0.374815, 0.924048,
		0.609569, 0.716097, -0.340044,
		-0.789162, 0.588828, -0.174657,
		36.107868, 35.610229, 46.114132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138638, 35.792252, 45.952000>,  <36.660282, 35.198051, 46.236393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138638, 35.792252, 45.952000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522255, 35.895508, 45.905338>,  <37.752426, 35.957462, 45.877342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522255, 35.895508, 45.905338>,  <37.138638, 35.792252, 45.952000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522255, 35.895508, 45.905338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029749, -0.317740, -0.947711,
		-0.281704, 0.912363, -0.297046,
		0.959040, 0.258137, -0.116651,
		37.809967, 35.972950, 45.870342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297264, 36.130630, 45.201725>,  <37.138638, 35.792252, 45.952000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297264, 36.130630, 45.201725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655773, 36.026043, 45.345016>,  <37.870880, 35.963291, 45.430992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655773, 36.026043, 45.345016>,  <37.297264, 36.130630, 45.201725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655773, 36.026043, 45.345016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305801, -0.220662, -0.926172,
		0.321208, 0.939651, -0.117818,
		0.896276, -0.261465, 0.358224,
		37.924656, 35.947605, 45.452484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691723, 36.368633, 44.660030>,  <37.297264, 36.130630, 45.201725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691723, 36.368633, 44.660030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903145, 36.108086, 44.877785>,  <38.029999, 35.951759, 45.008438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903145, 36.108086, 44.877785>,  <37.691723, 36.368633, 44.660030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903145, 36.108086, 44.877785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366549, -0.403299, -0.838446,
		0.765684, 0.642708, 0.025591,
		0.528555, -0.651365, 0.544383,
		38.061710, 35.912678, 45.041100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338123, 36.318344, 44.288654>,  <37.691723, 36.368633, 44.660030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338123, 36.318344, 44.288654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331875, 36.003445, 44.535233>,  <38.328125, 35.814507, 44.683178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331875, 36.003445, 44.535233>,  <38.338123, 36.318344, 44.288654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331875, 36.003445, 44.535233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307495, -0.590423, -0.746222,
		0.951421, 0.177898, 0.251296,
		-0.015619, -0.787244, 0.616444,
		38.327190, 35.767273, 44.720165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994728, 35.960369, 44.118992>,  <38.338123, 36.318344, 44.288654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994728, 35.960369, 44.118992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744541, 35.696472, 44.285622>,  <38.594429, 35.538136, 44.385601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744541, 35.696472, 44.285622>,  <38.994728, 35.960369, 44.118992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744541, 35.696472, 44.285622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214834, -0.658879, -0.720919,
		0.750091, -0.361418, 0.553842,
		-0.625468, -0.659739, 0.416575,
		38.556900, 35.498550, 44.410595>
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
