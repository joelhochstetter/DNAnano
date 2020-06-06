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
	<24.470169, 34.871288, 34.722420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332851, 34.949535, 35.089870>,  <24.250462, 34.996483, 35.310341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332851, 34.949535, 35.089870>,  <24.470169, 34.871288, 34.722420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332851, 34.949535, 35.089870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846696, -0.358871, 0.392832,
		0.406516, 0.912658, -0.042435,
		-0.343293, 0.195622, 0.918631,
		24.229864, 35.008221, 35.365459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635117, 35.538258, 34.882275>,  <24.470169, 34.871288, 34.722420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635117, 35.538258, 34.882275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588381, 35.287891, 35.190712>,  <24.560339, 35.137672, 35.375774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588381, 35.287891, 35.190712>,  <24.635117, 35.538258, 34.882275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.588381, 35.287891, 35.190712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992055, -0.037100, 0.120207,
		-0.046632, 0.779009, 0.625276,
		-0.116839, -0.625914, 0.771090,
		24.553329, 35.100117, 35.422039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.096659, 35.715385, 35.443848>,  <24.635117, 35.538258, 34.882275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.096659, 35.715385, 35.443848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009995, 35.324902, 35.447205>,  <24.957996, 35.090611, 35.449219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009995, 35.324902, 35.447205>,  <25.096659, 35.715385, 35.443848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009995, 35.324902, 35.447205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958080, -0.210972, 0.193839,
		-0.187458, 0.050033, 0.980998,
		-0.216661, -0.976211, 0.008388,
		24.944996, 35.032040, 35.449722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376143, 35.312828, 36.086227>,  <25.096659, 35.715385, 35.443848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376143, 35.312828, 36.086227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376722, 35.058247, 35.777702>,  <25.377069, 34.905499, 35.592587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376722, 35.058247, 35.777702>,  <25.376143, 35.312828, 36.086227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376722, 35.058247, 35.777702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992446, -0.093702, 0.079184,
		-0.122670, -0.765605, 0.631507,
		0.001450, -0.636450, -0.771316,
		25.377157, 34.867310, 35.546307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600792, 34.607452, 36.131798>,  <25.376143, 35.312828, 36.086227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600792, 34.607452, 36.131798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693438, 34.750359, 35.769867>,  <25.749025, 34.836102, 35.552708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693438, 34.750359, 35.769867>,  <25.600792, 34.607452, 36.131798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693438, 34.750359, 35.769867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972554, -0.063769, 0.223771,
		0.022246, -0.931822, -0.362233,
		0.231614, 0.357269, -0.904828,
		25.762922, 34.857540, 35.498417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246281, 34.270706, 35.925808>,  <25.600792, 34.607452, 36.131798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246281, 34.270706, 35.925808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189285, 34.645031, 35.796841>,  <26.155088, 34.869625, 35.719460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189285, 34.645031, 35.796841>,  <26.246281, 34.270706, 35.925808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189285, 34.645031, 35.796841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944249, 0.226194, 0.239228,
		0.296800, -0.270352, -0.915871,
		-0.142488, 0.935813, -0.322414,
		26.146540, 34.925774, 35.700115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754574, 34.533554, 35.429756>,  <26.246281, 34.270706, 35.925808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754574, 34.533554, 35.429756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621082, 34.815567, 35.680054>,  <26.540987, 34.984776, 35.830235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621082, 34.815567, 35.680054>,  <26.754574, 34.533554, 35.429756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621082, 34.815567, 35.680054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921126, 0.102794, 0.375446,
		0.200377, 0.701689, -0.683726,
		-0.333730, 0.705029, 0.625747,
		26.520964, 35.027077, 35.867779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014507, 34.623169, 36.103596>,  <26.754574, 34.533554, 35.429756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014507, 34.623169, 36.103596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220146, 34.704369, 35.770252>,  <27.343529, 34.753090, 35.570244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220146, 34.704369, 35.770252>,  <27.014507, 34.623169, 36.103596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220146, 34.704369, 35.770252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264525, 0.886707, 0.379180,
		0.815923, -0.415380, 0.402155,
		0.514097, 0.203002, -0.833363,
		27.374376, 34.765270, 35.520245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662109, 34.645321, 36.249683>,  <27.014507, 34.623169, 36.103596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662109, 34.645321, 36.249683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543163, 34.886822, 35.953827>,  <27.471796, 35.031723, 35.776314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543163, 34.886822, 35.953827>,  <27.662109, 34.645321, 36.249683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543163, 34.886822, 35.953827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452516, 0.771266, 0.447636,
		0.840716, -0.201586, -0.502553,
		-0.297365, 0.603748, -0.739637,
		27.453955, 35.067947, 35.731937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098408, 34.779739, 35.602180>,  <27.662109, 34.645321, 36.249683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098408, 34.779739, 35.602180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484241, 34.684704, 35.648003>,  <28.715742, 34.627682, 35.675495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484241, 34.684704, 35.648003>,  <28.098408, 34.779739, 35.602180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484241, 34.684704, 35.648003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006187, -0.413819, -0.910338,
		0.263697, 0.878808, -0.397694,
		0.964586, -0.237593, 0.114559,
		28.773617, 34.613426, 35.682369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615833, 35.024837, 35.014702>,  <28.098408, 34.779739, 35.602180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615833, 35.024837, 35.014702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735670, 34.675510, 35.168362>,  <28.807571, 34.465916, 35.260555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735670, 34.675510, 35.168362>,  <28.615833, 35.024837, 35.014702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735670, 34.675510, 35.168362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114507, -0.366816, -0.923219,
		0.947171, 0.320576, -0.009894,
		0.299591, -0.873314, 0.384146,
		28.825548, 34.413517, 35.283604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226343, 34.799706, 34.593800>,  <28.615833, 35.024837, 35.014702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226343, 34.799706, 34.593800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092512, 34.472271, 34.780552>,  <29.012215, 34.275810, 34.892605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092512, 34.472271, 34.780552>,  <29.226343, 34.799706, 34.593800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092512, 34.472271, 34.780552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062973, -0.513751, -0.855625,
		0.940262, -0.256871, 0.223437,
		-0.334576, -0.818583, 0.466885,
		28.992140, 34.226696, 34.920616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508842, 34.285130, 34.252155>,  <29.226343, 34.799706, 34.593800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508842, 34.285130, 34.252155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207458, 34.110252, 34.448589>,  <29.026628, 34.005325, 34.566448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207458, 34.110252, 34.448589>,  <29.508842, 34.285130, 34.252155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207458, 34.110252, 34.448589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140512, -0.622576, -0.769841,
		0.642307, -0.649046, 0.407654,
		-0.753458, -0.437193, 0.491084,
		28.981421, 33.979095, 34.595913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580709, 33.762489, 33.939564>,  <29.508842, 34.285130, 34.252155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580709, 33.762489, 33.939564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226511, 33.716930, 34.119751>,  <29.013992, 33.689594, 34.227863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226511, 33.716930, 34.119751>,  <29.580709, 33.762489, 33.939564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226511, 33.716930, 34.119751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293808, -0.613822, -0.732734,
		0.359964, -0.781185, 0.510074,
		-0.885496, -0.113894, 0.450472,
		28.960863, 33.682762, 34.254894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429039, 33.077541, 33.982521>,  <29.580709, 33.762489, 33.939564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429039, 33.077541, 33.982521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073158, 33.260109, 33.986725>,  <28.859629, 33.369648, 33.989246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073158, 33.260109, 33.986725>,  <29.429039, 33.077541, 33.982521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073158, 33.260109, 33.986725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331316, -0.629666, -0.702673,
		-0.314097, -0.628652, 0.711435,
		-0.889704, 0.456417, 0.010507,
		28.806248, 33.397034, 33.989876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994072, 32.560081, 33.953968>,  <29.429039, 33.077541, 33.982521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994072, 32.560081, 33.953968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763811, 32.866413, 33.839329>,  <28.625654, 33.050213, 33.770546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763811, 32.866413, 33.839329>,  <28.994072, 32.560081, 33.953968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763811, 32.866413, 33.839329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473690, -0.598011, -0.646530,
		-0.666517, -0.236417, 0.707009,
		-0.575650, 0.765826, -0.286596,
		28.591116, 33.096161, 33.753349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341726, 32.258381, 33.846474>,  <28.994072, 32.560081, 33.953968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341726, 32.258381, 33.846474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352245, 32.597900, 33.635250>,  <28.358557, 32.801613, 33.508514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352245, 32.597900, 33.635250>,  <28.341726, 32.258381, 33.846474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352245, 32.597900, 33.635250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505611, -0.444400, -0.739504,
		-0.862361, 0.286440, 0.417476,
		0.026297, 0.848800, -0.528060,
		28.360134, 32.852539, 33.476833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697691, 32.282013, 33.490433>,  <28.341726, 32.258381, 33.846474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697691, 32.282013, 33.490433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910749, 32.567940, 33.309185>,  <28.038584, 32.739498, 33.200436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910749, 32.567940, 33.309185>,  <27.697691, 32.282013, 33.490433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910749, 32.567940, 33.309185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490479, -0.175600, -0.853578,
		-0.689724, 0.676901, 0.257072,
		0.532645, 0.714821, -0.453121,
		28.070543, 32.782387, 33.173248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181011, 32.738850, 33.200539>,  <27.697691, 32.282013, 33.490433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181011, 32.738850, 33.200539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528694, 32.790810, 33.009705>,  <27.737303, 32.821983, 32.895206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528694, 32.790810, 33.009705>,  <27.181011, 32.738850, 33.200539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528694, 32.790810, 33.009705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475296, -0.046452, -0.878599,
		-0.136289, 0.990439, 0.021363,
		0.869206, 0.129897, -0.477083,
		27.789455, 32.829781, 32.866581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971363, 33.193188, 32.684067>,  <27.181011, 32.738850, 33.200539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971363, 33.193188, 32.684067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323381, 33.027294, 32.591534>,  <27.534592, 32.927757, 32.536015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323381, 33.027294, 32.591534>,  <26.971363, 33.193188, 32.684067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323381, 33.027294, 32.591534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305360, -0.121123, -0.944502,
		0.363700, 0.901844, -0.233237,
		0.880044, -0.414736, -0.231335,
		27.587395, 32.902874, 32.522133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098574, 33.472115, 32.090042>,  <26.971363, 33.193188, 32.684067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098574, 33.472115, 32.090042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338394, 33.152035, 32.095985>,  <27.482286, 32.959988, 32.099552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338394, 33.152035, 32.095985>,  <27.098574, 33.472115, 32.090042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338394, 33.152035, 32.095985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228761, -0.189131, -0.954934,
		0.766948, 0.569130, -0.296448,
		0.599549, -0.800200, 0.014859,
		27.518259, 32.911976, 32.100445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521976, 33.427414, 31.504326>,  <27.098574, 33.472115, 32.090042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521976, 33.427414, 31.504326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469639, 33.047321, 31.617426>,  <27.438236, 32.819267, 31.685286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469639, 33.047321, 31.617426>,  <27.521976, 33.427414, 31.504326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469639, 33.047321, 31.617426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179420, -0.257798, -0.949394,
		0.975033, -0.174953, -0.136759,
		-0.130843, -0.950227, 0.282752,
		27.430386, 32.762253, 31.702251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614304, 33.164940, 30.914980>,  <27.521976, 33.427414, 31.504326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614304, 33.164940, 30.914980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471193, 32.848324, 31.113157>,  <27.385326, 32.658356, 31.232063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471193, 32.848324, 31.113157>,  <27.614304, 33.164940, 30.914980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471193, 32.848324, 31.113157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389964, -0.355438, -0.849465,
		0.848483, -0.497124, -0.181504,
		-0.357776, -0.791537, 0.495444,
		27.363861, 32.610863, 31.261791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649208, 32.629307, 30.425232>,  <27.614304, 33.164940, 30.914980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649208, 32.629307, 30.425232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383253, 32.526474, 30.705755>,  <27.223680, 32.464775, 30.874069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383253, 32.526474, 30.705755>,  <27.649208, 32.629307, 30.425232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383253, 32.526474, 30.705755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486857, -0.562900, -0.667918,
		0.566477, -0.785527, 0.249101,
		-0.664887, -0.257084, 0.701309,
		27.183786, 32.449348, 30.916147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582991, 31.930050, 30.422989>,  <27.649208, 32.629307, 30.425232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582991, 31.930050, 30.422989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232590, 32.022015, 30.592581>,  <27.022348, 32.077194, 30.694336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232590, 32.022015, 30.592581>,  <27.582991, 31.930050, 30.422989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232590, 32.022015, 30.592581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452275, -0.696935, -0.556532,
		0.167534, -0.679280, 0.714500,
		-0.876002, 0.229913, 0.423982,
		26.969790, 32.090988, 30.719776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296511, 31.391769, 30.873363>,  <27.582991, 31.930050, 30.422989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296511, 31.391769, 30.873363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071272, 31.620676, 30.634890>,  <26.936129, 31.758020, 30.491806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071272, 31.620676, 30.634890>,  <27.296511, 31.391769, 30.873363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071272, 31.620676, 30.634890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179856, -0.789003, -0.587475,
		-0.806590, -0.223569, 0.547201,
		-0.563084, 0.572269, -0.596192,
		26.902344, 31.792356, 30.456034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737286, 30.953562, 30.663612>,  <27.296511, 31.391769, 30.873363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737286, 30.953562, 30.663612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742994, 31.264778, 30.412392>,  <26.746420, 31.451508, 30.261660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742994, 31.264778, 30.412392>,  <26.737286, 30.953562, 30.663612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742994, 31.264778, 30.412392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241316, -0.606869, -0.757282,
		-0.970342, 0.162366, 0.179094,
		0.014271, 0.778041, -0.628052,
		26.747276, 31.498190, 30.223976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032978, 31.027946, 30.407364>,  <26.737286, 30.953562, 30.663612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032978, 31.027946, 30.407364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354242, 31.127737, 30.190958>,  <26.547001, 31.187611, 30.061113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354242, 31.127737, 30.190958>,  <26.032978, 31.027946, 30.407364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354242, 31.127737, 30.190958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165397, -0.779034, -0.604772,
		-0.572346, 0.575210, -0.584425,
		0.803158, 0.249477, -0.541016,
		26.595190, 31.202579, 30.028654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900196, 31.142302, 29.669048>,  <26.032978, 31.027946, 30.407364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900196, 31.142302, 29.669048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270840, 31.004023, 29.728231>,  <26.493225, 30.921055, 29.763741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270840, 31.004023, 29.728231>,  <25.900196, 31.142302, 29.669048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270840, 31.004023, 29.728231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254610, -0.866351, -0.429662,
		0.276714, 0.360457, -0.890786,
		0.926608, -0.345697, 0.147956,
		26.548822, 30.900314, 29.772617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230419, 30.854881, 29.100548>,  <25.900196, 31.142302, 29.669048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230419, 30.854881, 29.100548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334618, 30.672739, 29.441088>,  <26.397137, 30.563454, 29.645411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334618, 30.672739, 29.441088>,  <26.230419, 30.854881, 29.100548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334618, 30.672739, 29.441088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180959, -0.889192, -0.420227,
		0.948365, -0.044591, -0.314032,
		0.260496, -0.455355, 0.851348,
		26.412767, 30.536133, 29.696491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552736, 30.368563, 28.855875>,  <26.230419, 30.854881, 29.100548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552736, 30.368563, 28.855875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453133, 30.273945, 29.231544>,  <26.393372, 30.217175, 29.456945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453133, 30.273945, 29.231544>,  <26.552736, 30.368563, 28.855875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453133, 30.273945, 29.231544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079055, -0.961516, -0.263131,
		0.965270, -0.139768, 0.220725,
		-0.249007, -0.236543, 0.939171,
		26.378431, 30.202982, 29.513296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169024, 30.666994, 28.518839>,  <26.552736, 30.368563, 28.855875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169024, 30.666994, 28.518839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190435, 30.771196, 28.904434>,  <27.203283, 30.833717, 29.135792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190435, 30.771196, 28.904434>,  <27.169024, 30.666994, 28.518839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190435, 30.771196, 28.904434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096999, -0.959450, 0.264663,
		0.993844, -0.107673, -0.026090,
		0.053529, 0.260503, 0.963988,
		27.206493, 30.849348, 29.193630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611759, 30.129486, 28.811033>,  <27.169024, 30.666994, 28.518839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611759, 30.129486, 28.811033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336920, 30.299995, 29.046385>,  <27.172016, 30.402300, 29.187595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336920, 30.299995, 29.046385>,  <27.611759, 30.129486, 28.811033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336920, 30.299995, 29.046385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175252, -0.883132, 0.435160,
		0.705111, 0.195884, 0.681504,
		-0.687099, 0.426271, 0.588377,
		27.130791, 30.427877, 29.222898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580854, 29.280512, 28.825136>,  <27.611759, 30.129486, 28.811033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580854, 29.280512, 28.825136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428904, 28.942869, 28.976494>,  <27.337732, 28.740284, 29.067308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428904, 28.942869, 28.976494>,  <27.580854, 29.280512, 28.825136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428904, 28.942869, 28.976494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323090, 0.504367, 0.800766,
		-0.866779, 0.181939, -0.464320,
		-0.379878, -0.844105, 0.378392,
		27.314939, 28.689638, 29.090012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804096, 29.701880, 29.493313>,  <27.580854, 29.280512, 28.825136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804096, 29.701880, 29.493313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126310, 29.775169, 29.267908>,  <28.319639, 29.819143, 29.132666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126310, 29.775169, 29.267908>,  <27.804096, 29.701880, 29.493313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126310, 29.775169, 29.267908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468968, 0.384158, 0.795293,
		0.362189, -0.904905, 0.223530,
		0.805536, 0.183218, -0.563509,
		28.367970, 29.830137, 29.098854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478785, 29.484394, 29.799694>,  <27.804096, 29.701880, 29.493313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478785, 29.484394, 29.799694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629719, 29.720362, 29.514145>,  <28.720280, 29.861942, 29.342815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629719, 29.720362, 29.514145>,  <28.478785, 29.484394, 29.799694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629719, 29.720362, 29.514145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473957, 0.539236, 0.696125,
		0.795603, -0.601016, -0.076124,
		0.377334, 0.589919, -0.713873,
		28.742918, 29.897337, 29.299982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295589, 29.587507, 29.854435>,  <28.478785, 29.484394, 29.799694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295589, 29.587507, 29.854435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173790, 29.894726, 29.629087>,  <29.100710, 30.079058, 29.493877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173790, 29.894726, 29.629087>,  <29.295589, 29.587507, 29.854435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173790, 29.894726, 29.629087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661823, 0.595964, 0.454771,
		0.685034, -0.234376, -0.689780,
		-0.304497, 0.768046, -0.563371,
		29.082441, 30.125139, 29.460075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973648, 29.904713, 29.476580>,  <29.295589, 29.587507, 29.854435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973648, 29.904713, 29.476580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702282, 30.197857, 29.455936>,  <29.539461, 30.373743, 29.443550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702282, 30.197857, 29.455936>,  <29.973648, 29.904713, 29.476580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702282, 30.197857, 29.455936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579617, 0.577075, 0.575351,
		0.451436, 0.360414, -0.816276,
		-0.678417, 0.732862, -0.051610,
		29.498756, 30.417715, 29.440453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296684, 30.551311, 29.263521>,  <29.973648, 29.904713, 29.476580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296684, 30.551311, 29.263521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956570, 30.696619, 29.415861>,  <29.752501, 30.783804, 29.507265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956570, 30.696619, 29.415861>,  <30.296684, 30.551311, 29.263521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956570, 30.696619, 29.415861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526225, 0.573059, 0.628243,
		0.009971, 0.734601, -0.678426,
		-0.850287, 0.363269, 0.380852,
		29.701483, 30.805599, 29.530117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431940, 31.211149, 29.262943>,  <30.296684, 30.551311, 29.263521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431940, 31.211149, 29.262943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152977, 31.112206, 29.531996>,  <29.985600, 31.052839, 29.693428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152977, 31.112206, 29.531996>,  <30.431940, 31.211149, 29.262943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152977, 31.112206, 29.531996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411383, 0.630352, 0.658347,
		-0.586842, 0.735847, -0.337855,
		-0.697410, -0.247358, 0.672632,
		29.943754, 31.037998, 29.733786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312338, 31.841221, 29.720684>,  <30.431940, 31.211149, 29.262943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312338, 31.841221, 29.720684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127020, 31.565376, 29.943321>,  <30.015829, 31.399870, 30.076904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127020, 31.565376, 29.943321>,  <30.312338, 31.841221, 29.720684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127020, 31.565376, 29.943321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247339, 0.502485, 0.828452,
		-0.850988, 0.521485, -0.062231,
		-0.463295, -0.689610, 0.556592,
		29.988031, 31.358494, 30.110298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851221, 32.247097, 30.254442>,  <30.312338, 31.841221, 29.720684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851221, 32.247097, 30.254442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935783, 31.873795, 30.370611>,  <29.986521, 31.649815, 30.440313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935783, 31.873795, 30.370611>,  <29.851221, 32.247097, 30.254442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935783, 31.873795, 30.370611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328882, 0.347737, 0.878018,
		-0.920404, -0.090103, 0.380444,
		0.211407, -0.933253, 0.290425,
		29.999205, 31.593819, 30.457739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386890, 32.111401, 30.754263>,  <29.851221, 32.247097, 30.254442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386890, 32.111401, 30.754263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692703, 31.856655, 30.794062>,  <29.876190, 31.703808, 30.817942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692703, 31.856655, 30.794062>,  <29.386890, 32.111401, 30.754263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692703, 31.856655, 30.794062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170082, 0.348199, 0.921862,
		-0.621743, -0.687869, 0.374528,
		0.764531, -0.636862, 0.099497,
		29.922062, 31.665596, 30.823910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200609, 31.727720, 31.316469>,  <29.386890, 32.111401, 30.754263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200609, 31.727720, 31.316469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598490, 31.701370, 31.284899>,  <29.837217, 31.685560, 31.265957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598490, 31.701370, 31.284899>,  <29.200609, 31.727720, 31.316469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598490, 31.701370, 31.284899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097484, 0.360669, 0.927585,
		-0.032640, -0.930365, 0.365180,
		0.994702, -0.065875, -0.078924,
		29.896900, 31.681608, 31.261221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382023, 31.498663, 31.974281>,  <29.200609, 31.727720, 31.316469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382023, 31.498663, 31.974281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724733, 31.620163, 31.807589>,  <29.930361, 31.693064, 31.707573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724733, 31.620163, 31.807589>,  <29.382023, 31.498663, 31.974281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724733, 31.620163, 31.807589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254871, 0.453096, 0.854251,
		0.448285, -0.838122, 0.310792,
		0.856785, 0.303736, -0.416729,
		29.981768, 31.711288, 31.682570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847910, 31.229284, 32.403175>,  <29.382023, 31.498663, 31.974281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847910, 31.229284, 32.403175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036934, 31.522207, 32.207047>,  <30.150349, 31.697962, 32.089371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036934, 31.522207, 32.207047>,  <29.847910, 31.229284, 32.403175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036934, 31.522207, 32.207047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359415, 0.347853, 0.865921,
		0.804680, -0.585427, -0.098821,
		0.472558, 0.732307, -0.490321,
		30.178701, 31.741899, 32.059952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603155, 31.327353, 32.659996>,  <29.847910, 31.229284, 32.403175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603155, 31.327353, 32.659996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495743, 31.681402, 32.507969>,  <30.431295, 31.893831, 32.416752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495743, 31.681402, 32.507969>,  <30.603155, 31.327353, 32.659996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495743, 31.681402, 32.507969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362366, 0.458396, 0.811519,
		0.892515, 0.080195, -0.443831,
		-0.268530, 0.885122, -0.380066,
		30.415184, 31.946939, 32.393948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169523, 31.740200, 32.634518>,  <30.603155, 31.327353, 32.659996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169523, 31.740200, 32.634518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880827, 32.014996, 32.600727>,  <30.707609, 32.179874, 32.580452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880827, 32.014996, 32.600727>,  <31.169523, 31.740200, 32.634518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880827, 32.014996, 32.600727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407264, 0.520180, 0.750699,
		0.559667, 0.507404, -0.655221,
		-0.721740, 0.686989, -0.084480,
		30.664305, 32.221092, 32.575382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557402, 32.384354, 32.660877>,  <31.169523, 31.740200, 32.634518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557402, 32.384354, 32.660877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177870, 32.483917, 32.738613>,  <30.950151, 32.543655, 32.785255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177870, 32.483917, 32.738613>,  <31.557402, 32.384354, 32.660877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177870, 32.483917, 32.738613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303804, 0.551536, 0.776860,
		0.086180, 0.796149, -0.598932,
		-0.948829, 0.248907, 0.194342,
		30.893221, 32.558590, 32.796917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547997, 33.083214, 32.764854>,  <31.557402, 32.384354, 32.660877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547997, 33.083214, 32.764854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205940, 32.965973, 32.935886>,  <31.000708, 32.895626, 33.038506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205940, 32.965973, 32.935886>,  <31.547997, 33.083214, 32.764854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205940, 32.965973, 32.935886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131199, 0.675596, 0.725505,
		-0.501523, 0.676505, -0.539273,
		-0.855138, -0.293105, 0.427584,
		30.949398, 32.878040, 33.064163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222168, 33.730759, 32.943462>,  <31.547997, 33.083214, 32.764854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222168, 33.730759, 32.943462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050684, 33.438660, 33.156231>,  <30.947794, 33.263401, 33.283894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050684, 33.438660, 33.156231>,  <31.222168, 33.730759, 32.943462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050684, 33.438660, 33.156231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289415, 0.446736, 0.846561,
		-0.855831, 0.516875, 0.019826,
		-0.428710, -0.730251, 0.531922,
		30.922071, 33.219585, 33.315807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787792, 34.107090, 33.453384>,  <31.222168, 33.730759, 32.943462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787792, 34.107090, 33.453384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845619, 33.731655, 33.578697>,  <30.880316, 33.506393, 33.653885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845619, 33.731655, 33.578697>,  <30.787792, 34.107090, 33.453384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845619, 33.731655, 33.578697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192734, 0.337255, 0.921473,
		-0.970543, -0.072837, 0.229655,
		0.144569, -0.938591, 0.313282,
		30.888990, 33.450077, 33.672684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491154, 34.059502, 34.114956>,  <30.787792, 34.107090, 33.453384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491154, 34.059502, 34.114956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699104, 33.718189, 34.131130>,  <30.823875, 33.513401, 34.140835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699104, 33.718189, 34.131130>,  <30.491154, 34.059502, 34.114956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699104, 33.718189, 34.131130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326112, 0.241993, 0.913833,
		-0.789542, -0.461896, 0.404073,
		0.519879, -0.853283, 0.040434,
		30.855068, 33.462204, 34.143261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234083, 33.657734, 34.706013>,  <30.491154, 34.059502, 34.114956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234083, 33.657734, 34.706013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610344, 33.545162, 34.630146>,  <30.836100, 33.477619, 34.584625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610344, 33.545162, 34.630146>,  <30.234083, 33.657734, 34.706013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610344, 33.545162, 34.630146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221285, 0.084877, 0.971509,
		-0.257311, -0.955821, 0.142115,
		0.940651, -0.281428, -0.189669,
		30.892540, 33.460735, 34.573246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454178, 33.100521, 35.232319>,  <30.234083, 33.657734, 34.706013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454178, 33.100521, 35.232319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797430, 33.231415, 35.074062>,  <31.003382, 33.309952, 34.979107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797430, 33.231415, 35.074062>,  <30.454178, 33.100521, 35.232319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797430, 33.231415, 35.074062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366886, 0.148246, 0.918378,
		0.359178, -0.933242, 0.007156,
		0.858130, 0.327235, -0.395640,
		31.054869, 33.329586, 34.955372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971924, 32.958973, 35.762520>,  <30.454178, 33.100521, 35.232319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971924, 32.958973, 35.762520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153099, 33.212555, 35.511776>,  <31.261805, 33.364704, 35.361332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153099, 33.212555, 35.511776>,  <30.971924, 32.958973, 35.762520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153099, 33.212555, 35.511776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630974, 0.268794, 0.727751,
		0.629857, -0.725155, -0.278263,
		0.452937, 0.633956, -0.626856,
		31.288980, 33.402740, 35.323719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639343, 32.944489, 35.957912>,  <30.971924, 32.958973, 35.762520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639343, 32.944489, 35.957912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599365, 33.289612, 35.759693>,  <31.575378, 33.496685, 35.640762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599365, 33.289612, 35.759693>,  <31.639343, 32.944489, 35.957912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599365, 33.289612, 35.759693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614698, 0.445175, 0.651126,
		0.782405, -0.239534, -0.574862,
		-0.099947, 0.862811, -0.495548,
		31.569382, 33.548454, 35.611027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377842, 33.321857, 35.847664>,  <31.639343, 32.944489, 35.957912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377842, 33.321857, 35.847664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110722, 33.619457, 35.838623>,  <31.950449, 33.798016, 35.833199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110722, 33.619457, 35.838623>,  <32.377842, 33.321857, 35.847664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110722, 33.619457, 35.838623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549379, 0.513143, 0.659445,
		0.502223, 0.427961, -0.751413,
		-0.667799, 0.743999, -0.022600,
		31.910381, 33.842655, 35.831844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283333, 32.570492, 35.782173>,  <32.377842, 33.321857, 35.847664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283333, 32.570492, 35.782173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678131, 32.616619, 35.737389>,  <32.915012, 32.644295, 35.710518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678131, 32.616619, 35.737389>,  <32.283333, 32.570492, 35.782173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678131, 32.616619, 35.737389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097800, -0.983678, -0.151038,
		-0.127550, 0.138125, -0.982167,
		0.986999, 0.115321, -0.111959,
		32.974232, 32.651215, 35.703800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716301, 32.199074, 36.266304>,  <32.283333, 32.570492, 35.782173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716301, 32.199074, 36.266304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503883, 31.882950, 36.144066>,  <32.376431, 31.693274, 36.070721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503883, 31.882950, 36.144066>,  <32.716301, 32.199074, 36.266304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503883, 31.882950, 36.144066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364497, -0.112517, 0.924382,
		-0.764938, 0.602281, -0.228315,
		-0.531049, -0.790314, -0.305598,
		32.344570, 31.645855, 36.052387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515785, 32.272564, 36.468922>,  <32.716301, 32.199074, 36.266304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515785, 32.272564, 36.468922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878590, 32.277725, 36.637283>,  <34.096272, 32.280823, 36.738300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878590, 32.277725, 36.637283>,  <33.515785, 32.272564, 36.468922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878590, 32.277725, 36.637283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335874, 0.580720, -0.741588,
		-0.253998, 0.814001, 0.522386,
		0.907013, 0.012906, 0.420904,
		34.150692, 32.281597, 36.763554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739826, 32.943687, 36.484314>,  <33.515785, 32.272564, 36.468922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739826, 32.943687, 36.484314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042305, 32.681957, 36.482258>,  <34.223793, 32.524918, 36.481026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042305, 32.681957, 36.482258>,  <33.739826, 32.943687, 36.484314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042305, 32.681957, 36.482258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444660, 0.519613, -0.729575,
		0.480051, 0.549416, 0.683881,
		0.756194, -0.654327, -0.005137,
		34.269165, 32.485661, 36.480717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389053, 33.248943, 36.418678>,  <33.739826, 32.943687, 36.484314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389053, 33.248943, 36.418678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492317, 32.874825, 36.321873>,  <34.554276, 32.650352, 36.263790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492317, 32.874825, 36.321873>,  <34.389053, 33.248943, 36.418678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492317, 32.874825, 36.321873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694384, 0.353802, -0.626621,
		0.671703, -0.006282, 0.740794,
		0.258158, -0.935299, -0.242012,
		34.569763, 32.594234, 36.249268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101887, 33.022141, 36.579926>,  <34.389053, 33.248943, 36.418678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101887, 33.022141, 36.579926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910072, 32.869091, 36.264042>,  <34.794983, 32.777260, 36.074512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910072, 32.869091, 36.264042>,  <35.101887, 33.022141, 36.579926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910072, 32.869091, 36.264042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619748, 0.489455, -0.613471,
		0.621258, -0.783602, 0.002422,
		-0.479532, -0.382625, -0.789713,
		34.766212, 32.754303, 36.027126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556908, 32.706566, 36.057953>,  <35.101887, 33.022141, 36.579926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556908, 32.706566, 36.057953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220383, 32.852795, 35.898682>,  <35.018467, 32.940533, 35.803120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220383, 32.852795, 35.898682>,  <35.556908, 32.706566, 36.057953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220383, 32.852795, 35.898682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540141, 0.597145, -0.593014,
		0.020983, -0.713985, -0.699846,
		-0.841313, 0.365572, -0.398182,
		34.967987, 32.962467, 35.779228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941628, 32.150612, 36.320454>,  <35.556908, 32.706566, 36.057953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941628, 32.150612, 36.320454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308113, 32.310360, 36.307404>,  <36.528004, 32.406208, 36.299572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308113, 32.310360, 36.307404>,  <35.941628, 32.150612, 36.320454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308113, 32.310360, 36.307404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012119, 0.109002, 0.993968,
		0.400515, -0.910288, 0.104708,
		0.916210, 0.399368, -0.032625,
		36.582977, 32.430168, 36.297615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294624, 31.979702, 37.017288>,  <35.941628, 32.150612, 36.320454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294624, 31.979702, 37.017288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499233, 32.284245, 36.857948>,  <36.621998, 32.466972, 36.762344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499233, 32.284245, 36.857948>,  <36.294624, 31.979702, 37.017288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499233, 32.284245, 36.857948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114815, 0.398869, 0.909792,
		0.851566, -0.511113, 0.116614,
		0.511520, 0.761359, -0.398347,
		36.652691, 32.512653, 36.738445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076984, 31.940447, 37.277397>,  <36.294624, 31.979702, 37.017288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076984, 31.940447, 37.277397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974045, 32.311508, 37.169151>,  <36.912281, 32.534145, 37.104206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974045, 32.311508, 37.169151>,  <37.076984, 31.940447, 37.277397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974045, 32.311508, 37.169151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316372, 0.345493, 0.883484,
		0.913061, 0.141750, -0.382396,
		-0.257349, 0.927654, -0.270610,
		36.896839, 32.589806, 37.087967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534794, 32.356438, 37.598072>,  <37.076984, 31.940447, 37.277397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534794, 32.356438, 37.598072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252857, 32.622120, 37.498447>,  <37.083694, 32.781528, 37.438671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252857, 32.622120, 37.498447>,  <37.534794, 32.356438, 37.598072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252857, 32.622120, 37.498447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108341, 0.447786, 0.887553,
		0.701046, 0.598597, -0.387577,
		-0.704838, 0.664206, -0.249066,
		37.041405, 32.821381, 37.423729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794373, 32.879986, 37.969913>,  <37.534794, 32.356438, 37.598072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794373, 32.879986, 37.969913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406841, 32.956081, 37.906448>,  <37.174320, 33.001740, 37.868370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406841, 32.956081, 37.906448>,  <37.794373, 32.879986, 37.969913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406841, 32.956081, 37.906448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054090, 0.462596, 0.884917,
		0.241742, 0.865918, -0.437888,
		-0.968832, 0.190236, -0.158666,
		37.116192, 33.013153, 37.858849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744656, 33.593956, 38.082649>,  <37.794373, 32.879986, 37.969913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744656, 33.593956, 38.082649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375252, 33.445091, 38.119793>,  <37.153610, 33.355774, 38.142078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375252, 33.445091, 38.119793>,  <37.744656, 33.593956, 38.082649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375252, 33.445091, 38.119793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059686, 0.378561, 0.923650,
		-0.378899, 0.847459, -0.371818,
		-0.923511, -0.372163, 0.092855,
		37.098198, 33.333443, 38.147648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438301, 34.134655, 38.397564>,  <37.744656, 33.593956, 38.082649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438301, 34.134655, 38.397564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220062, 33.808743, 38.476006>,  <37.089119, 33.613197, 38.523071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220062, 33.808743, 38.476006>,  <37.438301, 34.134655, 38.397564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220062, 33.808743, 38.476006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015546, 0.224125, 0.974437,
		-0.837903, 0.534699, -0.109615,
		-0.545598, -0.814779, 0.196107,
		37.056381, 33.564308, 38.534840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959991, 34.378845, 38.888439>,  <37.438301, 34.134655, 38.397564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959991, 34.378845, 38.888439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960804, 33.981262, 38.932335>,  <36.961292, 33.742714, 38.958672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960804, 33.981262, 38.932335>,  <36.959991, 34.378845, 38.888439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960804, 33.981262, 38.932335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036819, 0.109740, 0.993278,
		-0.999320, 0.002020, 0.036819,
		0.002034, -0.993958, 0.109739,
		36.961414, 33.683075, 38.965256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424744, 34.230732, 39.335438>,  <36.959991, 34.378845, 38.888439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424744, 34.230732, 39.335438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656418, 33.905128, 39.353065>,  <36.795422, 33.709766, 39.363640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656418, 33.905128, 39.353065>,  <36.424744, 34.230732, 39.335438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656418, 33.905128, 39.353065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174540, -0.071023, 0.982085,
		-0.796292, -0.576501, -0.183212,
		0.579185, -0.814004, 0.044068,
		36.830173, 33.660927, 39.366287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011665, 33.783611, 39.638988>,  <36.424744, 34.230732, 39.335438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011665, 33.783611, 39.638988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386719, 33.655895, 39.693974>,  <36.611752, 33.579266, 39.726963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386719, 33.655895, 39.693974>,  <36.011665, 33.783611, 39.638988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386719, 33.655895, 39.693974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146123, -0.003203, 0.989261,
		-0.315423, -0.947651, -0.049659,
		0.937634, -0.319292, 0.137464,
		36.668011, 33.560108, 39.735214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995556, 33.173065, 39.980370>,  <36.011665, 33.783611, 39.638988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995556, 33.173065, 39.980370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341240, 33.361588, 40.050816>,  <36.548649, 33.474701, 40.093082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341240, 33.361588, 40.050816>,  <35.995556, 33.173065, 39.980370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341240, 33.361588, 40.050816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133451, -0.122774, 0.983421,
		0.485115, -0.873382, -0.043206,
		0.864207, 0.471306, 0.176113,
		36.600502, 33.502979, 40.103649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251690, 32.765377, 40.525074>,  <35.995556, 33.173065, 39.980370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251690, 32.765377, 40.525074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473866, 33.097771, 40.512661>,  <36.607170, 33.297207, 40.505211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473866, 33.097771, 40.512661>,  <36.251690, 32.765377, 40.525074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473866, 33.097771, 40.512661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000546, 0.037687, 0.999289,
		0.831560, -0.555023, 0.021387,
		0.555435, 0.830980, -0.031036,
		36.640495, 33.347065, 40.503349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797943, 32.727676, 41.032330>,  <36.251690, 32.765377, 40.525074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797943, 32.727676, 41.032330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768627, 33.119278, 40.956245>,  <36.751038, 33.354240, 40.910595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768627, 33.119278, 40.956245>,  <36.797943, 32.727676, 41.032330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768627, 33.119278, 40.956245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046029, 0.187200, 0.981243,
		0.996248, 0.080667, 0.031343,
		-0.073286, 0.979004, -0.190211,
		36.746643, 33.412979, 40.899181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373840, 33.032913, 41.307102>,  <36.797943, 32.727676, 41.032330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373840, 33.032913, 41.307102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099003, 33.323330, 41.296097>,  <36.934101, 33.497581, 41.289494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099003, 33.323330, 41.296097>,  <37.373840, 33.032913, 41.307102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099003, 33.323330, 41.296097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008497, 0.029836, 0.999519,
		0.726515, 0.687001, -0.014331,
		-0.687098, 0.726044, -0.027514,
		36.892872, 33.541142, 41.287842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492752, 33.567715, 41.843021>,  <37.373840, 33.032913, 41.307102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492752, 33.567715, 41.843021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106770, 33.629082, 41.757870>,  <36.875179, 33.665901, 41.706779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106770, 33.629082, 41.757870>,  <37.492752, 33.567715, 41.843021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106770, 33.629082, 41.757870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189482, 0.153809, 0.969762,
		0.181519, 0.976118, -0.119350,
		-0.964960, 0.153415, -0.212876,
		36.817280, 33.675106, 41.694008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296215, 33.746929, 42.468128>,  <37.492752, 33.567715, 41.843021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296215, 33.746929, 42.468128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949688, 33.741573, 42.268402>,  <36.741772, 33.738361, 42.148567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949688, 33.741573, 42.268402>,  <37.296215, 33.746929, 42.468128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949688, 33.741573, 42.268402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495961, 0.141770, 0.856694,
		0.059316, 0.989809, -0.129459,
		-0.866317, -0.013391, -0.499316,
		36.689793, 33.737556, 42.118607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929981, 34.273621, 42.515152>,  <37.296215, 33.746929, 42.468128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929981, 34.273621, 42.515152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624001, 34.034340, 42.419643>,  <36.440414, 33.890770, 42.362339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624001, 34.034340, 42.419643>,  <36.929981, 34.273621, 42.515152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624001, 34.034340, 42.419643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431849, 0.201295, 0.879197,
		-0.477872, 0.775652, -0.412312,
		-0.764947, -0.598201, -0.238772,
		36.394516, 33.854881, 42.348011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304108, 34.625092, 42.666943>,  <36.929981, 34.273621, 42.515152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304108, 34.625092, 42.666943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246574, 34.229279, 42.671665>,  <36.212055, 33.991791, 42.674500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246574, 34.229279, 42.671665>,  <36.304108, 34.625092, 42.666943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246574, 34.229279, 42.671665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402091, 0.069342, 0.912970,
		-0.904231, 0.126569, -0.407856,
		-0.143836, -0.989531, 0.011809,
		36.203423, 33.932419, 42.675209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648232, 34.520855, 42.909225>,  <36.304108, 34.625092, 42.666943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648232, 34.520855, 42.909225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810482, 34.162750, 42.982952>,  <35.907833, 33.947887, 43.027187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810482, 34.162750, 42.982952>,  <35.648232, 34.520855, 42.909225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810482, 34.162750, 42.982952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389455, 0.013146, 0.920951,
		-0.826916, -0.445345, -0.343332,
		0.405628, -0.895263, 0.184312,
		35.932171, 33.894173, 43.038246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166740, 34.237953, 43.386894>,  <35.648232, 34.520855, 42.909225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166740, 34.237953, 43.386894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479279, 33.990528, 43.420082>,  <35.666801, 33.842072, 43.439995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479279, 33.990528, 43.420082>,  <35.166740, 34.237953, 43.386894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479279, 33.990528, 43.420082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308632, -0.267416, 0.912817,
		-0.542448, -0.738829, -0.399852,
		0.781342, -0.618563, 0.082967,
		35.713680, 33.804958, 43.444973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939297, 33.506416, 43.508446>,  <35.166740, 34.237953, 43.386894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939297, 33.506416, 43.508446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300484, 33.562733, 43.670837>,  <35.517197, 33.596523, 43.768272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300484, 33.562733, 43.670837>,  <34.939297, 33.506416, 43.508446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300484, 33.562733, 43.670837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382309, -0.168090, 0.908617,
		0.196168, -0.975665, -0.097954,
		0.902972, 0.140792, 0.405980,
		35.571377, 33.604969, 43.792633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972782, 33.059048, 43.990181>,  <34.939297, 33.506416, 43.508446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972782, 33.059048, 43.990181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260735, 33.321285, 44.081367>,  <35.433506, 33.478626, 44.136082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260735, 33.321285, 44.081367>,  <34.972782, 33.059048, 43.990181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260735, 33.321285, 44.081367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274643, -0.032592, 0.960994,
		0.637453, -0.754408, 0.156593,
		0.719878, 0.655596, 0.227968,
		35.476700, 33.517963, 44.149757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103775, 32.932354, 44.663074>,  <34.972782, 33.059048, 43.990181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103775, 32.932354, 44.663074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286518, 33.287739, 44.680531>,  <35.396164, 33.500969, 44.691006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286518, 33.287739, 44.680531>,  <35.103775, 32.932354, 44.663074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286518, 33.287739, 44.680531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119068, 0.012459, 0.992808,
		0.881533, -0.458772, 0.111480,
		0.456862, 0.888466, 0.043642,
		35.423576, 33.554279, 44.693623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541664, 32.956474, 45.255093>,  <35.103775, 32.932354, 44.663074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541664, 32.956474, 45.255093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494217, 33.346783, 45.181545>,  <35.465748, 33.580967, 45.137417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494217, 33.346783, 45.181545>,  <35.541664, 32.956474, 45.255093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494217, 33.346783, 45.181545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217651, 0.155117, 0.963621,
		0.968792, 0.154323, 0.193977,
		-0.118620, 0.975768, -0.183865,
		35.458630, 33.639515, 45.126385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922009, 33.315456, 45.792328>,  <35.541664, 32.956474, 45.255093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922009, 33.315456, 45.792328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659691, 33.585381, 45.656940>,  <35.502300, 33.747337, 45.575706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659691, 33.585381, 45.656940>,  <35.922009, 33.315456, 45.792328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659691, 33.585381, 45.656940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215124, 0.262714, 0.940587,
		0.723640, 0.689644, -0.027118,
		-0.655794, 0.674813, -0.338469,
		35.462952, 33.787823, 45.555401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971985, 33.759033, 46.260155>,  <35.922009, 33.315456, 45.792328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971985, 33.759033, 46.260155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633385, 33.879215, 46.084351>,  <35.430225, 33.951324, 45.978867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633385, 33.879215, 46.084351>,  <35.971985, 33.759033, 46.260155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633385, 33.879215, 46.084351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311811, 0.389345, 0.866709,
		0.431526, 0.870712, -0.235896,
		-0.846498, 0.300452, -0.439510,
		35.379436, 33.969353, 45.952499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847172, 34.415920, 46.437557>,  <35.971985, 33.759033, 46.260155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847172, 34.415920, 46.437557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474758, 34.293171, 46.358566>,  <35.251308, 34.219521, 46.311172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474758, 34.293171, 46.358566>,  <35.847172, 34.415920, 46.437557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474758, 34.293171, 46.358566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310175, 0.380387, 0.871262,
		-0.192247, 0.872431, -0.449338,
		-0.931038, -0.306871, -0.197478,
		35.195446, 34.201111, 46.299324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375206, 34.962887, 46.856823>,  <35.847172, 34.415920, 46.437557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375206, 34.962887, 46.856823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110752, 34.683437, 46.747406>,  <34.952080, 34.515770, 46.681755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110752, 34.683437, 46.747406>,  <35.375206, 34.962887, 46.856823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110752, 34.683437, 46.747406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535843, 0.184496, 0.823913,
		-0.525135, 0.691297, -0.496328,
		-0.661139, -0.698620, -0.273541,
		34.912411, 34.473850, 46.665344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680050, 35.287849, 46.788719>,  <35.375206, 34.962887, 46.856823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680050, 35.287849, 46.788719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651604, 34.895176, 46.859425>,  <34.634537, 34.659573, 46.901848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651604, 34.895176, 46.859425>,  <34.680050, 35.287849, 46.788719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651604, 34.895176, 46.859425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588993, 0.184341, 0.786832,
		-0.805003, -0.048157, -0.591313,
		-0.071112, -0.981682, 0.176759,
		34.630272, 34.600670, 46.912453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963520, 35.266441, 46.953781>,  <34.680050, 35.287849, 46.788719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963520, 35.266441, 46.953781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150593, 34.948357, 47.108139>,  <34.262836, 34.757507, 47.200752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150593, 34.948357, 47.108139>,  <33.963520, 35.266441, 46.953781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150593, 34.948357, 47.108139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489387, 0.130594, 0.862233,
		-0.736054, -0.592100, -0.328090,
		0.467681, -0.795213, 0.385890,
		34.290897, 34.709793, 47.223907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515308, 35.053341, 47.415340>,  <33.963520, 35.266441, 46.953781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515308, 35.053341, 47.415340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825626, 34.823475, 47.519573>,  <34.011818, 34.685555, 47.582115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825626, 34.823475, 47.519573>,  <33.515308, 35.053341, 47.415340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825626, 34.823475, 47.519573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273022, 0.066601, 0.959700,
		-0.568857, -0.815677, -0.105226,
		0.775796, -0.574661, 0.260584,
		34.058365, 34.651077, 47.597748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264835, 34.740932, 48.000324>,  <33.515308, 35.053341, 47.415340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264835, 34.740932, 48.000324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663616, 34.727875, 48.028645>,  <33.902885, 34.720039, 48.045635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663616, 34.727875, 48.028645>,  <33.264835, 34.740932, 48.000324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663616, 34.727875, 48.028645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068130, 0.076739, 0.994721,
		-0.037910, -0.996517, 0.074281,
		0.996956, -0.032649, 0.070802,
		33.962704, 34.718082, 48.049885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420307, 34.214607, 48.433525>,  <33.264835, 34.740932, 48.000324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420307, 34.214607, 48.433525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722282, 34.474945, 48.465706>,  <33.903465, 34.631149, 48.485016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722282, 34.474945, 48.465706>,  <33.420307, 34.214607, 48.433525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722282, 34.474945, 48.465706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207490, 0.120674, 0.970765,
		0.622112, -0.749556, 0.226145,
		0.754934, 0.650848, 0.080452,
		33.948761, 34.670200, 48.489841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742260, 34.033089, 49.054424>,  <33.420307, 34.214607, 48.433525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742260, 34.033089, 49.054424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895287, 34.392467, 48.968227>,  <33.987103, 34.608093, 48.916512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895287, 34.392467, 48.968227>,  <33.742260, 34.033089, 49.054424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895287, 34.392467, 48.968227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045175, 0.251141, 0.966896,
		0.922824, -0.360165, 0.136665,
		0.382564, 0.898449, -0.215489,
		34.010056, 34.662003, 48.903580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326721, 34.051376, 49.471779>,  <33.742260, 34.033089, 49.054424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326721, 34.051376, 49.471779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215233, 34.423668, 49.377075>,  <34.148342, 34.647045, 49.320255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215233, 34.423668, 49.377075>,  <34.326721, 34.051376, 49.471779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215233, 34.423668, 49.377075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004640, 0.247826, 0.968794,
		0.960362, 0.268921, -0.073392,
		-0.278717, 0.930733, -0.236755,
		34.131618, 34.702888, 49.306049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810612, 34.463089, 49.868526>,  <34.326721, 34.051376, 49.471779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810612, 34.463089, 49.868526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484940, 34.678818, 49.782513>,  <34.289536, 34.808254, 49.730904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484940, 34.678818, 49.782513>,  <34.810612, 34.463089, 49.868526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484940, 34.678818, 49.782513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078694, 0.264436, 0.961187,
		0.575252, 0.799503, -0.172858,
		-0.814182, 0.539322, -0.215034,
		34.240685, 34.840614, 49.718002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041306, 35.058826, 50.295307>,  <34.810612, 34.463089, 49.868526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041306, 35.058826, 50.295307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651409, 35.065361, 50.206207>,  <34.417473, 35.069283, 50.152748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651409, 35.065361, 50.206207>,  <35.041306, 35.058826, 50.295307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651409, 35.065361, 50.206207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216468, 0.176484, 0.960206,
		0.054994, 0.984168, -0.168490,
		-0.974740, 0.016333, -0.222746,
		34.358986, 35.070259, 50.139385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748833, 35.731159, 50.564659>,  <35.041306, 35.058826, 50.295307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748833, 35.731159, 50.564659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424541, 35.501240, 50.520245>,  <34.229969, 35.363289, 50.493595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424541, 35.501240, 50.520245>,  <34.748833, 35.731159, 50.564659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424541, 35.501240, 50.520245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233563, 0.143653, 0.961672,
		-0.536819, 0.805585, -0.250715,
		-0.810724, -0.574801, -0.111039,
		34.181324, 35.328800, 50.486935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050327, 36.072742, 50.834515>,  <34.748833, 35.731159, 50.564659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050327, 36.072742, 50.834515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012047, 35.675568, 50.862537>,  <33.989079, 35.437263, 50.879353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012047, 35.675568, 50.862537>,  <34.050327, 36.072742, 50.834515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012047, 35.675568, 50.862537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282920, 0.094610, 0.954466,
		-0.954357, 0.071527, -0.289977,
		-0.095705, -0.992942, 0.070056,
		33.983334, 35.377686, 50.883553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529823, 36.099236, 51.194893>,  <34.050327, 36.072742, 50.834515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529823, 36.099236, 51.194893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674496, 35.729225, 51.241394>,  <33.761299, 35.507217, 51.269295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674496, 35.729225, 51.241394>,  <33.529823, 36.099236, 51.194893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674496, 35.729225, 51.241394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395853, -0.039474, 0.917465,
		-0.844089, -0.377851, -0.380451,
		0.361683, -0.925025, 0.116254,
		33.783001, 35.451717, 51.276272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922935, 35.638733, 51.376766>,  <33.529823, 36.099236, 51.194893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922935, 35.638733, 51.376766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254871, 35.468742, 51.521408>,  <33.454033, 35.366749, 51.608192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254871, 35.468742, 51.521408>,  <32.922935, 35.638733, 51.376766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254871, 35.468742, 51.521408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472066, -0.189162, 0.861029,
		-0.297513, -0.885221, -0.357590,
		0.829843, -0.424973, 0.361605,
		33.503826, 35.341251, 51.629890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704071, 35.634991, 52.050907>,  <32.922935, 35.638733, 51.376766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704071, 35.634991, 52.050907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098633, 35.570057, 52.061073>,  <33.335369, 35.531097, 52.067173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098633, 35.570057, 52.061073>,  <32.704071, 35.634991, 52.050907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098633, 35.570057, 52.061073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071488, -0.284757, 0.955930,
		-0.147943, -0.944755, -0.292492,
		0.986409, -0.162333, 0.025411,
		33.394554, 35.521358, 52.068695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769039, 34.938480, 52.300884>,  <32.704071, 35.634991, 52.050907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769039, 34.938480, 52.300884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048717, 35.212345, 52.383205>,  <33.216526, 35.376663, 52.432598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048717, 35.212345, 52.383205>,  <32.769039, 34.938480, 52.300884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048717, 35.212345, 52.383205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099749, -0.191630, 0.976385,
		0.707934, -0.703217, -0.065693,
		0.699199, 0.684664, 0.205806,
		33.258476, 35.417744, 52.444946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188305, 34.664742, 52.740089>,  <32.769039, 34.938480, 52.300884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188305, 34.664742, 52.740089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252464, 35.055325, 52.797794>,  <33.290958, 35.289673, 52.832417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252464, 35.055325, 52.797794>,  <33.188305, 34.664742, 52.740089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252464, 35.055325, 52.797794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103931, -0.162052, 0.981294,
		0.981566, -0.142401, -0.127476,
		0.160395, 0.976454, 0.144265,
		33.300583, 35.348259, 52.841072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934307, 34.721905, 52.846996>,  <33.188305, 34.664742, 52.740089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934307, 34.721905, 52.846996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692928, 34.981400, 53.032467>,  <33.548100, 35.137096, 53.143749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692928, 34.981400, 53.032467>,  <33.934307, 34.721905, 52.846996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692928, 34.981400, 53.032467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410926, -0.245327, 0.878040,
		0.683368, 0.720385, -0.118542,
		-0.603446, 0.648737, 0.463674,
		33.511894, 35.176022, 53.171570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960999, 34.541859, 53.528374>,  <33.934307, 34.721905, 52.846996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960999, 34.541859, 53.528374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761215, 34.884731, 53.578632>,  <33.641346, 35.090454, 53.608788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761215, 34.884731, 53.578632>,  <33.960999, 34.541859, 53.528374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761215, 34.884731, 53.578632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062570, -0.108959, 0.992075,
		0.864076, 0.503362, 0.000787,
		-0.499458, 0.857179, 0.125644,
		33.611378, 35.141884, 53.616325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656712, 33.717701, 53.470432>,  <33.960999, 34.541859, 53.528374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656712, 33.717701, 53.470432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857639, 33.371834, 53.472630>,  <33.978195, 33.164314, 53.473949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857639, 33.371834, 53.472630>,  <33.656712, 33.717701, 53.470432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857639, 33.371834, 53.472630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658109, 0.378181, -0.651054,
		0.560867, 0.330651, 0.759011,
		0.502315, -0.864667, 0.005495,
		34.008335, 33.112434, 53.474277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439568, 33.874825, 53.372185>,  <33.656712, 33.717701, 53.470432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439568, 33.874825, 53.372185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392952, 33.503315, 53.231445>,  <34.364983, 33.280411, 53.146999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392952, 33.503315, 53.231445>,  <34.439568, 33.874825, 53.372185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392952, 33.503315, 53.231445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416787, 0.275827, -0.866145,
		0.901502, -0.247590, 0.354955,
		-0.116543, -0.928773, -0.351851,
		34.357990, 33.224682, 53.125889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110085, 33.584072, 53.144592>,  <34.439568, 33.874825, 53.372185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110085, 33.584072, 53.144592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810009, 33.390942, 52.963882>,  <34.629963, 33.275063, 52.855457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810009, 33.390942, 52.963882>,  <35.110085, 33.584072, 53.144592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810009, 33.390942, 52.963882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530885, -0.032499, -0.846820,
		0.394182, -0.875115, 0.280704,
		-0.750188, -0.482823, -0.451775,
		34.584953, 33.246094, 52.828350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321911, 32.866783, 52.885704>,  <35.110085, 33.584072, 53.144592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321911, 32.866783, 52.885704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032856, 33.053238, 52.681545>,  <34.859421, 33.165112, 52.559048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032856, 33.053238, 52.681545>,  <35.321911, 32.866783, 52.885704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032856, 33.053238, 52.681545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501322, -0.154925, -0.851279,
		-0.475886, -0.871042, -0.121730,
		-0.722641, 0.466137, -0.510399,
		34.816063, 33.193077, 52.528427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255856, 32.495178, 52.227814>,  <35.321911, 32.866783, 52.885704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255856, 32.495178, 52.227814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129295, 32.870747, 52.173683>,  <35.053360, 33.096088, 52.141205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129295, 32.870747, 52.173683>,  <35.255856, 32.495178, 52.227814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129295, 32.870747, 52.173683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488077, 0.038803, -0.871938,
		-0.813431, -0.341934, -0.470543,
		-0.316404, 0.938923, -0.135327,
		35.034374, 33.152424, 52.133083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949528, 32.425953, 51.626701>,  <35.255856, 32.495178, 52.227814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949528, 32.425953, 51.626701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034809, 32.814472, 51.668903>,  <35.085979, 33.047585, 51.694225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034809, 32.814472, 51.668903>,  <34.949528, 32.425953, 51.626701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034809, 32.814472, 51.668903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375094, 0.018341, -0.926805,
		-0.902135, 0.237175, -0.360416,
		0.213205, 0.971294, 0.105509,
		35.098770, 33.105862, 51.700558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805222, 32.727139, 50.959824>,  <34.949528, 32.425953, 51.626701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805222, 32.727139, 50.959824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031727, 33.002182, 51.141609>,  <35.167629, 33.167210, 51.250679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031727, 33.002182, 51.141609>,  <34.805222, 32.727139, 50.959824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031727, 33.002182, 51.141609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430489, 0.223460, -0.874497,
		-0.702869, 0.690836, -0.169472,
		0.566264, 0.687613, 0.454461,
		35.201607, 33.208466, 51.277946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833447, 33.465019, 50.539932>,  <34.805222, 32.727139, 50.959824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833447, 33.465019, 50.539932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169815, 33.460793, 50.756351>,  <35.371635, 33.458256, 50.886204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169815, 33.460793, 50.756351>,  <34.833447, 33.465019, 50.539932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169815, 33.460793, 50.756351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535326, 0.162592, -0.828848,
		-0.079216, 0.986637, 0.142381,
		0.840923, -0.010562, 0.541052,
		35.422092, 33.457623, 50.918667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142708, 34.001617, 50.276779>,  <34.833447, 33.465019, 50.539932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142708, 34.001617, 50.276779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439060, 33.772240, 50.416637>,  <35.616871, 33.634613, 50.500553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439060, 33.772240, 50.416637>,  <35.142708, 34.001617, 50.276779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439060, 33.772240, 50.416637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529654, 0.178747, -0.829166,
		0.412984, 0.799506, 0.436159,
		0.740885, -0.573445, 0.349641,
		35.661327, 33.600204, 50.521530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736755, 34.361557, 50.068367>,  <35.142708, 34.001617, 50.276779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736755, 34.361557, 50.068367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882492, 33.995934, 50.139633>,  <35.969936, 33.776558, 50.182392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882492, 33.995934, 50.139633>,  <35.736755, 34.361557, 50.068367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882492, 33.995934, 50.139633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573594, 0.069547, -0.816182,
		0.733651, 0.399567, 0.549639,
		0.364345, -0.914062, 0.178166,
		35.991795, 33.721714, 50.193085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405460, 34.446712, 49.800018>,  <35.736755, 34.361557, 50.068367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405460, 34.446712, 49.800018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345608, 34.052940, 49.836918>,  <36.309696, 33.816677, 49.859058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345608, 34.052940, 49.836918>,  <36.405460, 34.446712, 49.800018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345608, 34.052940, 49.836918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486372, -0.154515, -0.859981,
		0.860844, -0.083815, 0.501919,
		-0.149634, -0.984429, 0.092248,
		36.300716, 33.757610, 49.864594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051323, 34.108753, 49.666069>,  <36.405460, 34.446712, 49.800018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051323, 34.108753, 49.666069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766151, 33.833263, 49.613316>,  <36.595051, 33.667969, 49.581661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766151, 33.833263, 49.613316>,  <37.051323, 34.108753, 49.666069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766151, 33.833263, 49.613316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373338, -0.213580, -0.902775,
		0.593596, -0.692850, 0.409394,
		-0.712926, -0.688725, -0.131887,
		36.552273, 33.626644, 49.573750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493336, 33.617626, 49.394756>,  <37.051323, 34.108753, 49.666069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493336, 33.617626, 49.394756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117260, 33.498394, 49.328808>,  <36.891613, 33.426853, 49.289238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117260, 33.498394, 49.328808>,  <37.493336, 33.617626, 49.394756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117260, 33.498394, 49.328808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202620, -0.100296, -0.974108,
		0.273829, -0.949256, 0.154695,
		-0.940193, -0.298083, -0.164874,
		36.835201, 33.408970, 49.279346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583557, 33.023449, 49.179901>,  <37.493336, 33.617626, 49.394756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583557, 33.023449, 49.179901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222271, 33.141232, 49.054996>,  <37.005501, 33.211899, 48.980053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222271, 33.141232, 49.054996>,  <37.583557, 33.023449, 49.179901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222271, 33.141232, 49.054996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286904, -0.126893, -0.949518,
		-0.319212, -0.947204, 0.030131,
		-0.903211, 0.294453, -0.312263,
		36.951309, 33.229568, 48.961319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371765, 32.478062, 48.744823>,  <37.583557, 33.023449, 49.179901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371765, 32.478062, 48.744823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173107, 32.811993, 48.649822>,  <37.053913, 33.012352, 48.592819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173107, 32.811993, 48.649822>,  <37.371765, 32.478062, 48.744823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173107, 32.811993, 48.649822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200245, -0.156051, -0.967238,
		-0.844540, -0.527931, -0.089668,
		-0.496643, 0.834827, -0.237507,
		37.024113, 33.062439, 48.578571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041248, 32.321621, 48.146629>,  <37.371765, 32.478062, 48.744823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041248, 32.321621, 48.146629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018402, 32.720898, 48.139065>,  <37.004696, 32.960464, 48.134525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018402, 32.720898, 48.139065>,  <37.041248, 32.321621, 48.146629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018402, 32.720898, 48.139065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148675, -0.010225, -0.988833,
		-0.987235, -0.059286, -0.147822,
		-0.057113, 0.998189, -0.018909,
		37.001266, 33.020355, 48.133392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621223, 32.499538, 47.471050>,  <37.041248, 32.321621, 48.146629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621223, 32.499538, 47.471050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819256, 32.837864, 47.550541>,  <36.938076, 33.040859, 47.598236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819256, 32.837864, 47.550541>,  <36.621223, 32.499538, 47.471050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819256, 32.837864, 47.550541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366952, 0.003770, -0.930232,
		-0.787553, 0.533464, -0.308507,
		0.495082, 0.845815, 0.198724,
		36.967781, 33.091610, 47.610157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389652, 32.992516, 47.061535>,  <36.621223, 32.499538, 47.471050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389652, 32.992516, 47.061535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768589, 33.078514, 47.156464>,  <36.995953, 33.130112, 47.213421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768589, 33.078514, 47.156464>,  <36.389652, 32.992516, 47.061535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768589, 33.078514, 47.156464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247024, -0.019027, -0.968822,
		-0.203775, 0.976430, -0.071133,
		0.947341, 0.214993, 0.237325,
		37.052792, 33.143013, 47.227661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708160, 33.487209, 46.545605>,  <36.389652, 32.992516, 47.061535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708160, 33.487209, 46.545605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032204, 33.361103, 46.743324>,  <37.226631, 33.285439, 46.861958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032204, 33.361103, 46.743324>,  <36.708160, 33.487209, 46.545605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032204, 33.361103, 46.743324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524301, 0.012280, -0.851444,
		0.262364, 0.948923, 0.175244,
		0.810107, -0.315269, 0.494299,
		37.275234, 33.266521, 46.891613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171688, 33.837975, 46.247639>,  <36.708160, 33.487209, 46.545605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171688, 33.837975, 46.247639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359909, 33.530048, 46.420132>,  <37.472843, 33.345291, 46.523628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359909, 33.530048, 46.420132>,  <37.171688, 33.837975, 46.247639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359909, 33.530048, 46.420132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654687, -0.023064, -0.755548,
		0.591580, 0.637848, 0.493136,
		0.470551, -0.769817, 0.431235,
		37.501076, 33.299103, 46.549503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804958, 33.906460, 46.007980>,  <37.171688, 33.837975, 46.247639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804958, 33.906460, 46.007980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810303, 33.530231, 46.143715>,  <37.813511, 33.304493, 46.225155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810303, 33.530231, 46.143715>,  <37.804958, 33.906460, 46.007980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810303, 33.530231, 46.143715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585240, -0.267808, -0.765358,
		0.810750, 0.208819, 0.546882,
		0.013362, -0.940571, 0.339335,
		37.814312, 33.248058, 46.245514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484764, 33.678452, 45.807060>,  <37.804958, 33.906460, 46.007980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484764, 33.678452, 45.807060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256832, 33.355000, 45.865582>,  <38.120071, 33.160927, 45.900692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256832, 33.355000, 45.865582>,  <38.484764, 33.678452, 45.807060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256832, 33.355000, 45.865582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501547, -0.483258, -0.717574,
		0.650955, -0.335521, 0.680944,
		-0.569832, -0.808633, 0.146299,
		38.085884, 33.112408, 45.909470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982548, 33.135696, 45.737694>,  <38.484764, 33.678452, 45.807060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982548, 33.135696, 45.737694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619473, 32.982895, 45.668201>,  <38.401627, 32.891216, 45.626507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619473, 32.982895, 45.668201>,  <38.982548, 33.135696, 45.737694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619473, 32.982895, 45.668201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355483, -0.479898, -0.802078,
		0.223021, -0.789794, 0.571391,
		-0.907686, -0.382000, -0.173731,
		38.347168, 32.868294, 45.616081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131401, 32.511009, 45.472569>,  <38.982548, 33.135696, 45.737694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131401, 32.511009, 45.472569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749012, 32.547707, 45.361073>,  <38.519577, 32.569725, 45.294174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749012, 32.547707, 45.361073>,  <39.131401, 32.511009, 45.472569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749012, 32.547707, 45.361073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205185, -0.470099, -0.858432,
		-0.209788, -0.877833, 0.430579,
		-0.955975, 0.091740, -0.278739,
		38.462219, 32.575230, 45.277451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979366, 31.869356, 45.277721>,  <39.131401, 32.511009, 45.472569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979366, 31.869356, 45.277721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726833, 32.120850, 45.096119>,  <38.575314, 32.271748, 44.987160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726833, 32.120850, 45.096119>,  <38.979366, 31.869356, 45.277721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726833, 32.120850, 45.096119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184873, -0.446527, -0.875463,
		-0.753157, -0.636638, 0.165669,
		-0.631329, 0.628734, -0.454002,
		38.537434, 32.309471, 44.959919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547630, 31.432110, 44.863926>,  <38.979366, 31.869356, 45.277721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547630, 31.432110, 44.863926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468719, 31.784792, 44.692497>,  <38.421375, 31.996401, 44.589638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468719, 31.784792, 44.692497>,  <38.547630, 31.432110, 44.863926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468719, 31.784792, 44.692497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083292, -0.450658, -0.888803,
		-0.976804, -0.139641, 0.162342,
		-0.197274, 0.881707, -0.428574,
		38.409538, 32.049305, 44.563927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007118, 31.268394, 44.333805>,  <38.547630, 31.432110, 44.863926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007118, 31.268394, 44.333805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143475, 31.633240, 44.242729>,  <38.225288, 31.852148, 44.188084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143475, 31.633240, 44.242729>,  <38.007118, 31.268394, 44.333805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143475, 31.633240, 44.242729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236211, -0.151324, -0.959846,
		-0.909945, 0.380982, 0.163867,
		0.340887, 0.912115, -0.227689,
		38.245739, 31.906874, 44.174423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553089, 31.542339, 43.880150>,  <38.007118, 31.268394, 44.333805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553089, 31.542339, 43.880150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877205, 31.759907, 43.792900>,  <38.071674, 31.890448, 43.740551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877205, 31.759907, 43.792900>,  <37.553089, 31.542339, 43.880150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877205, 31.759907, 43.792900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182670, -0.119240, -0.975917,
		-0.556830, 0.830622, 0.002739,
		0.810291, 0.543920, -0.218126,
		38.120293, 31.923082, 43.727463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355515, 32.020885, 43.319187>,  <37.553089, 31.542339, 43.880150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355515, 32.020885, 43.319187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753525, 31.989218, 43.294994>,  <37.992332, 31.970219, 43.280479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753525, 31.989218, 43.294994>,  <37.355515, 32.020885, 43.319187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753525, 31.989218, 43.294994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058284, 0.029735, -0.997857,
		0.080794, 0.996418, 0.024973,
		0.995025, -0.079166, -0.060478,
		38.052032, 31.965467, 43.276852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576584, 32.467827, 42.779900>,  <37.355515, 32.020885, 43.319187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576584, 32.467827, 42.779900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911766, 32.252674, 42.816811>,  <38.112877, 32.123581, 42.838959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911766, 32.252674, 42.816811>,  <37.576584, 32.467827, 42.779900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911766, 32.252674, 42.816811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126657, 0.027207, -0.991573,
		0.530840, 0.842581, 0.090925,
		0.837954, -0.537883, 0.092276,
		38.163151, 32.091309, 42.844494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154896, 32.766010, 42.335648>,  <37.576584, 32.467827, 42.779900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154896, 32.766010, 42.335648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223148, 32.376099, 42.393185>,  <38.264099, 32.142151, 42.427708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223148, 32.376099, 42.393185>,  <38.154896, 32.766010, 42.335648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223148, 32.376099, 42.393185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151707, -0.118255, -0.981326,
		0.973586, 0.189265, 0.127703,
		0.170629, -0.974779, 0.143844,
		38.274338, 32.083664, 42.436337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609253, 32.575191, 41.924835>,  <38.154896, 32.766010, 42.335648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609253, 32.575191, 41.924835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472073, 32.205925, 41.994278>,  <38.389763, 31.984364, 42.035942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472073, 32.205925, 41.994278>,  <38.609253, 32.575191, 41.924835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472073, 32.205925, 41.994278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022442, -0.192814, -0.980979,
		0.939084, -0.332535, 0.086844,
		-0.342955, -0.923170, 0.173605,
		38.369186, 31.928974, 42.046360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934147, 32.195183, 41.384464>,  <38.609253, 32.575191, 41.924835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934147, 32.195183, 41.384464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658573, 31.939978, 41.522049>,  <38.493229, 31.786854, 41.604599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658573, 31.939978, 41.522049>,  <38.934147, 32.195183, 41.384464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658573, 31.939978, 41.522049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037762, -0.505493, -0.862004,
		0.723843, -0.580872, 0.372342,
		-0.688931, -0.638016, 0.343963,
		38.451893, 31.748573, 41.625237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153961, 31.513548, 41.192089>,  <38.934147, 32.195183, 41.384464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153961, 31.513548, 41.192089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758785, 31.510489, 41.253944>,  <38.521679, 31.508654, 41.291058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758785, 31.510489, 41.253944>,  <39.153961, 31.513548, 41.192089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758785, 31.510489, 41.253944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134874, -0.447937, -0.883833,
		0.076026, -0.894032, 0.441505,
		-0.987942, -0.007647, 0.154637,
		38.462402, 31.508194, 41.300335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929241, 30.857557, 40.990677>,  <39.153961, 31.513548, 41.192089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929241, 30.857557, 40.990677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608044, 31.093287, 40.955120>,  <38.415325, 31.234724, 40.933784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608044, 31.093287, 40.955120>,  <38.929241, 30.857557, 40.990677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608044, 31.093287, 40.955120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123680, -0.310681, -0.942433,
		-0.583016, -0.745772, 0.322362,
		-0.802992, 0.589323, -0.088895,
		38.367146, 31.270084, 40.928452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376728, 30.434940, 40.682766>,  <38.929241, 30.857557, 40.990677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376728, 30.434940, 40.682766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254967, 30.812723, 40.633221>,  <38.181911, 31.039392, 40.603493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254967, 30.812723, 40.633221>,  <38.376728, 30.434940, 40.682766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254967, 30.812723, 40.633221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186681, -0.186661, -0.964525,
		-0.934072, -0.270481, 0.233132,
		-0.304403, 0.944456, -0.123861,
		38.163647, 31.096060, 40.596062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706779, 30.398453, 40.418011>,  <38.376728, 30.434940, 40.682766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706779, 30.398453, 40.418011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819607, 30.763783, 40.300522>,  <37.887302, 30.982981, 40.230026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819607, 30.763783, 40.300522>,  <37.706779, 30.398453, 40.418011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819607, 30.763783, 40.300522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212781, -0.238978, -0.947425,
		-0.935501, 0.329737, 0.126930,
		0.282067, 0.913326, -0.293726,
		37.904228, 31.037781, 40.212402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348537, 30.427725, 39.821873>,  <37.706779, 30.398453, 40.418011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348537, 30.427725, 39.821873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633205, 30.708698, 39.817471>,  <37.804005, 30.877281, 39.814827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633205, 30.708698, 39.817471>,  <37.348537, 30.427725, 39.821873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633205, 30.708698, 39.817471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152683, -0.169948, -0.973553,
		-0.685726, 0.691164, -0.228196,
		0.711666, 0.702432, -0.011009,
		37.846706, 30.919428, 39.814167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033646, 30.827518, 39.358860>,  <37.348537, 30.427725, 39.821873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033646, 30.827518, 39.358860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419682, 30.931137, 39.374374>,  <37.651302, 30.993309, 39.383682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419682, 30.931137, 39.374374>,  <37.033646, 30.827518, 39.358860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419682, 30.931137, 39.374374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046066, -0.022074, -0.998694,
		-0.257852, 0.965613, -0.033237,
		0.965086, 0.259047, 0.038790,
		37.709206, 31.008850, 39.386013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173706, 31.375397, 38.937588>,  <37.033646, 30.827518, 39.358860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173706, 31.375397, 38.937588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542881, 31.225662, 38.973507>,  <37.764385, 31.135820, 38.995056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542881, 31.225662, 38.973507>,  <37.173706, 31.375397, 38.937588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542881, 31.225662, 38.973507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024248, -0.176263, -0.984044,
		0.384193, 0.910385, -0.153603,
		0.922934, -0.374338, 0.089794,
		37.819763, 31.113361, 39.000446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589092, 31.810438, 38.543880>,  <37.173706, 31.375397, 38.937588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589092, 31.810438, 38.543880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757462, 31.448675, 38.571789>,  <37.858482, 31.231617, 38.588535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757462, 31.448675, 38.571789>,  <37.589092, 31.810438, 38.543880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757462, 31.448675, 38.571789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033314, -0.061456, -0.997554,
		0.906484, 0.422218, 0.004261,
		0.420923, -0.904409, 0.069775,
		37.883739, 31.177353, 38.592720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117817, 31.800449, 38.104988>,  <37.589092, 31.810438, 38.543880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117817, 31.800449, 38.104988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079296, 31.409988, 38.182816>,  <38.056183, 31.175713, 38.229511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079296, 31.409988, 38.182816>,  <38.117817, 31.800449, 38.104988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079296, 31.409988, 38.182816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234309, -0.212215, -0.948717,
		0.967380, -0.045779, 0.249158,
		-0.096306, -0.976150, 0.194566,
		38.050404, 31.117144, 38.241184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798019, 31.492540, 37.950043>,  <38.117817, 31.800449, 38.104988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798019, 31.492540, 37.950043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506702, 31.219288, 37.928402>,  <38.331913, 31.055336, 37.915417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506702, 31.219288, 37.928402>,  <38.798019, 31.492540, 37.950043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506702, 31.219288, 37.928402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270079, -0.213574, -0.938852,
		0.629802, -0.698370, 0.340043,
		-0.728291, -0.683129, -0.054106,
		38.288216, 31.014349, 37.912170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128735, 30.930489, 37.755020>,  <38.798019, 31.492540, 37.950043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128735, 30.930489, 37.755020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748775, 30.890404, 37.636597>,  <38.520798, 30.866354, 37.565544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748775, 30.890404, 37.636597>,  <39.128735, 30.930489, 37.755020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748775, 30.890404, 37.636597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308294, -0.144530, -0.940248,
		0.051434, -0.984413, 0.168184,
		-0.949900, -0.100211, -0.296055,
		38.463806, 30.860340, 37.547779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739128, 30.980206, 38.150887>,  <39.128735, 30.930489, 37.755020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739128, 30.980206, 38.150887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024788, 31.247620, 38.067886>,  <40.196182, 31.408068, 38.018085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024788, 31.247620, 38.067886>,  <39.739128, 30.980206, 38.150887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024788, 31.247620, 38.067886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479032, -0.250609, 0.841263,
		0.510412, -0.700184, -0.499221,
		0.714148, 0.668534, -0.207497,
		40.239033, 31.448179, 38.005638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455574, 30.691868, 38.423489>,  <39.739128, 30.980206, 38.150887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455574, 30.691868, 38.423489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431099, 31.090086, 38.394810>,  <40.416412, 31.329018, 38.377602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431099, 31.090086, 38.394810>,  <40.455574, 30.691868, 38.423489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431099, 31.090086, 38.394810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434768, 0.091244, 0.895908,
		0.898461, 0.023648, -0.438415,
		-0.061189, 0.995548, -0.071698,
		40.412743, 31.388750, 38.373299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078407, 30.967047, 38.775459>,  <40.455574, 30.691868, 38.423489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078407, 30.967047, 38.775459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830669, 31.281050, 38.770203>,  <40.682026, 31.469452, 38.767048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830669, 31.281050, 38.770203>,  <41.078407, 30.967047, 38.775459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830669, 31.281050, 38.770203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385731, 0.318822, 0.865774,
		0.683828, 0.531147, -0.500263,
		-0.619348, 0.785007, -0.013139,
		40.644863, 31.516552, 38.766262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524826, 31.577862, 38.890560>,  <41.078407, 30.967047, 38.775459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524826, 31.577862, 38.890560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150372, 31.659822, 39.004875>,  <40.925701, 31.709000, 39.073463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150372, 31.659822, 39.004875>,  <41.524826, 31.577862, 38.890560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150372, 31.659822, 39.004875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345977, 0.391288, 0.852757,
		0.062907, 0.897167, -0.437189,
		-0.936132, 0.204901, 0.285784,
		40.869534, 31.721292, 39.090611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578815, 32.302036, 39.066589>,  <41.524826, 31.577862, 38.890560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578815, 32.302036, 39.066589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260792, 32.141254, 39.248276>,  <41.069977, 32.044785, 39.357288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260792, 32.141254, 39.248276>,  <41.578815, 32.302036, 39.066589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260792, 32.141254, 39.248276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317425, 0.362389, 0.876308,
		-0.516844, 0.840894, -0.160528,
		-0.795056, -0.401959, 0.454220,
		41.022274, 32.020668, 39.384541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468666, 32.845383, 39.607983>,  <41.578815, 32.302036, 39.066589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468666, 32.845383, 39.607983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242966, 32.536243, 39.724140>,  <41.107544, 32.350761, 39.793835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242966, 32.536243, 39.724140>,  <41.468666, 32.845383, 39.607983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242966, 32.536243, 39.724140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158983, 0.243438, 0.956798,
		-0.810148, 0.586046, -0.014492,
		-0.564256, -0.772844, 0.290392,
		41.073689, 32.304390, 39.811256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923695, 33.097134, 40.013023>,  <41.468666, 32.845383, 39.607983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923695, 33.097134, 40.013023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940689, 32.720692, 40.147198>,  <40.950886, 32.494827, 40.227703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940689, 32.720692, 40.147198>,  <40.923695, 33.097134, 40.013023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940689, 32.720692, 40.147198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015995, 0.336336, 0.941606,
		-0.998969, -0.034641, 0.029343,
		0.042488, -0.941105, 0.335435,
		40.953434, 32.438362, 40.247829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420513, 33.139645, 40.575272>,  <40.923695, 33.097134, 40.013023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420513, 33.139645, 40.575272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644081, 32.814682, 40.641716>,  <40.778221, 32.619705, 40.681583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644081, 32.814682, 40.641716>,  <40.420513, 33.139645, 40.575272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644081, 32.814682, 40.641716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092380, 0.260086, 0.961156,
		-0.824057, -0.521868, 0.220419,
		0.558924, -0.812410, 0.166115,
		40.811760, 32.570961, 40.691551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136932, 32.792641, 41.112778>,  <40.420513, 33.139645, 40.575272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136932, 32.792641, 41.112778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519424, 32.675919, 41.121487>,  <40.748920, 32.605885, 41.126713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519424, 32.675919, 41.121487>,  <40.136932, 32.792641, 41.112778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519424, 32.675919, 41.121487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023320, 0.150168, 0.988385,
		-0.291688, -0.944615, 0.150400,
		0.956229, -0.291808, 0.021774,
		40.806293, 32.588375, 41.128017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328991, 32.492996, 41.692684>,  <40.136932, 32.792641, 41.112778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328991, 32.492996, 41.692684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719860, 32.547771, 41.627716>,  <40.954380, 32.580635, 41.588737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719860, 32.547771, 41.627716>,  <40.328991, 32.492996, 41.692684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719860, 32.547771, 41.627716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142302, 0.145751, 0.979034,
		0.157757, -0.979796, 0.122934,
		0.977171, 0.136956, -0.162420,
		41.013012, 32.588852, 41.578991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633720, 31.993740, 42.124344>,  <40.328991, 32.492996, 41.692684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633720, 31.993740, 42.124344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922382, 32.257240, 42.039246>,  <41.095581, 32.415340, 41.988186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922382, 32.257240, 42.039246>,  <40.633720, 31.993740, 42.124344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922382, 32.257240, 42.039246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305910, -0.027774, 0.951655,
		0.620995, -0.751848, -0.221562,
		0.721654, 0.658751, -0.212750,
		41.138878, 32.454865, 41.975422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155186, 31.831215, 42.497982>,  <40.633720, 31.993740, 42.124344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155186, 31.831215, 42.497982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251587, 32.210453, 42.415001>,  <41.309429, 32.437996, 42.365211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251587, 32.210453, 42.415001>,  <41.155186, 31.831215, 42.497982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251587, 32.210453, 42.415001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199822, 0.160695, 0.966565,
		0.949731, -0.274397, -0.150723,
		0.241003, 0.948094, -0.207448,
		41.323887, 32.494881, 42.352768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763062, 31.997059, 42.795795>,  <41.155186, 31.831215, 42.497982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763062, 31.997059, 42.795795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622013, 32.368759, 42.751705>,  <41.537384, 32.591778, 42.725250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622013, 32.368759, 42.751705>,  <41.763062, 31.997059, 42.795795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622013, 32.368759, 42.751705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127535, 0.164417, 0.978112,
		0.927033, 0.330850, -0.176489,
		-0.352626, 0.929250, -0.110225,
		41.516224, 32.647533, 42.718639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112156, 32.348278, 43.348976>,  <41.763062, 31.997059, 42.795795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112156, 32.348278, 43.348976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812435, 32.578411, 43.217800>,  <41.632603, 32.716492, 43.139095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812435, 32.578411, 43.217800>,  <42.112156, 32.348278, 43.348976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812435, 32.578411, 43.217800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176507, 0.303776, 0.936251,
		0.638276, 0.759414, -0.126069,
		-0.749299, 0.575334, -0.327935,
		41.587646, 32.751011, 43.119419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247379, 33.015812, 43.512520>,  <42.112156, 32.348278, 43.348976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247379, 33.015812, 43.512520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849209, 33.028999, 43.476658>,  <41.610306, 33.036911, 43.455139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849209, 33.028999, 43.476658>,  <42.247379, 33.015812, 43.512520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849209, 33.028999, 43.476658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080468, 0.216399, 0.972983,
		0.051477, 0.975748, -0.212757,
		-0.995427, 0.032966, -0.089656,
		41.550579, 33.038891, 43.449760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121124, 33.489323, 43.902534>,  <42.247379, 33.015812, 43.512520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121124, 33.489323, 43.902534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767109, 33.310032, 43.852253>,  <41.554699, 33.202457, 43.822083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767109, 33.310032, 43.852253>,  <42.121124, 33.489323, 43.902534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767109, 33.310032, 43.852253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199513, 0.121239, 0.972366,
		-0.420598, 0.885661, -0.196728,
		-0.885038, -0.448225, -0.125707,
		41.501598, 33.175564, 43.814541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640629, 33.979523, 44.240391>,  <42.121124, 33.489323, 43.902534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640629, 33.979523, 44.240391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487469, 33.611481, 44.207439>,  <41.395573, 33.390656, 44.187668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487469, 33.611481, 44.207439>,  <41.640629, 33.979523, 44.240391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487469, 33.611481, 44.207439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292650, 0.036231, 0.955533,
		-0.876210, 0.389982, -0.283143,
		-0.382899, -0.920110, -0.082382,
		41.372601, 33.335449, 44.182724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857525, 34.041157, 44.335060>,  <41.640629, 33.979523, 44.240391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857525, 34.041157, 44.335060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956539, 33.661400, 44.412403>,  <41.015949, 33.433548, 44.458809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956539, 33.661400, 44.412403>,  <40.857525, 34.041157, 44.335060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956539, 33.661400, 44.412403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476272, 0.054558, 0.877603,
		-0.843736, -0.309330, -0.438662,
		0.247537, -0.949388, 0.193358,
		41.030800, 33.376583, 44.470409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273094, 33.792149, 44.695675>,  <40.857525, 34.041157, 44.335060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273094, 33.792149, 44.695675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550274, 33.531506, 44.819107>,  <40.716583, 33.375118, 44.893166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550274, 33.531506, 44.819107>,  <40.273094, 33.792149, 44.695675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550274, 33.531506, 44.819107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433201, -0.034162, 0.900650,
		-0.576333, -0.757782, -0.305951,
		0.692948, -0.651612, 0.308583,
		40.758160, 33.336021, 44.911682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869732, 33.277981, 45.095428>,  <40.273094, 33.792149, 44.695675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869732, 33.277981, 45.095428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255684, 33.261417, 45.199192>,  <40.487255, 33.251480, 45.261452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255684, 33.261417, 45.199192>,  <39.869732, 33.277981, 45.095428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255684, 33.261417, 45.199192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238466, 0.276131, 0.931067,
		-0.110185, -0.960228, 0.256558,
		0.964880, -0.041409, 0.259408,
		40.545147, 33.248993, 45.277016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732124, 32.943611, 45.727448>,  <39.869732, 33.277981, 45.095428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732124, 32.943611, 45.727448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113663, 33.063721, 45.726208>,  <40.342587, 33.135788, 45.725464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113663, 33.063721, 45.726208>,  <39.732124, 32.943611, 45.727448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113663, 33.063721, 45.726208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066704, 0.221942, 0.972776,
		0.292793, -0.927671, 0.231728,
		0.953847, 0.300279, -0.003104,
		40.399818, 33.153805, 45.725277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176346, 32.435707, 46.164776>,  <39.732124, 32.943611, 45.727448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176346, 32.435707, 46.164776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308155, 32.812679, 46.142017>,  <40.387241, 33.038864, 46.128361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308155, 32.812679, 46.142017>,  <40.176346, 32.435707, 46.164776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308155, 32.812679, 46.142017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353988, 0.179191, 0.917923,
		0.875276, -0.282334, 0.392657,
		0.329521, 0.942432, -0.056899,
		40.407013, 33.095409, 46.124947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385563, 32.649532, 46.815777>,  <40.176346, 32.435707, 46.164776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385563, 32.649532, 46.815777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383682, 33.016777, 46.657257>,  <40.382553, 33.237125, 46.562145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383682, 33.016777, 46.657257>,  <40.385563, 32.649532, 46.815777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383682, 33.016777, 46.657257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363543, 0.367617, 0.855976,
		0.931566, 0.148092, 0.332045,
		-0.004698, 0.918111, -0.396297,
		40.382275, 33.292210, 46.538368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803257, 33.252487, 47.250526>,  <40.385563, 32.649532, 46.815777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803257, 33.252487, 47.250526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513542, 33.441685, 47.049854>,  <40.339714, 33.555202, 46.929451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513542, 33.441685, 47.049854>,  <40.803257, 33.252487, 47.250526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513542, 33.441685, 47.049854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226017, 0.524534, 0.820841,
		0.651406, 0.707911, -0.273006,
		-0.724284, 0.472996, -0.501685,
		40.296257, 33.583584, 46.899349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735275, 33.886562, 47.546906>,  <40.803257, 33.252487, 47.250526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735275, 33.886562, 47.546906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398579, 33.926514, 47.334679>,  <40.196560, 33.950485, 47.207344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398579, 33.926514, 47.334679>,  <40.735275, 33.886562, 47.546906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398579, 33.926514, 47.334679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393928, 0.558397, 0.730078,
		0.369184, 0.823540, -0.430680,
		-0.841739, 0.099876, -0.530566,
		40.146057, 33.956478, 47.175510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542927, 34.559681, 47.639233>,  <40.735275, 33.886562, 47.546906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542927, 34.559681, 47.639233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206333, 34.372330, 47.531517>,  <40.004375, 34.259918, 47.466888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206333, 34.372330, 47.531517>,  <40.542927, 34.559681, 47.639233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206333, 34.372330, 47.531517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502222, 0.494369, 0.709487,
		-0.199182, 0.732268, -0.651237,
		-0.841487, -0.468382, -0.269292,
		39.953888, 34.231815, 47.450729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010597, 35.040062, 47.676807>,  <40.542927, 34.559681, 47.639233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010597, 35.040062, 47.676807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821854, 34.688408, 47.703548>,  <39.708607, 34.477417, 47.719593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821854, 34.688408, 47.703548>,  <40.010597, 35.040062, 47.676807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821854, 34.688408, 47.703548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621195, 0.385310, 0.682388,
		-0.625670, 0.280463, -0.727927,
		-0.471862, -0.879134, 0.066855,
		39.680294, 34.424667, 47.723606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339542, 35.197491, 47.740944>,  <40.010597, 35.040062, 47.676807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339542, 35.197491, 47.740944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342503, 34.819508, 47.871788>,  <39.344276, 34.592716, 47.950294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342503, 34.819508, 47.871788>,  <39.339542, 35.197491, 47.740944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342503, 34.819508, 47.871788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698820, 0.229098, 0.677617,
		-0.715259, -0.233605, -0.658660,
		0.007397, -0.944957, 0.327112,
		39.344723, 34.536022, 47.969921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624645, 34.982292, 47.785290>,  <39.339542, 35.197491, 47.740944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624645, 34.982292, 47.785290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840416, 34.752502, 48.031544>,  <38.969879, 34.614628, 48.179295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840416, 34.752502, 48.031544>,  <38.624645, 34.982292, 47.785290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840416, 34.752502, 48.031544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544181, 0.320087, 0.775507,
		-0.642566, -0.753340, -0.139957,
		0.539422, -0.574476, 0.615631,
		39.002243, 34.580158, 48.216232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194054, 34.644123, 48.299797>,  <38.624645, 34.982292, 47.785290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194054, 34.644123, 48.299797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550400, 34.596424, 48.475128>,  <38.764210, 34.567806, 48.580326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550400, 34.596424, 48.475128>,  <38.194054, 34.644123, 48.299797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550400, 34.596424, 48.475128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435097, 0.053301, 0.898804,
		-0.130542, -0.991433, -0.004399,
		0.890870, -0.119245, 0.438328,
		38.817661, 34.560650, 48.606628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989605, 34.096825, 48.798862>,  <38.194054, 34.644123, 48.299797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989605, 34.096825, 48.798862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328716, 34.277267, 48.910416>,  <38.532185, 34.385532, 48.977348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328716, 34.277267, 48.910416>,  <37.989605, 34.096825, 48.798862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328716, 34.277267, 48.910416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269371, -0.086721, 0.959124,
		0.456851, -0.888247, 0.047995,
		0.847777, 0.451106, 0.278887,
		38.583050, 34.412598, 48.994083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141106, 33.887249, 49.550365>,  <37.989605, 34.096825, 48.798862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141106, 33.887249, 49.550365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386890, 34.198769, 49.499905>,  <38.534359, 34.385681, 49.469627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386890, 34.198769, 49.499905>,  <38.141106, 33.887249, 49.550365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386890, 34.198769, 49.499905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230342, 0.330025, 0.915438,
		0.754576, -0.533439, 0.382176,
		0.614458, 0.778798, -0.126156,
		38.571228, 34.432407, 49.462059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556343, 33.890049, 50.059212>,  <38.141106, 33.887249, 49.550365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556343, 33.890049, 50.059212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582626, 34.268147, 49.931335>,  <38.598396, 34.495003, 49.854610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582626, 34.268147, 49.931335>,  <38.556343, 33.890049, 50.059212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582626, 34.268147, 49.931335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306100, 0.324035, 0.895156,
		0.949729, 0.039036, 0.310631,
		0.065712, 0.945239, -0.319695,
		38.602341, 34.551720, 49.835426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935879, 34.172382, 50.609676>,  <38.556343, 33.890049, 50.059212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935879, 34.172382, 50.609676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726162, 34.461765, 50.430019>,  <38.600334, 34.635395, 50.322227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726162, 34.461765, 50.430019>,  <38.935879, 34.172382, 50.609676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726162, 34.461765, 50.430019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116684, 0.461433, 0.879468,
		0.843509, 0.513502, -0.157508,
		-0.524288, 0.723460, -0.449140,
		38.568874, 34.678802, 50.295277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100788, 34.758148, 50.942829>,  <38.935879, 34.172382, 50.609676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100788, 34.758148, 50.942829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759636, 34.876186, 50.770542>,  <38.554947, 34.947010, 50.667168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759636, 34.876186, 50.770542>,  <39.100788, 34.758148, 50.942829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759636, 34.876186, 50.770542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220594, 0.544045, 0.809539,
		0.473222, 0.785451, -0.398908,
		-0.852877, 0.295095, -0.430720,
		38.503773, 34.964714, 50.641327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001453, 35.539154, 51.048103>,  <39.100788, 34.758148, 50.942829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001453, 35.539154, 51.048103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631233, 35.392979, 51.008499>,  <38.409100, 35.305275, 50.984737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631233, 35.392979, 51.008499>,  <39.001453, 35.539154, 51.048103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631233, 35.392979, 51.008499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306856, 0.570854, 0.761554,
		-0.221783, 0.735241, -0.640494,
		-0.925555, -0.365439, -0.099007,
		38.353565, 35.283348, 50.978798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539005, 35.999393, 51.348499>,  <39.001453, 35.539154, 51.048103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539005, 35.999393, 51.348499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321510, 35.665478, 51.313892>,  <38.191013, 35.465130, 51.293129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321510, 35.665478, 51.313892>,  <38.539005, 35.999393, 51.348499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321510, 35.665478, 51.313892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572411, 0.293487, 0.765644,
		-0.613757, 0.465831, -0.637419,
		-0.543735, -0.834785, -0.086517,
		38.158390, 35.415043, 51.287937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053665, 36.595875, 51.418545>,  <38.539005, 35.999393, 51.348499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053665, 36.595875, 51.418545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019512, 36.990761, 51.472370>,  <38.999020, 37.227692, 51.504665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019512, 36.990761, 51.472370>,  <39.053665, 36.595875, 51.418545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019512, 36.990761, 51.472370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250651, 0.152000, -0.956070,
		-0.964305, -0.047906, -0.260426,
		-0.085386, 0.987219, 0.134567,
		38.993896, 37.286926, 51.512741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641888, 36.989918, 50.923847>,  <39.053665, 36.595875, 51.418545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641888, 36.989918, 50.923847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865685, 37.289036, 51.066830>,  <38.999962, 37.468506, 51.152618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865685, 37.289036, 51.066830>,  <38.641888, 36.989918, 50.923847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865685, 37.289036, 51.066830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300407, 0.218998, -0.928329,
		-0.772481, 0.626775, -0.102115,
		0.559490, 0.747792, 0.357459,
		39.033531, 37.513374, 51.174068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404655, 37.410896, 50.498726>,  <38.641888, 36.989918, 50.923847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404655, 37.410896, 50.498726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756737, 37.521820, 50.652790>,  <38.967987, 37.588375, 50.745228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756737, 37.521820, 50.652790>,  <38.404655, 37.410896, 50.498726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756737, 37.521820, 50.652790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357113, 0.147532, -0.922336,
		-0.312591, 0.949387, 0.030828,
		0.880203, 0.277305, 0.385156,
		39.020798, 37.605011, 50.768337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622864, 37.999775, 50.080929>,  <38.404655, 37.410896, 50.498726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622864, 37.999775, 50.080929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951870, 37.859955, 50.260391>,  <39.149273, 37.776062, 50.368069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951870, 37.859955, 50.260391>,  <38.622864, 37.999775, 50.080929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951870, 37.859955, 50.260391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478369, -0.001497, -0.878158,
		0.307631, 0.936917, 0.165983,
		0.822512, -0.349550, 0.448652,
		39.198624, 37.755089, 50.394985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206333, 38.490906, 49.841335>,  <38.622864, 37.999775, 50.080929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206333, 38.490906, 49.841335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367111, 38.152122, 49.980541>,  <39.463577, 37.948853, 50.064064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367111, 38.152122, 49.980541>,  <39.206333, 38.490906, 49.841335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367111, 38.152122, 49.980541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639935, -0.012010, -0.768335,
		0.654924, 0.531531, 0.537169,
		0.401942, -0.846954, 0.348011,
		39.487694, 37.898037, 50.084946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949947, 38.513771, 49.689724>,  <39.206333, 38.490906, 49.841335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949947, 38.513771, 49.689724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875687, 38.122997, 49.731937>,  <39.831131, 37.888535, 49.757263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875687, 38.122997, 49.731937>,  <39.949947, 38.513771, 49.689724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875687, 38.122997, 49.731937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533190, -0.190365, -0.824300,
		0.825375, -0.096761, 0.556231,
		-0.185647, -0.976933, 0.105530,
		39.819992, 37.829918, 49.763596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565018, 38.212387, 49.421326>,  <39.949947, 38.513771, 49.689724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565018, 38.212387, 49.421326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313274, 37.901588, 49.415848>,  <40.162228, 37.715111, 49.412563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313274, 37.901588, 49.415848>,  <40.565018, 38.212387, 49.421326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313274, 37.901588, 49.415848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437423, -0.339639, -0.832651,
		0.642313, -0.530027, 0.553629,
		-0.629362, -0.776992, -0.013692,
		40.124466, 37.668491, 49.411739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992321, 37.677021, 49.389141>,  <40.565018, 38.212387, 49.421326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992321, 37.677021, 49.389141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631737, 37.548386, 49.273239>,  <40.415386, 37.471207, 49.203697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631737, 37.548386, 49.273239>,  <40.992321, 37.677021, 49.389141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631737, 37.548386, 49.273239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407295, -0.403464, -0.819346,
		0.146582, -0.856621, 0.494685,
		-0.901457, -0.321585, -0.289757,
		40.361301, 37.451912, 49.186314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148403, 37.024384, 49.171059>,  <40.992321, 37.677021, 49.389141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148403, 37.024384, 49.171059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808491, 37.139851, 48.994629>,  <40.604546, 37.209129, 48.888771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808491, 37.139851, 48.994629>,  <41.148403, 37.024384, 49.171059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808491, 37.139851, 48.994629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343336, -0.331829, -0.878641,
		-0.399995, -0.898088, 0.182872,
		-0.849779, 0.288666, -0.441076,
		40.553558, 37.226452, 48.862305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893448, 36.473003, 48.680824>,  <41.148403, 37.024384, 49.171059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893448, 36.473003, 48.680824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690781, 36.792919, 48.552059>,  <40.569180, 36.984867, 48.474800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690781, 36.792919, 48.552059>,  <40.893448, 36.473003, 48.680824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690781, 36.792919, 48.552059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079319, -0.328556, -0.941148,
		-0.858482, -0.502387, 0.103032,
		-0.506672, 0.799786, -0.321908,
		40.538780, 37.032856, 48.455486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512676, 36.154625, 48.209248>,  <40.893448, 36.473003, 48.680824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512676, 36.154625, 48.209248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462368, 36.538410, 48.108360>,  <40.432182, 36.768681, 48.047829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462368, 36.538410, 48.108360>,  <40.512676, 36.154625, 48.209248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462368, 36.538410, 48.108360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241394, -0.216997, -0.945855,
		-0.962242, -0.179847, -0.204316,
		-0.125774, 0.959462, -0.252218,
		40.424637, 36.826248, 48.032696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956589, 36.214729, 47.691494>,  <40.512676, 36.154625, 48.209248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956589, 36.214729, 47.691494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214424, 36.520142, 47.675869>,  <40.369125, 36.703388, 47.666496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214424, 36.520142, 47.675869>,  <39.956589, 36.214729, 47.691494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214424, 36.520142, 47.675869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300478, -0.299987, -0.905384,
		-0.703006, 0.571864, -0.422793,
		0.644589, 0.763530, -0.039060,
		40.407803, 36.749199, 47.664150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762405, 36.638908, 47.115330>,  <39.956589, 36.214729, 47.691494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762405, 36.638908, 47.115330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148163, 36.712063, 47.191757>,  <40.379616, 36.755955, 47.237614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148163, 36.712063, 47.191757>,  <39.762405, 36.638908, 47.115330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148163, 36.712063, 47.191757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244021, -0.336617, -0.909474,
		-0.102014, 0.923711, -0.369258,
		0.964389, 0.182886, 0.191065,
		40.437481, 36.766930, 47.249077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981667, 36.945210, 46.549393>,  <39.762405, 36.638908, 47.115330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981667, 36.945210, 46.549393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323826, 36.840832, 46.728371>,  <40.529121, 36.778206, 46.835758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323826, 36.840832, 46.728371>,  <39.981667, 36.945210, 46.549393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323826, 36.840832, 46.728371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341106, -0.366287, -0.865726,
		0.389797, 0.893164, -0.224312,
		0.855398, -0.260943, 0.447441,
		40.580444, 36.762550, 46.862602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553024, 37.285854, 46.197868>,  <39.981667, 36.945210, 46.549393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553024, 37.285854, 46.197868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704437, 36.967800, 46.387383>,  <40.795284, 36.776966, 46.501091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704437, 36.967800, 46.387383>,  <40.553024, 37.285854, 46.197868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704437, 36.967800, 46.387383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516042, -0.243636, -0.821183,
		0.768384, 0.555336, 0.318100,
		0.378532, -0.795137, 0.473783,
		40.817997, 36.729259, 46.529518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237885, 37.305817, 45.996719>,  <40.553024, 37.285854, 46.197868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237885, 37.305817, 45.996719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166397, 36.931389, 46.117935>,  <41.123505, 36.706730, 46.190662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166397, 36.931389, 46.117935>,  <41.237885, 37.305817, 45.996719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166397, 36.931389, 46.117935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433832, -0.351408, -0.829640,
		0.883091, -0.016805, 0.468901,
		-0.178717, -0.936071, 0.303035,
		41.112782, 36.650566, 46.208847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752563, 36.936436, 45.625294>,  <41.237885, 37.305817, 45.996719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752563, 36.936436, 45.625294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501740, 36.650620, 45.749378>,  <41.351246, 36.479130, 45.823830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501740, 36.650620, 45.749378>,  <41.752563, 36.936436, 45.625294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501740, 36.650620, 45.749378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253391, -0.563678, -0.786168,
		0.736608, -0.414368, 0.534517,
		-0.627058, -0.714539, 0.310213,
		41.313622, 36.436256, 45.842442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142597, 36.417221, 45.635998>,  <41.752563, 36.936436, 45.625294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142597, 36.417221, 45.635998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760532, 36.314861, 45.576412>,  <41.531296, 36.253445, 45.540661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760532, 36.314861, 45.576412>,  <42.142597, 36.417221, 45.635998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760532, 36.314861, 45.576412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264989, -0.514300, -0.815645,
		0.132111, -0.818543, 0.559047,
		-0.955158, -0.255897, -0.148960,
		41.473984, 36.238091, 45.531723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154552, 35.672134, 45.320942>,  <42.142597, 36.417221, 45.635998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154552, 35.672134, 45.320942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783962, 35.802742, 45.246090>,  <41.561607, 35.881107, 45.201180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783962, 35.802742, 45.246090>,  <42.154552, 35.672134, 45.320942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783962, 35.802742, 45.246090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021195, -0.451181, -0.892181,
		-0.375746, -0.830554, 0.411090,
		-0.926480, 0.326520, -0.187133,
		41.506020, 35.900700, 45.189949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811226, 35.219116, 45.138126>,  <42.154552, 35.672134, 45.320942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811226, 35.219116, 45.138126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591724, 35.514015, 44.980473>,  <41.460022, 35.690952, 44.885880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591724, 35.514015, 44.980473>,  <41.811226, 35.219116, 45.138126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591724, 35.514015, 44.980473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125899, -0.393199, -0.910793,
		-0.826449, -0.549423, 0.122952,
		-0.548755, 0.737244, -0.394130,
		41.427097, 35.735188, 44.862232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539680, 34.942242, 44.499973>,  <41.811226, 35.219116, 45.138126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539680, 34.942242, 44.499973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435738, 35.325806, 44.454422>,  <41.373371, 35.555943, 44.427094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435738, 35.325806, 44.454422>,  <41.539680, 34.942242, 44.499973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435738, 35.325806, 44.454422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008197, -0.115733, -0.993246,
		-0.965612, -0.259036, 0.022214,
		-0.259857, 0.958909, -0.113876,
		41.357780, 35.613480, 44.420258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911613, 34.940754, 44.187775>,  <41.539680, 34.942242, 44.499973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911613, 34.940754, 44.187775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106384, 35.279900, 44.103844>,  <41.223248, 35.483387, 44.053486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106384, 35.279900, 44.103844>,  <40.911613, 34.940754, 44.187775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106384, 35.279900, 44.103844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030440, -0.256553, -0.966051,
		-0.872914, 0.464006, -0.150730,
		0.486923, 0.847868, -0.209824,
		41.252460, 35.534260, 44.040897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551899, 35.241810, 43.689259>,  <40.911613, 34.940754, 44.187775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551899, 35.241810, 43.689259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915478, 35.404850, 43.654186>,  <41.133625, 35.502674, 43.633144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915478, 35.404850, 43.654186>,  <40.551899, 35.241810, 43.689259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915478, 35.404850, 43.654186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018383, -0.170917, -0.985114,
		-0.416516, 0.897024, -0.147861,
		0.908942, 0.407598, -0.087680,
		41.188160, 35.527130, 43.627884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634338, 35.522472, 43.058308>,  <40.551899, 35.241810, 43.689259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634338, 35.522472, 43.058308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026573, 35.532921, 43.136044>,  <41.261913, 35.539188, 43.182686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026573, 35.532921, 43.136044>,  <40.634338, 35.522472, 43.058308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026573, 35.532921, 43.136044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193076, -0.301544, -0.933698,
		0.034210, 0.953094, -0.300734,
		0.980587, 0.026122, 0.194336,
		41.320751, 35.540756, 43.194344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928581, 35.859871, 42.490238>,  <40.634338, 35.522472, 43.058308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928581, 35.859871, 42.490238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234287, 35.674755, 42.669895>,  <41.417709, 35.563686, 42.777687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234287, 35.674755, 42.669895>,  <40.928581, 35.859871, 42.490238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234287, 35.674755, 42.669895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422913, -0.166124, -0.890813,
		0.486871, 0.870764, 0.068757,
		0.764265, -0.462789, 0.449139,
		41.463566, 35.535919, 42.804638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495380, 36.065365, 42.205139>,  <40.928581, 35.859871, 42.490238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495380, 36.065365, 42.205139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629967, 35.716473, 42.347130>,  <41.710716, 35.507137, 42.432323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629967, 35.716473, 42.347130>,  <41.495380, 36.065365, 42.205139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629967, 35.716473, 42.347130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515388, -0.144921, -0.844614,
		0.788142, 0.467130, 0.400777,
		0.336464, -0.872231, 0.354972,
		41.730907, 35.454803, 42.453621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148926, 36.023300, 42.062683>,  <41.495380, 36.065365, 42.205139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148926, 36.023300, 42.062683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085648, 35.637829, 42.148754>,  <42.047680, 35.406548, 42.200397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085648, 35.637829, 42.148754>,  <42.148926, 36.023300, 42.062683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085648, 35.637829, 42.148754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546453, -0.266952, -0.793804,
		0.822412, -0.007995, 0.568836,
		-0.158199, -0.963677, 0.215176,
		42.038189, 35.348724, 42.213306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829998, 35.722347, 41.964020>,  <42.148926, 36.023300, 42.062683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829998, 35.722347, 41.964020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573532, 35.415550, 41.953968>,  <42.419655, 35.231472, 41.947937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573532, 35.415550, 41.953968>,  <42.829998, 35.722347, 41.964020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573532, 35.415550, 41.953968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504857, -0.396917, -0.766535,
		0.577953, -0.504161, 0.641711,
		-0.641163, -0.766994, -0.025130,
		42.381184, 35.185452, 41.946430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263973, 35.117062, 41.931278>,  <42.829998, 35.722347, 41.964020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263973, 35.117062, 41.931278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913387, 35.030457, 41.759266>,  <42.703037, 34.978493, 41.656059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913387, 35.030457, 41.759266>,  <43.263973, 35.117062, 41.931278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913387, 35.030457, 41.759266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458933, -0.105668, -0.882165,
		0.145562, -0.970544, 0.191981,
		-0.876465, -0.216516, -0.430033,
		42.650448, 34.965500, 41.630257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430305, 34.610741, 41.481579>,  <43.263973, 35.117062, 41.931278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430305, 34.610741, 41.481579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080826, 34.756367, 41.352516>,  <42.871140, 34.843742, 41.275078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080826, 34.756367, 41.352516>,  <43.430305, 34.610741, 41.481579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080826, 34.756367, 41.352516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291492, -0.139207, -0.946390,
		-0.389462, -0.920912, 0.015504,
		-0.873700, 0.364064, -0.322655,
		42.818714, 34.865585, 41.255718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394932, 34.308609, 40.802589>,  <43.430305, 34.610741, 41.481579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394932, 34.308609, 40.802589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105209, 34.583191, 40.776783>,  <42.931377, 34.747940, 40.761299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105209, 34.583191, 40.776783>,  <43.394932, 34.308609, 40.802589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105209, 34.583191, 40.776783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242148, 0.165652, -0.955994,
		-0.645559, -0.708054, -0.286206,
		-0.724305, 0.686454, -0.064516,
		42.887917, 34.789127, 40.757427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921478, 34.070301, 40.169262>,  <43.394932, 34.308609, 40.802589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921478, 34.070301, 40.169262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878113, 34.460075, 40.247978>,  <42.852093, 34.693939, 40.295208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878113, 34.460075, 40.247978>,  <42.921478, 34.070301, 40.169262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878113, 34.460075, 40.247978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089068, 0.206686, -0.974345,
		-0.990108, -0.088104, -0.109198,
		-0.108414, 0.974433, 0.196794,
		42.845589, 34.752403, 40.307014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543976, 34.238071, 39.652802>,  <42.921478, 34.070301, 40.169262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543976, 34.238071, 39.652802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670845, 34.588299, 39.798561>,  <42.746967, 34.798435, 39.886017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670845, 34.588299, 39.798561>,  <42.543976, 34.238071, 39.652802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670845, 34.588299, 39.798561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057944, 0.365629, -0.928955,
		-0.946596, 0.315755, 0.065234,
		0.317174, 0.875565, 0.364399,
		42.765999, 34.850967, 39.907883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241714, 34.873043, 39.262253>,  <42.543976, 34.238071, 39.652802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241714, 34.873043, 39.262253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596642, 34.976715, 39.414825>,  <42.809597, 35.038918, 39.506371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596642, 34.976715, 39.414825>,  <42.241714, 34.873043, 39.262253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596642, 34.976715, 39.414825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279943, 0.354566, -0.892141,
		-0.366470, 0.898392, 0.242057,
		0.887317, 0.259181, 0.381436,
		42.862835, 35.054470, 39.529255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265488, 35.569138, 39.171436>,  <42.241714, 34.873043, 39.262253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265488, 35.569138, 39.171436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639366, 35.434666, 39.217628>,  <42.863693, 35.353981, 39.245342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639366, 35.434666, 39.217628>,  <42.265488, 35.569138, 39.171436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639366, 35.434666, 39.217628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262200, 0.432713, -0.862561,
		0.240006, 0.836507, 0.492599,
		0.934692, -0.336179, 0.115479,
		42.919773, 35.333813, 39.252274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630207, 36.079525, 38.940388>,  <42.265488, 35.569138, 39.171436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630207, 36.079525, 38.940388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891163, 35.776726, 38.955044>,  <43.047737, 35.595047, 38.963837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891163, 35.776726, 38.955044>,  <42.630207, 36.079525, 38.940388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891163, 35.776726, 38.955044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517136, 0.409284, -0.751703,
		0.554042, 0.509349, 0.658484,
		0.652386, -0.757001, 0.036642,
		43.086880, 35.549625, 38.966038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246296, 36.422359, 38.857288>,  <42.630207, 36.079525, 38.940388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246296, 36.422359, 38.857288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324036, 36.038307, 38.776909>,  <43.370678, 35.807877, 38.728680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324036, 36.038307, 38.776909>,  <43.246296, 36.422359, 38.857288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324036, 36.038307, 38.776909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624329, 0.279076, -0.729609,
		0.756599, 0.016340, 0.653675,
		0.194347, -0.960130, -0.200948,
		43.382339, 35.750267, 38.716625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947983, 36.397320, 38.807037>,  <43.246296, 36.422359, 38.857288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947983, 36.397320, 38.807037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815571, 36.076935, 38.607487>,  <43.736122, 35.884705, 38.487755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815571, 36.076935, 38.607487>,  <43.947983, 36.397320, 38.807037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815571, 36.076935, 38.607487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550296, 0.265609, -0.791597,
		0.766546, -0.536572, 0.352842,
		-0.331030, -0.800963, -0.498875,
		43.716263, 35.836647, 38.457825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449776, 36.274017, 38.350021>,  <43.947983, 36.397320, 38.807037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449776, 36.274017, 38.350021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133484, 36.074215, 38.208462>,  <43.943710, 35.954334, 38.123528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133484, 36.074215, 38.208462>,  <44.449776, 36.274017, 38.350021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133484, 36.074215, 38.208462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210156, 0.321479, -0.923302,
		0.574968, -0.804452, -0.149227,
		-0.790725, -0.499507, -0.353901,
		43.896267, 35.924362, 38.102291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693813, 35.823700, 37.785259>,  <44.449776, 36.274017, 38.350021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693813, 35.823700, 37.785259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306210, 35.898632, 37.720844>,  <44.073647, 35.943592, 37.682194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306210, 35.898632, 37.720844>,  <44.693813, 35.823700, 37.785259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306210, 35.898632, 37.720844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186361, 0.126433, -0.974312,
		-0.162162, -0.974126, -0.157427,
		-0.969006, 0.187334, -0.161036,
		44.015507, 35.954830, 37.672535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713184, 35.650093, 37.164692>,  <44.693813, 35.823700, 37.785259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713184, 35.650093, 37.164692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347496, 35.804134, 37.215111>,  <44.128082, 35.896561, 37.245361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347496, 35.804134, 37.215111>,  <44.713184, 35.650093, 37.164692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347496, 35.804134, 37.215111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014877, 0.342750, -0.939309,
		-0.404934, -0.856865, -0.319080,
		-0.914225, 0.385105, 0.126043,
		44.073227, 35.919666, 37.252922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293812, 35.382298, 36.626186>,  <44.713184, 35.650093, 37.164692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293812, 35.382298, 36.626186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202362, 35.745567, 36.766441>,  <44.147491, 35.963531, 36.850594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202362, 35.745567, 36.766441>,  <44.293812, 35.382298, 36.626186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202362, 35.745567, 36.766441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150407, 0.388803, -0.908961,
		-0.961826, -0.155071, -0.225486,
		-0.228623, 0.908177, 0.350637,
		44.133774, 36.018021, 36.871632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579617, 35.591499, 36.422127>,  <44.293812, 35.382298, 36.626186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579617, 35.591499, 36.422127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892593, 35.840054, 36.438431>,  <44.080379, 35.989185, 36.448212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892593, 35.840054, 36.438431>,  <43.579617, 35.591499, 36.422127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892593, 35.840054, 36.438431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040583, 0.116195, -0.992397,
		-0.621401, 0.774838, 0.116133,
		0.782441, 0.621390, 0.040759,
		44.127327, 36.026470, 36.450657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543430, 36.220543, 35.877373>,  <43.579617, 35.591499, 36.422127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543430, 36.220543, 35.877373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902523, 36.073627, 35.974682>,  <44.117977, 35.985477, 36.033066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902523, 36.073627, 35.974682>,  <43.543430, 36.220543, 35.877373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902523, 36.073627, 35.974682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218642, -0.107942, -0.969817,
		0.382462, 0.923822, -0.016598,
		0.897730, -0.367289, 0.243270,
		44.171841, 35.963440, 36.047665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145611, 36.643768, 35.711411>,  <43.543430, 36.220543, 35.877373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145611, 36.643768, 35.711411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237736, 36.254662, 35.700989>,  <44.293011, 36.021198, 35.694736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237736, 36.254662, 35.700989>,  <44.145611, 36.643768, 35.711411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237736, 36.254662, 35.700989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034223, 0.018657, -0.999240,
		0.972516, 0.231025, -0.028994,
		0.230308, -0.972769, -0.026050,
		44.306828, 35.962830, 35.693172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882282, 36.501728, 35.438541>,  <44.145611, 36.643768, 35.711411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882282, 36.501728, 35.438541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625881, 36.205456, 35.358047>,  <44.472038, 36.027691, 35.309750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625881, 36.205456, 35.358047>,  <44.882282, 36.501728, 35.438541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625881, 36.205456, 35.358047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274166, 0.023931, -0.961385,
		0.716898, -0.671427, 0.187731,
		-0.641007, -0.740684, -0.201239,
		44.433578, 35.983250, 35.297676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.281246, 36.053478, 35.015839>,  <44.882282, 36.501728, 35.438541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.281246, 36.053478, 35.015839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883923, 36.064587, 34.971008>,  <44.645527, 36.071251, 34.944111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883923, 36.064587, 34.971008>,  <45.281246, 36.053478, 35.015839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883923, 36.064587, 34.971008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114634, 0.353295, -0.928462,
		0.013813, -0.935100, -0.354115,
		-0.993312, 0.027768, -0.112075,
		44.585930, 36.072918, 34.937386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947514, 36.229179, 34.655918>,  <45.281246, 36.053478, 35.015839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.947514, 36.229179, 34.655918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187473, 35.909729, 34.636665>,  <46.331448, 35.718060, 34.625114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187473, 35.909729, 34.636665>,  <45.947514, 36.229179, 34.655918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187473, 35.909729, 34.636665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204892, -0.095201, -0.974144,
		0.773395, 0.594249, -0.220743,
		0.599899, -0.798627, -0.048129,
		46.367443, 35.670139, 34.622227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501320, 36.355717, 34.208515>,  <45.947514, 36.229179, 34.655918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501320, 36.355717, 34.208515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355255, 35.983337, 34.208199>,  <46.267616, 35.759911, 34.208008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355255, 35.983337, 34.208199>,  <46.501320, 36.355717, 34.208515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355255, 35.983337, 34.208199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099473, 0.039864, -0.994241,
		0.925616, -0.362977, -0.107161,
		-0.365159, -0.930945, -0.000793,
		46.245708, 35.704056, 34.207962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727974, 36.044266, 33.596466>,  <46.501320, 36.355717, 34.208515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727974, 36.044266, 33.596466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410984, 35.819233, 33.690685>,  <46.220791, 35.684216, 33.747215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410984, 35.819233, 33.690685>,  <46.727974, 36.044266, 33.596466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410984, 35.819233, 33.690685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239969, -0.067439, -0.968435,
		0.560708, -0.823987, -0.081558,
		-0.792478, -0.562580, 0.235545,
		46.173241, 35.650459, 33.761349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.720055, 35.583935, 33.129162>,  <46.727974, 36.044266, 33.596466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.720055, 35.583935, 33.129162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337219, 35.590218, 33.244911>,  <46.107517, 35.593987, 33.314362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337219, 35.590218, 33.244911>,  <46.720055, 35.583935, 33.129162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.337219, 35.590218, 33.244911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289322, -0.109165, -0.950987,
		0.016658, -0.993900, 0.109024,
		-0.957087, 0.015702, 0.289376,
		46.050095, 35.594929, 33.331722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434341, 35.176205, 32.674229>,  <46.720055, 35.583935, 33.129162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434341, 35.176205, 32.674229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105862, 35.346310, 32.826431>,  <45.908775, 35.448372, 32.917751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105862, 35.346310, 32.826431>,  <46.434341, 35.176205, 32.674229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.105862, 35.346310, 32.826431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438092, -0.042559, -0.897922,
		-0.365658, -0.904069, 0.221253,
		-0.821200, 0.425262, 0.380503,
		45.859501, 35.473888, 32.940582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879829, 34.671116, 32.521572>,  <46.434341, 35.176205, 32.674229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879829, 34.671116, 32.521572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730392, 35.038593, 32.572834>,  <45.640732, 35.259079, 32.603592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730392, 35.038593, 32.572834>,  <45.879829, 34.671116, 32.521572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730392, 35.038593, 32.572834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499518, -0.082840, -0.862334,
		-0.781609, -0.386175, 0.489854,
		-0.373591, 0.918698, 0.128153,
		45.618317, 35.314201, 32.611279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199360, 34.576473, 32.275002>,  <45.879829, 34.671116, 32.521572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199360, 34.576473, 32.275002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203152, 34.976204, 32.289131>,  <45.205429, 35.216042, 32.297607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203152, 34.976204, 32.289131>,  <45.199360, 34.576473, 32.275002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203152, 34.976204, 32.289131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490946, 0.035428, -0.870469,
		-0.871138, -0.009086, 0.490953,
		0.009484, 0.999331, 0.035324,
		45.205997, 35.276005, 32.299728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435230, 34.738007, 32.134922>,  <45.199360, 34.576473, 32.275002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435230, 34.738007, 32.134922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669529, 35.051365, 32.051792>,  <44.810108, 35.239380, 32.001915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669529, 35.051365, 32.051792>,  <44.435230, 34.738007, 32.134922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669529, 35.051365, 32.051792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589135, 0.235440, -0.772974,
		-0.556612, 0.575207, 0.599433,
		0.585751, 0.783393, -0.207826,
		44.845253, 35.286385, 31.989445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005024, 35.172752, 31.864927>,  <44.435230, 34.738007, 32.134922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005024, 35.172752, 31.864927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356735, 35.297390, 31.720827>,  <44.567760, 35.372173, 31.634367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356735, 35.297390, 31.720827>,  <44.005024, 35.172752, 31.864927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356735, 35.297390, 31.720827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426565, 0.178613, -0.886645,
		-0.211929, 0.933277, 0.289966,
		0.879277, 0.311595, -0.360250,
		44.620518, 35.390869, 31.612753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880028, 35.752712, 31.485531>,  <44.005024, 35.172752, 31.864927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880028, 35.752712, 31.485531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229729, 35.606762, 31.357441>,  <44.439548, 35.519192, 31.280586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229729, 35.606762, 31.357441>,  <43.880028, 35.752712, 31.485531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229729, 35.606762, 31.357441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262534, 0.199508, -0.944072,
		0.408359, 0.909428, 0.078627,
		0.874253, -0.364878, -0.320227,
		44.492004, 35.497299, 31.261374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948845, 36.099472, 30.775726>,  <43.880028, 35.752712, 31.485531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948845, 36.099472, 30.775726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201157, 35.789089, 30.775518>,  <44.352543, 35.602859, 30.775394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201157, 35.789089, 30.775518>,  <43.948845, 36.099472, 30.775726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201157, 35.789089, 30.775518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193753, -0.156857, -0.968430,
		0.751382, 0.610968, -0.249287,
		0.630781, -0.775960, -0.000518,
		44.390392, 35.556301, 30.775364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273792, 36.162674, 30.171589>,  <43.948845, 36.099472, 30.775726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273792, 36.162674, 30.171589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369022, 35.787033, 30.270710>,  <44.426163, 35.561649, 30.330183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369022, 35.787033, 30.270710>,  <44.273792, 36.162674, 30.171589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369022, 35.787033, 30.270710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129820, -0.283619, -0.950109,
		0.962531, 0.194030, -0.189438,
		0.238078, -0.939102, 0.247803,
		44.440445, 35.505302, 30.345051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788525, 35.896812, 29.699198>,  <44.273792, 36.162674, 30.171589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788525, 35.896812, 29.699198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619297, 35.556690, 29.824411>,  <44.517761, 35.352615, 29.899540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619297, 35.556690, 29.824411>,  <44.788525, 35.896812, 29.699198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619297, 35.556690, 29.824411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264161, -0.214720, -0.940273,
		0.866735, -0.480493, -0.133776,
		-0.423071, -0.850307, 0.313033,
		44.492374, 35.301598, 29.918322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900707, 35.470875, 29.202839>,  <44.788525, 35.896812, 29.699198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900707, 35.470875, 29.202839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587845, 35.288948, 29.373190>,  <44.400127, 35.179790, 29.475401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587845, 35.288948, 29.373190>,  <44.900707, 35.470875, 29.202839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587845, 35.288948, 29.373190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322643, -0.289090, -0.901293,
		0.533041, -0.842358, 0.079369,
		-0.782156, -0.454818, 0.425877,
		44.353199, 35.152504, 29.500954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966660, 34.760452, 28.984467>,  <44.900707, 35.470875, 29.202839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966660, 34.760452, 28.984467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589237, 34.845676, 29.085903>,  <44.362785, 34.896809, 29.146765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589237, 34.845676, 29.085903>,  <44.966660, 34.760452, 28.984467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589237, 34.845676, 29.085903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308715, -0.288343, -0.906396,
		-0.119990, -0.933523, 0.337841,
		-0.943556, 0.213055, 0.253594,
		44.306171, 34.909592, 29.161982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671329, 34.202980, 28.687977>,  <44.966660, 34.760452, 28.984467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671329, 34.202980, 28.687977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394272, 34.477463, 28.776852>,  <44.228039, 34.642151, 28.830175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394272, 34.477463, 28.776852>,  <44.671329, 34.202980, 28.687977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394272, 34.477463, 28.776852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479253, -0.207634, -0.852763,
		-0.539039, -0.697142, 0.472683,
		-0.692642, 0.686208, 0.222185,
		44.186478, 34.683327, 28.843508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105221, 33.918175, 28.501364>,  <44.671329, 34.202980, 28.687977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105221, 33.918175, 28.501364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999321, 34.303116, 28.525936>,  <43.935780, 34.534081, 28.540680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999321, 34.303116, 28.525936>,  <44.105221, 33.918175, 28.501364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999321, 34.303116, 28.525936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478810, -0.075894, -0.874632,
		-0.837046, -0.260977, 0.480880,
		-0.264754, 0.962357, 0.061432,
		43.919895, 34.591824, 28.544365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466446, 33.932884, 28.371511>,  <44.105221, 33.918175, 28.501364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466446, 33.932884, 28.371511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606701, 34.297466, 28.285435>,  <43.690853, 34.516216, 28.233788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606701, 34.297466, 28.285435>,  <43.466446, 33.932884, 28.371511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606701, 34.297466, 28.285435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426437, -0.049189, -0.903179,
		-0.833789, 0.408457, 0.371429,
		0.350639, 0.911452, -0.215194,
		43.711891, 34.570900, 28.220877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038082, 34.262352, 27.857260>,  <43.466446, 33.932884, 28.371511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038082, 34.262352, 27.857260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300186, 34.562626, 27.823519>,  <43.457447, 34.742790, 27.803274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300186, 34.562626, 27.823519>,  <43.038082, 34.262352, 27.857260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300186, 34.562626, 27.823519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307787, 0.163337, -0.937330,
		-0.689859, 0.640155, 0.338078,
		0.655257, 0.750682, -0.084352,
		43.496765, 34.787830, 27.798214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603596, 34.786076, 27.488337>,  <43.038082, 34.262352, 27.857260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603596, 34.786076, 27.488337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991451, 34.868294, 27.435341>,  <43.224163, 34.917625, 27.403543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991451, 34.868294, 27.435341>,  <42.603596, 34.786076, 27.488337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991451, 34.868294, 27.435341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184978, 0.262102, -0.947146,
		-0.159957, 0.942896, 0.292166,
		0.969637, 0.205547, -0.132490,
		43.282341, 34.929958, 27.395594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624580, 35.495922, 27.238047>,  <42.603596, 34.786076, 27.488337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624580, 35.495922, 27.238047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979996, 35.353310, 27.122534>,  <43.193245, 35.267742, 27.053226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979996, 35.353310, 27.122534>,  <42.624580, 35.495922, 27.238047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979996, 35.353310, 27.122534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188032, 0.291166, -0.938012,
		0.418511, 0.887756, 0.191673,
		0.888534, -0.356527, -0.288782,
		43.246555, 35.246353, 27.035898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870510, 35.935612, 26.684513>,  <42.624580, 35.495922, 27.238047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870510, 35.935612, 26.684513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049526, 35.582249, 26.628935>,  <43.156937, 35.370232, 26.595587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049526, 35.582249, 26.628935>,  <42.870510, 35.935612, 26.684513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049526, 35.582249, 26.628935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189335, 0.058251, -0.980183,
		0.873992, 0.464977, -0.141190,
		0.447538, -0.883404, -0.138948,
		43.183788, 35.317226, 26.587250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453930, 35.903069, 26.264820>,  <42.870510, 35.935612, 26.684513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453930, 35.903069, 26.264820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282158, 35.548489, 26.195776>,  <43.179092, 35.335739, 26.154350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282158, 35.548489, 26.195776>,  <43.453930, 35.903069, 26.264820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282158, 35.548489, 26.195776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205998, 0.282239, -0.936966,
		0.879290, -0.366808, -0.303810,
		-0.429434, -0.886449, -0.172608,
		43.153328, 35.282555, 26.143993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647747, 35.623844, 25.617167>,  <43.453930, 35.903069, 26.264820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647747, 35.623844, 25.617167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301025, 35.439144, 25.692467>,  <43.092991, 35.328323, 25.737646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301025, 35.439144, 25.692467>,  <43.647747, 35.623844, 25.617167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301025, 35.439144, 25.692467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294319, 0.169011, -0.940644,
		0.402529, -0.870758, -0.282401,
		-0.866803, -0.461753, 0.188249,
		43.040985, 35.300617, 25.748941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579086, 35.065723, 25.170027>,  <43.647747, 35.623844, 25.617167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579086, 35.065723, 25.170027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217491, 35.188091, 25.289501>,  <43.000534, 35.261513, 25.361185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217491, 35.188091, 25.289501>,  <43.579086, 35.065723, 25.170027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217491, 35.188091, 25.289501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261729, 0.156446, -0.952377,
		-0.338082, -0.939114, -0.061357,
		-0.903990, 0.305923, 0.298684,
		42.946293, 35.279869, 25.379107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935623, 34.456844, 25.354040>,  <43.579086, 35.065723, 25.170027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935623, 34.456844, 25.354040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049477, 34.155064, 25.590612>,  <44.117790, 33.973995, 25.732555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049477, 34.155064, 25.590612>,  <43.935623, 34.456844, 25.354040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049477, 34.155064, 25.590612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302387, -0.656112, -0.691432,
		0.909694, 0.017967, -0.414890,
		0.284637, -0.754449, 0.591429,
		44.134869, 33.928730, 25.768042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041592, 33.835667, 24.971943>,  <43.935623, 34.456844, 25.354040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041592, 33.835667, 24.971943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058804, 33.648792, 25.325188>,  <44.069130, 33.536667, 25.537134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058804, 33.648792, 25.325188>,  <44.041592, 33.835667, 24.971943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058804, 33.648792, 25.325188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311872, -0.846039, -0.432381,
		0.949149, -0.256813, -0.182105,
		0.043027, -0.467187, 0.883111,
		44.071712, 33.508636, 25.590120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390308, 33.185738, 24.869255>,  <44.041592, 33.835667, 24.971943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390308, 33.185738, 24.869255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173904, 33.087257, 25.190924>,  <44.044064, 33.028168, 25.383924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173904, 33.087257, 25.190924>,  <44.390308, 33.185738, 24.869255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173904, 33.087257, 25.190924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309237, -0.830971, -0.462449,
		0.782102, -0.498869, 0.373426,
		-0.541008, -0.246205, 0.804173,
		44.011600, 33.013397, 25.432175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433453, 32.487686, 24.993849>,  <44.390308, 33.185738, 24.869255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433453, 32.487686, 24.993849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795162, 32.567402, 24.842810>,  <45.012188, 32.615231, 24.752186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795162, 32.567402, 24.842810>,  <44.433453, 32.487686, 24.993849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795162, 32.567402, 24.842810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385046, 0.001493, 0.922896,
		0.184486, -0.979940, -0.075385,
		0.904270, 0.199289, -0.377597,
		45.066444, 32.627190, 24.729530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890373, 32.018723, 25.195145>,  <44.433453, 32.487686, 24.993849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890373, 32.018723, 25.195145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036400, 32.389549, 25.161030>,  <45.124016, 32.612045, 25.140560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036400, 32.389549, 25.161030>,  <44.890373, 32.018723, 25.195145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036400, 32.389549, 25.161030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232447, -0.002055, 0.972607,
		0.901497, -0.374890, -0.216244,
		0.365065, 0.927067, -0.085289,
		45.145920, 32.667671, 25.135443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622044, 32.062366, 25.548326>,  <44.890373, 32.018723, 25.195145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622044, 32.062366, 25.548326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458477, 32.427216, 25.536936>,  <45.360336, 32.646126, 25.530102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458477, 32.427216, 25.536936>,  <45.622044, 32.062366, 25.548326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458477, 32.427216, 25.536936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314550, 0.170175, 0.933863,
		0.856647, 0.372915, -0.356497,
		-0.408918, 0.912127, -0.028479,
		45.335800, 32.700855, 25.528393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.125240, 32.626858, 25.719868>,  <45.622044, 32.062366, 25.548326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.125240, 32.626858, 25.719868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768131, 32.771408, 25.827469>,  <45.553867, 32.858139, 25.892029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768131, 32.771408, 25.827469>,  <46.125240, 32.626858, 25.719868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768131, 32.771408, 25.827469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358689, 0.208909, 0.909780,
		0.272579, 0.908714, -0.316131,
		-0.892773, 0.361379, 0.269002,
		45.500298, 32.879822, 25.908169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148781, 33.309658, 26.138708>,  <46.125240, 32.626858, 25.719868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148781, 33.309658, 26.138708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793602, 33.150715, 26.231371>,  <45.580494, 33.055351, 26.286968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793602, 33.150715, 26.231371>,  <46.148781, 33.309658, 26.138708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793602, 33.150715, 26.231371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222081, 0.070676, 0.972463,
		-0.402784, 0.914940, 0.025489,
		-0.887944, -0.397353, 0.231658,
		45.527218, 33.031509, 26.300869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853775, 33.771004, 26.544954>,  <46.148781, 33.309658, 26.138708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853775, 33.771004, 26.544954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692322, 33.413342, 26.622482>,  <45.595451, 33.198746, 26.668999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692322, 33.413342, 26.622482>,  <45.853775, 33.771004, 26.544954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692322, 33.413342, 26.622482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134846, 0.151392, 0.979233,
		-0.904930, 0.421385, 0.059467,
		-0.403631, -0.894156, 0.193822,
		45.571232, 33.145096, 26.680630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267666, 33.883129, 27.008883>,  <45.853775, 33.771004, 26.544954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267666, 33.883129, 27.008883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372810, 33.501442, 27.065973>,  <45.435898, 33.272430, 27.100227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372810, 33.501442, 27.065973>,  <45.267666, 33.883129, 27.008883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372810, 33.501442, 27.065973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135387, 0.109987, 0.984669,
		-0.955288, -0.278154, -0.100278,
		0.262860, -0.954218, 0.142728,
		45.451668, 33.215176, 27.108791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836472, 33.733051, 27.573635>,  <45.267666, 33.883129, 27.008883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836472, 33.733051, 27.573635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095730, 33.428726, 27.560478>,  <45.251286, 33.246132, 27.552584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095730, 33.428726, 27.560478>,  <44.836472, 33.733051, 27.573635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095730, 33.428726, 27.560478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022763, -0.023820, 0.999457,
		-0.761179, -0.648539, 0.001880,
		0.648142, -0.760809, -0.032894,
		45.290173, 33.200485, 27.550610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714191, 33.393986, 28.191792>,  <44.836472, 33.733051, 27.573635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714191, 33.393986, 28.191792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047760, 33.194019, 28.098278>,  <45.247902, 33.074039, 28.042170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047760, 33.194019, 28.098278>,  <44.714191, 33.393986, 28.191792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047760, 33.194019, 28.098278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075791, -0.315858, 0.945774,
		-0.546648, -0.806424, -0.225513,
		0.833926, -0.499913, -0.233783,
		45.297939, 33.044044, 28.028143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839722, 32.829136, 28.676456>,  <44.714191, 33.393986, 28.191792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839722, 32.829136, 28.676456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204914, 32.873951, 28.519533>,  <45.424030, 32.900841, 28.425379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204914, 32.873951, 28.519533>,  <44.839722, 32.829136, 28.676456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204914, 32.873951, 28.519533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407992, -0.250603, 0.877918,
		0.000044, -0.961585, -0.274506,
		0.912985, 0.112036, -0.392308,
		45.478809, 32.907562, 28.401840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169140, 32.199589, 28.795830>,  <44.839722, 32.829136, 28.676456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169140, 32.199589, 28.795830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.441914, 32.489738, 28.758322>,  <45.605579, 32.663830, 28.735817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.441914, 32.489738, 28.758322>,  <45.169140, 32.199589, 28.795830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441914, 32.489738, 28.758322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399661, -0.262180, 0.878369,
		0.612563, -0.636469, -0.468695,
		0.681937, 0.725375, -0.093771,
		45.646496, 32.707352, 28.730190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.782860, 31.891247, 29.049393>,  <45.169140, 32.199589, 28.795830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.782860, 31.891247, 29.049393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.842667, 32.286716, 29.054510>,  <45.878551, 32.523998, 29.057581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.842667, 32.286716, 29.054510>,  <45.782860, 31.891247, 29.049393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.842667, 32.286716, 29.054510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336668, -0.063073, 0.939508,
		0.929677, -0.136166, -0.342287,
		0.149518, 0.988676, 0.012795,
		45.887524, 32.583321, 29.058348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358150, 31.963274, 29.415680>,  <45.782860, 31.891247, 29.049393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358150, 31.963274, 29.415680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205189, 32.332825, 29.421665>,  <46.113411, 32.554554, 29.425257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205189, 32.332825, 29.421665>,  <46.358150, 31.963274, 29.415680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205189, 32.332825, 29.421665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455036, 0.174202, 0.873267,
		0.804183, 0.340748, -0.487012,
		-0.382402, 0.923875, 0.014962,
		46.090469, 32.609985, 29.426153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.872646, 32.325531, 29.711664>,  <46.358150, 31.963274, 29.415680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.872646, 32.325531, 29.711664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549278, 32.551895, 29.776411>,  <46.355255, 32.687714, 29.815260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549278, 32.551895, 29.776411>,  <46.872646, 32.325531, 29.711664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549278, 32.551895, 29.776411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340258, 0.224914, 0.913038,
		0.480290, 0.793196, -0.374381,
		-0.808422, 0.565909, 0.161868,
		46.306751, 32.721668, 29.824972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.221321, 32.933212, 29.944334>,  <46.872646, 32.325531, 29.711664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.221321, 32.933212, 29.944334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.837364, 32.980137, 30.046192>,  <46.606991, 33.008289, 30.107307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.837364, 32.980137, 30.046192>,  <47.221321, 32.933212, 29.944334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.837364, 32.980137, 30.046192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266626, 0.101121, 0.958481,
		0.086689, 0.987934, -0.128343,
		-0.959893, 0.117310, 0.254643,
		46.549397, 33.015331, 30.122585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.201458, 33.603470, 30.359816>,  <47.221321, 32.933212, 29.944334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.201458, 33.603470, 30.359816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.875526, 33.384270, 30.435446>,  <46.679966, 33.252750, 30.480824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.875526, 33.384270, 30.435446>,  <47.201458, 33.603470, 30.359816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.875526, 33.384270, 30.435446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064518, 0.238409, 0.969019,
		-0.576096, 0.801786, -0.158908,
		-0.814832, -0.547996, 0.189076,
		46.631077, 33.219872, 30.492168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.787415, 34.016323, 30.723825>,  <47.201458, 33.603470, 30.359816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.787415, 34.016323, 30.723825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.645180, 33.650532, 30.801071>,  <46.559837, 33.431057, 30.847418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.645180, 33.650532, 30.801071>,  <46.787415, 34.016323, 30.723825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.645180, 33.650532, 30.801071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072256, 0.232896, 0.969814,
		-0.931845, 0.330902, -0.148892,
		-0.355590, -0.914474, 0.193113,
		46.538502, 33.376190, 30.859005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312210, 34.134785, 31.242159>,  <46.787415, 34.016323, 30.723825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312210, 34.134785, 31.242159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422215, 33.753441, 31.291912>,  <46.488216, 33.524635, 31.321764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422215, 33.753441, 31.291912>,  <46.312210, 34.134785, 31.242159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422215, 33.753441, 31.291912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076876, 0.107154, 0.991266,
		-0.958364, -0.282167, -0.043823,
		0.275007, -0.953362, 0.124384,
		46.504715, 33.467434, 31.329227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866455, 33.892677, 31.828028>,  <46.312210, 34.134785, 31.242159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866455, 33.892677, 31.828028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171505, 33.634560, 31.810146>,  <46.354534, 33.479691, 31.799417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171505, 33.634560, 31.810146>,  <45.866455, 33.892677, 31.828028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171505, 33.634560, 31.810146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074667, 0.019172, 0.997024,
		-0.642517, -0.763693, 0.062803,
		0.762625, -0.645294, -0.044704,
		46.400291, 33.440971, 31.796736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749481, 33.486755, 32.378338>,  <45.866455, 33.892677, 31.828028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749481, 33.486755, 32.378338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140961, 33.445904, 32.307102>,  <46.375847, 33.421391, 32.264359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140961, 33.445904, 32.307102>,  <45.749481, 33.486755, 32.378338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140961, 33.445904, 32.307102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192692, 0.157678, 0.968508,
		-0.070836, -0.982195, 0.173999,
		0.978699, -0.102133, -0.178092,
		46.434570, 33.415264, 32.253674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047535, 32.920040, 32.813904>,  <45.749481, 33.486755, 32.378338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047535, 32.920040, 32.813904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364285, 33.138046, 32.703709>,  <46.554337, 33.268848, 32.637592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364285, 33.138046, 32.703709>,  <46.047535, 32.920040, 32.813904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364285, 33.138046, 32.703709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282171, 0.073529, 0.956542,
		0.541583, -0.835198, -0.095560,
		0.791876, 0.545011, -0.275491,
		46.601849, 33.301548, 32.621059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579624, 32.674671, 33.232677>,  <46.047535, 32.920040, 32.813904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579624, 32.674671, 33.232677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726894, 33.027775, 33.115936>,  <46.815254, 33.239639, 33.045891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726894, 33.027775, 33.115936>,  <46.579624, 32.674671, 33.232677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726894, 33.027775, 33.115936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362251, 0.152901, 0.919454,
		0.856285, -0.444242, -0.263488,
		0.368172, 0.882763, -0.291854,
		46.837345, 33.292603, 33.028381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.292343, 32.717972, 33.414673>,  <46.579624, 32.674671, 33.232677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.292343, 32.717972, 33.414673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.144550, 33.086891, 33.369343>,  <47.055874, 33.308243, 33.342144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.144550, 33.086891, 33.369343>,  <47.292343, 32.717972, 33.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.144550, 33.086891, 33.369343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369485, 0.257719, 0.892783,
		0.852623, 0.287993, -0.435999,
		-0.369480, 0.922302, -0.113328,
		47.033707, 33.363583, 33.335346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.846046, 33.226593, 33.531513>,  <47.292343, 32.717972, 33.414673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.846046, 33.226593, 33.531513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.501953, 33.417896, 33.602242>,  <47.295498, 33.532677, 33.644680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.501953, 33.417896, 33.602242>,  <47.846046, 33.226593, 33.531513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.501953, 33.417896, 33.602242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477745, 0.634782, 0.607299,
		0.178202, 0.606896, -0.774546,
		-0.860235, 0.478257, 0.176822,
		47.243881, 33.561375, 33.655289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054497, 33.981522, 33.473648>,  <47.846046, 33.226593, 33.531513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054497, 33.981522, 33.473648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712284, 33.948627, 33.678120>,  <47.506958, 33.928890, 33.800804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712284, 33.948627, 33.678120>,  <48.054497, 33.981522, 33.473648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.712284, 33.948627, 33.678120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268904, 0.773130, 0.574423,
		-0.442445, 0.628895, -0.639323,
		-0.855531, -0.082234, 0.511179,
		47.455624, 33.923958, 33.831474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.649551, 34.552490, 33.422440>,  <48.054497, 33.981522, 33.473648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.649551, 34.552490, 33.422440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557430, 34.359768, 33.760628>,  <47.502155, 34.244137, 33.963543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557430, 34.359768, 33.760628>,  <47.649551, 34.552490, 33.422440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.557430, 34.359768, 33.760628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254914, 0.808620, 0.530238,
		-0.939137, 0.337640, -0.063412,
		-0.230305, -0.481802, 0.845474,
		47.488338, 34.215229, 34.014271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.232265, 35.067173, 33.754700>,  <47.649551, 34.552490, 33.422440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.232265, 35.067173, 33.754700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404942, 34.815647, 34.013382>,  <47.508545, 34.664730, 34.168591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404942, 34.815647, 34.013382>,  <47.232265, 35.067173, 33.754700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404942, 34.815647, 34.013382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126611, 0.752098, 0.646776,
		-0.893093, -0.197325, 0.404287,
		0.431688, -0.628818, 0.646709,
		47.534447, 34.627003, 34.207394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.980957, 35.044075, 34.456955>,  <47.232265, 35.067173, 33.754700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.980957, 35.044075, 34.456955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369389, 34.950863, 34.477718>,  <47.602448, 34.894936, 34.490177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369389, 34.950863, 34.477718>,  <46.980957, 35.044075, 34.456955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.369389, 34.950863, 34.477718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086283, 0.545276, 0.833804,
		-0.222606, -0.805214, 0.549615,
		0.971083, -0.233032, 0.051906,
		47.660713, 34.880955, 34.493290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.264374, 34.827812, 35.119804>,  <46.980957, 35.044075, 34.456955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.264374, 34.827812, 35.119804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585205, 35.002808, 34.957184>,  <47.777702, 35.107803, 34.859612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585205, 35.002808, 34.957184>,  <47.264374, 34.827812, 35.119804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.585205, 35.002808, 34.957184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039770, 0.718344, 0.694551,
		0.595899, -0.540913, 0.593564,
		0.802074, 0.437488, -0.406548,
		47.825829, 35.134052, 34.835220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.066593, 37.556789, 44.012531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960697, 37.175430, 43.954651>,  <35.897160, 36.946613, 43.919922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960697, 37.175430, 43.954651>,  <36.066593, 37.556789, 44.012531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960697, 37.175430, 43.954651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376328, 0.036011, -0.925787,
		0.887857, -0.299547, 0.349258,
		-0.264739, -0.953402, -0.144700,
		35.881275, 36.889408, 43.911240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676758, 37.142326, 43.790691>,  <36.066593, 37.556789, 44.012531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676758, 37.142326, 43.790691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346920, 36.963238, 43.652367>,  <36.149017, 36.855785, 43.569374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346920, 36.963238, 43.652367>,  <36.676758, 37.142326, 43.790691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346920, 36.963238, 43.652367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446699, -0.140223, -0.883628,
		0.347128, -0.883111, 0.315623,
		-0.824599, -0.447720, -0.345809,
		36.099541, 36.828922, 43.548622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943623, 36.495411, 43.464043>,  <36.676758, 37.142326, 43.790691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943623, 36.495411, 43.464043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.568787, 36.516174, 43.325962>,  <36.343884, 36.528633, 43.243114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.568787, 36.516174, 43.325962>,  <36.943623, 36.495411, 43.464043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568787, 36.516174, 43.325962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327949, -0.207941, -0.921526,
		-0.119617, -0.976763, 0.177836,
		-0.937092, 0.051909, -0.345202,
		36.287659, 36.531750, 43.222401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697594, 35.799896, 43.209099>,  <36.943623, 36.495411, 43.464043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697594, 35.799896, 43.209099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514038, 36.109978, 43.035442>,  <36.403904, 36.296024, 42.931248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514038, 36.109978, 43.035442>,  <36.697594, 35.799896, 43.209099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514038, 36.109978, 43.035442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420949, -0.240618, -0.874589,
		-0.782445, -0.584093, -0.215903,
		-0.458891, 0.775202, -0.434144,
		36.376369, 36.342537, 42.905201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525551, 35.545891, 42.626770>,  <36.697594, 35.799896, 43.209099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525551, 35.545891, 42.626770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469437, 35.934639, 42.551105>,  <36.435768, 36.167889, 42.505707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469437, 35.934639, 42.551105>,  <36.525551, 35.545891, 42.626770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469437, 35.934639, 42.551105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213466, -0.156868, -0.964274,
		-0.966826, -0.175649, -0.185456,
		-0.140282, 0.971874, -0.189159,
		36.427353, 36.226200, 42.494358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110580, 35.507370, 42.000084>,  <36.525551, 35.545891, 42.626770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110580, 35.507370, 42.000084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281155, 35.866993, 42.039776>,  <36.383499, 36.082767, 42.063591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281155, 35.866993, 42.039776>,  <36.110580, 35.507370, 42.000084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281155, 35.866993, 42.039776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331171, -0.053100, -0.942075,
		-0.841709, 0.434602, -0.320385,
		0.426440, 0.899056, 0.099233,
		36.409088, 36.136711, 42.069546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908840, 35.820236, 41.467972>,  <36.110580, 35.507370, 42.000084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908840, 35.820236, 41.467972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.235142, 36.027794, 41.570179>,  <36.430923, 36.152328, 41.631504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.235142, 36.027794, 41.570179>,  <35.908840, 35.820236, 41.467972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235142, 36.027794, 41.570179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302314, -0.005883, -0.953190,
		-0.493106, 0.854816, -0.161670,
		0.815753, 0.518898, 0.255522,
		36.479866, 36.183464, 41.646835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958157, 36.426476, 41.083984>,  <35.908840, 35.820236, 41.467972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958157, 36.426476, 41.083984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339474, 36.379265, 41.195198>,  <36.568264, 36.350937, 41.261925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339474, 36.379265, 41.195198>,  <35.958157, 36.426476, 41.083984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339474, 36.379265, 41.195198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278492, -0.012911, -0.960352,
		0.116938, 0.992926, 0.020562,
		0.953293, -0.118028, 0.278032,
		36.625462, 36.343857, 41.278606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390648, 36.775623, 40.680622>,  <35.958157, 36.426476, 41.083984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390648, 36.775623, 40.680622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677410, 36.556519, 40.853134>,  <36.849468, 36.425056, 40.956642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677410, 36.556519, 40.853134>,  <36.390648, 36.775623, 40.680622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677410, 36.556519, 40.853134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549359, 0.062962, -0.833211,
		0.429249, 0.834260, 0.346057,
		0.716903, -0.547765, 0.431281,
		36.892483, 36.392189, 40.982517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057159, 37.024372, 40.505058>,  <36.390648, 36.775623, 40.680622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057159, 37.024372, 40.505058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147644, 36.650455, 40.614605>,  <37.201935, 36.426105, 40.680332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147644, 36.650455, 40.614605>,  <37.057159, 37.024372, 40.505058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147644, 36.650455, 40.614605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684428, -0.047517, -0.727531,
		0.693099, 0.352015, 0.629046,
		0.226212, -0.934787, 0.273863,
		37.215508, 36.370018, 40.696762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764290, 37.025822, 40.564442>,  <37.057159, 37.024372, 40.505058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764290, 37.025822, 40.564442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689907, 36.636551, 40.510269>,  <37.645279, 36.402988, 40.477768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689907, 36.636551, 40.510269>,  <37.764290, 37.025822, 40.564442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689907, 36.636551, 40.510269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779484, -0.062200, -0.623327,
		0.598186, -0.221473, 0.770145,
		-0.185953, -0.973181, -0.135427,
		37.634121, 36.344597, 40.469643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436771, 36.712898, 40.582893>,  <37.764290, 37.025822, 40.564442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436771, 36.712898, 40.582893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.197933, 36.446918, 40.403419>,  <38.054630, 36.287331, 40.295734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.197933, 36.446918, 40.403419>,  <38.436771, 36.712898, 40.582893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197933, 36.446918, 40.403419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748571, -0.260866, -0.609582,
		0.288297, -0.699849, 0.653526,
		-0.597098, -0.664951, -0.448680,
		38.018803, 36.247433, 40.268814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824478, 36.140343, 40.550060>,  <38.436771, 36.712898, 40.582893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824478, 36.140343, 40.550060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529007, 36.072536, 40.289101>,  <38.351723, 36.031853, 40.132526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529007, 36.072536, 40.289101>,  <38.824478, 36.140343, 40.550060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529007, 36.072536, 40.289101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658979, -0.385184, -0.646050,
		-0.141777, -0.907138, 0.396233,
		-0.738679, -0.169514, -0.652395,
		38.307404, 36.021683, 40.093384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977390, 35.530819, 40.246292>,  <38.824478, 36.140343, 40.550060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977390, 35.530819, 40.246292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738049, 35.708710, 39.979702>,  <38.594444, 35.815445, 39.819748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738049, 35.708710, 39.979702>,  <38.977390, 35.530819, 40.246292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738049, 35.708710, 39.979702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670201, -0.178051, -0.720505,
		-0.439093, -0.877792, -0.191517,
		-0.598355, 0.444723, -0.666478,
		38.558540, 35.842125, 39.779758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984280, 35.082317, 39.708912>,  <38.977390, 35.530819, 40.246292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984280, 35.082317, 39.708912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.827370, 35.420067, 39.562950>,  <38.733223, 35.622715, 39.475372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.827370, 35.420067, 39.562950>,  <38.984280, 35.082317, 39.708912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827370, 35.420067, 39.562950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561843, -0.094163, -0.821868,
		-0.728324, -0.527415, -0.437467,
		-0.392272, 0.844373, -0.364905,
		38.709686, 35.673378, 39.453480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783905, 34.954472, 39.080109>,  <38.984280, 35.082317, 39.708912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783905, 34.954472, 39.080109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816906, 35.351196, 39.041122>,  <38.836708, 35.589233, 39.017731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816906, 35.351196, 39.041122>,  <38.783905, 34.954472, 39.080109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816906, 35.351196, 39.041122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569294, -0.127175, -0.812238,
		-0.817983, 0.011530, -0.575126,
		0.082507, 0.991813, -0.097463,
		38.841660, 35.648739, 39.011883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714775, 35.136955, 38.364338>,  <38.783905, 34.954472, 39.080109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714775, 35.136955, 38.364338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876736, 35.479271, 38.493137>,  <38.973911, 35.684658, 38.570415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876736, 35.479271, 38.493137>,  <38.714775, 35.136955, 38.364338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876736, 35.479271, 38.493137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421660, 0.137716, -0.896235,
		-0.811330, 0.498663, -0.305089,
		0.404904, 0.855786, 0.321999,
		38.998207, 35.736008, 38.589737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670891, 35.602859, 37.874264>,  <38.714775, 35.136955, 38.364338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670891, 35.602859, 37.874264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.977371, 35.745159, 38.088322>,  <39.161259, 35.830540, 38.216755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.977371, 35.745159, 38.088322>,  <38.670891, 35.602859, 37.874264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977371, 35.745159, 38.088322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514301, 0.159803, -0.842590,
		-0.385271, 0.920817, -0.060523,
		0.766199, 0.355752, 0.535145,
		39.207230, 35.851883, 38.248863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805374, 36.227928, 37.619274>,  <38.670891, 35.602859, 37.874264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805374, 36.227928, 37.619274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.140591, 36.102123, 37.797604>,  <39.341721, 36.026638, 37.904602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.140591, 36.102123, 37.797604>,  <38.805374, 36.227928, 37.619274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140591, 36.102123, 37.797604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504637, 0.136183, -0.852523,
		0.207419, 0.939433, 0.272844,
		0.838045, -0.314517, 0.445826,
		39.392006, 36.007767, 37.931351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317738, 36.781422, 37.425320>,  <38.805374, 36.227928, 37.619274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317738, 36.781422, 37.425320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.482994, 36.429188, 37.518169>,  <39.582150, 36.217846, 37.573879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.482994, 36.429188, 37.518169>,  <39.317738, 36.781422, 37.425320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482994, 36.429188, 37.518169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542071, 0.032976, -0.839686,
		0.731760, 0.472740, 0.490963,
		0.413143, -0.880585, 0.232128,
		39.606937, 36.165012, 37.587807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043526, 36.813133, 37.158810>,  <39.317738, 36.781422, 37.425320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043526, 36.813133, 37.158810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975479, 36.419922, 37.186283>,  <39.934650, 36.183994, 37.202766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975479, 36.419922, 37.186283>,  <40.043526, 36.813133, 37.158810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975479, 36.419922, 37.186283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564762, -0.154372, -0.810687,
		0.807530, -0.099121, 0.581438,
		-0.170114, -0.983028, 0.068680,
		39.924446, 36.125015, 37.206886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670422, 36.578266, 36.930637>,  <40.043526, 36.813133, 37.158810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670422, 36.578266, 36.930637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.455006, 36.243282, 36.893471>,  <40.325756, 36.042290, 36.871170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.455006, 36.243282, 36.893471>,  <40.670422, 36.578266, 36.930637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455006, 36.243282, 36.893471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566802, -0.278459, -0.775368,
		0.623468, -0.470232, 0.624636,
		-0.538538, -0.837462, -0.092918,
		40.293446, 35.992043, 36.865597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310017, 36.485191, 36.592579>,  <40.670422, 36.578266, 36.930637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310017, 36.485191, 36.592579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.500656, 36.833874, 36.638145>,  <41.615040, 37.043083, 36.665485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.500656, 36.833874, 36.638145>,  <41.310017, 36.485191, 36.592579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500656, 36.833874, 36.638145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276949, 0.025890, 0.960536,
		0.834360, -0.489337, 0.253759,
		0.476595, 0.871710, 0.113920,
		41.643635, 37.095387, 36.672321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767429, 36.320259, 37.169300>,  <41.310017, 36.485191, 36.592579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767429, 36.320259, 37.169300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.737389, 36.717422, 37.132454>,  <41.719364, 36.955723, 37.110348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.737389, 36.717422, 37.132454>,  <41.767429, 36.320259, 37.169300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737389, 36.717422, 37.132454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009731, 0.093101, 0.995609,
		0.997129, 0.073873, -0.016653,
		-0.075099, 0.992912, -0.092114,
		41.714859, 37.015297, 37.104820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256893, 36.600418, 37.647678>,  <41.767429, 36.320259, 37.169300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256893, 36.600418, 37.647678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.961208, 36.866440, 37.605217>,  <41.783798, 37.026054, 37.579742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.961208, 36.866440, 37.605217>,  <42.256893, 36.600418, 37.647678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961208, 36.866440, 37.605217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007892, 0.166156, 0.986068,
		0.673430, 0.728072, -0.128073,
		-0.739209, 0.665059, -0.106149,
		41.739445, 37.065956, 37.573372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436371, 37.186703, 38.201843>,  <42.256893, 36.600418, 37.647678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436371, 37.186703, 38.201843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.053764, 37.227509, 38.092545>,  <41.824200, 37.251991, 38.026966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.053764, 37.227509, 38.092545>,  <42.436371, 37.186703, 38.201843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053764, 37.227509, 38.092545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248004, 0.208586, 0.946037,
		0.153506, 0.972669, -0.174216,
		-0.956520, 0.102016, -0.273245,
		41.766808, 37.258114, 38.010571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356403, 37.682747, 38.650490>,  <42.436371, 37.186703, 38.201843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356403, 37.682747, 38.650490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.989891, 37.575375, 38.531578>,  <41.769985, 37.510952, 38.460232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.989891, 37.575375, 38.531578>,  <42.356403, 37.682747, 38.650490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989891, 37.575375, 38.531578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317526, 0.034382, 0.947626,
		-0.244151, 0.962685, -0.116737,
		-0.916279, -0.268431, -0.297283,
		41.715008, 37.494846, 38.442394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860130, 38.172958, 39.023903>,  <42.356403, 37.682747, 38.650490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860130, 38.172958, 39.023903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.608387, 37.885117, 38.906551>,  <41.457340, 37.712410, 38.836140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.608387, 37.885117, 38.906551>,  <41.860130, 38.172958, 39.023903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608387, 37.885117, 38.906551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553821, 0.150502, 0.818921,
		-0.545149, 0.677873, -0.493255,
		-0.629361, -0.719609, -0.293375,
		41.419579, 37.669235, 38.818539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175678, 38.450359, 39.097305>,  <41.860130, 38.172958, 39.023903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175678, 38.450359, 39.097305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.179047, 38.051109, 39.121578>,  <41.181068, 37.811562, 39.136143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.179047, 38.051109, 39.121578>,  <41.175678, 38.450359, 39.097305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179047, 38.051109, 39.121578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564867, 0.045324, 0.823936,
		-0.825139, -0.041212, -0.563424,
		0.008420, -0.998122, 0.060678,
		41.181572, 37.751671, 39.139782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539818, 38.331924, 39.191525>,  <41.175678, 38.450359, 39.097305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539818, 38.331924, 39.191525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.712524, 37.988308, 39.301521>,  <40.816151, 37.782139, 39.367519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.712524, 37.988308, 39.301521>,  <40.539818, 38.331924, 39.191525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712524, 37.988308, 39.301521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428324, 0.073034, 0.900669,
		-0.793797, -0.506668, -0.336414,
		0.431771, -0.859042, 0.274992,
		40.842056, 37.730595, 39.384018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013500, 37.897350, 39.446342>,  <40.539818, 38.331924, 39.191525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013500, 37.897350, 39.446342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337254, 37.725613, 39.606621>,  <40.531506, 37.622570, 39.702789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337254, 37.725613, 39.606621>,  <40.013500, 37.897350, 39.446342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337254, 37.725613, 39.606621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497178, -0.137787, 0.856638,
		-0.312582, -0.892568, -0.324984,
		0.809386, -0.429345, 0.400696,
		40.580070, 37.596809, 39.726830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766796, 37.267281, 39.726845>,  <40.013500, 37.897350, 39.446342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766796, 37.267281, 39.726845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.108253, 37.374939, 39.905216>,  <40.313129, 37.439533, 40.012238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.108253, 37.374939, 39.905216>,  <39.766796, 37.267281, 39.726845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108253, 37.374939, 39.905216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454193, -0.034401, 0.890239,
		0.254950, -0.962483, 0.092881,
		0.853644, 0.269152, 0.445924,
		40.364346, 37.455685, 40.038994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865978, 36.720226, 40.289433>,  <39.766796, 37.267281, 39.726845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865978, 36.720226, 40.289433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091824, 37.033382, 40.393967>,  <40.227329, 37.221275, 40.456688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091824, 37.033382, 40.393967>,  <39.865978, 36.720226, 40.289433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091824, 37.033382, 40.393967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286500, -0.111039, 0.951624,
		0.774037, -0.612169, 0.161605,
		0.564610, 0.782892, 0.261334,
		40.261208, 37.268250, 40.472366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102676, 36.552959, 40.927795>,  <39.865978, 36.720226, 40.289433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102676, 36.552959, 40.927795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.122135, 36.952156, 40.911564>,  <40.133812, 37.191673, 40.901825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.122135, 36.952156, 40.911564>,  <40.102676, 36.552959, 40.927795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122135, 36.952156, 40.911564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376296, 0.055951, 0.924809,
		0.925221, -0.029721, 0.378262,
		0.048650, 0.997991, -0.040583,
		40.136730, 37.251553, 40.899387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225475, 36.691319, 41.616367>,  <40.102676, 36.552959, 40.927795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225475, 36.691319, 41.616367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139107, 37.054146, 41.471813>,  <40.087284, 37.271843, 41.385082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139107, 37.054146, 41.471813>,  <40.225475, 36.691319, 41.616367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139107, 37.054146, 41.471813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566933, 0.184865, 0.802753,
		0.794962, 0.378214, 0.474332,
		-0.215925, 0.907072, -0.361382,
		40.074329, 37.326267, 41.363400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425610, 37.190796, 42.141052>,  <40.225475, 36.691319, 41.616367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425610, 37.190796, 42.141052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.174263, 37.388748, 41.900967>,  <40.023457, 37.507519, 41.756916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.174263, 37.388748, 41.900967>,  <40.425610, 37.190796, 42.141052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174263, 37.388748, 41.900967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418464, 0.435387, 0.797073,
		0.655776, 0.752021, -0.066495,
		-0.628367, 0.494876, -0.600210,
		39.985752, 37.537212, 41.720905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380428, 37.993126, 42.285336>,  <40.425610, 37.190796, 42.141052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380428, 37.993126, 42.285336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038712, 37.879074, 42.111492>,  <39.833679, 37.810642, 42.007187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038712, 37.879074, 42.111492>,  <40.380428, 37.993126, 42.285336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038712, 37.879074, 42.111492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513217, 0.330169, 0.792210,
		-0.082386, 0.899829, -0.428393,
		-0.854295, -0.285125, -0.434607,
		39.782421, 37.793537, 41.981110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961037, 38.492889, 42.464989>,  <40.380428, 37.993126, 42.285336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961037, 38.492889, 42.464989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687935, 38.223866, 42.350796>,  <39.524075, 38.062450, 42.282280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687935, 38.223866, 42.350796>,  <39.961037, 38.492889, 42.464989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687935, 38.223866, 42.350796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548512, 0.213693, 0.808375,
		-0.482676, 0.708517, -0.514809,
		-0.682758, -0.672562, -0.285486,
		39.483109, 38.022099, 42.265152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280304, 38.856495, 42.554150>,  <39.961037, 38.492889, 42.464989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280304, 38.856495, 42.554150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234509, 38.459229, 42.545155>,  <39.207031, 38.220867, 42.539757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234509, 38.459229, 42.545155>,  <39.280304, 38.856495, 42.554150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234509, 38.459229, 42.545155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462939, 0.033305, 0.885764,
		-0.878966, 0.111819, -0.463590,
		-0.114485, -0.993170, -0.022491,
		39.200165, 38.161278, 42.538406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578739, 38.770229, 42.914890>,  <39.280304, 38.856495, 42.554150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578739, 38.770229, 42.914890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732166, 38.400890, 42.921898>,  <38.824223, 38.179287, 42.926102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732166, 38.400890, 42.921898>,  <38.578739, 38.770229, 42.914890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732166, 38.400890, 42.921898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345604, -0.125925, 0.929893,
		-0.856409, -0.362727, -0.367414,
		0.383563, -0.923348, 0.017517,
		38.847237, 38.123886, 42.927155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.966511, 38.221581, 43.037384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307022, 38.042210, 43.146374>,  <38.511330, 37.934589, 43.211769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307022, 38.042210, 43.146374>,  <37.966511, 38.221581, 43.037384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307022, 38.042210, 43.146374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377716, -0.163235, 0.911419,
		-0.364226, -0.878788, -0.308336,
		0.851275, -0.448426, 0.272478,
		38.562405, 37.907681, 43.228119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703934, 37.642094, 43.268600>,  <37.966511, 38.221581, 43.037384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703934, 37.642094, 43.268600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078087, 37.681129, 43.404560>,  <38.302578, 37.704552, 43.486134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078087, 37.681129, 43.404560>,  <37.703934, 37.642094, 43.268600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078087, 37.681129, 43.404560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320287, -0.173615, 0.931275,
		0.149896, -0.979966, -0.131140,
		0.935386, 0.097592, 0.339895,
		38.358704, 37.710407, 43.506527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811878, 37.122841, 43.820736>,  <37.703934, 37.642094, 43.268600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811878, 37.122841, 43.820736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063572, 37.430325, 43.866604>,  <38.214588, 37.614815, 43.894123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063572, 37.430325, 43.866604>,  <37.811878, 37.122841, 43.820736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063572, 37.430325, 43.866604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383632, 0.178878, 0.905996,
		0.675941, -0.614070, 0.407459,
		0.629230, 0.768714, 0.114666,
		38.252342, 37.660938, 43.901005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231224, 36.934143, 44.490261>,  <37.811878, 37.122841, 43.820736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231224, 36.934143, 44.490261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228817, 37.327415, 44.417244>,  <38.227371, 37.563377, 44.373436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228817, 37.327415, 44.417244>,  <38.231224, 36.934143, 44.490261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228817, 37.327415, 44.417244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452448, 0.160110, 0.877300,
		0.891771, 0.087873, 0.443874,
		-0.006022, 0.983180, -0.182539,
		38.227009, 37.622368, 44.362484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435322, 37.168724, 45.029518>,  <38.231224, 36.934143, 44.490261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435322, 37.168724, 45.029518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.242222, 37.476028, 44.861366>,  <38.126362, 37.660412, 44.760475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.242222, 37.476028, 44.861366>,  <38.435322, 37.168724, 45.029518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242222, 37.476028, 44.861366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303676, 0.303381, 0.903184,
		0.821419, 0.563674, 0.086846,
		-0.482754, 0.768265, -0.420377,
		38.097397, 37.706509, 44.735252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576939, 37.642731, 45.494225>,  <38.435322, 37.168724, 45.029518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576939, 37.642731, 45.494225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.279526, 37.797127, 45.275806>,  <38.101078, 37.889767, 45.144756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.279526, 37.797127, 45.275806>,  <38.576939, 37.642731, 45.494225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279526, 37.797127, 45.275806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407392, 0.386065, 0.827638,
		0.530272, 0.837832, -0.129802,
		-0.743534, 0.385993, -0.546046,
		38.056465, 37.912926, 45.111992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537003, 38.302425, 45.751297>,  <38.576939, 37.642731, 45.494225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537003, 38.302425, 45.751297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186829, 38.246170, 45.566326>,  <37.976727, 38.212418, 45.455345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186829, 38.246170, 45.566326>,  <38.537003, 38.302425, 45.751297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186829, 38.246170, 45.566326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483292, 0.268426, 0.833293,
		0.006936, 0.952979, -0.302957,
		-0.875432, -0.140637, -0.462429,
		37.924198, 38.203979, 45.427597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184196, 38.824677, 45.982868>,  <38.537003, 38.302425, 45.751297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184196, 38.824677, 45.982868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.914032, 38.561829, 45.848995>,  <37.751934, 38.404121, 45.768673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.914032, 38.561829, 45.848995>,  <38.184196, 38.824677, 45.982868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914032, 38.561829, 45.848995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579764, 0.192694, 0.791671,
		-0.455730, 0.728742, -0.511122,
		-0.675414, -0.657119, -0.334681,
		37.711407, 38.364693, 45.748592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535183, 39.136009, 45.888313>,  <38.184196, 38.824677, 45.982868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535183, 39.136009, 45.888313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464581, 38.745110, 45.935345>,  <37.422218, 38.510571, 45.963562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464581, 38.745110, 45.935345>,  <37.535183, 39.136009, 45.888313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464581, 38.745110, 45.935345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473874, 0.189066, 0.860057,
		-0.862722, 0.096088, -0.496465,
		-0.176506, -0.977252, 0.117577,
		37.411629, 38.451935, 45.970619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861675, 39.164795, 45.962986>,  <37.535183, 39.136009, 45.888313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861675, 39.164795, 45.962986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026615, 38.835701, 46.119484>,  <37.125580, 38.638245, 46.213383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026615, 38.835701, 46.119484>,  <36.861675, 39.164795, 45.962986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026615, 38.835701, 46.119484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476478, 0.171273, 0.862342,
		-0.776489, -0.542008, -0.321391,
		0.412351, -0.822735, 0.391247,
		37.150322, 38.588882, 46.236858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571781, 39.177887, 46.614635>,  <36.861675, 39.164795, 45.962986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571781, 39.177887, 46.614635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.823322, 38.867485, 46.634075>,  <36.974247, 38.681244, 46.645741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.823322, 38.867485, 46.634075>,  <36.571781, 39.177887, 46.614635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823322, 38.867485, 46.634075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197714, -0.099148, 0.975233,
		-0.751962, -0.622891, -0.215777,
		0.628857, -0.776000, 0.048598,
		37.011978, 38.634686, 46.648655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217464, 38.601501, 46.927090>,  <36.571781, 39.177887, 46.614635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217464, 38.601501, 46.927090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.610481, 38.542976, 46.973053>,  <36.846291, 38.507862, 47.000629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.610481, 38.542976, 46.973053>,  <36.217464, 38.601501, 46.927090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610481, 38.542976, 46.973053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124933, -0.061251, 0.990273,
		-0.137858, -0.987340, -0.078462,
		0.982541, -0.146319, 0.114908,
		36.905243, 38.499081, 47.007526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396385, 38.249462, 47.565338>,  <36.217464, 38.601501, 46.927090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396385, 38.249462, 47.565338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.761433, 38.389511, 47.480911>,  <36.980461, 38.473541, 47.430256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.761433, 38.389511, 47.480911>,  <36.396385, 38.249462, 47.565338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761433, 38.389511, 47.480911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221376, 0.010807, 0.975129,
		0.343694, -0.936642, -0.067646,
		0.912615, 0.350121, -0.211065,
		37.035217, 38.494549, 47.417591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818939, 37.832104, 47.959949>,  <36.396385, 38.249462, 47.565338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818939, 37.832104, 47.959949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038841, 38.156487, 47.879829>,  <37.170784, 38.351116, 47.831757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038841, 38.156487, 47.879829>,  <36.818939, 37.832104, 47.959949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038841, 38.156487, 47.879829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203718, 0.102383, 0.973662,
		0.810101, -0.576084, -0.108920,
		0.549759, 0.810953, -0.200299,
		37.203770, 38.399773, 47.819740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393463, 37.775318, 48.437965>,  <36.818939, 37.832104, 47.959949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393463, 37.775318, 48.437965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.358147, 38.162750, 48.344971>,  <37.336956, 38.395210, 48.289173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.358147, 38.162750, 48.344971>,  <37.393463, 37.775318, 48.437965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358147, 38.162750, 48.344971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075976, 0.239269, 0.967976,
		0.993193, 0.067804, -0.094715,
		-0.088295, 0.968583, -0.232489,
		37.331657, 38.453323, 48.275223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887722, 38.130337, 48.785027>,  <37.393463, 37.775318, 48.437965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887722, 38.130337, 48.785027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642311, 38.440304, 48.724236>,  <37.495064, 38.626282, 48.687759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642311, 38.440304, 48.724236>,  <37.887722, 38.130337, 48.785027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642311, 38.440304, 48.724236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217233, 0.350652, 0.910963,
		0.759209, 0.525883, -0.383470,
		-0.613525, 0.774913, -0.151979,
		37.458252, 38.672779, 48.678642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301968, 38.699287, 49.045673>,  <37.887722, 38.130337, 48.785027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301968, 38.699287, 49.045673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918781, 38.813496, 49.034481>,  <37.688869, 38.882023, 49.027767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918781, 38.813496, 49.034481>,  <38.301968, 38.699287, 49.045673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918781, 38.813496, 49.034481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076380, 0.347839, 0.934438,
		0.276537, 0.893020, -0.355025,
		-0.957963, 0.285524, -0.027982,
		37.631393, 38.899155, 49.026085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247292, 39.305069, 49.483997>,  <38.301968, 38.699287, 49.045673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247292, 39.305069, 49.483997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870457, 39.170940, 49.486168>,  <37.644356, 39.090466, 49.487469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870457, 39.170940, 49.486168>,  <38.247292, 39.305069, 49.483997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870457, 39.170940, 49.486168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053461, 0.166134, 0.984653,
		-0.331073, 0.927341, -0.174439,
		-0.942090, -0.335317, 0.005426,
		37.587830, 39.070347, 49.487797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893848, 39.720188, 49.959087>,  <38.247292, 39.305069, 49.483997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893848, 39.720188, 49.959087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660866, 39.396248, 49.931107>,  <37.521076, 39.201885, 49.914318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660866, 39.396248, 49.931107>,  <37.893848, 39.720188, 49.959087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660866, 39.396248, 49.931107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087192, -0.023312, 0.995919,
		-0.808174, 0.586176, -0.057034,
		-0.582454, -0.809849, -0.069950,
		37.486130, 39.153294, 49.910122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280464, 39.849911, 50.386635>,  <37.893848, 39.720188, 49.959087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280464, 39.849911, 50.386635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253761, 39.454750, 50.330647>,  <37.237740, 39.217655, 50.297054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253761, 39.454750, 50.330647>,  <37.280464, 39.849911, 50.386635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253761, 39.454750, 50.330647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212673, -0.122976, 0.969354,
		-0.974840, 0.094481, -0.201890,
		-0.066758, -0.987902, -0.139975,
		37.233734, 39.158379, 50.288654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662319, 39.647385, 50.630760>,  <37.280464, 39.849911, 50.386635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662319, 39.647385, 50.630760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.894505, 39.322906, 50.659134>,  <37.033817, 39.128220, 50.676159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.894505, 39.322906, 50.659134>,  <36.662319, 39.647385, 50.630760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894505, 39.322906, 50.659134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312397, -0.141399, 0.939369,
		-0.751978, -0.567428, -0.335491,
		0.580463, -0.811191, 0.070933,
		37.068642, 39.079548, 50.680412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246304, 39.132217, 50.954765>,  <36.662319, 39.647385, 50.630760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246304, 39.132217, 50.954765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.619514, 39.008156, 51.027706>,  <36.843441, 38.933720, 51.071472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.619514, 39.008156, 51.027706>,  <36.246304, 39.132217, 50.954765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619514, 39.008156, 51.027706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222455, -0.098947, 0.969909,
		-0.282783, -0.945521, -0.161317,
		0.933031, -0.310159, 0.182355,
		36.899426, 38.915108, 51.082413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233723, 38.422752, 51.246021>,  <36.246304, 39.132217, 50.954765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233723, 38.422752, 51.246021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554005, 38.646629, 51.331451>,  <36.746174, 38.780956, 51.382710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554005, 38.646629, 51.331451>,  <36.233723, 38.422752, 51.246021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554005, 38.646629, 51.331451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208771, -0.073467, 0.975201,
		0.561506, -0.825436, 0.058022,
		0.800704, 0.559694, 0.213579,
		36.794216, 38.814537, 51.395527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685875, 38.038036, 51.801125>,  <36.233723, 38.422752, 51.246021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685875, 38.038036, 51.801125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.682850, 38.437279, 51.776733>,  <36.681034, 38.676826, 51.762100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.682850, 38.437279, 51.776733>,  <36.685875, 38.038036, 51.801125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682850, 38.437279, 51.776733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168189, 0.058839, 0.983997,
		0.985726, 0.017693, 0.167426,
		-0.007559, 0.998111, -0.060975,
		36.680584, 38.736713, 51.758442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068714, 37.556534, 51.609982>,  <36.685875, 38.038036, 51.801125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068714, 37.556534, 51.609982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.759556, 37.304581, 51.640648>,  <35.574059, 37.153408, 51.659050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.759556, 37.304581, 51.640648>,  <36.068714, 37.556534, 51.609982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759556, 37.304581, 51.640648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023663, -0.092130, -0.995466,
		0.634089, -0.771208, 0.056302,
		-0.772899, -0.629881, 0.076668,
		35.527687, 37.115616, 51.663647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175610, 37.036659, 51.093929>,  <36.068714, 37.556534, 51.609982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175610, 37.036659, 51.093929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783337, 36.989597, 51.156441>,  <35.547974, 36.961361, 51.193947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783337, 36.989597, 51.156441>,  <36.175610, 37.036659, 51.093929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783337, 36.989597, 51.156441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159088, 0.014841, -0.987153,
		0.113827, -0.992943, -0.033273,
		-0.980681, -0.117658, 0.156276,
		35.489132, 36.954300, 51.203323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992214, 36.514187, 50.629684>,  <36.175610, 37.036659, 51.093929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992214, 36.514187, 50.629684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646702, 36.679916, 50.744377>,  <35.439392, 36.779354, 50.813194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646702, 36.679916, 50.744377>,  <35.992214, 36.514187, 50.629684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646702, 36.679916, 50.744377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316512, -0.003397, -0.948582,
		-0.392042, -0.910125, 0.134071,
		-0.863784, 0.414320, 0.286734,
		35.387566, 36.804211, 50.830399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413376, 36.201317, 50.280289>,  <35.992214, 36.514187, 50.629684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413376, 36.201317, 50.280289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231396, 36.548878, 50.358292>,  <35.122208, 36.757416, 50.405094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231396, 36.548878, 50.358292>,  <35.413376, 36.201317, 50.280289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231396, 36.548878, 50.358292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360509, 0.020529, -0.932530,
		-0.814281, -0.494557, 0.303907,
		-0.454950, 0.868903, 0.195009,
		35.094910, 36.809547, 50.416794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706367, 36.221035, 49.899757>,  <35.413376, 36.201317, 50.280289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706367, 36.221035, 49.899757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757042, 36.612309, 49.965611>,  <34.787445, 36.847073, 50.005123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757042, 36.612309, 49.965611>,  <34.706367, 36.221035, 49.899757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757042, 36.612309, 49.965611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246684, 0.191823, -0.949921,
		-0.960780, 0.079729, 0.265604,
		0.126685, 0.978186, 0.164632,
		34.795048, 36.905766, 50.014999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124569, 36.532433, 49.547657>,  <34.706367, 36.221035, 49.899757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124569, 36.532433, 49.547657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.406662, 36.810974, 49.600925>,  <34.575920, 36.978100, 49.632885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.406662, 36.810974, 49.600925>,  <34.124569, 36.532433, 49.547657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406662, 36.810974, 49.600925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017205, 0.204587, -0.978697,
		-0.708763, 0.687922, 0.156263,
		0.705237, 0.696353, 0.133168,
		34.618233, 37.019878, 49.640877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819973, 37.197048, 49.218979>,  <34.124569, 36.532433, 49.547657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819973, 37.197048, 49.218979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215691, 37.230915, 49.266529>,  <34.453121, 37.251236, 49.295059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215691, 37.230915, 49.266529>,  <33.819973, 37.197048, 49.218979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215691, 37.230915, 49.266529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086998, 0.311844, -0.946142,
		-0.117175, 0.946354, 0.301140,
		0.989293, 0.084665, 0.118871,
		34.512478, 37.256313, 49.302189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065216, 37.756397, 48.691307>,  <33.819973, 37.197048, 49.218979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065216, 37.756397, 48.691307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381264, 37.538044, 48.802826>,  <34.570892, 37.407032, 48.869736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381264, 37.538044, 48.802826>,  <34.065216, 37.756397, 48.691307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381264, 37.538044, 48.802826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357674, 0.041229, -0.932936,
		0.497781, 0.836845, 0.227824,
		0.790116, -0.545885, 0.278795,
		34.618298, 37.374279, 48.886463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524231, 38.053574, 48.255745>,  <34.065216, 37.756397, 48.691307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524231, 38.053574, 48.255745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685493, 37.704327, 48.365387>,  <34.782249, 37.494778, 48.431171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685493, 37.704327, 48.365387>,  <34.524231, 38.053574, 48.255745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685493, 37.704327, 48.365387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340320, -0.134998, -0.930568,
		0.849500, 0.468443, 0.242715,
		0.403152, -0.873119, 0.274102,
		34.806438, 37.442390, 48.447617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132053, 38.050991, 47.907494>,  <34.524231, 38.053574, 48.255745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132053, 38.050991, 47.907494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061089, 37.667210, 47.995098>,  <35.018509, 37.436939, 48.047661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061089, 37.667210, 47.995098>,  <35.132053, 38.050991, 47.907494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061089, 37.667210, 47.995098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447264, -0.276844, -0.850478,
		0.876629, -0.052929, 0.478246,
		-0.177415, -0.959456, 0.219016,
		35.007866, 37.379372, 48.060802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727615, 37.643223, 47.740551>,  <35.132053, 38.050991, 47.907494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727615, 37.643223, 47.740551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420769, 37.387165, 47.723789>,  <35.236660, 37.233532, 47.713734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420769, 37.387165, 47.723789>,  <35.727615, 37.643223, 47.740551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420769, 37.387165, 47.723789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334472, -0.343361, -0.877628,
		0.547418, -0.687257, 0.477506,
		-0.767113, -0.640142, -0.041906,
		35.190636, 37.195122, 47.711216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088188, 37.019154, 47.678078>,  <35.727615, 37.643223, 47.740551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088188, 37.019154, 47.678078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.708652, 36.975800, 47.559452>,  <35.480930, 36.949787, 47.488277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.708652, 36.975800, 47.559452>,  <36.088188, 37.019154, 47.678078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708652, 36.975800, 47.559452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314661, -0.246650, -0.916598,
		0.026200, -0.963024, 0.268137,
		-0.948843, -0.108387, -0.296564,
		35.424000, 36.943283, 47.470482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084621, 36.380070, 47.320797>,  <36.088188, 37.019154, 47.678078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084621, 36.380070, 47.320797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742085, 36.542385, 47.193043>,  <35.536560, 36.639774, 47.116390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742085, 36.542385, 47.193043>,  <36.084621, 36.380070, 47.320797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742085, 36.542385, 47.193043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083864, -0.500984, -0.861384,
		-0.509559, -0.764421, 0.394980,
		-0.856339, 0.405801, -0.319388,
		35.485180, 36.664124, 47.097229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799549, 35.832577, 46.896137>,  <36.084621, 36.380070, 47.320797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799549, 35.832577, 46.896137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611763, 36.166016, 46.779713>,  <35.499092, 36.366077, 46.709858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611763, 36.166016, 46.779713>,  <35.799549, 35.832577, 46.896137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611763, 36.166016, 46.779713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093429, -0.374697, -0.922428,
		-0.877993, -0.405855, 0.253790,
		-0.469467, 0.833597, -0.291063,
		35.470924, 36.416096, 46.692394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421551, 35.644993, 46.308208>,  <35.799549, 35.832577, 46.896137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421551, 35.644993, 46.308208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403614, 36.043720, 46.281872>,  <35.392853, 36.282959, 46.266068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403614, 36.043720, 46.281872>,  <35.421551, 35.644993, 46.308208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403614, 36.043720, 46.281872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111687, -0.060495, -0.991901,
		-0.992731, -0.051830, -0.108619,
		-0.044839, 0.996822, -0.065844,
		35.390163, 36.342766, 46.262119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906635, 35.731422, 45.767151>,  <35.421551, 35.644993, 46.308208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906635, 35.731422, 45.767151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.130028, 36.059910, 45.813961>,  <35.264061, 36.257004, 45.842045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.130028, 36.059910, 45.813961>,  <34.906635, 35.731422, 45.767151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130028, 36.059910, 45.813961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080106, 0.087022, -0.992980,
		-0.825641, 0.563934, -0.017185,
		0.558480, 0.821222, 0.117023,
		35.297573, 36.306278, 45.849068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626690, 36.174927, 45.341553>,  <34.906635, 35.731422, 45.767151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626690, 36.174927, 45.341553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994785, 36.311913, 45.417313>,  <35.215645, 36.394104, 45.462769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994785, 36.311913, 45.417313>,  <34.626690, 36.174927, 45.341553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994785, 36.311913, 45.417313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064932, 0.343643, -0.936853,
		-0.385923, 0.874430, 0.293998,
		0.920243, 0.342463, 0.189398,
		35.270859, 36.414650, 45.474133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603413, 36.860119, 45.146019>,  <34.626690, 36.174927, 45.341553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603413, 36.860119, 45.146019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.982044, 36.731247, 45.140419>,  <35.209221, 36.653923, 45.137058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.982044, 36.731247, 45.140419>,  <34.603413, 36.860119, 45.146019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982044, 36.731247, 45.140419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135089, 0.435565, -0.889963,
		0.292820, 0.840527, 0.455818,
		0.946577, -0.322175, -0.013996,
		35.266018, 36.634594, 45.136219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960407, 37.378944, 44.770309>,  <34.603413, 36.860119, 45.146019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960407, 37.378944, 44.770309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203640, 37.063667, 44.732380>,  <35.349579, 36.874500, 44.709621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203640, 37.063667, 44.732380>,  <34.960407, 37.378944, 44.770309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203640, 37.063667, 44.732380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130353, 0.216952, -0.967440,
		0.783097, 0.575925, 0.234668,
		0.608084, -0.788189, -0.094821,
		35.386066, 36.827209, 44.703934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343250, 37.660774, 44.295296>,  <34.960407, 37.378944, 44.770309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343250, 37.660774, 44.295296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452747, 37.276268, 44.282425>,  <35.518448, 37.045567, 44.274700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452747, 37.276268, 44.282425>,  <35.343250, 37.660774, 44.295296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452747, 37.276268, 44.282425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324136, 0.123703, -0.937888,
		0.905538, 0.246312, 0.345443,
		0.273745, -0.961264, -0.032179,
		35.534870, 36.987888, 44.272770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.694443, 34.136967, 26.430601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.615356, 34.526279, 26.383890>,  <43.567905, 34.759865, 26.355864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.615356, 34.526279, 26.383890>,  <43.694443, 34.136967, 26.430601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615356, 34.526279, 26.383890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145755, 0.146993, 0.978340,
		0.969362, 0.176414, -0.170923,
		-0.197718, 0.973278, -0.116776,
		43.556042, 34.818264, 26.348858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312202, 34.562546, 26.744654>,  <43.694443, 34.136967, 26.430601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312202, 34.562546, 26.744654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992111, 34.793186, 26.810587>,  <43.800056, 34.931572, 26.850147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992111, 34.793186, 26.810587>,  <44.312202, 34.562546, 26.744654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992111, 34.793186, 26.810587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282641, 0.120206, 0.951664,
		0.528918, 0.808134, -0.259163,
		-0.800225, 0.576602, 0.164833,
		43.752045, 34.966167, 26.860037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628895, 35.107189, 27.139351>,  <44.312202, 34.562546, 26.744654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628895, 35.107189, 27.139351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236362, 35.066502, 27.204651>,  <44.000843, 35.042088, 27.243832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236362, 35.066502, 27.204651>,  <44.628895, 35.107189, 27.139351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236362, 35.066502, 27.204651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163368, 0.007234, 0.986539,
		-0.101533, 0.994787, 0.009519,
		-0.981327, -0.101721, 0.163251,
		43.941963, 35.035984, 27.253626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486935, 35.569736, 27.744270>,  <44.628895, 35.107189, 27.139351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486935, 35.569736, 27.744270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158024, 35.342102, 27.745340>,  <43.960678, 35.205521, 27.745983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158024, 35.342102, 27.745340>,  <44.486935, 35.569736, 27.744270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158024, 35.342102, 27.745340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016406, -0.019004, 0.999685,
		-0.568853, 0.822060, 0.024963,
		-0.822276, -0.569083, 0.002676,
		43.911343, 35.171375, 27.746143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995277, 35.878468, 28.141123>,  <44.486935, 35.569736, 27.744270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995277, 35.878468, 28.141123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.897491, 35.491104, 28.160784>,  <43.838821, 35.258686, 28.172581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.897491, 35.491104, 28.160784>,  <43.995277, 35.878468, 28.141123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897491, 35.491104, 28.160784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134143, 0.016429, 0.990826,
		-0.960335, 0.248813, 0.125889,
		-0.244462, -0.968412, 0.049153,
		43.824154, 35.200581, 28.175529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466637, 35.828827, 28.630285>,  <43.995277, 35.878468, 28.141123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466637, 35.828827, 28.630285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.636070, 35.467381, 28.604801>,  <43.737728, 35.250511, 28.589512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.636070, 35.467381, 28.604801>,  <43.466637, 35.828827, 28.630285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636070, 35.467381, 28.604801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120738, -0.013384, 0.992594,
		-0.897776, -0.428135, 0.103431,
		0.423580, -0.903616, -0.063708,
		43.763145, 35.196297, 28.585690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198376, 35.592514, 29.169950>,  <43.466637, 35.828827, 28.630285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198376, 35.592514, 29.169950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484661, 35.325031, 29.089376>,  <43.656433, 35.164539, 29.041033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484661, 35.325031, 29.089376>,  <43.198376, 35.592514, 29.169950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484661, 35.325031, 29.089376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221585, -0.056093, 0.973526,
		-0.662307, -0.741403, 0.108030,
		0.715716, -0.668711, -0.201435,
		43.699375, 35.124416, 29.028946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084335, 35.097832, 29.710890>,  <43.198376, 35.592514, 29.169950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084335, 35.097832, 29.710890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438999, 35.026905, 29.540060>,  <43.651798, 34.984348, 29.437563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438999, 35.026905, 29.540060>,  <43.084335, 35.097832, 29.710890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438999, 35.026905, 29.540060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403269, -0.155447, 0.901781,
		-0.226287, -0.971800, -0.066323,
		0.886661, -0.177316, -0.427073,
		43.704998, 34.973709, 29.411938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388523, 34.663631, 30.212559>,  <43.084335, 35.097832, 29.710890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388523, 34.663631, 30.212559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690109, 34.803108, 29.989866>,  <43.871059, 34.886795, 29.856251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690109, 34.803108, 29.989866>,  <43.388523, 34.663631, 30.212559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690109, 34.803108, 29.989866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580769, 0.042234, 0.812972,
		0.306987, -0.936286, -0.170665,
		0.753967, 0.348689, -0.556731,
		43.916298, 34.907715, 29.822847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876045, 34.300709, 30.398808>,  <43.388523, 34.663631, 30.212559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876045, 34.300709, 30.398808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.045219, 34.630104, 30.247549>,  <44.146725, 34.827740, 30.156794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.045219, 34.630104, 30.247549>,  <43.876045, 34.300709, 30.398808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045219, 34.630104, 30.247549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324731, 0.251855, 0.911657,
		0.845974, -0.508371, -0.160892,
		0.422939, 0.823485, -0.378147,
		44.172100, 34.877148, 30.134106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660595, 34.207081, 30.591269>,  <43.876045, 34.300709, 30.398808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660595, 34.207081, 30.591269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.573589, 34.592136, 30.526743>,  <44.521385, 34.823170, 30.488028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.573589, 34.592136, 30.526743>,  <44.660595, 34.207081, 30.591269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573589, 34.592136, 30.526743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399346, 0.238574, 0.885214,
		0.890624, 0.128124, -0.436318,
		-0.217512, 0.962635, -0.161314,
		44.508335, 34.880928, 30.478348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165844, 34.530094, 30.989309>,  <44.660595, 34.207081, 30.591269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165844, 34.530094, 30.989309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937733, 34.849483, 30.912128>,  <44.800865, 35.041115, 30.865820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937733, 34.849483, 30.912128>,  <45.165844, 34.530094, 30.989309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937733, 34.849483, 30.912128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439833, 0.495184, 0.749226,
		0.693782, 0.342398, -0.633585,
		-0.570275, 0.798471, -0.192952,
		44.766651, 35.089024, 30.854242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647602, 35.135170, 30.901833>,  <45.165844, 34.530094, 30.989309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647602, 35.135170, 30.901833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287571, 35.250542, 31.032476>,  <45.071552, 35.319763, 31.110863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287571, 35.250542, 31.032476>,  <45.647602, 35.135170, 30.901833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287571, 35.250542, 31.032476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430798, 0.476550, 0.766364,
		0.065394, 0.830488, -0.553185,
		-0.900076, 0.288427, 0.326609,
		45.017548, 35.337070, 31.130459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794800, 35.734451, 31.189919>,  <45.647602, 35.135170, 30.901833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794800, 35.734451, 31.189919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.422886, 35.662594, 31.318439>,  <45.199738, 35.619480, 31.395552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.422886, 35.662594, 31.318439>,  <45.794800, 35.734451, 31.189919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.422886, 35.662594, 31.318439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266490, 0.273661, 0.924171,
		-0.253950, 0.944901, -0.206571,
		-0.929781, -0.179644, 0.321303,
		45.143951, 35.608700, 31.414831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564430, 36.274300, 31.602760>,  <45.794800, 35.734451, 31.189919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564430, 36.274300, 31.602760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347836, 35.960239, 31.722977>,  <45.217876, 35.771805, 31.795107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347836, 35.960239, 31.722977>,  <45.564430, 36.274300, 31.602760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347836, 35.960239, 31.722977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289202, 0.161703, 0.943512,
		-0.789398, 0.597820, 0.139507,
		-0.541491, -0.785152, 0.300539,
		45.185387, 35.724693, 31.813139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327145, 36.511429, 32.235786>,  <45.564430, 36.274300, 31.602760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327145, 36.511429, 32.235786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.297352, 36.113766, 32.267059>,  <45.279476, 35.875168, 32.285824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.297352, 36.113766, 32.267059>,  <45.327145, 36.511429, 32.235786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297352, 36.113766, 32.267059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259782, 0.056345, 0.964022,
		-0.962790, 0.092112, 0.254067,
		-0.074483, -0.994153, 0.078178,
		45.275005, 35.815521, 32.290512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031208, 36.498249, 32.867416>,  <45.327145, 36.511429, 32.235786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031208, 36.498249, 32.867416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198277, 36.142971, 32.790833>,  <45.298519, 35.929806, 32.744881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198277, 36.142971, 32.790833>,  <45.031208, 36.498249, 32.867416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198277, 36.142971, 32.790833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161544, -0.134775, 0.977619,
		-0.894120, -0.439257, 0.087190,
		0.417675, -0.888194, -0.191464,
		45.323578, 35.876514, 32.733395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812332, 36.088600, 33.428123>,  <45.031208, 36.498249, 32.867416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812332, 36.088600, 33.428123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126465, 35.896336, 33.272057>,  <45.314945, 35.780979, 33.178417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126465, 35.896336, 33.272057>,  <44.812332, 36.088600, 33.428123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126465, 35.896336, 33.272057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297592, -0.259546, 0.918735,
		-0.542863, -0.837618, -0.060789,
		0.785327, -0.480657, -0.390167,
		45.362064, 35.752140, 33.155006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823330, 35.429104, 33.667404>,  <44.812332, 36.088600, 33.428123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823330, 35.429104, 33.667404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.204540, 35.505901, 33.573692>,  <45.433266, 35.551979, 33.517464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.204540, 35.505901, 33.573692>,  <44.823330, 35.429104, 33.667404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204540, 35.505901, 33.573692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252155, -0.074325, 0.964828,
		0.167832, -0.978577, -0.119246,
		0.953021, 0.191997, -0.234279,
		45.490448, 35.563499, 33.503410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106750, 34.934608, 34.089077>,  <44.823330, 35.429104, 33.667404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106750, 34.934608, 34.089077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.430603, 35.150898, 33.997761>,  <45.624916, 35.280670, 33.942970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.430603, 35.150898, 33.997761>,  <45.106750, 34.934608, 34.089077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430603, 35.150898, 33.997761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411701, -0.245964, 0.877499,
		0.418332, -0.804438, -0.421756,
		0.809630, 0.540723, -0.228293,
		45.673492, 35.313114, 33.929272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715179, 34.549641, 34.251259>,  <45.106750, 34.934608, 34.089077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715179, 34.549641, 34.251259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850605, 34.926018, 34.252377>,  <45.931862, 35.151844, 34.253048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850605, 34.926018, 34.252377>,  <45.715179, 34.549641, 34.251259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850605, 34.926018, 34.252377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415730, -0.152247, 0.896654,
		0.844122, -0.302416, -0.442722,
		0.338566, 0.940938, 0.002791,
		45.952175, 35.208298, 34.253216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466183, 34.580250, 34.303913>,  <45.715179, 34.549641, 34.251259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.466183, 34.580250, 34.303913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260860, 34.888268, 34.455467>,  <46.137669, 35.073078, 34.546402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260860, 34.888268, 34.455467>,  <46.466183, 34.580250, 34.303913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260860, 34.888268, 34.455467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582093, -0.012022, 0.813034,
		0.630623, 0.637883, -0.442064,
		-0.513306, 0.770040, 0.378888,
		46.106869, 35.119278, 34.569134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211742, 34.185638, 33.767498>,  <46.466183, 34.580250, 34.303913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211742, 34.185638, 33.767498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.593567, 34.117012, 33.670021>,  <46.822662, 34.075836, 33.611534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.593567, 34.117012, 33.670021>,  <46.211742, 34.185638, 33.767498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.593567, 34.117012, 33.670021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276334, -0.203237, -0.939326,
		0.111627, 0.963982, -0.241410,
		0.954557, -0.171564, -0.243694,
		46.879932, 34.065544, 33.596912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495182, 34.556587, 33.131390>,  <46.211742, 34.185638, 33.767498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495182, 34.556587, 33.131390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.701859, 34.218494, 33.185959>,  <46.825863, 34.015640, 33.218700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.701859, 34.218494, 33.185959>,  <46.495182, 34.556587, 33.131390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701859, 34.218494, 33.185959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103721, -0.219965, -0.969978,
		0.849867, 0.487028, -0.201322,
		0.516690, -0.845234, 0.136426,
		46.856865, 33.964924, 33.226887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.216541, 34.531963, 32.675831>,  <46.495182, 34.556587, 33.131390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.216541, 34.531963, 32.675831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.098045, 34.159771, 32.762039>,  <47.026947, 33.936455, 32.813763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.098045, 34.159771, 32.762039>,  <47.216541, 34.531963, 32.675831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.098045, 34.159771, 32.762039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226248, -0.287588, -0.930648,
		0.927931, -0.226931, 0.295714,
		-0.296236, -0.930481, 0.215520,
		47.009174, 33.880627, 32.826694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.613705, 34.034916, 32.180611>,  <47.216541, 34.531963, 32.675831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.613705, 34.034916, 32.180611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.323147, 33.800983, 32.325008>,  <47.148811, 33.660625, 32.411648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.323147, 33.800983, 32.325008>,  <47.613705, 34.034916, 32.180611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.323147, 33.800983, 32.325008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092671, -0.437115, -0.894619,
		0.680997, -0.683304, 0.263323,
		-0.726398, -0.584830, 0.360996,
		47.105228, 33.625534, 32.433308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.745483, 33.304996, 31.975388>,  <47.613705, 34.034916, 32.180611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.745483, 33.304996, 31.975388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.350628, 33.309704, 32.039158>,  <47.113716, 33.312527, 32.077419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.350628, 33.309704, 32.039158>,  <47.745483, 33.304996, 31.975388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.350628, 33.309704, 32.039158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141130, -0.532555, -0.834546,
		0.075081, -0.846313, 0.527368,
		-0.987140, 0.011769, 0.159425,
		47.054485, 33.313236, 32.086987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.464172, 32.700317, 31.796295>,  <47.745483, 33.304996, 31.975388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.464172, 32.700317, 31.796295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.147884, 32.944855, 31.783510>,  <46.958111, 33.091576, 31.775839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.147884, 32.944855, 31.783510>,  <47.464172, 32.700317, 31.796295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.147884, 32.944855, 31.783510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301076, -0.433817, -0.849209,
		-0.533021, -0.661866, 0.527089,
		-0.790722, 0.611339, -0.031962,
		46.910667, 33.128258, 31.773922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.860985, 32.249672, 31.543268>,  <47.464172, 32.700317, 31.796295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.860985, 32.249672, 31.543268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.721947, 32.612877, 31.449722>,  <46.638523, 32.830799, 31.393595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.721947, 32.612877, 31.449722>,  <46.860985, 32.249672, 31.543268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.721947, 32.612877, 31.449722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409726, -0.371436, -0.833163,
		-0.843387, -0.193783, 0.501145,
		-0.347596, 0.908011, -0.233866,
		46.617668, 32.885281, 31.379562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274754, 32.135689, 31.107302>,  <46.860985, 32.249672, 31.543268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274754, 32.135689, 31.107302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.352856, 32.519901, 31.028042>,  <46.399715, 32.750427, 30.980486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.352856, 32.519901, 31.028042>,  <46.274754, 32.135689, 31.107302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352856, 32.519901, 31.028042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361490, -0.117332, -0.924964,
		-0.911702, 0.252233, 0.324311,
		0.195254, 0.960527, -0.198152,
		46.411430, 32.808060, 30.968596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607727, 32.440826, 30.823542>,  <46.274754, 32.135689, 31.107302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607727, 32.440826, 30.823542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.918331, 32.665649, 30.709614>,  <46.104694, 32.800541, 30.641258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.918331, 32.665649, 30.709614>,  <45.607727, 32.440826, 30.823542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.918331, 32.665649, 30.709614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393934, 0.080257, -0.915628,
		-0.491774, 0.823197, 0.283733,
		0.776514, 0.562054, -0.284818,
		46.151287, 32.834267, 30.624168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311962, 32.969379, 30.554638>,  <45.607727, 32.440826, 30.823542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311962, 32.969379, 30.554638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.690269, 32.991028, 30.426512>,  <45.917252, 33.004017, 30.349636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.690269, 32.991028, 30.426512>,  <45.311962, 32.969379, 30.554638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690269, 32.991028, 30.426512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322732, 0.269070, -0.907439,
		0.037075, 0.961599, 0.271944,
		0.945764, 0.054121, -0.320314,
		45.973999, 33.007263, 30.330418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.273018, 33.438408, 30.083752>,  <45.311962, 32.969379, 30.554638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.273018, 33.438408, 30.083752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.613277, 33.242775, 30.006603>,  <45.817432, 33.125393, 29.960314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.613277, 33.242775, 30.006603>,  <45.273018, 33.438408, 30.083752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613277, 33.242775, 30.006603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225934, -0.008821, -0.974103,
		0.474717, 0.872192, -0.118004,
		0.850645, -0.489084, -0.192870,
		45.868469, 33.096050, 29.948742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524586, 33.760498, 29.515512>,  <45.273018, 33.438408, 30.083752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524586, 33.760498, 29.515512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.695858, 33.400150, 29.486967>,  <45.798622, 33.183941, 29.469841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.695858, 33.400150, 29.486967>,  <45.524586, 33.760498, 29.515512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695858, 33.400150, 29.486967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256536, -0.045450, -0.965466,
		0.866518, 0.431697, -0.250566,
		0.428177, -0.900873, -0.071363,
		45.824310, 33.129887, 29.465559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086521, 33.852604, 29.071859>,  <45.524586, 33.760498, 29.515512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086521, 33.852604, 29.071859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.997326, 33.462875, 29.084347>,  <45.943810, 33.229038, 29.091839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.997326, 33.462875, 29.084347>,  <46.086521, 33.852604, 29.071859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.997326, 33.462875, 29.084347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072190, -0.015432, -0.997272,
		0.972144, -0.224634, -0.066895,
		-0.222989, -0.974321, 0.031219,
		45.930428, 33.170578, 29.093712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471684, 33.681751, 28.535381>,  <46.086521, 33.852604, 29.071859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471684, 33.681751, 28.535381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.237312, 33.366619, 28.611290>,  <46.096687, 33.177540, 28.656836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.237312, 33.366619, 28.611290>,  <46.471684, 33.681751, 28.535381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.237312, 33.366619, 28.611290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139817, -0.132389, -0.981287,
		0.798209, -0.601499, -0.032580,
		-0.585930, -0.787827, 0.189774,
		46.061535, 33.130272, 28.668222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.609554, 33.362000, 27.956985>,  <46.471684, 33.681751, 28.535381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.609554, 33.362000, 27.956985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.291950, 33.167484, 28.102898>,  <46.101387, 33.050774, 28.190445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.291950, 33.167484, 28.102898>,  <46.609554, 33.362000, 27.956985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.291950, 33.167484, 28.102898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374339, -0.081666, -0.923689,
		0.478969, -0.869974, -0.117192,
		-0.794015, -0.486288, 0.364781,
		46.053745, 33.021599, 28.212332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.516438, 32.619514, 27.799000>,  <46.609554, 33.362000, 27.956985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.516438, 32.619514, 27.799000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.141655, 32.753418, 27.839092>,  <45.916786, 32.833759, 27.863148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.141655, 32.753418, 27.839092>,  <46.516438, 32.619514, 27.799000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.141655, 32.753418, 27.839092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161174, -0.159496, -0.973953,
		-0.310054, -0.928707, 0.203396,
		-0.936958, 0.334760, 0.100231,
		45.860569, 32.853848, 27.869162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.179379, 32.161552, 27.514933>,  <46.516438, 32.619514, 27.799000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.179379, 32.161552, 27.514933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.914513, 32.461285, 27.517548>,  <45.755592, 32.641125, 27.519115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.914513, 32.461285, 27.517548>,  <46.179379, 32.161552, 27.514933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914513, 32.461285, 27.517548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218004, -0.184285, -0.958391,
		-0.716949, -0.636034, 0.285384,
		-0.662162, 0.749333, 0.006535,
		45.715862, 32.686085, 27.519508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564774, 31.933409, 27.239367>,  <46.179379, 32.161552, 27.514933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564774, 31.933409, 27.239367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513039, 32.328571, 27.205164>,  <45.481998, 32.565670, 27.184643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513039, 32.328571, 27.205164>,  <45.564774, 31.933409, 27.239367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513039, 32.328571, 27.205164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301395, -0.121318, -0.945750,
		-0.944686, -0.096552, 0.313441,
		-0.129340, 0.987907, -0.085507,
		45.474236, 32.624943, 27.179512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846943, 32.070923, 26.961084>,  <45.564774, 31.933409, 27.239367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846943, 32.070923, 26.961084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075817, 32.387562, 26.875320>,  <45.213142, 32.577545, 26.823862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075817, 32.387562, 26.875320>,  <44.846943, 32.070923, 26.961084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075817, 32.387562, 26.875320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410718, 0.050297, -0.910374,
		-0.709867, 0.608968, 0.353903,
		0.572189, 0.791599, -0.214409,
		45.247475, 32.625042, 26.810997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383503, 32.400372, 26.510963>,  <44.846943, 32.070923, 26.961084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383503, 32.400372, 26.510963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.744495, 32.568085, 26.471487>,  <44.961090, 32.668713, 26.447802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.744495, 32.568085, 26.471487>,  <44.383503, 32.400372, 26.510963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744495, 32.568085, 26.471487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155128, 0.102632, -0.982549,
		-0.401835, 0.902037, 0.157665,
		0.902477, 0.419281, -0.098690,
		45.015240, 32.693871, 26.441879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.337601, 38.510006, 40.769890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262856, 38.119080, 40.809780>,  <40.218010, 37.884525, 40.833714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262856, 38.119080, 40.809780>,  <40.337601, 38.510006, 40.769890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262856, 38.119080, 40.809780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641291, -0.198249, -0.741244,
		0.744196, -0.074559, 0.663787,
		-0.186862, -0.977312, 0.099722,
		40.206799, 37.825886, 40.839695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018452, 38.238873, 40.696190>,  <40.337601, 38.510006, 40.769890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018452, 38.238873, 40.696190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756062, 37.945259, 40.625885>,  <40.598629, 37.769089, 40.583702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756062, 37.945259, 40.625885>,  <41.018452, 38.238873, 40.696190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756062, 37.945259, 40.625885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527773, -0.279600, -0.802047,
		0.539588, -0.618883, 0.570814,
		-0.655973, -0.734035, -0.175760,
		40.559269, 37.725048, 40.573158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510479, 37.755505, 40.527950>,  <41.018452, 38.238873, 40.696190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510479, 37.755505, 40.527950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143002, 37.657558, 40.403984>,  <40.922516, 37.598793, 40.329605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143002, 37.657558, 40.403984>,  <41.510479, 37.755505, 40.527950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143002, 37.657558, 40.403984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387852, -0.410933, -0.825048,
		0.074668, -0.878166, 0.472491,
		-0.918692, -0.244862, -0.309915,
		40.867393, 37.584099, 40.311008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647007, 37.082954, 40.203026>,  <41.510479, 37.755505, 40.527950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647007, 37.082954, 40.203026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316231, 37.249813, 40.052212>,  <41.117764, 37.349930, 39.961723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316231, 37.249813, 40.052212>,  <41.647007, 37.082954, 40.203026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316231, 37.249813, 40.052212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237661, -0.348400, -0.906716,
		-0.509596, -0.839407, 0.188966,
		-0.826940, 0.417149, -0.377038,
		41.068150, 37.374958, 39.939102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438652, 36.625538, 39.716511>,  <41.647007, 37.082954, 40.203026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438652, 36.625538, 39.716511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249252, 36.961033, 39.608940>,  <41.135612, 37.162331, 39.544399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249252, 36.961033, 39.608940>,  <41.438652, 36.625538, 39.716511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249252, 36.961033, 39.608940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241829, -0.169791, -0.955348,
		-0.846947, -0.517388, -0.122435,
		-0.473498, 0.838737, -0.268924,
		41.107204, 37.212654, 39.528263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092896, 36.481983, 39.075310>,  <41.438652, 36.625538, 39.716511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092896, 36.481983, 39.075310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098991, 36.881481, 39.094360>,  <41.102650, 37.121181, 39.105789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098991, 36.881481, 39.094360>,  <41.092896, 36.481983, 39.075310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098991, 36.881481, 39.094360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181280, 0.044084, -0.982443,
		-0.983314, 0.023606, -0.180381,
		0.015240, 0.998749, 0.047628,
		41.103565, 37.181107, 39.108650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600899, 36.708504, 38.542233>,  <41.092896, 36.481983, 39.075310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600899, 36.708504, 38.542233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888210, 36.974998, 38.622433>,  <41.060596, 37.134895, 38.670551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888210, 36.974998, 38.622433>,  <40.600899, 36.708504, 38.542233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888210, 36.974998, 38.622433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177838, 0.102792, -0.978676,
		-0.672641, 0.738620, -0.044649,
		0.718281, 0.666238, 0.200497,
		41.103695, 37.174870, 38.682583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488876, 37.181812, 38.073582>,  <40.600899, 36.708504, 38.542233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488876, 37.181812, 38.073582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870472, 37.261784, 38.162968>,  <41.099430, 37.309765, 38.216599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870472, 37.261784, 38.162968>,  <40.488876, 37.181812, 38.073582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870472, 37.261784, 38.162968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170684, 0.250637, -0.952915,
		-0.246524, 0.947211, 0.204980,
		0.953988, 0.199930, 0.223462,
		41.156670, 37.321762, 38.230007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570065, 37.750454, 37.693085>,  <40.488876, 37.181812, 38.073582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570065, 37.750454, 37.693085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941521, 37.630428, 37.780350>,  <41.164394, 37.558414, 37.832710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941521, 37.630428, 37.780350>,  <40.570065, 37.750454, 37.693085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941521, 37.630428, 37.780350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287790, 0.211564, -0.934033,
		0.234111, 0.930164, 0.282820,
		0.928638, -0.300060, 0.218163,
		41.220112, 37.540409, 37.845798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981361, 38.079231, 37.344807>,  <40.570065, 37.750454, 37.693085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981361, 38.079231, 37.344807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263885, 37.807983, 37.426075>,  <41.433399, 37.645233, 37.474834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263885, 37.807983, 37.426075>,  <40.981361, 38.079231, 37.344807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263885, 37.807983, 37.426075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252881, -0.026363, -0.967138,
		0.661193, 0.734478, 0.152863,
		0.706311, -0.678121, 0.203167,
		41.475780, 37.604546, 37.487026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650715, 38.327087, 37.023560>,  <40.981361, 38.079231, 37.344807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650715, 38.327087, 37.023560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665985, 37.927807, 37.042027>,  <41.675148, 37.688236, 37.053108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665985, 37.927807, 37.042027>,  <41.650715, 38.327087, 37.023560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665985, 37.927807, 37.042027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472434, -0.022682, -0.881074,
		0.880539, 0.055447, 0.470719,
		0.038176, -0.998204, 0.046167,
		41.677437, 37.628345, 37.055878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353645, 38.153122, 36.832985>,  <41.650715, 38.327087, 37.023560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353645, 38.153122, 36.832985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128944, 37.824245, 36.796234>,  <41.994125, 37.626919, 36.774181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128944, 37.824245, 36.796234>,  <42.353645, 38.153122, 36.832985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128944, 37.824245, 36.796234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510541, -0.257131, -0.820507,
		0.650986, -0.507830, 0.564204,
		-0.561752, -0.822188, -0.091879,
		41.960419, 37.577591, 36.768669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651154, 37.558842, 37.010761>,  <42.353645, 38.153122, 36.832985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651154, 37.558842, 37.010761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396866, 37.496037, 36.708447>,  <42.244293, 37.458351, 36.527058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396866, 37.496037, 36.708447>,  <42.651154, 37.558842, 37.010761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396866, 37.496037, 36.708447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762470, -0.280464, -0.583077,
		-0.120417, -0.946935, 0.298016,
		-0.635719, -0.157016, -0.755783,
		42.206150, 37.448933, 36.481712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598740, 36.785625, 36.793095>,  <42.651154, 37.558842, 37.010761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598740, 36.785625, 36.793095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543350, 37.059803, 36.507160>,  <42.510117, 37.224312, 36.335602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543350, 37.059803, 36.507160>,  <42.598740, 36.785625, 36.793095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543350, 37.059803, 36.507160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713662, -0.431386, -0.551899,
		-0.686667, -0.586573, -0.429443,
		-0.138473, 0.685448, -0.714833,
		42.501808, 37.265438, 36.292709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944511, 36.567913, 37.344131>,  <42.598740, 36.785625, 36.793095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944511, 36.567913, 37.344131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281212, 36.353519, 37.318314>,  <43.483234, 36.224884, 37.302822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281212, 36.353519, 37.318314>,  <42.944511, 36.567913, 37.344131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281212, 36.353519, 37.318314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272783, -0.525444, 0.805914,
		-0.465869, -0.660779, -0.588504,
		0.841758, -0.535984, -0.064539,
		43.533737, 36.192722, 37.298950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704082, 35.798588, 37.502987>,  <42.944511, 36.567913, 37.344131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704082, 35.798588, 37.502987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099884, 35.831402, 37.550564>,  <43.337364, 35.851089, 37.579109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099884, 35.831402, 37.550564>,  <42.704082, 35.798588, 37.502987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099884, 35.831402, 37.550564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024670, -0.715188, 0.698496,
		0.142366, -0.694101, -0.705660,
		0.989507, 0.082034, 0.118942,
		43.396736, 35.856010, 37.586246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039734, 35.144123, 37.555157>,  <42.704082, 35.798588, 37.502987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039734, 35.144123, 37.555157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309093, 35.391102, 37.717781>,  <43.470711, 35.539288, 37.815357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309093, 35.391102, 37.717781>,  <43.039734, 35.144123, 37.555157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309093, 35.391102, 37.717781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003385, -0.547362, 0.836889,
		0.739272, -0.564936, -0.366502,
		0.673398, 0.617449, 0.406562,
		43.511112, 35.576336, 37.839748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492435, 34.709213, 37.847721>,  <43.039734, 35.144123, 37.555157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492435, 34.709213, 37.847721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547272, 35.056755, 38.038006>,  <43.580173, 35.265282, 38.152176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547272, 35.056755, 38.038006>,  <43.492435, 34.709213, 37.847721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547272, 35.056755, 38.038006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089970, -0.489179, 0.867531,
		0.986464, -0.076130, -0.145233,
		0.137090, 0.868855, 0.475708,
		43.588398, 35.317413, 38.180717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697311, 34.470108, 38.421391>,  <43.492435, 34.709213, 37.847721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697311, 34.470108, 38.421391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629147, 34.854534, 38.508389>,  <43.588249, 35.085190, 38.560589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629147, 34.854534, 38.508389>,  <43.697311, 34.470108, 38.421391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629147, 34.854534, 38.508389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170334, -0.246135, 0.954151,
		0.970540, 0.125548, 0.205646,
		-0.170409, 0.961070, 0.217499,
		43.578026, 35.142857, 38.573639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070740, 34.642521, 38.983364>,  <43.697311, 34.470108, 38.421391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070740, 34.642521, 38.983364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766811, 34.902573, 38.983006>,  <43.584454, 35.058605, 38.982792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766811, 34.902573, 38.983006>,  <44.070740, 34.642521, 38.983364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766811, 34.902573, 38.983006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178815, -0.207665, 0.961718,
		0.625059, 0.730892, 0.274042,
		-0.759820, 0.650133, -0.000892,
		43.538864, 35.097614, 38.982738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135502, 34.985889, 39.584770>,  <44.070740, 34.642521, 38.983364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135502, 34.985889, 39.584770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764763, 35.068130, 39.459118>,  <43.542320, 35.117474, 39.383728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764763, 35.068130, 39.459118>,  <44.135502, 34.985889, 39.584770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764763, 35.068130, 39.459118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302521, 0.086484, 0.949211,
		0.222329, 0.974806, -0.017958,
		-0.926850, 0.205604, -0.314127,
		43.486710, 35.129810, 39.364880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896065, 35.646210, 39.924759>,  <44.135502, 34.985889, 39.584770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896065, 35.646210, 39.924759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570007, 35.436771, 39.825657>,  <43.374371, 35.311108, 39.766193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570007, 35.436771, 39.825657>,  <43.896065, 35.646210, 39.924759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570007, 35.436771, 39.825657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294304, 0.005961, 0.955693,
		-0.498918, 0.851947, -0.158954,
		-0.815148, -0.523593, -0.247758,
		43.325462, 35.279694, 39.751331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481152, 35.831921, 40.375622>,  <43.896065, 35.646210, 39.924759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481152, 35.831921, 40.375622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254269, 35.527100, 40.250690>,  <43.118137, 35.344208, 40.175732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254269, 35.527100, 40.250690>,  <43.481152, 35.831921, 40.375622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254269, 35.527100, 40.250690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417409, -0.060922, 0.906674,
		-0.709960, 0.644646, -0.283531,
		-0.567210, -0.762050, -0.312333,
		43.084106, 35.298485, 40.156990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880104, 36.058136, 40.538300>,  <43.481152, 35.831921, 40.375622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880104, 36.058136, 40.538300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861534, 35.663944, 40.472973>,  <42.850391, 35.427429, 40.433777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861534, 35.663944, 40.472973>,  <42.880104, 36.058136, 40.538300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861534, 35.663944, 40.472973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437845, -0.126877, 0.890053,
		-0.897851, 0.112826, -0.425598,
		-0.046423, -0.985481, -0.163317,
		42.847607, 35.368301, 40.423977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219685, 35.858700, 40.750069>,  <42.880104, 36.058136, 40.538300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219685, 35.858700, 40.750069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403046, 35.503414, 40.737835>,  <42.513062, 35.290241, 40.730495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403046, 35.503414, 40.737835>,  <42.219685, 35.858700, 40.750069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403046, 35.503414, 40.737835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455691, -0.264446, 0.849949,
		-0.763028, -0.375683, -0.525976,
		0.458404, -0.888218, -0.030584,
		42.540565, 35.236950, 40.728661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713394, 35.335938, 40.787563>,  <42.219685, 35.858700, 40.750069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713394, 35.335938, 40.787563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064072, 35.207127, 40.930511>,  <42.274479, 35.129841, 41.016281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064072, 35.207127, 40.930511>,  <41.713394, 35.335938, 40.787563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064072, 35.207127, 40.930511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410285, -0.112663, 0.904971,
		-0.251163, -0.940003, -0.230894,
		0.876689, -0.322028, 0.357373,
		42.327080, 35.110519, 41.037724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553066, 34.700741, 41.104771>,  <41.713394, 35.335938, 40.787563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553066, 34.700741, 41.104771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897057, 34.815029, 41.273914>,  <42.103451, 34.883602, 41.375401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897057, 34.815029, 41.273914>,  <41.553066, 34.700741, 41.104771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897057, 34.815029, 41.273914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397686, -0.144078, 0.906139,
		0.319823, -0.947422, -0.010278,
		0.859977, 0.285717, 0.422856,
		42.155048, 34.900745, 41.400772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536251, 34.260883, 41.616295>,  <41.553066, 34.700741, 41.104771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536251, 34.260883, 41.616295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784260, 34.550636, 41.736858>,  <41.933064, 34.724487, 41.809196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784260, 34.550636, 41.736858>,  <41.536251, 34.260883, 41.616295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784260, 34.550636, 41.736858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404697, -0.033840, 0.913824,
		0.672160, -0.688565, 0.272175,
		0.620017, 0.724385, 0.301406,
		41.970264, 34.767952, 41.827282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441147, 33.714745, 41.992302>,  <41.536251, 34.260883, 41.616295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441147, 33.714745, 41.992302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476315, 33.334332, 42.110836>,  <41.497417, 33.106083, 42.181957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476315, 33.334332, 42.110836>,  <41.441147, 33.714745, 41.992302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476315, 33.334332, 42.110836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083972, -0.289352, -0.953532,
		0.992581, 0.108722, 0.054419,
		0.087924, -0.951028, 0.296335,
		41.502693, 33.049023, 42.199738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978134, 33.392200, 41.587452>,  <41.441147, 33.714745, 41.992302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978134, 33.392200, 41.587452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735271, 33.097092, 41.705471>,  <41.589554, 32.920029, 41.776283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735271, 33.097092, 41.705471>,  <41.978134, 33.392200, 41.587452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735271, 33.097092, 41.705471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023071, -0.387535, -0.921566,
		0.794244, -0.552732, 0.252317,
		-0.607160, -0.737770, 0.295045,
		41.553123, 32.875759, 41.793983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124695, 32.887482, 41.170467>,  <41.978134, 33.392200, 41.587452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124695, 32.887482, 41.170467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771885, 32.746944, 41.296062>,  <41.560200, 32.662624, 41.371418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771885, 32.746944, 41.296062>,  <42.124695, 32.887482, 41.170467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771885, 32.746944, 41.296062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136925, -0.446491, -0.884250,
		0.450866, -0.822925, 0.345709,
		-0.882027, -0.351342, 0.313986,
		41.507278, 32.641541, 41.390259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028801, 32.166451, 41.126827>,  <42.124695, 32.887482, 41.170467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028801, 32.166451, 41.126827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653130, 32.303463, 41.116859>,  <41.427727, 32.385670, 41.110878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653130, 32.303463, 41.116859>,  <42.028801, 32.166451, 41.126827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653130, 32.303463, 41.116859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140323, -0.448945, -0.882473,
		-0.313457, -0.825302, 0.469703,
		-0.939178, 0.342528, -0.024916,
		41.371376, 32.406223, 41.109383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614960, 31.586235, 41.004166>,  <42.028801, 32.166451, 41.126827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614960, 31.586235, 41.004166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383877, 31.896414, 40.902241>,  <41.245228, 32.082523, 40.841087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383877, 31.896414, 40.902241>,  <41.614960, 31.586235, 41.004166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383877, 31.896414, 40.902241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324967, -0.504876, -0.799685,
		-0.748763, -0.379181, 0.543668,
		-0.577711, 0.775449, -0.254811,
		41.210564, 32.129047, 40.825798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062870, 31.313797, 40.787483>,  <41.614960, 31.586235, 41.004166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062870, 31.313797, 40.787483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032360, 31.662893, 40.594608>,  <41.014053, 31.872351, 40.478882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032360, 31.662893, 40.594608>,  <41.062870, 31.313797, 40.787483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032360, 31.662893, 40.594608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399588, -0.469821, -0.787145,
		-0.913516, 0.132636, 0.384573,
		-0.076277, 0.872740, -0.482189,
		41.009476, 31.924715, 40.449951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436516, 31.250250, 40.293152>,  <41.062870, 31.313797, 40.787483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436516, 31.250250, 40.293152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608185, 31.579191, 40.143730>,  <40.711185, 31.776556, 40.054077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608185, 31.579191, 40.143730>,  <40.436516, 31.250250, 40.293152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608185, 31.579191, 40.143730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456894, -0.159099, -0.875177,
		-0.779139, 0.546277, 0.307448,
		0.429175, 0.822355, -0.373551,
		40.736938, 31.825897, 40.031666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896267, 31.682230, 39.974781>,  <40.436516, 31.250250, 40.293152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896267, 31.682230, 39.974781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241421, 31.771744, 39.793518>,  <40.448513, 31.825453, 39.684761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241421, 31.771744, 39.793518>,  <39.896267, 31.682230, 39.974781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241421, 31.771744, 39.793518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446821, -0.081234, -0.890927,
		-0.236189, 0.971247, 0.029897,
		0.862882, 0.223786, -0.453160,
		40.500286, 31.838879, 39.657570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691456, 32.065117, 39.449680>,  <39.896267, 31.682230, 39.974781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691456, 32.065117, 39.449680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051392, 31.930815, 39.338280>,  <40.267353, 31.850233, 39.271439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051392, 31.930815, 39.338280>,  <39.691456, 32.065117, 39.449680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051392, 31.930815, 39.338280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326809, -0.095990, -0.940203,
		0.288943, 0.937046, -0.196103,
		0.899837, -0.335754, -0.278500,
		40.321342, 31.830090, 39.254730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920837, 32.555740, 38.923916>,  <39.691456, 32.065117, 39.449680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920837, 32.555740, 38.923916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111916, 32.209694, 38.862747>,  <40.226562, 32.002068, 38.826046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111916, 32.209694, 38.862747>,  <39.920837, 32.555740, 38.923916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111916, 32.209694, 38.862747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337153, -0.019793, -0.941242,
		0.811253, 0.501188, -0.301130,
		0.477699, -0.865112, -0.152920,
		40.255226, 31.950161, 38.816872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243774, 32.676891, 38.405849>,  <39.920837, 32.555740, 38.923916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243774, 32.676891, 38.405849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266365, 32.277615, 38.397610>,  <40.279919, 32.038048, 38.392666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266365, 32.277615, 38.397610>,  <40.243774, 32.676891, 38.405849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266365, 32.277615, 38.397610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273028, 0.004401, -0.961996,
		0.960347, 0.059952, -0.272286,
		0.056475, -0.998192, -0.020595,
		40.283306, 31.978157, 38.391430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526520, 32.531425, 37.798355>,  <40.243774, 32.676891, 38.405849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526520, 32.531425, 37.798355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316284, 32.201832, 37.883026>,  <40.190144, 32.004074, 37.933830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316284, 32.201832, 37.883026>,  <40.526520, 32.531425, 37.798355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316284, 32.201832, 37.883026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344272, -0.021532, -0.938623,
		0.777967, -0.566205, -0.272357,
		-0.525589, -0.823983, 0.211679,
		40.158607, 31.954638, 37.946529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.589249, 33.661579, 45.889088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.227787, 33.503162, 45.823906>,  <41.010910, 33.408112, 45.784798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.227787, 33.503162, 45.823906>,  <41.589249, 33.661579, 45.889088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227787, 33.503162, 45.823906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309229, -0.340163, -0.888069,
		0.296280, -0.852901, 0.429858,
		-0.903657, -0.396042, -0.162958,
		40.956692, 33.384350, 45.775017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772785, 33.017025, 45.672623>,  <41.589249, 33.661579, 45.889088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772785, 33.017025, 45.672623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400677, 33.086555, 45.543388>,  <41.177410, 33.128273, 45.465847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400677, 33.086555, 45.543388>,  <41.772785, 33.017025, 45.672623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400677, 33.086555, 45.543388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251138, -0.340244, -0.906181,
		-0.267446, -0.924131, 0.272864,
		-0.930270, 0.173828, -0.323081,
		41.121597, 33.138706, 45.446465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635990, 32.448658, 45.150593>,  <41.772785, 33.017025, 45.672623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635990, 32.448658, 45.150593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.357525, 32.725353, 45.073803>,  <41.190445, 32.891369, 45.027729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.357525, 32.725353, 45.073803>,  <41.635990, 32.448658, 45.150593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357525, 32.725353, 45.073803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064453, -0.206110, -0.976404,
		-0.714983, -0.692111, 0.098901,
		-0.696164, 0.691738, -0.191974,
		41.148674, 32.932873, 45.016212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337437, 32.111565, 44.666130>,  <41.635990, 32.448658, 45.150593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337437, 32.111565, 44.666130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.241291, 32.497437, 44.623020>,  <41.183605, 32.728958, 44.597153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.241291, 32.497437, 44.623020>,  <41.337437, 32.111565, 44.666130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241291, 32.497437, 44.623020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095557, -0.086977, -0.991617,
		-0.965967, -0.248649, -0.071276,
		-0.240365, 0.964680, -0.107778,
		41.169182, 32.786842, 44.590687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838696, 32.163837, 44.213470>,  <41.337437, 32.111565, 44.666130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838696, 32.163837, 44.213470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.005268, 32.527248, 44.199810>,  <41.105213, 32.745293, 44.191612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.005268, 32.527248, 44.199810>,  <40.838696, 32.163837, 44.213470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005268, 32.527248, 44.199810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072205, -0.070493, -0.994896,
		-0.906295, 0.411840, -0.094955,
		0.416432, 0.908525, -0.034151,
		41.130199, 32.799805, 44.189564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457165, 32.454838, 43.719494>,  <40.838696, 32.163837, 44.213470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457165, 32.454838, 43.719494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.775150, 32.695164, 43.753082>,  <40.965942, 32.839359, 43.773235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.775150, 32.695164, 43.753082>,  <40.457165, 32.454838, 43.719494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775150, 32.695164, 43.753082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055055, 0.066397, -0.996273,
		-0.604152, 0.796625, 0.019705,
		0.794965, 0.600816, 0.083972,
		41.013641, 32.875408, 43.778275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296955, 33.059616, 43.317158>,  <40.457165, 32.454838, 43.719494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296955, 33.059616, 43.317158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694275, 33.043259, 43.360378>,  <40.932667, 33.033443, 43.386311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694275, 33.043259, 43.360378>,  <40.296955, 33.059616, 43.317158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694275, 33.043259, 43.360378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111835, 0.105625, -0.988097,
		0.028991, 0.993565, 0.109490,
		0.993304, -0.040891, 0.108053,
		40.992268, 33.030991, 43.392796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571682, 33.587109, 42.831001>,  <40.296955, 33.059616, 43.317158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571682, 33.587109, 42.831001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861225, 33.324657, 42.916344>,  <41.034950, 33.167187, 42.967548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861225, 33.324657, 42.916344>,  <40.571682, 33.587109, 42.831001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861225, 33.324657, 42.916344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355437, 0.089591, -0.930397,
		0.591349, 0.749309, 0.298065,
		0.723859, -0.656132, 0.213352,
		41.078384, 33.127819, 42.980350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249420, 33.877357, 42.652466>,  <40.571682, 33.587109, 42.831001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249420, 33.877357, 42.652466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.297688, 33.480282, 42.651634>,  <41.326649, 33.242035, 42.651134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.297688, 33.480282, 42.651634>,  <41.249420, 33.877357, 42.652466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297688, 33.480282, 42.651634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352680, 0.044828, -0.934670,
		0.927931, 0.112055, 0.355511,
		0.120671, -0.992690, -0.002078,
		41.333889, 33.182476, 42.651012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838619, 34.116081, 42.447109>,  <41.249420, 33.877357, 42.652466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838619, 34.116081, 42.447109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894913, 34.501129, 42.354546>,  <41.928688, 34.732159, 42.299007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894913, 34.501129, 42.354546>,  <41.838619, 34.116081, 42.447109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894913, 34.501129, 42.354546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341622, 0.266597, 0.901233,
		0.929240, -0.047780, 0.366373,
		0.140735, 0.962623, -0.231410,
		41.937134, 34.789917, 42.285122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270214, 34.379494, 42.996872>,  <41.838619, 34.116081, 42.447109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270214, 34.379494, 42.996872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.122341, 34.707031, 42.821220>,  <42.033619, 34.903553, 42.715828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.122341, 34.707031, 42.821220>,  <42.270214, 34.379494, 42.996872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122341, 34.707031, 42.821220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143702, 0.416536, 0.897690,
		0.917980, 0.394961, -0.036315,
		-0.369679, 0.818843, -0.439129,
		42.011436, 34.952682, 42.689484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509922, 34.927197, 43.361343>,  <42.270214, 34.379494, 42.996872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509922, 34.927197, 43.361343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.213142, 35.118752, 43.173653>,  <42.035072, 35.233685, 43.061039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.213142, 35.118752, 43.173653>,  <42.509922, 34.927197, 43.361343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213142, 35.118752, 43.173653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273595, 0.422679, 0.863995,
		0.612087, 0.769423, -0.182588,
		-0.741954, 0.478885, -0.469227,
		41.990555, 35.262417, 43.032887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550323, 35.507328, 43.597500>,  <42.509922, 34.927197, 43.361343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550323, 35.507328, 43.597500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.172337, 35.505970, 43.466637>,  <41.945545, 35.505154, 43.388119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.172337, 35.505970, 43.466637>,  <42.550323, 35.507328, 43.597500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172337, 35.505970, 43.466637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289860, 0.472441, 0.832334,
		0.151733, 0.881356, -0.447425,
		-0.944965, -0.003399, -0.327155,
		41.888847, 35.504951, 43.368488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328499, 36.116470, 43.671013>,  <42.550323, 35.507328, 43.597500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328499, 36.116470, 43.671013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.972733, 35.934429, 43.653919>,  <41.759274, 35.825203, 43.643665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.972733, 35.934429, 43.653919>,  <42.328499, 36.116470, 43.671013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972733, 35.934429, 43.653919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342732, 0.602089, 0.721127,
		-0.302461, 0.656025, -0.691484,
		-0.889412, -0.455106, -0.042732,
		41.705910, 35.797897, 43.641098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776077, 36.661709, 43.773792>,  <42.328499, 36.116470, 43.671013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776077, 36.661709, 43.773792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.633495, 36.296783, 43.854408>,  <41.547947, 36.077827, 43.902779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.633495, 36.296783, 43.854408>,  <41.776077, 36.661709, 43.773792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633495, 36.296783, 43.854408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311491, 0.319412, 0.894958,
		-0.880861, 0.256230, -0.398033,
		-0.356451, -0.912317, 0.201544,
		41.526562, 36.023087, 43.914871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165291, 36.804558, 44.000450>,  <41.776077, 36.661709, 43.773792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165291, 36.804558, 44.000450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.263702, 36.442730, 44.139717>,  <41.322750, 36.225632, 44.223278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.263702, 36.442730, 44.139717>,  <41.165291, 36.804558, 44.000450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263702, 36.442730, 44.139717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206281, 0.302114, 0.930685,
		-0.947058, -0.300796, -0.112267,
		0.246029, -0.904571, 0.348168,
		41.337509, 36.171360, 44.244167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675991, 36.666996, 44.456951>,  <41.165291, 36.804558, 44.000450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675991, 36.666996, 44.456951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.895386, 36.352081, 44.569630>,  <41.027023, 36.163132, 44.637238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.895386, 36.352081, 44.569630>,  <40.675991, 36.666996, 44.456951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895386, 36.352081, 44.569630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253100, 0.164773, 0.953305,
		-0.796937, -0.594168, -0.108886,
		0.548482, -0.787283, 0.281697,
		41.059929, 36.115898, 44.654140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293377, 36.423054, 45.066887>,  <40.675991, 36.666996, 44.456951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293377, 36.423054, 45.066887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.655876, 36.257599, 45.101822>,  <40.873375, 36.158325, 45.122784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.655876, 36.257599, 45.101822>,  <40.293377, 36.423054, 45.066887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655876, 36.257599, 45.101822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111149, -0.033802, 0.993229,
		-0.407883, -0.909815, -0.076608,
		0.906243, -0.413636, 0.087338,
		40.927750, 36.133507, 45.128025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260040, 35.763206, 45.524490>,  <40.293377, 36.423054, 45.066887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260040, 35.763206, 45.524490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.627541, 35.921101, 45.528118>,  <40.848042, 36.015835, 45.530296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.627541, 35.921101, 45.528118>,  <40.260040, 35.763206, 45.524490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627541, 35.921101, 45.528118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046289, 0.084868, 0.995316,
		0.392113, -0.914868, 0.096245,
		0.918752, 0.394732, 0.009071,
		40.903168, 36.039520, 45.530838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529770, 35.479202, 46.101299>,  <40.260040, 35.763206, 45.524490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529770, 35.479202, 46.101299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.765381, 35.788456, 46.007221>,  <40.906746, 35.974007, 45.950775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.765381, 35.788456, 46.007221>,  <40.529770, 35.479202, 46.101299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765381, 35.788456, 46.007221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037652, 0.316981, 0.947684,
		0.807238, -0.549353, 0.215820,
		0.589024, 0.773133, -0.235195,
		40.942089, 36.020397, 45.936665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061974, 35.447124, 46.667603>,  <40.529770, 35.479202, 46.101299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061974, 35.447124, 46.667603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.051392, 35.819477, 46.521858>,  <41.045044, 36.042889, 46.434410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.051392, 35.819477, 46.521858>,  <41.061974, 35.447124, 46.667603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051392, 35.819477, 46.521858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059967, 0.362353, 0.930110,
		0.997850, 0.046454, 0.046237,
		-0.026454, 0.930882, -0.364360,
		41.043457, 36.098743, 46.412552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347244, 35.793007, 47.284386>,  <41.061974, 35.447124, 46.667603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347244, 35.793007, 47.284386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179806, 36.066746, 47.045574>,  <41.079342, 36.230991, 46.902287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179806, 36.066746, 47.045574>,  <41.347244, 35.793007, 47.284386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179806, 36.066746, 47.045574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276525, 0.530135, 0.801555,
		0.865050, 0.500621, -0.032673,
		-0.418597, 0.684350, -0.597027,
		41.054226, 36.272049, 46.866467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666870, 36.422112, 47.534176>,  <41.347244, 35.793007, 47.284386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666870, 36.422112, 47.534176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.349560, 36.536507, 47.319168>,  <41.159172, 36.605145, 47.190163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.349560, 36.536507, 47.319168>,  <41.666870, 36.422112, 47.534176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349560, 36.536507, 47.319168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291114, 0.597218, 0.747384,
		0.534758, 0.749360, -0.390503,
		-0.793276, 0.285989, -0.537517,
		41.111576, 36.622303, 47.157913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.250919, 34.464069, 45.493496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585030, 34.291412, 45.629726>,  <34.785496, 34.187817, 45.711464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585030, 34.291412, 45.629726>,  <34.250919, 34.464069, 45.493496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585030, 34.291412, 45.629726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402469, 0.057968, -0.913596,
		0.374603, 0.900181, 0.222142,
		0.835279, -0.431641, 0.340580,
		34.835613, 34.161919, 45.731899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755527, 34.744453, 45.035511>,  <34.250919, 34.464069, 45.493496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755527, 34.744453, 45.035511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.965057, 34.448982, 45.205200>,  <35.090775, 34.271702, 45.307014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.965057, 34.448982, 45.205200>,  <34.755527, 34.744453, 45.035511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965057, 34.448982, 45.205200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433366, -0.197648, -0.879278,
		0.733347, 0.644433, 0.216583,
		0.523829, -0.738675, 0.424220,
		35.122208, 34.227379, 45.332466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376297, 34.907185, 44.953648>,  <34.755527, 34.744453, 45.035511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376297, 34.907185, 44.953648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403664, 34.510464, 44.996826>,  <35.420086, 34.272430, 45.022736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403664, 34.510464, 44.996826>,  <35.376297, 34.907185, 44.953648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403664, 34.510464, 44.996826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358753, -0.076506, -0.930292,
		0.930922, 0.102377, 0.350577,
		0.068419, -0.991799, 0.107949,
		35.424191, 34.212925, 45.029209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096199, 34.678391, 44.830070>,  <35.376297, 34.907185, 44.953648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096199, 34.678391, 44.830070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.871128, 34.351772, 44.778461>,  <35.736084, 34.155800, 44.747498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.871128, 34.351772, 44.778461>,  <36.096199, 34.678391, 44.830070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871128, 34.351772, 44.778461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423510, -0.150694, -0.893270,
		0.709952, -0.557267, 0.430607,
		-0.562680, -0.816545, -0.129023,
		35.702324, 34.106808, 44.739754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478321, 34.280647, 44.295296>,  <36.096199, 34.678391, 44.830070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478321, 34.280647, 44.295296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.147751, 34.055641, 44.305050>,  <35.949409, 33.920639, 44.310902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.147751, 34.055641, 44.305050>,  <36.478321, 34.280647, 44.295296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147751, 34.055641, 44.305050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210838, -0.349329, -0.912971,
		0.522078, -0.749363, 0.407294,
		-0.826427, -0.562516, 0.024382,
		35.899822, 33.886887, 44.312363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773975, 33.676064, 44.263443>,  <36.478321, 34.280647, 44.295296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773975, 33.676064, 44.263443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.400768, 33.666161, 44.119850>,  <36.176846, 33.660217, 44.033695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.400768, 33.666161, 44.119850>,  <36.773975, 33.676064, 44.263443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400768, 33.666161, 44.119850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350162, -0.292225, -0.889939,
		-0.082871, -0.956029, 0.281319,
		-0.933016, -0.024757, -0.358982,
		36.120865, 33.658733, 44.012154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737213, 33.102821, 43.756126>,  <36.773975, 33.676064, 44.263443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737213, 33.102821, 43.756126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.419296, 33.318584, 43.644886>,  <36.228546, 33.448044, 43.578140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.419296, 33.318584, 43.644886>,  <36.737213, 33.102821, 43.756126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419296, 33.318584, 43.644886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197796, -0.202986, -0.958996,
		-0.573740, -0.817213, 0.054640,
		-0.794795, 0.539407, -0.278103,
		36.180859, 33.480408, 43.561455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491478, 32.755589, 43.177631>,  <36.737213, 33.102821, 43.756126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491478, 32.755589, 43.177631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.303616, 33.107311, 43.146019>,  <36.190899, 33.318344, 43.127052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.303616, 33.107311, 43.146019>,  <36.491478, 32.755589, 43.177631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303616, 33.107311, 43.146019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129281, -0.020056, -0.991405,
		-0.873332, -0.475838, -0.104258,
		-0.469657, 0.879304, -0.079032,
		36.162720, 33.371101, 43.122311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848267, 32.702095, 42.650791>,  <36.491478, 32.755589, 43.177631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848267, 32.702095, 42.650791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961342, 33.085754, 42.655148>,  <36.029186, 33.315948, 42.657761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961342, 33.085754, 42.655148>,  <35.848267, 32.702095, 42.650791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961342, 33.085754, 42.655148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138884, -0.029690, -0.989864,
		-0.949103, 0.281340, -0.141604,
		0.282692, 0.959149, 0.010895,
		36.046150, 33.373501, 42.658417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467937, 32.966244, 42.039288>,  <35.848267, 32.702095, 42.650791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467937, 32.966244, 42.039288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759247, 33.224201, 42.132011>,  <35.934032, 33.378975, 42.187645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759247, 33.224201, 42.132011>,  <35.467937, 32.966244, 42.039288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759247, 33.224201, 42.132011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179188, 0.147301, -0.972725,
		-0.661447, 0.749946, -0.008282,
		0.728271, 0.644890, 0.231813,
		35.977730, 33.417667, 42.201553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467728, 33.584751, 41.573517>,  <35.467937, 32.966244, 42.039288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467728, 33.584751, 41.573517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842766, 33.618649, 41.708416>,  <36.067787, 33.638988, 41.789356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842766, 33.618649, 41.708416>,  <35.467728, 33.584751, 41.573517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842766, 33.618649, 41.708416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291388, 0.337809, -0.894974,
		-0.189769, 0.937392, 0.292035,
		0.937593, 0.084743, 0.337250,
		36.124043, 33.644070, 41.809589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744343, 34.168476, 41.209431>,  <35.467728, 33.584751, 41.573517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744343, 34.168476, 41.209431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062744, 33.993340, 41.376606>,  <36.253784, 33.888260, 41.476910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062744, 33.993340, 41.376606>,  <35.744343, 34.168476, 41.209431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062744, 33.993340, 41.376606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543889, 0.214381, -0.811311,
		0.265625, 0.873120, 0.408784,
		0.796007, -0.437838, 0.417936,
		36.301548, 33.861988, 41.501987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161293, 34.650368, 41.077705>,  <35.744343, 34.168476, 41.209431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161293, 34.650368, 41.077705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.339905, 34.297203, 41.135780>,  <36.447071, 34.085304, 41.170628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.339905, 34.297203, 41.135780>,  <36.161293, 34.650368, 41.077705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339905, 34.297203, 41.135780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542285, 0.137972, -0.828788,
		0.711713, 0.448815, 0.540398,
		0.446533, -0.882909, 0.145189,
		36.473866, 34.032330, 41.179337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833866, 34.701530, 40.667412>,  <36.161293, 34.650368, 41.077705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833866, 34.701530, 40.667412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.812553, 34.311855, 40.755154>,  <36.799767, 34.078049, 40.807800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.812553, 34.311855, 40.755154>,  <36.833866, 34.701530, 40.667412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812553, 34.311855, 40.755154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369665, -0.223304, -0.901933,
		0.927636, 0.033033, 0.372021,
		-0.053280, -0.974189, 0.219356,
		36.796570, 34.019600, 40.820961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225166, 35.219078, 41.062588>,  <36.833866, 34.701530, 40.667412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225166, 35.219078, 41.062588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.296383, 35.591347, 40.934738>,  <37.339111, 35.814709, 40.858028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.296383, 35.591347, 40.934738>,  <37.225166, 35.219078, 41.062588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296383, 35.591347, 40.934738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356689, 0.363758, 0.860496,
		0.917101, -0.039199, 0.396723,
		0.178042, 0.930668, -0.319621,
		37.349796, 35.870548, 40.838852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798630, 35.609383, 41.485775>,  <37.225166, 35.219078, 41.062588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798630, 35.609383, 41.485775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.519722, 35.851208, 41.331730>,  <37.352379, 35.996304, 41.239304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.519722, 35.851208, 41.331730>,  <37.798630, 35.609383, 41.485775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519722, 35.851208, 41.331730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212890, 0.338363, 0.916618,
		0.684466, 0.721117, -0.107223,
		-0.697269, 0.604567, -0.385117,
		37.310543, 36.032578, 41.216194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850060, 36.288296, 41.739319>,  <37.798630, 35.609383, 41.485775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850060, 36.288296, 41.739319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.469048, 36.289948, 41.617558>,  <37.240440, 36.290939, 41.544498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.469048, 36.289948, 41.617558>,  <37.850060, 36.288296, 41.739319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469048, 36.289948, 41.617558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287975, 0.312106, 0.905351,
		0.098748, 0.950038, -0.296102,
		-0.952533, 0.004132, -0.304407,
		37.183289, 36.291187, 41.526234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611912, 36.921642, 42.046783>,  <37.850060, 36.288296, 41.739319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611912, 36.921642, 42.046783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.298195, 36.699532, 41.936115>,  <37.109966, 36.566265, 41.869713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.298195, 36.699532, 41.936115>,  <37.611912, 36.921642, 42.046783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298195, 36.699532, 41.936115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517485, 0.339564, 0.785433,
		-0.342189, 0.759183, -0.553667,
		-0.784293, -0.555281, -0.276671,
		37.062908, 36.532948, 41.853115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017189, 37.289692, 42.076496>,  <37.611912, 36.921642, 42.046783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017189, 37.289692, 42.076496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.783085, 36.966446, 42.049911>,  <36.642624, 36.772499, 42.033962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.783085, 36.966446, 42.049911>,  <37.017189, 37.289692, 42.076496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783085, 36.966446, 42.049911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417319, 0.229926, 0.879192,
		-0.695209, 0.542292, -0.471809,
		-0.585261, -0.808117, -0.066462,
		36.607506, 36.724010, 42.029972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307316, 37.442432, 42.115082>,  <37.017189, 37.289692, 42.076496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307316, 37.442432, 42.115082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.360390, 37.069996, 42.250999>,  <36.392235, 36.846535, 42.332550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.360390, 37.069996, 42.250999>,  <36.307316, 37.442432, 42.115082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360390, 37.069996, 42.250999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549985, 0.216035, 0.806750,
		-0.824566, -0.293927, -0.483423,
		0.132689, -0.931094, 0.339790,
		36.400196, 36.790668, 42.352936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571346, 37.099152, 42.282768>,  <36.307316, 37.442432, 42.115082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571346, 37.099152, 42.282768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.844635, 36.910229, 42.505527>,  <36.008610, 36.796875, 42.639183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.844635, 36.910229, 42.505527>,  <35.571346, 37.099152, 42.282768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844635, 36.910229, 42.505527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665455, -0.088745, 0.741144,
		-0.300623, -0.876957, -0.374929,
		0.683224, -0.472304, 0.556897,
		36.049603, 36.768539, 42.672596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105251, 36.644569, 42.696327>,  <35.571346, 37.099152, 42.282768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105251, 36.644569, 42.696327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.461010, 36.629150, 42.878529>,  <35.674465, 36.619900, 42.987850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.461010, 36.629150, 42.878529>,  <35.105251, 36.644569, 42.696327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461010, 36.629150, 42.878529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456864, -0.109222, 0.882805,
		0.015726, -0.993270, -0.114750,
		0.889397, -0.038542, 0.455507,
		35.727829, 36.617588, 43.015182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968075, 36.231075, 43.215332>,  <35.105251, 36.644569, 42.696327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968075, 36.231075, 43.215332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.323601, 36.383324, 43.317421>,  <35.536915, 36.474670, 43.378674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.323601, 36.383324, 43.317421>,  <34.968075, 36.231075, 43.215332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323601, 36.383324, 43.317421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214079, -0.147562, 0.965606,
		0.405188, -0.912883, -0.049673,
		0.888815, 0.380618, 0.255220,
		35.590244, 36.497509, 43.393986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143490, 35.828999, 43.789337>,  <34.968075, 36.231075, 43.215332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143490, 35.828999, 43.789337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.364994, 36.160164, 43.824913>,  <35.497894, 36.358864, 43.846260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.364994, 36.160164, 43.824913>,  <35.143490, 35.828999, 43.789337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364994, 36.160164, 43.824913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038765, -0.132331, 0.990447,
		0.831775, -0.545021, -0.105374,
		0.553759, 0.827914, 0.088942,
		35.531120, 36.408539, 43.851597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796356, 35.723213, 44.127563>,  <35.143490, 35.828999, 43.789337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796356, 35.723213, 44.127563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767834, 36.115582, 44.199902>,  <35.750721, 36.351002, 44.243305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767834, 36.115582, 44.199902>,  <35.796356, 35.723213, 44.127563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767834, 36.115582, 44.199902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116563, -0.171873, 0.978199,
		0.990620, 0.090828, -0.102085,
		-0.071302, 0.980923, 0.180848,
		35.746445, 36.409859, 44.254154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275673, 35.866928, 44.622299>,  <35.796356, 35.723213, 44.127563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275673, 35.866928, 44.622299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.997463, 36.153870, 44.638546>,  <35.830536, 36.326035, 44.648293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.997463, 36.153870, 44.638546>,  <36.275673, 35.866928, 44.622299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997463, 36.153870, 44.638546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080607, 0.021734, 0.996509,
		0.713967, 0.696369, -0.072940,
		-0.695524, 0.717354, 0.040615,
		35.788807, 36.369076, 44.650730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583389, 36.259209, 45.022770>,  <36.275673, 35.866928, 44.622299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583389, 36.259209, 45.022770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207664, 36.388107, 45.069851>,  <35.982231, 36.465446, 45.098099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207664, 36.388107, 45.069851>,  <36.583389, 36.259209, 45.022770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207664, 36.388107, 45.069851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072369, -0.149262, 0.986146,
		0.335353, 0.934814, 0.116883,
		-0.939309, 0.322248, 0.117707,
		35.925873, 36.484783, 45.105164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539375, 36.840263, 45.476704>,  <36.583389, 36.259209, 45.022770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539375, 36.840263, 45.476704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.163879, 36.702839, 45.487583>,  <35.938583, 36.620384, 45.494110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.163879, 36.702839, 45.487583>,  <36.539375, 36.840263, 45.476704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163879, 36.702839, 45.487583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056484, -0.075530, 0.995543,
		-0.339976, 0.936088, 0.090309,
		-0.938736, -0.343562, 0.027195,
		35.882259, 36.599770, 45.495743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789749, 37.545399, 45.449844>,  <36.539375, 36.840263, 45.476704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789749, 37.545399, 45.449844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076897, 37.805897, 45.548264>,  <37.249184, 37.962196, 45.607315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076897, 37.805897, 45.548264>,  <36.789749, 37.545399, 45.449844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076897, 37.805897, 45.548264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349547, -0.031532, -0.936388,
		-0.602063, 0.758209, -0.250278,
		0.717869, 0.651249, 0.246046,
		37.292259, 38.001270, 45.622078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749760, 38.032509, 44.905281>,  <36.789749, 37.545399, 45.449844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749760, 38.032509, 44.905281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115231, 38.060783, 45.065380>,  <37.334515, 38.077747, 45.161438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115231, 38.060783, 45.065380>,  <36.749760, 38.032509, 44.905281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115231, 38.060783, 45.065380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395696, 0.070231, -0.915692,
		-0.092841, 0.995023, 0.036196,
		0.913677, 0.070691, 0.400246,
		37.389332, 38.081989, 45.185455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095230, 38.596542, 44.548946>,  <36.749760, 38.032509, 44.905281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095230, 38.596542, 44.548946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.385895, 38.372120, 44.707531>,  <37.560295, 38.237469, 44.802681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.385895, 38.372120, 44.707531>,  <37.095230, 38.596542, 44.548946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385895, 38.372120, 44.707531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410695, -0.107845, -0.905372,
		0.550719, 0.820724, 0.152055,
		0.726662, -0.561054, 0.396460,
		37.603893, 38.203804, 44.826469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701302, 38.838978, 44.211613>,  <37.095230, 38.596542, 44.548946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701302, 38.838978, 44.211613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.823502, 38.491314, 44.367168>,  <37.896820, 38.282715, 44.460503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.823502, 38.491314, 44.367168>,  <37.701302, 38.838978, 44.211613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823502, 38.491314, 44.367168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589587, -0.148044, -0.794021,
		0.747702, 0.471857, 0.467217,
		0.305496, -0.869157, 0.388894,
		37.915150, 38.230568, 44.483837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460907, 38.889603, 44.268677>,  <37.701302, 38.838978, 44.211613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460907, 38.889603, 44.268677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346935, 38.507000, 44.293701>,  <38.278553, 38.277439, 44.308716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346935, 38.507000, 44.293701>,  <38.460907, 38.889603, 44.268677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346935, 38.507000, 44.293701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483577, -0.199795, -0.852195,
		0.827627, -0.212564, 0.519471,
		-0.284933, -0.956503, 0.062565,
		38.261456, 38.220051, 44.312469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074398, 38.600754, 44.145458>,  <38.460907, 38.889603, 44.268677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074398, 38.600754, 44.145458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.818176, 38.301529, 44.076073>,  <38.664444, 38.121994, 44.034439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.818176, 38.301529, 44.076073>,  <39.074398, 38.600754, 44.145458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818176, 38.301529, 44.076073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490366, -0.224629, -0.842071,
		0.590956, -0.624455, 0.510712,
		-0.640556, -0.748062, -0.173466,
		38.626011, 38.077110, 44.024033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521938, 37.998878, 43.988781>,  <39.074398, 38.600754, 44.145458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521938, 37.998878, 43.988781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.153786, 37.919144, 43.854218>,  <38.932896, 37.871304, 43.773479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.153786, 37.919144, 43.854218>,  <39.521938, 37.998878, 43.988781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153786, 37.919144, 43.854218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390637, -0.430290, -0.813789,
		0.017466, -0.880407, 0.473898,
		-0.920379, -0.199336, -0.336404,
		38.877670, 37.859344, 43.753296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744564, 37.466797, 43.609314>,  <39.521938, 37.998878, 43.988781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744564, 37.466797, 43.609314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.389481, 37.611355, 43.495209>,  <39.176430, 37.698090, 43.426746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.389481, 37.611355, 43.495209>,  <39.744564, 37.466797, 43.609314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389481, 37.611355, 43.495209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208426, -0.237021, -0.948883,
		-0.410537, -0.901783, 0.135080,
		-0.887704, 0.361397, -0.285261,
		39.123169, 37.719772, 43.409630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345947, 36.919888, 43.116402>,  <39.744564, 37.466797, 43.609314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345947, 36.919888, 43.116402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.219585, 37.292019, 43.041901>,  <39.143768, 37.515297, 42.997200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.219585, 37.292019, 43.041901>,  <39.345947, 36.919888, 43.116402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219585, 37.292019, 43.041901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205887, -0.124410, -0.970635,
		-0.926182, -0.344978, -0.152241,
		-0.315908, 0.930329, -0.186253,
		39.124813, 37.571117, 42.986023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132240, 36.858871, 42.485210>,  <39.345947, 36.919888, 43.116402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132240, 36.858871, 42.485210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122761, 37.258232, 42.505718>,  <39.117073, 37.497849, 42.518021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122761, 37.258232, 42.505718>,  <39.132240, 36.858871, 42.485210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122761, 37.258232, 42.505718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364791, 0.056384, -0.929381,
		-0.930788, -0.003328, -0.365545,
		-0.023703, 0.998404, 0.051268,
		39.115650, 37.557755, 42.521099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760094, 37.099014, 41.750713>,  <39.132240, 36.858871, 42.485210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760094, 37.099014, 41.750713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994442, 37.381603, 41.909534>,  <39.135052, 37.551155, 42.004826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994442, 37.381603, 41.909534>,  <38.760094, 37.099014, 41.750713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994442, 37.381603, 41.909534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400129, 0.173887, -0.899811,
		-0.704732, 0.686049, -0.180804,
		0.585875, 0.706470, 0.397052,
		39.170204, 37.593544, 42.028648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668644, 37.617023, 41.357098>,  <38.760094, 37.099014, 41.750713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668644, 37.617023, 41.357098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.014164, 37.667149, 41.552296>,  <39.221478, 37.697224, 41.669415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.014164, 37.667149, 41.552296>,  <38.668644, 37.617023, 41.357098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014164, 37.667149, 41.552296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468246, 0.157862, -0.869382,
		-0.185977, 0.979478, 0.077687,
		0.863805, 0.125309, 0.487995,
		39.273304, 37.704742, 41.698696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952114, 38.150093, 41.202465>,  <38.668644, 37.617023, 41.357098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952114, 38.150093, 41.202465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279236, 37.952946, 41.321308>,  <39.475510, 37.834656, 41.392616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279236, 37.952946, 41.321308>,  <38.952114, 38.150093, 41.202465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279236, 37.952946, 41.321308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406636, 0.129558, -0.904357,
		0.407237, 0.860403, 0.306372,
		0.817805, -0.492870, 0.297110,
		39.524578, 37.805084, 41.410442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547001, 38.445705, 40.936092>,  <38.952114, 38.150093, 41.202465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547001, 38.445705, 40.936092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.679180, 38.079620, 41.028343>,  <39.758488, 37.859970, 41.083694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.679180, 38.079620, 41.028343>,  <39.547001, 38.445705, 40.936092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679180, 38.079620, 41.028343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555420, -0.008997, -0.831521,
		0.763092, 0.402875, 0.505354,
		0.330452, -0.915211, 0.230630,
		39.778316, 37.805058, 41.097530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.852013, 32.390366, 31.358686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191196, 32.289391, 31.172251>,  <26.394707, 32.228806, 31.060389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191196, 32.289391, 31.172251>,  <25.852013, 32.390366, 31.358686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191196, 32.289391, 31.172251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518180, 0.209664, 0.829175,
		-0.111590, -0.944626, 0.308593,
		0.847961, -0.252434, -0.466090,
		26.445585, 32.213661, 31.032423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287434, 32.193253, 31.834526>,  <25.852013, 32.390366, 31.358686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287434, 32.193253, 31.834526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554569, 32.245537, 31.541431>,  <26.714851, 32.276909, 31.365574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554569, 32.245537, 31.541431>,  <26.287434, 32.193253, 31.834526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554569, 32.245537, 31.541431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716087, 0.155655, 0.680434,
		0.203000, -0.979124, 0.010346,
		0.667840, 0.130720, -0.732736,
		26.754921, 32.284752, 31.321611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796022, 31.740536, 31.937628>,  <26.287434, 32.193253, 31.834526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796022, 31.740536, 31.937628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.953037, 32.048206, 31.735922>,  <27.047247, 32.232807, 31.614899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.953037, 32.048206, 31.735922>,  <26.796022, 31.740536, 31.937628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953037, 32.048206, 31.735922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541850, 0.249621, 0.802550,
		0.743177, -0.588268, -0.318792,
		0.392537, 0.769175, -0.504266,
		27.070799, 32.278957, 31.584642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420172, 31.609156, 32.112083>,  <26.796022, 31.740536, 31.937628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420172, 31.609156, 32.112083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452215, 31.979803, 31.965134>,  <27.471441, 32.202190, 31.876965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452215, 31.979803, 31.965134>,  <27.420172, 31.609156, 32.112083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452215, 31.979803, 31.965134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657666, 0.227819, 0.718035,
		0.749038, -0.299128, -0.591155,
		0.080108, 0.926618, -0.367371,
		27.476248, 32.257790, 31.854921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145025, 31.810524, 32.164116>,  <27.420172, 31.609156, 32.112083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145025, 31.810524, 32.164116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950207, 32.159065, 32.140350>,  <27.833317, 32.368191, 32.126091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950207, 32.159065, 32.140350>,  <28.145025, 31.810524, 32.164116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950207, 32.159065, 32.140350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506442, 0.337194, 0.793610,
		0.711551, 0.356431, -0.605518,
		-0.487045, 0.871354, -0.059419,
		27.804094, 32.420471, 32.122524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667351, 32.310253, 32.048904>,  <28.145025, 31.810524, 32.164116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667351, 32.310253, 32.048904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.352938, 32.505997, 32.199997>,  <28.164289, 32.623444, 32.290653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.352938, 32.505997, 32.199997>,  <28.667351, 32.310253, 32.048904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352938, 32.505997, 32.199997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579643, 0.371053, 0.725489,
		0.214869, 0.789205, -0.575314,
		-0.786031, 0.489362, 0.377729,
		28.117128, 32.652805, 32.313316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956553, 32.985680, 32.241184>,  <28.667351, 32.310253, 32.048904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956553, 32.985680, 32.241184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601524, 32.937222, 32.418968>,  <28.388508, 32.908146, 32.525639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601524, 32.937222, 32.418968>,  <28.956553, 32.985680, 32.241184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601524, 32.937222, 32.418968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375530, 0.368566, 0.850374,
		-0.266829, 0.921674, -0.281636,
		-0.887569, -0.121142, 0.444461,
		28.335253, 32.900879, 32.552307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973896, 33.570419, 32.660419>,  <28.956553, 32.985680, 32.241184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973896, 33.570419, 32.660419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.651636, 33.363239, 32.775414>,  <28.458281, 33.238930, 32.844410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.651636, 33.363239, 32.775414>,  <28.973896, 33.570419, 32.660419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651636, 33.363239, 32.775414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001170, 0.483912, 0.875116,
		-0.592389, 0.705374, -0.389258,
		-0.805651, -0.517954, 0.287490,
		28.409941, 33.207851, 32.861660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367104, 33.977043, 32.824589>,  <28.973896, 33.570419, 32.660419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367104, 33.977043, 32.824589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.378916, 33.645588, 33.048187>,  <28.386003, 33.446712, 33.182346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.378916, 33.645588, 33.048187>,  <28.367104, 33.977043, 32.824589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378916, 33.645588, 33.048187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038309, 0.559771, 0.827762,
		-0.998829, -0.003030, 0.048275,
		0.029530, -0.828642, 0.559000,
		28.387775, 33.396996, 33.215889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782095, 34.115234, 33.423912>,  <28.367104, 33.977043, 32.824589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782095, 34.115234, 33.423912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.031837, 33.817970, 33.520153>,  <28.181683, 33.639610, 33.577896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.031837, 33.817970, 33.520153>,  <27.782095, 34.115234, 33.423912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031837, 33.817970, 33.520153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110765, 0.389129, 0.914500,
		-0.773246, -0.544324, 0.325272,
		0.624357, -0.743162, 0.240601,
		28.219145, 33.595020, 33.592335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769640, 34.143284, 34.163464>,  <27.782095, 34.115234, 33.423912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769640, 34.143284, 34.163464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071854, 33.889477, 34.098278>,  <28.253181, 33.737194, 34.059166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071854, 33.889477, 34.098278>,  <27.769640, 34.143284, 34.163464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071854, 33.889477, 34.098278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399502, 0.249104, 0.882239,
		-0.519199, -0.731667, 0.441697,
		0.755533, -0.634517, -0.162968,
		28.298513, 33.699123, 34.049389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813576, 33.661583, 34.757370>,  <27.769640, 34.143284, 34.163464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813576, 33.661583, 34.757370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179054, 33.647522, 34.595421>,  <28.398342, 33.639088, 34.498253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179054, 33.647522, 34.595421>,  <27.813576, 33.661583, 34.757370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179054, 33.647522, 34.595421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400830, 0.242246, 0.883545,
		0.067022, -0.969578, 0.235428,
		0.913698, -0.035150, -0.404871,
		28.453163, 33.636978, 34.473961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105471, 33.281456, 35.294178>,  <27.813576, 33.661583, 34.757370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105471, 33.281456, 35.294178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.386456, 33.482201, 35.092316>,  <28.555046, 33.602650, 34.971199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.386456, 33.482201, 35.092316>,  <28.105471, 33.281456, 35.294178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386456, 33.482201, 35.092316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368125, 0.350645, 0.861123,
		0.609124, -0.790682, 0.061565,
		0.702462, 0.501866, -0.504656,
		28.597195, 33.632759, 34.940918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746223, 33.064693, 35.486443>,  <28.105471, 33.281456, 35.294178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746223, 33.064693, 35.486443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.800270, 33.427814, 35.327633>,  <28.832699, 33.645687, 35.232346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.800270, 33.427814, 35.327633>,  <28.746223, 33.064693, 35.486443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800270, 33.427814, 35.327633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404956, 0.315112, 0.858321,
		0.904297, -0.276754, -0.325044,
		0.135118, 0.907806, -0.397028,
		28.840805, 33.700157, 35.208523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264606, 33.337463, 35.798679>,  <28.746223, 33.064693, 35.486443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264606, 33.337463, 35.798679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.146997, 33.682228, 35.633434>,  <29.076431, 33.889088, 35.534286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.146997, 33.682228, 35.633434>,  <29.264606, 33.337463, 35.798679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146997, 33.682228, 35.633434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466740, 0.506653, 0.724884,
		0.834089, 0.020318, -0.551256,
		-0.294023, 0.861911, -0.413110,
		29.058790, 33.940800, 35.509502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744423, 33.756149, 35.956829>,  <29.264606, 33.337463, 35.798679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744423, 33.756149, 35.956829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.465160, 34.029705, 35.872101>,  <29.297602, 34.193840, 35.821266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.465160, 34.029705, 35.872101>,  <29.744423, 33.756149, 35.956829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465160, 34.029705, 35.872101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376720, 0.602505, 0.703612,
		0.608817, 0.411435, -0.678280,
		-0.698157, 0.683893, -0.211819,
		29.255713, 34.234875, 35.808556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036366, 34.424763, 35.955460>,  <29.744423, 33.756149, 35.956829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036366, 34.424763, 35.955460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663624, 34.525444, 36.059990>,  <29.439978, 34.585854, 36.122707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663624, 34.525444, 36.059990>,  <30.036366, 34.424763, 35.955460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663624, 34.525444, 36.059990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360789, 0.566524, 0.740865,
		0.038433, 0.784662, -0.618731,
		-0.931855, 0.251705, 0.261325,
		29.384068, 34.600956, 36.138386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409941, 34.104973, 36.412529>,  <30.036366, 34.424763, 35.955460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409941, 34.104973, 36.412529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.257608, 34.443481, 36.561554>,  <30.166210, 34.646587, 36.650967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.257608, 34.443481, 36.561554>,  <30.409941, 34.104973, 36.412529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257608, 34.443481, 36.561554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770031, 0.513322, -0.378883,
		-0.511880, 0.142593, -0.847140,
		-0.380830, 0.846267, 0.372560,
		30.143360, 34.697361, 36.673321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951778, 34.306660, 35.959488>,  <30.409941, 34.104973, 36.412529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951778, 34.306660, 35.959488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.337456, 34.412350, 35.968552>,  <31.568863, 34.475765, 35.973988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.337456, 34.412350, 35.968552>,  <30.951778, 34.306660, 35.959488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337456, 34.412350, 35.968552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110561, -0.322847, -0.939972,
		-0.241052, 0.908820, -0.340500,
		0.964194, 0.264228, 0.022657,
		31.626715, 34.491619, 35.975349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110056, 34.881081, 35.507648>,  <30.951778, 34.306660, 35.959488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110056, 34.881081, 35.507648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.330347, 34.562119, 35.606308>,  <31.462523, 34.370739, 35.665504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.330347, 34.562119, 35.606308>,  <31.110056, 34.881081, 35.507648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330347, 34.562119, 35.606308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082029, -0.345780, -0.934723,
		0.830643, 0.494547, -0.255842,
		0.550730, -0.797408, 0.246653,
		31.495565, 34.322895, 35.680305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485401, 34.649734, 34.922112>,  <31.110056, 34.881081, 35.507648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485401, 34.649734, 34.922112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.507563, 34.321018, 35.148945>,  <31.520859, 34.123787, 35.285046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.507563, 34.321018, 35.148945>,  <31.485401, 34.649734, 34.922112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507563, 34.321018, 35.148945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132309, -0.568990, -0.811631,
		0.989659, -0.030063, -0.140255,
		0.055404, -0.821795, 0.567084,
		31.524183, 34.074478, 35.319069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895828, 34.256077, 34.542057>,  <31.485401, 34.649734, 34.922112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895828, 34.256077, 34.542057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.716843, 33.983723, 34.773975>,  <31.609451, 33.820309, 34.913128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.716843, 33.983723, 34.773975>,  <31.895828, 34.256077, 34.542057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716843, 33.983723, 34.773975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083504, -0.613682, -0.785125,
		0.890395, -0.399730, 0.217743,
		-0.447463, -0.680889, 0.579799,
		31.582603, 33.779457, 34.947914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132904, 33.617016, 34.296379>,  <31.895828, 34.256077, 34.542057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132904, 33.617016, 34.296379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.813433, 33.539612, 34.524300>,  <31.621750, 33.493172, 34.661053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.813433, 33.539612, 34.524300>,  <32.132904, 33.617016, 34.296379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813433, 33.539612, 34.524300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332485, -0.647324, -0.685876,
		0.501565, -0.737243, 0.452665,
		-0.798678, -0.193508, 0.569797,
		31.573830, 33.481560, 34.695240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111923, 32.924152, 34.299076>,  <32.132904, 33.617016, 34.296379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111923, 32.924152, 34.299076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.749981, 33.080498, 34.366562>,  <31.532816, 33.174305, 34.407051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.749981, 33.080498, 34.366562>,  <32.111923, 32.924152, 34.299076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749981, 33.080498, 34.366562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344342, -0.438931, -0.829921,
		-0.250329, -0.809054, 0.531759,
		-0.904856, 0.390860, 0.168714,
		31.478525, 33.197758, 34.417175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638660, 32.425400, 34.240868>,  <32.111923, 32.924152, 34.299076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638660, 32.425400, 34.240868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.398279, 32.741096, 34.190334>,  <31.254051, 32.930515, 34.160015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.398279, 32.741096, 34.190334>,  <31.638660, 32.425400, 34.240868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398279, 32.741096, 34.190334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372905, -0.416651, -0.829062,
		-0.706965, -0.451116, 0.544698,
		-0.600951, 0.789238, -0.126334,
		31.217993, 32.977867, 34.152435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945616, 32.214691, 34.222412>,  <31.638660, 32.425400, 34.240868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945616, 32.214691, 34.222412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.935299, 32.577782, 34.054905>,  <30.929110, 32.795635, 33.954399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.935299, 32.577782, 34.054905>,  <30.945616, 32.214691, 34.222412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935299, 32.577782, 34.054905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538329, -0.365594, -0.759305,
		-0.842340, 0.205852, 0.498084,
		-0.025792, 0.907726, -0.418770,
		30.927561, 32.850098, 33.929276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287464, 32.282734, 33.990223>,  <30.945616, 32.214691, 34.222412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287464, 32.282734, 33.990223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480711, 32.568531, 33.787800>,  <30.596659, 32.740009, 33.666348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480711, 32.568531, 33.787800>,  <30.287464, 32.282734, 33.990223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480711, 32.568531, 33.787800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494335, -0.254459, -0.831194,
		-0.722654, 0.651727, 0.230266,
		0.483118, 0.714495, -0.506057,
		30.625647, 32.782879, 33.635983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811359, 32.543808, 33.599770>,  <30.287464, 32.282734, 33.990223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811359, 32.543808, 33.599770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.159781, 32.640083, 33.428497>,  <30.368834, 32.697849, 33.325733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.159781, 32.640083, 33.428497>,  <29.811359, 32.543808, 33.599770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159781, 32.640083, 33.428497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383422, -0.211681, -0.898988,
		-0.307011, 0.947239, -0.092102,
		0.871052, 0.240685, -0.428180,
		30.421097, 32.712288, 33.300045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591356, 32.911846, 33.009434>,  <29.811359, 32.543808, 33.599770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591356, 32.911846, 33.009434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975933, 32.821564, 32.946590>,  <30.206678, 32.767395, 32.908882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975933, 32.821564, 32.946590>,  <29.591356, 32.911846, 33.009434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975933, 32.821564, 32.946590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214864, -0.259949, -0.941414,
		0.171645, 0.938873, -0.298422,
		0.961442, -0.225710, -0.157111,
		30.264366, 32.753849, 32.899456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864412, 33.220058, 32.387878>,  <29.591356, 32.911846, 33.009434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864412, 33.220058, 32.387878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.102657, 32.905354, 32.452682>,  <30.245605, 32.716530, 32.491566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.102657, 32.905354, 32.452682>,  <29.864412, 33.220058, 32.387878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102657, 32.905354, 32.452682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156698, -0.311614, -0.937199,
		0.787838, 0.532823, -0.308886,
		0.595614, -0.786763, 0.162009,
		30.281342, 32.669323, 32.501286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222057, 33.119976, 31.841576>,  <29.864412, 33.220058, 32.387878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222057, 33.119976, 31.841576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283125, 32.756920, 31.997976>,  <30.319765, 32.539085, 32.091816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283125, 32.756920, 31.997976>,  <30.222057, 33.119976, 31.841576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283125, 32.756920, 31.997976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108592, -0.408653, -0.906207,
		0.982293, 0.095891, -0.160951,
		0.152671, -0.907638, 0.391004,
		30.328926, 32.484627, 32.115276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754269, 32.766735, 31.396042>,  <30.222057, 33.119976, 31.841576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754269, 32.766735, 31.396042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.569317, 32.482910, 31.608728>,  <30.458345, 32.312614, 31.736340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.569317, 32.482910, 31.608728>,  <30.754269, 32.766735, 31.396042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569317, 32.482910, 31.608728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014486, -0.605635, -0.795611,
		0.886564, -0.360171, 0.290312,
		-0.462379, -0.709565, 0.531717,
		30.430603, 32.270042, 31.768244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126352, 32.199245, 31.163029>,  <30.754269, 32.766735, 31.396042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126352, 32.199245, 31.163029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.772942, 32.077232, 31.305202>,  <30.560894, 32.004025, 31.390507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.772942, 32.077232, 31.305202>,  <31.126352, 32.199245, 31.163029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772942, 32.077232, 31.305202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085569, -0.640972, -0.762779,
		0.460496, -0.704351, 0.540216,
		-0.883528, -0.305031, 0.355435,
		30.507883, 31.985723, 31.411833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137712, 31.472454, 31.168974>,  <31.126352, 32.199245, 31.163029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137712, 31.472454, 31.168974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.745419, 31.544325, 31.199627>,  <30.510042, 31.587448, 31.218018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.745419, 31.544325, 31.199627>,  <31.137712, 31.472454, 31.168974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745419, 31.544325, 31.199627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185286, -0.731471, -0.656216,
		-0.061855, -0.657774, 0.750672,
		-0.980736, 0.179679, 0.076631,
		30.451199, 31.598228, 31.222616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922092, 30.853954, 31.149485>,  <31.137712, 31.472454, 31.168974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922092, 30.853954, 31.149485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624561, 31.099358, 31.043407>,  <30.446043, 31.246599, 30.979761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624561, 31.099358, 31.043407>,  <30.922092, 30.853954, 31.149485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624561, 31.099358, 31.043407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294308, -0.656883, -0.694181,
		-0.600084, -0.438304, 0.669169,
		-0.743829, 0.613509, -0.265189,
		30.401413, 31.283411, 30.963850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339573, 30.492661, 31.012026>,  <30.922092, 30.853954, 31.149485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339573, 30.492661, 31.012026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240990, 30.829084, 30.819410>,  <30.181839, 31.030939, 30.703842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240990, 30.829084, 30.819410>,  <30.339573, 30.492661, 31.012026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240990, 30.829084, 30.819410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336577, -0.540217, -0.771285,
		-0.908831, -0.028015, 0.416222,
		-0.246458, 0.841059, -0.481537,
		30.167051, 31.081402, 30.674950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616392, 30.394983, 30.824776>,  <30.339573, 30.492661, 31.012026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616392, 30.394983, 30.824776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716585, 30.714970, 30.606668>,  <29.776701, 30.906961, 30.475803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716585, 30.714970, 30.606668>,  <29.616392, 30.394983, 30.824776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716585, 30.714970, 30.606668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569894, -0.333461, -0.751016,
		-0.782611, 0.498859, 0.372370,
		0.250480, 0.799965, -0.545267,
		29.791729, 30.954960, 30.443089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006897, 30.672979, 30.617624>,  <29.616392, 30.394983, 30.824776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006897, 30.672979, 30.617624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.277889, 30.796192, 30.350451>,  <29.440485, 30.870119, 30.190145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.277889, 30.796192, 30.350451>,  <29.006897, 30.672979, 30.617624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277889, 30.796192, 30.350451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622310, -0.244051, -0.743754,
		-0.392110, 0.919541, 0.026352,
		0.677481, 0.308032, -0.667934,
		29.481134, 30.888601, 30.150070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651592, 31.058002, 30.220156>,  <29.006897, 30.672979, 30.617624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651592, 31.058002, 30.220156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972481, 30.970741, 29.997860>,  <29.165014, 30.918385, 29.864483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972481, 30.970741, 29.997860>,  <28.651592, 31.058002, 30.220156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972481, 30.970741, 29.997860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586694, -0.460484, -0.666141,
		-0.110588, 0.860444, -0.497401,
		0.802222, -0.218155, -0.555741,
		29.213148, 30.905294, 29.831137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510887, 31.255112, 29.516304>,  <28.651592, 31.058002, 30.220156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510887, 31.255112, 29.516304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.797085, 30.976313, 29.535337>,  <28.968803, 30.809034, 29.546757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.797085, 30.976313, 29.535337>,  <28.510887, 31.255112, 29.516304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797085, 30.976313, 29.535337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500231, -0.558671, -0.661555,
		0.487685, 0.449537, -0.748385,
		0.715495, -0.696996, 0.047583,
		29.011734, 30.767214, 29.549612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890768, 31.197075, 28.828579>,  <28.510887, 31.255112, 29.516304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890768, 31.197075, 28.828579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903593, 30.855347, 29.036081>,  <28.911289, 30.650311, 29.160583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903593, 30.855347, 29.036081>,  <28.890768, 31.197075, 28.828579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903593, 30.855347, 29.036081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349801, -0.495791, -0.794878,
		0.936275, -0.155975, -0.314739,
		0.032064, -0.854320, 0.518757,
		28.913212, 30.599051, 29.191708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845104, 30.784397, 28.198463>,  <28.890768, 31.197075, 28.828579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845104, 30.784397, 28.198463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.800571, 30.563784, 28.529139>,  <28.773851, 30.431416, 28.727545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.800571, 30.563784, 28.529139>,  <28.845104, 30.784397, 28.198463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800571, 30.563784, 28.529139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586556, -0.635042, -0.502666,
		0.802220, -0.540861, -0.252807,
		-0.111329, -0.551535, 0.826689,
		28.767172, 30.398323, 28.777145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.668396, 37.165600, 47.471519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.290668, 37.049904, 47.408775>,  <41.064034, 36.980484, 47.371128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.290668, 37.049904, 47.408775>,  <41.668396, 37.165600, 47.471519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290668, 37.049904, 47.408775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307574, 0.606609, 0.733092,
		-0.116892, 0.740516, -0.661795,
		-0.944317, -0.289243, -0.156856,
		41.007374, 36.963131, 47.361717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263340, 37.777359, 47.672333>,  <41.668396, 37.165600, 47.471519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263340, 37.777359, 47.672333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.019352, 37.460396, 47.674141>,  <40.872959, 37.270218, 47.675224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.019352, 37.460396, 47.674141>,  <41.263340, 37.777359, 47.672333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019352, 37.460396, 47.674141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519752, 0.404381, 0.752552,
		-0.598158, 0.456686, -0.658518,
		-0.609971, -0.792411, 0.004520,
		40.836361, 37.222672, 47.675495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574986, 38.075588, 47.763680>,  <41.263340, 37.777359, 47.672333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574986, 38.075588, 47.763680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.546734, 37.691452, 47.871574>,  <40.529781, 37.460972, 47.936310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.546734, 37.691452, 47.871574>,  <40.574986, 38.075588, 47.763680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546734, 37.691452, 47.871574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512341, 0.266942, 0.816240,
		-0.855872, -0.080543, -0.510877,
		-0.070632, -0.960341, 0.269734,
		40.525543, 37.403351, 47.952496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913280, 38.013702, 47.921371>,  <40.574986, 38.075588, 47.763680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913280, 38.013702, 47.921371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.113022, 37.724564, 48.112423>,  <40.232868, 37.551079, 48.227055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.113022, 37.724564, 48.112423>,  <39.913280, 38.013702, 47.921371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113022, 37.724564, 48.112423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553341, 0.158122, 0.817809,
		-0.666677, -0.672671, -0.321023,
		0.499355, -0.722849, 0.477633,
		40.262829, 37.507710, 48.255714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415047, 37.511078, 48.293633>,  <39.913280, 38.013702, 47.921371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415047, 37.511078, 48.293633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.769001, 37.429241, 48.461021>,  <39.981373, 37.380138, 48.561455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.769001, 37.429241, 48.461021>,  <39.415047, 37.511078, 48.293633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769001, 37.429241, 48.461021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423757, 0.019460, 0.905567,
		-0.193412, -0.978655, -0.069476,
		0.884885, -0.204589, 0.418476,
		40.034466, 37.367863, 48.586563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240421, 36.946915, 48.762135>,  <39.415047, 37.511078, 48.293633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240421, 36.946915, 48.762135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573845, 37.123154, 48.895428>,  <39.773899, 37.228897, 48.975403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573845, 37.123154, 48.895428>,  <39.240421, 36.946915, 48.762135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573845, 37.123154, 48.895428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345927, -0.053999, 0.936706,
		0.430707, -0.896078, 0.107404,
		0.833562, 0.440600, 0.333235,
		39.823914, 37.255333, 48.995399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453392, 36.584896, 49.367920>,  <39.240421, 36.946915, 48.762135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453392, 36.584896, 49.367920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.629574, 36.943459, 49.387749>,  <39.735283, 37.158596, 49.399647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.629574, 36.943459, 49.387749>,  <39.453392, 36.584896, 49.367920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629574, 36.943459, 49.387749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211748, 0.050064, 0.976041,
		0.872449, -0.440394, 0.211863,
		0.440450, 0.896407, 0.049574,
		39.761707, 37.212379, 49.402622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790695, 36.557709, 49.904419>,  <39.453392, 36.584896, 49.367920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790695, 36.557709, 49.904419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.779034, 36.956272, 49.872604>,  <39.772038, 37.195408, 49.853516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.779034, 36.956272, 49.872604>,  <39.790695, 36.557709, 49.904419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779034, 36.956272, 49.872604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096395, 0.076393, 0.992407,
		0.994916, 0.036603, 0.093821,
		-0.029158, 0.996406, -0.079533,
		39.770287, 37.255196, 49.848743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981903, 36.806854, 50.569412>,  <39.790695, 36.557709, 49.904419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981903, 36.806854, 50.569412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.859638, 37.162830, 50.434021>,  <39.786278, 37.376415, 50.352787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.859638, 37.162830, 50.434021>,  <39.981903, 36.806854, 50.569412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859638, 37.162830, 50.434021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273652, 0.258386, 0.926473,
		0.911968, 0.375814, 0.164556,
		-0.305663, 0.889944, -0.338482,
		39.767941, 37.429813, 50.332478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212227, 37.384792, 51.018032>,  <39.981903, 36.806854, 50.569412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212227, 37.384792, 51.018032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.897976, 37.522366, 50.812313>,  <39.709427, 37.604908, 50.688881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.897976, 37.522366, 50.812313>,  <40.212227, 37.384792, 51.018032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897976, 37.522366, 50.812313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392537, 0.365440, 0.844019,
		0.478229, 0.864965, -0.152094,
		-0.785628, 0.343932, -0.514295,
		39.662289, 37.625546, 50.658024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158596, 38.066647, 51.201435>,  <40.212227, 37.384792, 51.018032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158596, 38.066647, 51.201435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.796268, 37.942528, 51.086060>,  <39.578873, 37.868057, 51.016834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.796268, 37.942528, 51.086060>,  <40.158596, 38.066647, 51.201435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796268, 37.942528, 51.086060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385946, 0.323598, 0.863904,
		-0.174729, 0.893868, -0.412881,
		-0.905823, -0.310299, -0.288443,
		39.524521, 37.849438, 50.999527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753300, 38.447498, 51.661434>,  <40.158596, 38.066647, 51.201435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753300, 38.447498, 51.661434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.514645, 38.175640, 51.490734>,  <39.371452, 38.012527, 51.388313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.514645, 38.175640, 51.490734>,  <39.753300, 38.447498, 51.661434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514645, 38.175640, 51.490734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585212, 0.004597, 0.810867,
		-0.549138, 0.733529, -0.400478,
		-0.596635, -0.679643, -0.426746,
		39.335655, 37.971748, 51.362709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034191, 38.645298, 51.784695>,  <39.753300, 38.447498, 51.661434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034191, 38.645298, 51.784695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.048161, 38.251717, 51.714710>,  <39.056541, 38.015568, 51.672718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.048161, 38.251717, 51.714710>,  <39.034191, 38.645298, 51.784695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048161, 38.251717, 51.714710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569233, -0.163479, 0.805759,
		-0.821434, 0.071459, -0.565809,
		0.034919, -0.983955, -0.174964,
		39.058636, 37.956532, 51.662220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347668, 38.203358, 51.783482>,  <39.034191, 38.645298, 51.784695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347668, 38.203358, 51.783482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.644470, 37.985725, 51.940151>,  <38.822552, 37.855145, 52.034153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.644470, 37.985725, 51.940151>,  <38.347668, 38.203358, 51.783482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644470, 37.985725, 51.940151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476345, -0.016786, 0.879099,
		-0.471730, -0.838862, -0.271627,
		0.742002, -0.544085, 0.391669,
		38.867069, 37.822498, 52.057652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133148, 38.434525, 51.073402>,  <38.347668, 38.203358, 51.783482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133148, 38.434525, 51.073402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.753105, 38.557880, 51.092102>,  <37.525078, 38.631893, 51.103321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.753105, 38.557880, 51.092102>,  <38.133148, 38.434525, 51.073402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753105, 38.557880, 51.092102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075642, -0.082388, -0.993726,
		-0.302607, -0.947684, 0.101605,
		-0.950109, 0.308394, 0.046754,
		37.468071, 38.650398, 51.106129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690186, 37.926922, 50.595116>,  <38.133148, 38.434525, 51.073402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690186, 37.926922, 50.595116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.512829, 38.283489, 50.632584>,  <37.406414, 38.497429, 50.655064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.512829, 38.283489, 50.632584>,  <37.690186, 37.926922, 50.595116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512829, 38.283489, 50.632584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234458, -0.014481, -0.972018,
		-0.865120, -0.452948, 0.215421,
		-0.443393, 0.891419, 0.093670,
		37.379810, 38.550915, 50.660683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152550, 37.895134, 50.087635>,  <37.690186, 37.926922, 50.595116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152550, 37.895134, 50.087635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169720, 38.288929, 50.155693>,  <37.180023, 38.525204, 50.196526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169720, 38.288929, 50.155693>,  <37.152550, 37.895134, 50.087635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169720, 38.288929, 50.155693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243979, 0.175474, -0.953773,
		-0.968830, -0.000568, 0.247727,
		0.042928, 0.984484, 0.170143,
		37.182598, 38.584274, 50.206738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616367, 38.171406, 49.721844>,  <37.152550, 37.895134, 50.087635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616367, 38.171406, 49.721844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868809, 38.474991, 49.785946>,  <37.020275, 38.657143, 49.824409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868809, 38.474991, 49.785946>,  <36.616367, 38.171406, 49.721844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868809, 38.474991, 49.785946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146267, 0.319328, -0.936288,
		-0.761785, 0.567453, 0.312539,
		0.631102, 0.758964, 0.160260,
		37.058140, 38.702679, 49.834023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357658, 38.785126, 49.478302>,  <36.616367, 38.171406, 49.721844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357658, 38.785126, 49.478302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.754494, 38.834866, 49.471306>,  <36.992596, 38.864708, 49.467110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.754494, 38.834866, 49.471306>,  <36.357658, 38.785126, 49.478302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754494, 38.834866, 49.471306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043674, 0.211091, -0.976490,
		-0.117733, 0.969525, 0.214851,
		0.992084, 0.124349, -0.017491,
		37.052120, 38.872169, 49.466057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455826, 39.402290, 48.964848>,  <36.357658, 38.785126, 49.478302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455826, 39.402290, 48.964848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813202, 39.225021, 48.994152>,  <37.027626, 39.118660, 49.011734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813202, 39.225021, 48.994152>,  <36.455826, 39.402290, 48.964848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813202, 39.225021, 48.994152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139314, 0.118331, -0.983153,
		0.427039, 0.888591, 0.167462,
		0.893437, -0.443174, 0.073261,
		37.081234, 39.092068, 49.016129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779808, 39.779007, 48.436363>,  <36.455826, 39.402290, 48.964848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779808, 39.779007, 48.436363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006542, 39.458988, 48.514973>,  <37.142586, 39.266979, 48.562138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006542, 39.458988, 48.514973>,  <36.779808, 39.779007, 48.436363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006542, 39.458988, 48.514973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196358, -0.100464, -0.975372,
		0.800085, 0.591468, 0.100148,
		0.566840, -0.800045, 0.196519,
		37.176594, 39.218975, 48.573929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307274, 39.748306, 47.920269>,  <36.779808, 39.779007, 48.436363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307274, 39.748306, 47.920269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.328503, 39.365887, 48.035614>,  <37.341240, 39.136436, 48.104820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.328503, 39.365887, 48.035614>,  <37.307274, 39.748306, 47.920269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328503, 39.365887, 48.035614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261706, -0.265363, -0.927951,
		0.963687, 0.124716, 0.236121,
		0.053073, -0.956049, 0.288366,
		37.344425, 39.079071, 48.122124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807014, 39.506283, 47.544991>,  <37.307274, 39.748306, 47.920269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807014, 39.506283, 47.544991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.611313, 39.166779, 47.625221>,  <37.493893, 38.963074, 47.673359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.611313, 39.166779, 47.625221>,  <37.807014, 39.506283, 47.544991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611313, 39.166779, 47.625221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133721, -0.300267, -0.944435,
		0.861828, -0.435249, 0.260405,
		-0.489256, -0.848763, 0.200577,
		37.464535, 38.912151, 47.685394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174561, 39.010300, 47.208534>,  <37.807014, 39.506283, 47.544991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174561, 39.010300, 47.208534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814625, 38.845127, 47.264793>,  <37.598663, 38.746025, 47.298550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814625, 38.845127, 47.264793>,  <38.174561, 39.010300, 47.208534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814625, 38.845127, 47.264793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022066, -0.365093, -0.930710,
		0.435670, -0.834382, 0.337635,
		-0.899836, -0.412932, 0.140649,
		37.544674, 38.721249, 47.306988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206909, 38.275860, 47.054909>,  <38.174561, 39.010300, 47.208534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206909, 38.275860, 47.054909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819572, 38.375637, 47.051208>,  <37.587170, 38.435505, 47.048988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819572, 38.375637, 47.051208>,  <38.206909, 38.275860, 47.054909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819572, 38.375637, 47.051208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097325, -0.411436, -0.906228,
		-0.229859, -0.876641, 0.422689,
		-0.968346, 0.249443, -0.009253,
		37.529068, 38.450470, 47.048431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932335, 37.675781, 46.850918>,  <38.206909, 38.275860, 47.054909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932335, 37.675781, 46.850918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654495, 37.953041, 46.773899>,  <37.487793, 38.119396, 46.727688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654495, 37.953041, 46.773899>,  <37.932335, 37.675781, 46.850918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654495, 37.953041, 46.773899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132817, -0.386610, -0.912629,
		-0.707031, -0.608337, 0.360601,
		-0.694598, 0.693151, -0.192548,
		37.446117, 38.160988, 46.716133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319290, 37.378773, 46.668438>,  <37.932335, 37.675781, 46.850918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319290, 37.378773, 46.668438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274170, 37.746178, 46.516857>,  <37.247097, 37.966621, 46.425907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274170, 37.746178, 46.516857>,  <37.319290, 37.378773, 46.668438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274170, 37.746178, 46.516857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208780, -0.394786, -0.894737,
		-0.971436, -0.021805, 0.236299,
		-0.112797, 0.918514, -0.378956,
		37.240330, 38.021732, 46.403172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839809, 37.339439, 46.212421>,  <37.319290, 37.378773, 46.668438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839809, 37.339439, 46.212421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055763, 37.666767, 46.133560>,  <37.185337, 37.863163, 46.086243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055763, 37.666767, 46.133560>,  <36.839809, 37.339439, 46.212421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055763, 37.666767, 46.133560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139520, -0.317982, -0.937775,
		-0.830095, 0.478785, -0.285846,
		0.539886, 0.818323, -0.197155,
		37.217728, 37.912266, 46.074413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148258, 37.304943, 46.010124>,  <36.839809, 37.339439, 46.212421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148258, 37.304943, 46.010124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877216, 37.015198, 45.959309>,  <35.714592, 36.841351, 45.928822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877216, 37.015198, 45.959309>,  <36.148258, 37.304943, 46.010124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877216, 37.015198, 45.959309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228075, 0.042763, 0.972704,
		-0.699162, 0.688087, -0.194187,
		-0.677609, -0.724367, -0.127037,
		35.673935, 36.797886, 45.921196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532082, 37.603081, 46.153313>,  <36.148258, 37.304943, 46.010124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532082, 37.603081, 46.153313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466660, 37.212841, 46.211910>,  <35.427406, 36.978699, 46.247066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466660, 37.212841, 46.211910>,  <35.532082, 37.603081, 46.153313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466660, 37.212841, 46.211910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324653, 0.193448, 0.925839,
		-0.931584, 0.103870, -0.348371,
		-0.163558, -0.975597, 0.146492,
		35.417591, 36.920162, 46.255859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883408, 37.537373, 46.398655>,  <35.532082, 37.603081, 46.153313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883408, 37.537373, 46.398655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060326, 37.189358, 46.485752>,  <35.166477, 36.980549, 46.538010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060326, 37.189358, 46.485752>,  <34.883408, 37.537373, 46.398655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060326, 37.189358, 46.485752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482567, -0.026212, 0.875467,
		-0.755982, -0.492287, -0.431445,
		0.442291, -0.870038, 0.217746,
		35.193012, 36.928345, 46.551075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395702, 37.214787, 46.752274>,  <34.883408, 37.537373, 46.398655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395702, 37.214787, 46.752274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736027, 37.034565, 46.860439>,  <34.940220, 36.926434, 46.925339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736027, 37.034565, 46.860439>,  <34.395702, 37.214787, 46.752274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736027, 37.034565, 46.860439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330336, -0.058380, 0.942056,
		-0.408657, -0.890840, -0.198503,
		0.850810, -0.450551, 0.270419,
		34.991268, 36.899399, 46.941566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197250, 36.627674, 47.184410>,  <34.395702, 37.214787, 46.752274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197250, 36.627674, 47.184410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578064, 36.723373, 47.260715>,  <34.806553, 36.780792, 47.306499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578064, 36.723373, 47.260715>,  <34.197250, 36.627674, 47.184410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578064, 36.723373, 47.260715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183162, -0.053845, 0.981607,
		0.245121, -0.969464, -0.007441,
		0.952033, 0.239250, 0.190767,
		34.863674, 36.795147, 47.317947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242920, 36.339283, 47.753456>,  <34.197250, 36.627674, 47.184410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242920, 36.339283, 47.753456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559452, 36.583740, 47.746479>,  <34.749371, 36.730415, 47.742290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559452, 36.583740, 47.746479>,  <34.242920, 36.339283, 47.753456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559452, 36.583740, 47.746479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033140, 0.071370, 0.996899,
		0.610490, -0.788298, 0.076731,
		0.791330, 0.611140, -0.017446,
		34.796852, 36.767082, 47.741245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797226, 36.105007, 48.238754>,  <34.242920, 36.339283, 47.753456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797226, 36.105007, 48.238754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867344, 36.496395, 48.195183>,  <34.909416, 36.731228, 48.169041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867344, 36.496395, 48.195183>,  <34.797226, 36.105007, 48.238754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867344, 36.496395, 48.195183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026696, 0.105879, 0.994021,
		0.984154, -0.177155, -0.007561,
		0.175295, 0.978471, -0.108931,
		34.919933, 36.789936, 48.162502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006939, 35.402813, 48.465366>,  <34.797226, 36.105007, 48.238754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006939, 35.402813, 48.465366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.675999, 35.179085, 48.485950>,  <34.477436, 35.044849, 48.498302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.675999, 35.179085, 48.485950>,  <35.006939, 35.402813, 48.465366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675999, 35.179085, 48.485950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177240, -0.346912, -0.920999,
		0.532987, -0.752869, 0.386152,
		-0.827352, -0.559321, 0.051461,
		34.427792, 35.011288, 48.501389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268017, 34.829201, 48.165855>,  <35.006939, 35.402813, 48.465366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268017, 34.829201, 48.165855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871761, 34.788788, 48.129124>,  <34.634010, 34.764538, 48.107086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871761, 34.788788, 48.129124>,  <35.268017, 34.829201, 48.165855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871761, 34.788788, 48.129124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123163, -0.371083, -0.920396,
		0.058918, -0.923087, 0.380052,
		-0.990636, -0.101036, -0.091827,
		34.574570, 34.758476, 48.101574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165688, 34.154499, 48.012329>,  <35.268017, 34.829201, 48.165855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165688, 34.154499, 48.012329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818642, 34.306126, 47.883606>,  <34.610416, 34.397102, 47.806370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818642, 34.306126, 47.883606>,  <35.165688, 34.154499, 48.012329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818642, 34.306126, 47.883606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181435, -0.361237, -0.914652,
		-0.462963, -0.851950, 0.244638,
		-0.867610, 0.379064, -0.321813,
		34.558357, 34.419846, 47.787064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817123, 33.549358, 47.730465>,  <35.165688, 34.154499, 48.012329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817123, 33.549358, 47.730465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.678837, 33.884289, 47.561058>,  <34.595863, 34.085247, 47.459415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.678837, 33.884289, 47.561058>,  <34.817123, 33.549358, 47.730465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678837, 33.884289, 47.561058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094116, -0.418131, -0.903498,
		-0.933605, -0.352219, 0.065751,
		-0.345721, 0.837322, -0.423519,
		34.575119, 34.135487, 47.434002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465958, 33.353523, 47.121830>,  <34.817123, 33.549358, 47.730465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465958, 33.353523, 47.121830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511154, 33.746296, 47.061123>,  <34.538273, 33.981960, 47.024696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511154, 33.746296, 47.061123>,  <34.465958, 33.353523, 47.121830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511154, 33.746296, 47.061123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198029, -0.171942, -0.964998,
		-0.973661, 0.078985, -0.213880,
		0.112996, 0.981935, -0.151772,
		34.545052, 34.040878, 47.015591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175827, 33.461411, 46.406490>,  <34.465958, 33.353523, 47.121830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175827, 33.461411, 46.406490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402416, 33.785286, 46.467815>,  <34.538372, 33.979610, 46.504612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402416, 33.785286, 46.467815>,  <34.175827, 33.461411, 46.406490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402416, 33.785286, 46.467815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388859, -0.098611, -0.916005,
		-0.726564, 0.578510, -0.370717,
		0.566475, 0.809692, 0.153311,
		34.572357, 34.028194, 46.513809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046486, 33.848373, 45.931854>,  <34.175827, 33.461411, 46.406490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046486, 33.848373, 45.931854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402180, 33.982944, 46.055843>,  <34.615597, 34.063686, 46.130238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402180, 33.982944, 46.055843>,  <34.046486, 33.848373, 45.931854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402180, 33.982944, 46.055843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333450, -0.012817, -0.942681,
		-0.313170, 0.941623, -0.123579,
		0.889233, 0.336427, 0.309970,
		34.668949, 34.083874, 46.148834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.872700, 34.393311, 51.842617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.859184, 34.782879, 51.752872>,  <37.851074, 35.016621, 51.699028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.859184, 34.782879, 51.752872>,  <37.872700, 34.393311, 51.842617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859184, 34.782879, 51.752872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192437, -0.213945, -0.957703,
		-0.980727, -0.075536, -0.180189,
		-0.033791, 0.973921, -0.224357,
		37.849049, 35.075054, 51.685566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478271, 34.357677, 51.254642>,  <37.872700, 34.393311, 51.842617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478271, 34.357677, 51.254642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.662994, 34.712406, 51.261425>,  <37.773827, 34.925243, 51.265495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.662994, 34.712406, 51.261425>,  <37.478271, 34.357677, 51.254642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662994, 34.712406, 51.261425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274624, -0.124783, -0.953421,
		-0.843396, 0.444950, -0.301167,
		0.461805, 0.886819, 0.016952,
		37.801537, 34.978451, 51.266510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231804, 34.687782, 50.687569>,  <37.478271, 34.357677, 51.254642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231804, 34.687782, 50.687569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.564735, 34.900063, 50.751549>,  <37.764496, 35.027431, 50.789936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.564735, 34.900063, 50.751549>,  <37.231804, 34.687782, 50.687569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564735, 34.900063, 50.751549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223845, -0.057838, -0.972907,
		-0.507070, 0.845585, -0.166935,
		0.832331, 0.530699, 0.159951,
		37.814434, 35.059273, 50.799534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350067, 35.246464, 50.155289>,  <37.231804, 34.687782, 50.687569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350067, 35.246464, 50.155289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.713448, 35.174576, 50.306240>,  <37.931477, 35.131443, 50.396809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.713448, 35.174576, 50.306240>,  <37.350067, 35.246464, 50.155289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713448, 35.174576, 50.306240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361686, -0.114543, -0.925237,
		0.209509, 0.977026, -0.039055,
		0.908454, -0.179720, 0.377374,
		37.985985, 35.120659, 50.419453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902500, 35.584438, 49.710835>,  <37.350067, 35.246464, 50.155289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902500, 35.584438, 49.710835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.095943, 35.286335, 49.894447>,  <38.212009, 35.107471, 50.004616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.095943, 35.286335, 49.894447>,  <37.902500, 35.584438, 49.710835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095943, 35.286335, 49.894447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568290, -0.131520, -0.812249,
		0.665710, 0.653672, 0.359920,
		0.483608, -0.745262, 0.459030,
		38.241024, 35.062756, 50.032158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512894, 35.769630, 49.397499>,  <37.902500, 35.584438, 49.710835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512894, 35.769630, 49.397499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.563049, 35.396175, 49.531727>,  <38.593143, 35.172104, 49.612263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.563049, 35.396175, 49.531727>,  <38.512894, 35.769630, 49.397499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563049, 35.396175, 49.531727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431152, -0.253348, -0.865981,
		0.893525, 0.253264, 0.370771,
		0.125388, -0.933634, 0.335568,
		38.600666, 35.116085, 49.632397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184860, 35.583263, 49.273376>,  <38.512894, 35.769630, 49.397499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184860, 35.583263, 49.273376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.976582, 35.244633, 49.317513>,  <38.851612, 35.041454, 49.343994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.976582, 35.244633, 49.317513>,  <39.184860, 35.583263, 49.273376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976582, 35.244633, 49.317513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436629, -0.375126, -0.817701,
		0.733640, -0.377600, 0.564970,
		-0.520699, -0.846581, 0.110337,
		38.820374, 34.990658, 49.350613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724342, 35.042274, 49.350132>,  <39.184860, 35.583263, 49.273376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724342, 35.042274, 49.350132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.392971, 34.860298, 49.219456>,  <39.194149, 34.751110, 49.141048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.392971, 34.860298, 49.219456>,  <39.724342, 35.042274, 49.350132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392971, 34.860298, 49.219456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510688, -0.374022, -0.774148,
		0.230003, -0.808167, 0.542186,
		-0.828430, -0.454944, -0.326695,
		39.144444, 34.723816, 49.121449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948833, 34.318069, 49.220577>,  <39.724342, 35.042274, 49.350132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948833, 34.318069, 49.220577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.603828, 34.385715, 49.029800>,  <39.396828, 34.426304, 48.915333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.603828, 34.385715, 49.029800>,  <39.948833, 34.318069, 49.220577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603828, 34.385715, 49.029800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323438, -0.540629, -0.776601,
		-0.389186, -0.824088, 0.411599,
		-0.862509, 0.169115, -0.476946,
		39.345078, 34.436451, 48.886715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781231, 33.764061, 48.912849>,  <39.948833, 34.318069, 49.220577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781231, 33.764061, 48.912849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.547932, 34.014233, 48.705521>,  <39.407951, 34.164337, 48.581123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.547932, 34.014233, 48.705521>,  <39.781231, 33.764061, 48.912849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547932, 34.014233, 48.705521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231619, -0.483560, -0.844110,
		-0.778573, -0.612379, 0.137174,
		-0.583247, 0.625429, -0.518325,
		39.372959, 34.201862, 48.550022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318996, 33.324966, 48.404572>,  <39.781231, 33.764061, 48.912849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318996, 33.324966, 48.404572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.315296, 33.696579, 48.256622>,  <39.313076, 33.919548, 48.167850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.315296, 33.696579, 48.256622>,  <39.318996, 33.324966, 48.404572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315296, 33.696579, 48.256622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142362, -0.364900, -0.920098,
		-0.989771, -0.061170, -0.128882,
		-0.009253, 0.929035, -0.369876,
		39.312519, 33.975288, 48.145660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909382, 33.365543, 47.753124>,  <39.318996, 33.324966, 48.404572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909382, 33.365543, 47.753124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.159111, 33.677158, 47.730049>,  <39.308949, 33.864128, 47.716206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.159111, 33.677158, 47.730049>,  <38.909382, 33.365543, 47.753124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159111, 33.677158, 47.730049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175122, -0.211544, -0.961552,
		-0.761286, 0.590214, -0.268497,
		0.624320, 0.779036, -0.057686,
		39.346409, 33.910870, 47.712742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152405, 33.483833, 47.765491>,  <38.909382, 33.365543, 47.753124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152405, 33.483833, 47.765491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.802891, 33.417442, 47.582645>,  <37.593182, 33.377609, 47.472939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.802891, 33.417442, 47.582645>,  <38.152405, 33.483833, 47.765491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802891, 33.417442, 47.582645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483783, 0.200950, 0.851805,
		-0.049520, 0.965438, -0.255883,
		-0.873786, -0.165973, -0.457112,
		37.540756, 33.367649, 47.445511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798512, 33.992023, 48.012775>,  <38.152405, 33.483833, 47.765491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798512, 33.992023, 48.012775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.535454, 33.714947, 47.894325>,  <37.377621, 33.548702, 47.823254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.535454, 33.714947, 47.894325>,  <37.798512, 33.992023, 48.012775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535454, 33.714947, 47.894325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414684, 0.004696, 0.909953,
		-0.628925, 0.721220, -0.290335,
		-0.657640, -0.692690, -0.296126,
		37.338161, 33.507141, 47.805489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124088, 34.310772, 48.085747>,  <37.798512, 33.992023, 48.012775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124088, 34.310772, 48.085747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.044243, 33.918835, 48.082664>,  <36.996334, 33.683674, 48.080814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.044243, 33.918835, 48.082664>,  <37.124088, 34.310772, 48.085747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044243, 33.918835, 48.082664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452709, 0.085248, 0.887574,
		-0.869027, 0.180660, -0.460601,
		-0.199615, -0.979844, -0.007704,
		36.984360, 33.624882, 48.080353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407337, 34.229332, 48.364166>,  <37.124088, 34.310772, 48.085747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407337, 34.229332, 48.364166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.588074, 33.877514, 48.423828>,  <36.696514, 33.666424, 48.459625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.588074, 33.877514, 48.423828>,  <36.407337, 34.229332, 48.364166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588074, 33.877514, 48.423828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536571, -0.134370, 0.833088,
		-0.712695, -0.456453, -0.532651,
		0.451838, -0.879543, 0.149155,
		36.723625, 33.613651, 48.468575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862877, 33.738060, 48.434090>,  <36.407337, 34.229332, 48.364166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862877, 33.738060, 48.434090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.190071, 33.578854, 48.600216>,  <36.386387, 33.483330, 48.699890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.190071, 33.578854, 48.600216>,  <35.862877, 33.738060, 48.434090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190071, 33.578854, 48.600216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525054, -0.221667, 0.821694,
		-0.235004, -0.890186, -0.390309,
		0.817980, -0.398035, 0.415303,
		36.435467, 33.459450, 48.724808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566658, 33.256996, 48.925938>,  <35.862877, 33.738060, 48.434090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566658, 33.256996, 48.925938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.947441, 33.283962, 49.045429>,  <36.175911, 33.300144, 49.117126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.947441, 33.283962, 49.045429>,  <35.566658, 33.256996, 48.925938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947441, 33.283962, 49.045429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284510, -0.166229, 0.944152,
		0.113312, -0.983780, -0.139060,
		0.951953, 0.067419, 0.298731,
		36.233028, 33.304188, 49.135048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614597, 32.763290, 49.419510>,  <35.566658, 33.256996, 48.925938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614597, 32.763290, 49.419510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.918625, 33.013496, 49.489967>,  <36.101040, 33.163620, 49.532242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.918625, 33.013496, 49.489967>,  <35.614597, 32.763290, 49.419510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918625, 33.013496, 49.489967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095005, -0.161184, 0.982341,
		0.642864, -0.763378, -0.063083,
		0.760065, 0.625519, 0.176144,
		36.146645, 33.201153, 49.542812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011959, 32.456207, 49.942162>,  <35.614597, 32.763290, 49.419510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011959, 32.456207, 49.942162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099155, 32.846352, 49.928562>,  <36.151474, 33.080437, 49.920403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099155, 32.846352, 49.928562>,  <36.011959, 32.456207, 49.942162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099155, 32.846352, 49.928562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054565, 0.046966, 0.997405,
		0.974425, -0.215567, 0.063459,
		0.217988, 0.975359, -0.034002,
		36.164551, 33.138958, 49.918362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531933, 32.573277, 50.445564>,  <36.011959, 32.456207, 49.942162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531933, 32.573277, 50.445564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.362362, 32.929436, 50.379261>,  <36.260620, 33.143131, 50.339481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.362362, 32.929436, 50.379261>,  <36.531933, 32.573277, 50.445564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362362, 32.929436, 50.379261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329900, 0.018634, 0.943832,
		0.843477, 0.454797, 0.285843,
		-0.423926, 0.890400, -0.165754,
		36.235184, 33.196556, 50.329536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630669, 32.931984, 51.007484>,  <36.531933, 32.573277, 50.445564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630669, 32.931984, 51.007484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.315441, 33.117401, 50.845455>,  <36.126305, 33.228649, 50.748238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.315441, 33.117401, 50.845455>,  <36.630669, 32.931984, 51.007484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315441, 33.117401, 50.845455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424148, 0.068040, 0.903033,
		0.446153, 0.883460, 0.142989,
		-0.788065, 0.463540, -0.405074,
		36.079021, 33.256462, 50.723934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544861, 33.473610, 51.577812>,  <36.630669, 32.931984, 51.007484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544861, 33.473610, 51.577812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.199078, 33.443642, 51.378979>,  <35.991608, 33.425659, 51.259678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.199078, 33.443642, 51.378979>,  <36.544861, 33.473610, 51.577812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199078, 33.443642, 51.378979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501865, 0.185540, 0.844812,
		0.028935, 0.979776, -0.197993,
		-0.864462, -0.074921, -0.497084,
		35.939739, 33.421165, 51.229855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106651, 33.960957, 51.832520>,  <36.544861, 33.473610, 51.577812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106651, 33.960957, 51.832520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810314, 33.747482, 51.669384>,  <35.632511, 33.619400, 51.571503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810314, 33.747482, 51.669384>,  <36.106651, 33.960957, 51.832520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810314, 33.747482, 51.669384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540857, 0.113945, 0.833361,
		-0.398280, 0.837973, -0.373062,
		-0.740842, -0.533684, -0.407841,
		35.588062, 33.587376, 51.547031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449608, 34.366966, 51.899681>,  <36.106651, 33.960957, 51.832520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449608, 34.366966, 51.899681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.362003, 33.980751, 51.843445>,  <35.309441, 33.749020, 51.809704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.362003, 33.980751, 51.843445>,  <35.449608, 34.366966, 51.899681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362003, 33.980751, 51.843445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689949, 0.051367, 0.722033,
		-0.689931, 0.255131, -0.677424,
		-0.219010, -0.965541, -0.140588,
		35.296299, 33.691090, 51.801270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679943, 34.358208, 51.769718>,  <35.449608, 34.366966, 51.899681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679943, 34.358208, 51.769718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.795315, 34.001163, 51.908310>,  <34.864536, 33.786938, 51.991467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.795315, 34.001163, 51.908310>,  <34.679943, 34.358208, 51.769718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795315, 34.001163, 51.908310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648023, 0.084418, 0.756928,
		-0.704893, -0.442849, -0.554085,
		0.288430, -0.892613, 0.346482,
		34.881844, 33.733379, 52.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154484, 34.252983, 51.428307>,  <34.679943, 34.358208, 51.769718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154484, 34.252983, 51.428307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.944035, 34.589611, 51.379379>,  <33.817764, 34.791588, 51.350025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.944035, 34.589611, 51.379379>,  <34.154484, 34.252983, 51.428307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944035, 34.589611, 51.379379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068840, -0.101211, -0.992481,
		-0.847619, -0.530585, -0.004685,
		-0.526121, 0.841568, -0.122314,
		33.786198, 34.842083, 51.342686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644535, 34.183578, 50.907185>,  <34.154484, 34.252983, 51.428307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644535, 34.183578, 50.907185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.733540, 34.573277, 50.892609>,  <33.786942, 34.807095, 50.883862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.733540, 34.573277, 50.892609>,  <33.644535, 34.183578, 50.907185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733540, 34.573277, 50.892609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269014, -0.097281, -0.958211,
		-0.937080, 0.203413, -0.283733,
		0.222514, 0.974248, -0.036440,
		33.800293, 34.865551, 50.881676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158100, 34.531319, 50.368092>,  <33.644535, 34.183578, 50.907185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158100, 34.531319, 50.368092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.459488, 34.792469, 50.399158>,  <33.640320, 34.949158, 50.417797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.459488, 34.792469, 50.399158>,  <33.158100, 34.531319, 50.368092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459488, 34.792469, 50.399158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279151, -0.210712, -0.936843,
		-0.595278, 0.727566, -0.341017,
		0.753471, 0.652877, 0.077668,
		33.685528, 34.988331, 50.422459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044308, 34.960911, 49.735592>,  <33.158100, 34.531319, 50.368092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044308, 34.960911, 49.735592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.415039, 35.005627, 49.878979>,  <33.637478, 35.032455, 49.965012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.415039, 35.005627, 49.878979>,  <33.044308, 34.960911, 49.735592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415039, 35.005627, 49.878979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354574, 0.053650, -0.933488,
		-0.123587, 0.992282, 0.010086,
		0.926824, 0.111791, 0.358468,
		33.693085, 35.039165, 49.986519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303062, 35.662121, 49.611984>,  <33.044308, 34.960911, 49.735592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303062, 35.662121, 49.611984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603657, 35.398354, 49.603680>,  <33.784016, 35.240093, 49.598698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603657, 35.398354, 49.603680>,  <33.303062, 35.662121, 49.611984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603657, 35.398354, 49.603680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045424, 0.083114, -0.995504,
		0.658181, 0.747166, 0.092413,
		0.751488, -0.659420, -0.020765,
		33.829102, 35.200527, 49.597450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812706, 35.952404, 49.115665>,  <33.303062, 35.662121, 49.611984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812706, 35.952404, 49.115665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.895580, 35.565044, 49.171196>,  <33.945305, 35.332626, 49.204514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.895580, 35.565044, 49.171196>,  <33.812706, 35.952404, 49.115665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895580, 35.565044, 49.171196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172080, -0.103621, -0.979618,
		0.963049, 0.226849, 0.145174,
		0.207182, -0.968402, 0.138828,
		33.957733, 35.274525, 49.212845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532444, 35.838261, 48.876789>,  <33.812706, 35.952404, 49.115665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532444, 35.838261, 48.876789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.374599, 35.470730, 48.879555>,  <34.279892, 35.250214, 48.881214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.374599, 35.470730, 48.879555>,  <34.532444, 35.838261, 48.876789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374599, 35.470730, 48.879555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419205, -0.186720, -0.888483,
		0.817649, -0.347708, 0.458857,
		-0.394611, -0.918823, 0.006910,
		34.256218, 35.195084, 48.881626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182602, 36.305828, 48.838013>,  <34.532444, 35.838261, 48.876789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182602, 36.305828, 48.838013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.080200, 36.662781, 48.689358>,  <35.018761, 36.876953, 48.600166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.080200, 36.662781, 48.689358>,  <35.182602, 36.305828, 48.838013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080200, 36.662781, 48.689358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105338, 0.356403, 0.928376,
		0.960919, 0.276816, 0.002761,
		-0.256005, 0.892385, -0.371633,
		35.003399, 36.930496, 48.577869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676102, 36.745064, 49.144310>,  <35.182602, 36.305828, 48.838013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676102, 36.745064, 49.144310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.334705, 36.934841, 49.058090>,  <35.129868, 37.048706, 49.006359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.334705, 36.934841, 49.058090>,  <35.676102, 36.745064, 49.144310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334705, 36.934841, 49.058090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018904, 0.385175, 0.922650,
		0.520770, 0.791545, -0.319773,
		-0.853488, 0.474443, -0.215551,
		35.078659, 37.077175, 48.993423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821583, 37.437939, 49.228767>,  <35.676102, 36.745064, 49.144310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821583, 37.437939, 49.228767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.426361, 37.393093, 49.271065>,  <35.189228, 37.366184, 49.296444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.426361, 37.393093, 49.271065>,  <35.821583, 37.437939, 49.228767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426361, 37.393093, 49.271065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051469, 0.406695, 0.912113,
		-0.145271, 0.906658, -0.396065,
		-0.988052, -0.112118, 0.105746,
		35.129944, 37.359459, 49.302788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560776, 37.963806, 49.747898>,  <35.821583, 37.437939, 49.228767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560776, 37.963806, 49.747898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292793, 37.668182, 49.719730>,  <35.132004, 37.490810, 49.702831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292793, 37.668182, 49.719730>,  <35.560776, 37.963806, 49.747898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292793, 37.668182, 49.719730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153757, 0.045335, 0.987068,
		-0.726307, 0.672116, -0.144008,
		-0.669953, -0.739056, -0.070415,
		35.091808, 37.446465, 49.698605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029835, 38.117451, 50.230076>,  <35.560776, 37.963806, 49.747898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029835, 38.117451, 50.230076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974331, 37.724106, 50.183189>,  <34.941029, 37.488098, 50.155056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974331, 37.724106, 50.183189>,  <35.029835, 38.117451, 50.230076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974331, 37.724106, 50.183189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278718, -0.074800, 0.957456,
		-0.950295, 0.165531, -0.263701,
		-0.138764, -0.983364, -0.117219,
		34.932701, 37.429096, 50.148026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547131, 37.918461, 50.715649>,  <35.029835, 38.117451, 50.230076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547131, 37.918461, 50.715649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717258, 37.571827, 50.611237>,  <34.819336, 37.363846, 50.548592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717258, 37.571827, 50.611237>,  <34.547131, 37.918461, 50.715649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717258, 37.571827, 50.611237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060020, -0.314785, 0.947263,
		-0.903052, -0.387221, -0.185896,
		0.425318, -0.866585, -0.261027,
		34.844852, 37.311852, 50.532928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242298, 37.403751, 51.029778>,  <34.547131, 37.918461, 50.715649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242298, 37.403751, 51.029778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589985, 37.217556, 50.963100>,  <34.798595, 37.105839, 50.923092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589985, 37.217556, 50.963100>,  <34.242298, 37.403751, 51.029778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589985, 37.217556, 50.963100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027753, -0.382548, 0.923518,
		-0.493654, -0.798110, -0.345436,
		0.869215, -0.465485, -0.166696,
		34.850750, 37.077911, 50.913094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234077, 36.773800, 51.436115>,  <34.242298, 37.403751, 51.029778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234077, 36.773800, 51.436115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.624649, 36.820179, 51.363297>,  <34.858994, 36.848007, 51.319607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.624649, 36.820179, 51.363297>,  <34.234077, 36.773800, 51.436115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624649, 36.820179, 51.363297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208228, -0.284125, 0.935903,
		0.056796, -0.951750, -0.301572,
		0.976430, 0.115951, -0.182044,
		34.917580, 36.854965, 51.308681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524670, 36.281570, 51.790916>,  <34.234077, 36.773800, 51.436115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524670, 36.281570, 51.790916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.818703, 36.550304, 51.754505>,  <34.995125, 36.711544, 51.732658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.818703, 36.550304, 51.754505>,  <34.524670, 36.281570, 51.790916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818703, 36.550304, 51.754505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265554, -0.161778, 0.950426,
		0.623805, -0.722816, -0.297330,
		0.735084, 0.671837, -0.091028,
		35.039227, 36.751854, 51.727196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<39.479137, 35.003681, 36.860603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759537, 35.286484, 36.897995>,  <39.927776, 35.456165, 36.920429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759537, 35.286484, 36.897995>,  <39.479137, 35.003681, 36.860603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759537, 35.286484, 36.897995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489345, 0.381501, 0.784218,
		0.518789, -0.595478, 0.613404,
		0.700999, 0.707010, 0.093476,
		39.969837, 35.498589, 36.926037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780827, 34.889133, 37.551533>,  <39.479137, 35.003681, 36.860603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780827, 34.889133, 37.551533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840199, 35.266327, 37.432369>,  <39.875820, 35.492645, 37.360870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840199, 35.266327, 37.432369>,  <39.780827, 34.889133, 37.551533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840199, 35.266327, 37.432369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301697, 0.330060, 0.894449,
		0.941779, -0.042886, 0.333487,
		0.148430, 0.942985, -0.297905,
		39.884727, 35.549221, 37.342999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371670, 35.124626, 38.011631>,  <39.780827, 34.889133, 37.551533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371670, 35.124626, 38.011631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146519, 35.429531, 37.883804>,  <40.011429, 35.612473, 37.807110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146519, 35.429531, 37.883804>,  <40.371670, 35.124626, 38.011631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146519, 35.429531, 37.883804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229868, 0.227011, 0.946376,
		0.793932, 0.606153, 0.047440,
		-0.562879, 0.762263, -0.319566,
		39.977654, 35.658211, 37.787933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424259, 35.579140, 38.572895>,  <40.371670, 35.124626, 38.011631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424259, 35.579140, 38.572895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121410, 35.728252, 38.358307>,  <39.939701, 35.817722, 38.229553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121410, 35.728252, 38.358307>,  <40.424259, 35.579140, 38.572895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121410, 35.728252, 38.358307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468875, 0.261739, 0.843593,
		0.454894, 0.890239, -0.023378,
		-0.757118, 0.372783, -0.536474,
		39.894276, 35.840088, 38.197365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228920, 36.173294, 39.012825>,  <40.424259, 35.579140, 38.572895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228920, 36.173294, 39.012825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918026, 36.060837, 38.787663>,  <39.731491, 35.993362, 38.652565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918026, 36.060837, 38.787663>,  <40.228920, 36.173294, 39.012825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918026, 36.060837, 38.787663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615351, 0.152879, 0.773286,
		-0.131345, 0.947411, -0.291824,
		-0.777233, -0.281142, -0.562910,
		39.684856, 35.976494, 38.618790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707619, 36.692909, 39.133980>,  <40.228920, 36.173294, 39.012825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707619, 36.692909, 39.133980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494167, 36.398247, 38.967812>,  <39.366096, 36.221451, 38.868111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494167, 36.398247, 38.967812>,  <39.707619, 36.692909, 39.133980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494167, 36.398247, 38.967812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777951, 0.234913, 0.582758,
		-0.331705, 0.634155, -0.698440,
		-0.533632, -0.736656, -0.415420,
		39.334076, 36.177250, 38.843185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034267, 36.993767, 38.965237>,  <39.707619, 36.692909, 39.133980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034267, 36.993767, 38.965237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973633, 36.598743, 38.981991>,  <38.937252, 36.361729, 38.992043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973633, 36.598743, 38.981991>,  <39.034267, 36.993767, 38.965237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973633, 36.598743, 38.981991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799913, 0.147460, 0.581717,
		-0.580654, 0.054676, -0.812312,
		-0.151590, -0.987556, 0.041887,
		38.928154, 36.302475, 38.994556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354141, 36.855572, 38.905525>,  <39.034267, 36.993767, 38.965237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354141, 36.855572, 38.905525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459526, 36.499977, 39.055347>,  <38.522755, 36.286621, 39.145241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459526, 36.499977, 39.055347>,  <38.354141, 36.855572, 38.905525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459526, 36.499977, 39.055347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850061, -0.030387, 0.525807,
		-0.456055, -0.456922, -0.763699,
		0.263459, -0.888988, 0.374553,
		38.538563, 36.233280, 39.167713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752438, 36.356178, 38.842884>,  <38.354141, 36.855572, 38.905525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752438, 36.356178, 38.842884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997162, 36.212681, 39.124874>,  <38.143997, 36.126583, 39.294067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997162, 36.212681, 39.124874>,  <37.752438, 36.356178, 38.842884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997162, 36.212681, 39.124874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789090, -0.214779, 0.575506,
		-0.055045, -0.908390, -0.414484,
		0.611807, -0.358744, 0.704979,
		38.180702, 36.105057, 39.336369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379665, 35.918495, 39.240578>,  <37.752438, 36.356178, 38.842884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379665, 35.918495, 39.240578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673557, 35.949490, 39.510147>,  <37.849892, 35.968086, 39.671886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673557, 35.949490, 39.510147>,  <37.379665, 35.918495, 39.240578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673557, 35.949490, 39.510147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649051, -0.208568, 0.731595,
		0.197244, -0.974934, -0.102952,
		0.734730, 0.077482, 0.673921,
		37.893974, 35.972733, 39.712322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350460, 35.304962, 39.695637>,  <37.379665, 35.918495, 39.240578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350460, 35.304962, 39.695637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557976, 35.588043, 39.887474>,  <37.682487, 35.757893, 40.002575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557976, 35.588043, 39.887474>,  <37.350460, 35.304962, 39.695637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557976, 35.588043, 39.887474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557222, -0.145527, 0.817512,
		0.648350, -0.691359, 0.318849,
		0.518793, 0.707704, 0.479593,
		37.713615, 35.800354, 40.031353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353848, 35.101891, 40.361401>,  <37.350460, 35.304962, 39.695637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353848, 35.101891, 40.361401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444714, 35.490547, 40.387684>,  <37.499233, 35.723740, 40.403454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444714, 35.490547, 40.387684>,  <37.353848, 35.101891, 40.361401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444714, 35.490547, 40.387684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635100, 0.096660, 0.766358,
		0.738271, -0.215817, 0.639045,
		0.227163, 0.971638, 0.065704,
		37.512863, 35.782040, 40.407394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441635, 34.314514, 40.296921>,  <37.353848, 35.101891, 40.361401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441635, 34.314514, 40.296921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191021, 34.013325, 40.377392>,  <37.040653, 33.832611, 40.425674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191021, 34.013325, 40.377392>,  <37.441635, 34.314514, 40.296921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191021, 34.013325, 40.377392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154587, -0.373057, -0.914840,
		0.763906, -0.542082, 0.350135,
		-0.626539, -0.752978, 0.201182,
		37.003059, 33.787430, 40.437748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887669, 33.758095, 40.270916>,  <37.441635, 34.314514, 40.296921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887669, 33.758095, 40.270916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498890, 33.673405, 40.229954>,  <37.265621, 33.622589, 40.205376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498890, 33.673405, 40.229954>,  <37.887669, 33.758095, 40.270916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498890, 33.673405, 40.229954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179780, -0.388101, -0.903912,
		0.151635, -0.896968, 0.415278,
		-0.971949, -0.211724, -0.102407,
		37.207306, 33.609886, 40.199230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876011, 33.104481, 39.936699>,  <37.887669, 33.758095, 40.270916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876011, 33.104481, 39.936699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512199, 33.259567, 39.876774>,  <37.293915, 33.352619, 39.840820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512199, 33.259567, 39.876774>,  <37.876011, 33.104481, 39.936699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512199, 33.259567, 39.876774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057788, -0.238979, -0.969304,
		-0.411615, -0.890262, 0.194952,
		-0.909524, 0.387714, -0.149814,
		37.239342, 33.375881, 39.831829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611206, 32.626732, 39.530361>,  <37.876011, 33.104481, 39.936699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611206, 32.626732, 39.530361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382637, 32.950066, 39.473698>,  <37.245495, 33.144066, 39.439697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382637, 32.950066, 39.473698>,  <37.611206, 32.626732, 39.530361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382637, 32.950066, 39.473698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208936, -0.310232, -0.927417,
		-0.793610, -0.500353, 0.346165,
		-0.571427, 0.808333, -0.141662,
		37.211208, 33.192566, 39.431198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966518, 32.376984, 39.176533>,  <37.611206, 32.626732, 39.530361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966518, 32.376984, 39.176533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990730, 32.770378, 39.108315>,  <37.005257, 33.006416, 39.067383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990730, 32.770378, 39.108315>,  <36.966518, 32.376984, 39.176533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990730, 32.770378, 39.108315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265223, -0.148869, -0.952626,
		-0.962286, 0.102892, 0.251833,
		0.060527, 0.983490, -0.170543,
		37.008888, 33.065426, 39.057152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309395, 32.523540, 38.804417>,  <36.966518, 32.376984, 39.176533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309395, 32.523540, 38.804417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547173, 32.834328, 38.721516>,  <36.689838, 33.020798, 38.671776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547173, 32.834328, 38.721516>,  <36.309395, 32.523540, 38.804417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547173, 32.834328, 38.721516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291343, -0.032131, -0.956079,
		-0.749500, 0.628723, 0.207263,
		0.594449, 0.776966, -0.207256,
		36.725506, 33.067417, 38.659340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897648, 32.872738, 38.204994>,  <36.309395, 32.523540, 38.804417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897648, 32.872738, 38.204994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270416, 33.017159, 38.191277>,  <36.494076, 33.103809, 38.183044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270416, 33.017159, 38.191277>,  <35.897648, 32.872738, 38.204994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270416, 33.017159, 38.191277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035443, -0.003449, -0.999366,
		-0.360937, 0.932541, 0.009583,
		0.931916, 0.361048, -0.034297,
		36.549992, 33.125473, 38.180988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820713, 33.434032, 37.645981>,  <35.897648, 32.872738, 38.204994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820713, 33.434032, 37.645981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191330, 33.296017, 37.705940>,  <36.413700, 33.213207, 37.741917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191330, 33.296017, 37.705940>,  <35.820713, 33.434032, 37.645981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191330, 33.296017, 37.705940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105613, -0.143871, -0.983944,
		0.361062, 0.927497, -0.096862,
		0.926542, -0.345035, 0.149903,
		36.469292, 33.192505, 37.750912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160641, 33.668011, 37.125774>,  <35.820713, 33.434032, 37.645981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160641, 33.668011, 37.125774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441696, 33.407505, 37.240421>,  <36.610329, 33.251202, 37.309208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441696, 33.407505, 37.240421>,  <36.160641, 33.668011, 37.125774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441696, 33.407505, 37.240421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305324, -0.087878, -0.948185,
		0.642709, 0.753743, 0.137101,
		0.702640, -0.651267, 0.286616,
		36.652489, 33.212124, 37.326405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746677, 33.865074, 36.762188>,  <36.160641, 33.668011, 37.125774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746677, 33.865074, 36.762188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783405, 33.475395, 36.844650>,  <36.805443, 33.241585, 36.894127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783405, 33.475395, 36.844650>,  <36.746677, 33.865074, 36.762188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783405, 33.475395, 36.844650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232446, -0.180340, -0.955744,
		0.968266, 0.135675, 0.209891,
		0.091818, -0.974202, 0.206155,
		36.810951, 33.183136, 36.906498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285568, 33.542236, 36.294350>,  <36.746677, 33.865074, 36.762188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285568, 33.542236, 36.294350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122005, 33.198563, 36.417370>,  <37.023869, 32.992359, 36.491180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122005, 33.198563, 36.417370>,  <37.285568, 33.542236, 36.294350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122005, 33.198563, 36.417370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184167, -0.407774, -0.894317,
		0.893798, -0.309056, 0.324977,
		-0.408911, -0.859189, 0.307550,
		36.999332, 32.940807, 36.509636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776836, 32.884167, 36.251804>,  <37.285568, 33.542236, 36.294350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776836, 32.884167, 36.251804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408760, 32.727730, 36.244888>,  <37.187916, 32.633869, 36.240738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408760, 32.727730, 36.244888>,  <37.776836, 32.884167, 36.251804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408760, 32.727730, 36.244888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223405, -0.488357, -0.843562,
		0.321466, -0.780100, 0.536753,
		-0.920190, -0.391090, -0.017288,
		37.132702, 32.610401, 36.239700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763851, 32.109798, 36.109314>,  <37.776836, 32.884167, 36.251804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763851, 32.109798, 36.109314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414825, 32.266476, 35.992550>,  <37.205410, 32.360481, 35.922489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414825, 32.266476, 35.992550>,  <37.763851, 32.109798, 36.109314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414825, 32.266476, 35.992550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134723, -0.381441, -0.914523,
		-0.469563, -0.837304, 0.280060,
		-0.872560, 0.391695, -0.291914,
		37.153057, 32.383984, 35.904976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275471, 31.597651, 35.801247>,  <37.763851, 32.109798, 36.109314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275471, 31.597651, 35.801247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152046, 31.946442, 35.649223>,  <37.077991, 32.155716, 35.558010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152046, 31.946442, 35.649223>,  <37.275471, 31.597651, 35.801247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152046, 31.946442, 35.649223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282022, -0.297729, -0.912042,
		-0.908434, -0.388607, -0.154049,
		-0.308562, 0.871976, -0.380063,
		37.059479, 32.208035, 35.535206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908337, 31.276218, 36.357231>,  <37.275471, 31.597651, 35.801247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908337, 31.276218, 36.357231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832321, 31.622015, 36.171097>,  <36.786713, 31.829494, 36.059418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832321, 31.622015, 36.171097>,  <36.908337, 31.276218, 36.357231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832321, 31.622015, 36.171097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859477, -0.375582, -0.346752,
		-0.474537, 0.334049, 0.814387,
		-0.190037, 0.864493, -0.465335,
		36.775311, 31.881363, 36.031498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181103, 31.126976, 37.017368>,  <36.908337, 31.276218, 36.357231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181103, 31.126976, 37.017368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459099, 30.849468, 37.092911>,  <37.625896, 30.682964, 37.138237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459099, 30.849468, 37.092911>,  <37.181103, 31.126976, 37.017368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459099, 30.849468, 37.092911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002475, 0.260351, 0.965511,
		-0.719012, -0.671491, 0.179225,
		0.694993, -0.693771, 0.188858,
		37.667595, 30.641336, 37.149567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014244, 30.525410, 37.522541>,  <37.181103, 31.126976, 37.017368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014244, 30.525410, 37.522541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411484, 30.570023, 37.537033>,  <37.649826, 30.596790, 37.545727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411484, 30.570023, 37.537033>,  <37.014244, 30.525410, 37.522541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411484, 30.570023, 37.537033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038647, 0.019588, 0.999061,
		0.110720, -0.993568, 0.023763,
		0.993100, 0.111534, 0.036229,
		37.709415, 30.603481, 37.547901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356255, 30.127724, 38.027172>,  <37.014244, 30.525410, 37.522541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356255, 30.127724, 38.027172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661495, 30.382513, 37.983459>,  <37.844639, 30.535387, 37.957230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661495, 30.382513, 37.983459>,  <37.356255, 30.127724, 38.027172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661495, 30.382513, 37.983459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063785, 0.094043, 0.993523,
		0.643125, -0.765128, 0.031135,
		0.763100, 0.636973, -0.109285,
		37.890427, 30.573605, 37.950676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009964, 29.799540, 38.328674>,  <37.356255, 30.127724, 38.027172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009964, 29.799540, 38.328674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023010, 30.198912, 38.310455>,  <38.030838, 30.438536, 38.299522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023010, 30.198912, 38.310455>,  <38.009964, 29.799540, 38.328674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023010, 30.198912, 38.310455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147784, 0.040253, 0.988200,
		0.988482, -0.038963, -0.146239,
		0.032616, 0.998430, -0.045547,
		38.032795, 30.498440, 38.296791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577698, 30.060207, 38.623306>,  <38.009964, 29.799540, 38.328674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577698, 30.060207, 38.623306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354557, 30.392038, 38.633129>,  <38.220673, 30.591137, 38.639023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354557, 30.392038, 38.633129>,  <38.577698, 30.060207, 38.623306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354557, 30.392038, 38.633129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230157, 0.126204, 0.964935,
		0.797390, 0.543942, -0.261336,
		-0.557851, 0.829578, 0.024558,
		38.187202, 30.640911, 38.640495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886513, 30.474539, 39.125050>,  <38.577698, 30.060207, 38.623306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886513, 30.474539, 39.125050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565132, 30.704653, 39.063702>,  <38.372303, 30.842720, 39.026894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565132, 30.704653, 39.063702>,  <38.886513, 30.474539, 39.125050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565132, 30.704653, 39.063702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119062, 0.407642, 0.905346,
		0.583349, 0.709138, -0.396013,
		-0.803447, 0.575283, -0.153367,
		38.324097, 30.877237, 39.017693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980724, 31.158821, 39.463970>,  <38.886513, 30.474539, 39.125050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980724, 31.158821, 39.463970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583046, 31.131315, 39.430882>,  <38.344440, 31.114813, 39.411026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583046, 31.131315, 39.430882>,  <38.980724, 31.158821, 39.463970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583046, 31.131315, 39.430882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106018, 0.496034, 0.861806,
		-0.018225, 0.865576, -0.500446,
		-0.994197, -0.068763, -0.082726,
		38.284786, 31.110685, 39.406063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790825, 31.801455, 39.720798>,  <38.980724, 31.158821, 39.463970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790825, 31.801455, 39.720798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496750, 31.532875, 39.758011>,  <38.320305, 31.371727, 39.780338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496750, 31.532875, 39.758011>,  <38.790825, 31.801455, 39.720798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496750, 31.532875, 39.758011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178271, 0.323928, 0.929134,
		-0.654000, 0.666505, -0.357848,
		-0.735189, -0.671448, 0.093030,
		38.276192, 31.331440, 39.785919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232525, 32.219810, 39.966206>,  <38.790825, 31.801455, 39.720798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232525, 32.219810, 39.966206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146801, 31.840979, 40.061798>,  <38.095367, 31.613680, 40.119156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146801, 31.840979, 40.061798>,  <38.232525, 32.219810, 39.966206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146801, 31.840979, 40.061798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125829, 0.269399, 0.954773,
		-0.968626, 0.174550, -0.176906,
		-0.214314, -0.947078, 0.238984,
		38.082508, 31.556856, 40.133492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698299, 32.274864, 40.430435>,  <38.232525, 32.219810, 39.966206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698299, 32.274864, 40.430435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858356, 31.912283, 40.484425>,  <37.954391, 31.694733, 40.516819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858356, 31.912283, 40.484425>,  <37.698299, 32.274864, 40.430435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858356, 31.912283, 40.484425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115355, 0.096290, 0.988646,
		-0.909163, -0.411172, -0.066035,
		0.400146, -0.906458, 0.134974,
		37.978401, 31.640347, 40.524918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250935, 32.002289, 40.967178>,  <37.698299, 32.274864, 40.430435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250935, 32.002289, 40.967178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586926, 31.785265, 40.970287>,  <37.788521, 31.655050, 40.972153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586926, 31.785265, 40.970287>,  <37.250935, 32.002289, 40.967178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586926, 31.785265, 40.970287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063614, 0.112682, 0.991593,
		-0.538874, -0.832425, 0.129165,
		0.839981, -0.542561, 0.007768,
		37.838921, 31.622498, 40.972618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149830, 31.495972, 41.439434>,  <37.250935, 32.002289, 40.967178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149830, 31.495972, 41.439434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548569, 31.519003, 41.417629>,  <37.787811, 31.532822, 41.404545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548569, 31.519003, 41.417629>,  <37.149830, 31.495972, 41.439434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548569, 31.519003, 41.417629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055574, -0.016927, 0.998311,
		0.056561, -0.998198, -0.020073,
		0.996851, 0.057581, -0.054516,
		37.847626, 31.536276, 41.401276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472130, 31.020222, 42.067654>,  <37.149830, 31.495972, 41.439434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472130, 31.020222, 42.067654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767357, 31.252243, 41.929787>,  <37.944492, 31.391457, 41.847065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767357, 31.252243, 41.929787>,  <37.472130, 31.020222, 42.067654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767357, 31.252243, 41.929787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303308, 0.171078, 0.937410,
		0.602715, -0.796409, -0.049669,
		0.738064, 0.580056, -0.344668,
		37.988777, 31.426260, 41.826385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112568, 30.716022, 42.229881>,  <37.472130, 31.020222, 42.067654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112568, 30.716022, 42.229881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209423, 31.101051, 42.181183>,  <38.267536, 31.332069, 42.151962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209423, 31.101051, 42.181183>,  <38.112568, 30.716022, 42.229881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209423, 31.101051, 42.181183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255310, 0.057849, 0.965127,
		0.936048, -0.264779, -0.231747,
		0.242139, 0.962573, -0.121751,
		38.282066, 31.389824, 42.144657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477245, 30.842505, 42.749325>,  <38.112568, 30.716022, 42.229881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477245, 30.842505, 42.749325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433628, 31.223198, 42.634563>,  <38.407455, 31.451614, 42.565708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433628, 31.223198, 42.634563>,  <38.477245, 30.842505, 42.749325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433628, 31.223198, 42.634563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293456, 0.306581, 0.905479,
		0.949733, 0.014548, -0.312724,
		-0.109048, 0.951733, -0.286901,
		38.400913, 31.508718, 42.548492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157551, 31.235893, 42.827587>,  <38.477245, 30.842505, 42.749325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157551, 31.235893, 42.827587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854137, 31.496359, 42.837456>,  <38.672089, 31.652637, 42.843376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854137, 31.496359, 42.837456>,  <39.157551, 31.235893, 42.827587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854137, 31.496359, 42.837456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229136, 0.231093, 0.945565,
		0.610017, 0.722898, -0.324497,
		-0.758536, 0.651164, 0.024672,
		38.626575, 31.691708, 42.844856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378529, 31.907270, 43.159077>,  <39.157551, 31.235893, 42.827587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378529, 31.907270, 43.159077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980877, 31.920551, 43.200275>,  <38.742287, 31.928520, 43.224995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980877, 31.920551, 43.200275>,  <39.378529, 31.907270, 43.159077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980877, 31.920551, 43.200275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107993, 0.365304, 0.924603,
		-0.006926, 0.930296, -0.366744,
		-0.994127, 0.033202, 0.102996,
		38.682640, 31.930511, 43.231174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235508, 32.581337, 43.428104>,  <39.378529, 31.907270, 43.159077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235508, 32.581337, 43.428104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910103, 32.373512, 43.532604>,  <38.714859, 32.248817, 43.595306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910103, 32.373512, 43.532604>,  <39.235508, 32.581337, 43.428104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910103, 32.373512, 43.532604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151900, 0.623485, 0.766937,
		-0.561355, 0.584230, -0.586136,
		-0.813515, -0.519558, 0.261252,
		38.666050, 32.217644, 43.610981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690075, 33.025997, 43.715351>,  <39.235508, 32.581337, 43.428104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690075, 33.025997, 43.715351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560131, 32.678291, 43.864395>,  <38.482166, 32.469666, 43.953823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560131, 32.678291, 43.864395>,  <38.690075, 33.025997, 43.715351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560131, 32.678291, 43.864395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165726, 0.440207, 0.882470,
		-0.931130, 0.224924, -0.287065,
		-0.324856, -0.869268, 0.372614,
		38.462673, 32.417511, 43.976181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328182, 33.300720, 44.231743>,  <38.690075, 33.025997, 43.715351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328182, 33.300720, 44.231743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359192, 32.912224, 44.321796>,  <38.377800, 32.679127, 44.375828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359192, 32.912224, 44.321796>,  <38.328182, 33.300720, 44.231743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359192, 32.912224, 44.321796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246434, 0.200138, 0.948269,
		-0.966054, -0.128996, -0.223830,
		0.077526, -0.971239, 0.225134,
		38.382450, 32.620853, 44.389336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619518, 32.962864, 44.324059>,  <38.328182, 33.300720, 44.231743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619518, 32.962864, 44.324059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904720, 32.769756, 44.527451>,  <38.075840, 32.653893, 44.649487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904720, 32.769756, 44.527451>,  <37.619518, 32.962864, 44.324059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904720, 32.769756, 44.527451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438618, 0.258677, 0.860640,
		-0.547026, -0.836670, -0.027314,
		0.713006, -0.482773, 0.508482,
		38.118622, 32.624924, 44.679996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299179, 32.888622, 44.852074>,  <37.619518, 32.962864, 44.324059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299179, 32.888622, 44.852074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661709, 32.788105, 44.987972>,  <37.879227, 32.727795, 45.069511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661709, 32.788105, 44.987972>,  <37.299179, 32.888622, 44.852074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661709, 32.788105, 44.987972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247304, 0.336517, 0.908624,
		-0.342664, -0.907528, 0.242847,
		0.906323, -0.251296, 0.339747,
		37.933605, 32.712715, 45.089897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186325, 32.433540, 45.291435>,  <37.299179, 32.888622, 44.852074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186325, 32.433540, 45.291435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541977, 32.582912, 45.397266>,  <37.755367, 32.672535, 45.460766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541977, 32.582912, 45.397266>,  <37.186325, 32.433540, 45.291435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541977, 32.582912, 45.397266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364563, 0.228424, 0.902727,
		0.276667, -0.899096, 0.339237,
		0.889128, 0.373428, 0.264580,
		37.808716, 32.694939, 45.476639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420540, 31.992731, 45.880627>,  <37.186325, 32.433540, 45.291435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420540, 31.992731, 45.880627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628838, 32.329475, 45.937336>,  <37.753815, 32.531521, 45.971363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628838, 32.329475, 45.937336>,  <37.420540, 31.992731, 45.880627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628838, 32.329475, 45.937336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292611, 0.019995, 0.956023,
		0.802002, -0.539326, 0.256749,
		0.520741, 0.841859, 0.141777,
		37.785061, 32.582035, 45.979870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928493, 32.007320, 46.530239>,  <37.420540, 31.992731, 45.880627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928493, 32.007320, 46.530239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877625, 32.397289, 46.457195>,  <37.847103, 32.631271, 46.413368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877625, 32.397289, 46.457195>,  <37.928493, 32.007320, 46.530239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877625, 32.397289, 46.457195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108659, 0.169303, 0.979556,
		0.985911, 0.144414, 0.084404,
		-0.127171, 0.974926, -0.182609,
		37.839474, 32.689766, 46.402412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196468, 32.350861, 47.076778>,  <37.928493, 32.007320, 46.530239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196468, 32.350861, 47.076778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965225, 32.636749, 46.919315>,  <37.826477, 32.808281, 46.824837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965225, 32.636749, 46.919315>,  <38.196468, 32.350861, 47.076778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965225, 32.636749, 46.919315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179412, 0.359294, 0.915816,
		0.795990, 0.600069, -0.079481,
		-0.578110, 0.714721, -0.393654,
		37.791794, 32.851166, 46.801220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420708, 32.950756, 47.374840>,  <38.196468, 32.350861, 47.076778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420708, 32.950756, 47.374840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046051, 33.018646, 47.252262>,  <37.821259, 33.059380, 47.178715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046051, 33.018646, 47.252262>,  <38.420708, 32.950756, 47.374840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046051, 33.018646, 47.252262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264906, 0.229207, 0.936637,
		0.229207, 0.958467, -0.169723,
		-0.936637, 0.169723, -0.306440,
		37.765060, 33.069565, 47.160332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921062, 33.562668, 47.051807>,  <38.420708, 32.950756, 47.374840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921062, 33.562668, 47.051807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226509, 33.786469, 47.180710>,  <39.409779, 33.920750, 47.258049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226509, 33.786469, 47.180710>,  <38.921062, 33.562668, 47.051807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226509, 33.786469, 47.180710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418836, -0.049400, -0.906717,
		-0.491387, 0.827358, -0.272060,
		0.763620, 0.559498, 0.322253,
		39.455597, 33.954319, 47.277386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026993, 33.948940, 46.497700>,  <38.921062, 33.562668, 47.051807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026993, 33.948940, 46.497700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367870, 33.957939, 46.706799>,  <39.572395, 33.963337, 46.832256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367870, 33.957939, 46.706799>,  <39.026993, 33.948940, 46.497700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367870, 33.957939, 46.706799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521355, 0.048039, -0.851987,
		-0.044280, 0.998592, 0.029209,
		0.852190, 0.022498, 0.522748,
		39.623528, 33.964687, 46.863625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456486, 34.390469, 46.104748>,  <39.026993, 33.948940, 46.497700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456486, 34.390469, 46.104748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690594, 34.162601, 46.335552>,  <39.831059, 34.025883, 46.474033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690594, 34.162601, 46.335552>,  <39.456486, 34.390469, 46.104748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690594, 34.162601, 46.335552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582350, -0.199845, -0.787991,
		0.564206, 0.797207, 0.214784,
		0.585269, -0.569669, 0.577008,
		39.866173, 33.991699, 46.508656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193962, 34.489223, 45.913212>,  <39.456486, 34.390469, 46.104748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193962, 34.489223, 45.913212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219738, 34.125736, 46.078175>,  <40.235203, 33.907642, 46.177155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219738, 34.125736, 46.078175>,  <40.193962, 34.489223, 45.913212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219738, 34.125736, 46.078175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580125, -0.302153, -0.756412,
		0.811975, 0.287989, 0.507699,
		0.064436, -0.908717, 0.412410,
		40.239067, 33.853123, 46.201897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889740, 34.332882, 45.831169>,  <40.193962, 34.489223, 45.913212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889740, 34.332882, 45.831169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708176, 33.990807, 45.931267>,  <40.599239, 33.785561, 45.991325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708176, 33.990807, 45.931267>,  <40.889740, 34.332882, 45.831169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708176, 33.990807, 45.931267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606088, -0.502187, -0.616819,
		0.653166, -0.128307, 0.746265,
		-0.453907, -0.855187, 0.250246,
		40.572002, 33.734249, 46.006340>
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
