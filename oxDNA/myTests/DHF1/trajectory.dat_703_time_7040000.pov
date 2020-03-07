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
	<2.981766, 4.053068, 0.141997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.231758, 3.755274, 0.235928>,  <3.381754, 3.576598, 0.292286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.231758, 3.755274, 0.235928>,  <2.981766, 4.053068, 0.141997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.231758, 3.755274, 0.235928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750018, -0.489229, 0.445115,
		-0.216497, -0.454312, -0.864135,
		0.624981, -0.744483, 0.234825,
		3.419253, 3.531929, 0.306375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.589653, 3.369500, 0.089652>,  <2.981766, 4.053068, 0.141997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.589653, 3.369500, 0.089652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.885824, 3.403225, 0.356382>,  <3.063527, 3.423460, 0.516421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.885824, 3.403225, 0.356382>,  <2.589653, 3.369500, 0.089652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.885824, 3.403225, 0.356382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579644, -0.422144, 0.696999,
		0.340264, -0.902599, -0.263695,
		0.740428, 0.084314, 0.666826,
		3.107953, 3.428519, 0.556430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.613518, 2.798734, 0.453527>,  <2.589653, 3.369500, 0.089652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.613518, 2.798734, 0.453527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.767370, 3.084493, 0.687346>,  <2.859681, 3.255949, 0.827637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.767370, 3.084493, 0.687346>,  <2.613518, 2.798734, 0.453527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.767370, 3.084493, 0.687346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777390, -0.090758, 0.622437,
		0.497721, -0.693828, 0.520458,
		0.384629, 0.714399, 0.584547,
		2.882759, 3.298813, 0.862710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.696890, 2.541395, 1.132081>,  <2.613518, 2.798734, 0.453527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.696890, 2.541395, 1.132081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.662584, 2.939620, 1.147556>,  <2.642001, 3.178556, 1.156842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.662584, 2.939620, 1.147556>,  <2.696890, 2.541395, 1.132081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.662584, 2.939620, 1.147556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642160, -0.084926, 0.761852,
		0.761758, 0.040495, 0.646595,
		-0.085764, 0.995564, 0.038689,
		2.636855, 3.238290, 1.159163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.658437, 2.736828, 1.914383>,  <2.696890, 2.541395, 1.132081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.658437, 2.736828, 1.914383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.551701, 3.086441, 1.751969>,  <2.487659, 3.296209, 1.654521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.551701, 3.086441, 1.751969>,  <2.658437, 2.736828, 1.914383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.551701, 3.086441, 1.751969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738991, 0.084870, 0.668348,
		0.618618, 0.478398, 0.623255,
		-0.266840, 0.874032, -0.406034,
		2.471648, 3.348650, 1.630159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.646648, 3.330768, 2.492568>,  <2.658437, 2.736828, 1.914383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.646648, 3.330768, 2.492568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.423931, 3.468045, 2.189992>,  <2.290301, 3.550411, 2.008446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.423931, 3.468045, 2.189992>,  <2.646648, 3.330768, 2.492568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.423931, 3.468045, 2.189992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791754, 0.056135, 0.608255,
		0.251211, 0.937586, 0.240467,
		-0.556793, 0.343192, -0.756440,
		2.256893, 3.571002, 1.963060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.345061, 4.010179, 2.762635>,  <2.646648, 3.330768, 2.492568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.345061, 4.010179, 2.762635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.120504, 3.840089, 2.478656>,  <1.985771, 3.738035, 2.308269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.120504, 3.840089, 2.478656>,  <2.345061, 4.010179, 2.762635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.120504, 3.840089, 2.478656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770058, -0.045760, 0.636331,
		-0.303071, 0.903930, -0.301758,
		-0.561390, -0.425224, -0.709947,
		1.952087, 3.712521, 2.265672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.691230, 4.212191, 2.875380>,  <2.345061, 4.010179, 2.762635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.691230, 4.212191, 2.875380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600822, 3.893880, 2.650647>,  <1.546578, 3.702894, 2.515807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600822, 3.893880, 2.650647>,  <1.691230, 4.212191, 2.875380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.600822, 3.893880, 2.650647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756927, -0.219574, 0.615507,
		-0.613170, 0.564382, -0.552717,
		-0.226019, -0.795776, -0.561833,
		1.533017, 3.655147, 2.482097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.521312, 3.566094, 3.444651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.348515, 3.509624, 3.088348>,  <0.244836, 3.475743, 2.874566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.348515, 3.509624, 3.088348>,  <0.521312, 3.566094, 3.444651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.348515, 3.509624, 3.088348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894268, 0.060969, -0.443359,
		0.116899, -0.988106, 0.099909,
		-0.431994, -0.141174, -0.890759,
		0.218916, 3.467272, 2.821120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.794749, 2.885036, 3.068266>,  <0.521312, 3.566094, 3.444651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.794749, 2.885036, 3.068266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.695526, 3.173307, 2.809317>,  <0.635992, 3.346270, 2.653947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.695526, 3.173307, 2.809317>,  <0.794749, 2.885036, 3.068266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.695526, 3.173307, 2.809317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848527, -0.160790, -0.504132,
		-0.467407, -0.674366, -0.571629,
		-0.248057, 0.720678, -0.647372,
		0.621109, 3.389511, 2.615105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.022968, 2.629897, 2.414788>,  <0.794749, 2.885036, 3.068266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.022968, 2.629897, 2.414788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.985634, 3.024412, 2.360343>,  <0.963233, 3.261121, 2.327677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.985634, 3.024412, 2.360343>,  <1.022968, 2.629897, 2.414788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.985634, 3.024412, 2.360343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736255, -0.023656, -0.676291,
		-0.670237, -0.163334, -0.723950,
		-0.093336, 0.986287, -0.136111,
		0.957633, 3.320298, 2.319510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.971297, 2.838188, 1.711259>,  <1.022968, 2.629897, 2.414788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.971297, 2.838188, 1.711259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.152412, 3.109375, 1.942894>,  <1.261082, 3.272087, 2.081875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.152412, 3.109375, 1.942894>,  <0.971297, 2.838188, 1.711259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.152412, 3.109375, 1.942894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738415, 0.078883, -0.669717,
		-0.499726, 0.730848, -0.464904,
		0.452788, 0.677967, 0.579089,
		1.288249, 3.312765, 2.116621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.044430, 3.425677, 1.410570>,  <0.971297, 2.838188, 1.711259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.044430, 3.425677, 1.410570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.336975, 3.532175, 1.661718>,  <1.512502, 3.596074, 1.812407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.336975, 3.532175, 1.661718>,  <1.044430, 3.425677, 1.410570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.336975, 3.532175, 1.661718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624215, 0.109506, -0.773540,
		-0.274708, 0.957664, -0.086106,
		0.731362, 0.266246, 0.627871,
		1.556384, 3.612049, 1.850080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.449142, 3.821994, 0.987107>,  <1.044430, 3.425677, 1.410570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.449142, 3.821994, 0.987107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.696255, 3.783068, 1.299229>,  <1.844523, 3.759712, 1.486501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.696255, 3.783068, 1.299229>,  <1.449142, 3.821994, 0.987107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.696255, 3.783068, 1.299229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784157, 0.150285, -0.602090,
		-0.058675, 0.983841, 0.169154,
		0.617783, -0.097316, 0.780304,
		1.881590, 3.753873, 1.533320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.953425, 4.405769, 1.113625>,  <1.449142, 3.821994, 0.987107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.953425, 4.405769, 1.113625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.118797, 4.070530, 1.255986>,  <2.218021, 3.869386, 1.341402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.118797, 4.070530, 1.255986>,  <1.953425, 4.405769, 1.113625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.118797, 4.070530, 1.255986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816619, 0.168398, -0.552065,
		0.402751, 0.518877, 0.754028,
		0.413430, -0.838098, 0.355903,
		2.242826, 3.819100, 1.362756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.608675, 4.564148, 1.225718>,  <1.953425, 4.405769, 1.113625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.608675, 4.564148, 1.225718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.627586, 4.165321, 1.201645>,  <2.638933, 3.926025, 1.187201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.627586, 4.165321, 1.201645>,  <2.608675, 4.564148, 1.225718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.627586, 4.165321, 1.201645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876847, 0.070287, -0.475605,
		0.478440, -0.030285, 0.877598,
		0.047279, -0.997067, -0.060183,
		2.641770, 3.866201, 1.183589>
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
